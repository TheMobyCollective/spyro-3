from multiprocessing import Pool
import os
import subprocess
import hashlib
import colorama
colorama.init()

CC         = "./tools/gcc2.7.2/cc1"
GCC         = "mips-linux-gnu-cpp"
AS          = "mips-linux-gnu-as -EL"
LD          = "mips-linux-gnu-ld -EL"
OBJCOPY     = "mips-linux-gnu-objcopy"
MASPSX      = "./tools/maspsx/maspsx.py"

# Antipiracy
COMPILE_DRAGONBREATH = False # Set to True if it's your first time including the antipiracy
FIX_CHECKSUMS = False
DRAGONBREATH = "./tools/dragonbreath/dragonbreath.exe"
# TODO: Probably add something to output whether AP was in the latest build so that a warning can be output when running build_cd!

# Individual file flags
file_flags = {
    "src/warp": "-G8", # Contains strings, will need to be matched from the bottom up
#    "src/cheat": "-G8"
}

# The C_FLAGS and MASPSX_FLAGS *should* be -G8, but this is currently breaking the function ordering
# This would be fixed with the reorder hack but it doesn't work...
# Note that the AS_FLAGS needs -G0 regardless
GCC_FLAGS = "-ffreestanding -Iinclude -Ipsyq/include -MMD -MP -MF" # -D_HAS_MASPSX currently excluded as the reorder hack is broken
C_FLAGS = "-O2 -G0 -fverbose-asm -mips1 -mcpu=3000 -fgnu-linker -mno-abicalls -mgpopt -msoft-float -gcoff -funsigned-char -quiet"
AS_FLAGS = "-Iinclude -march=r3000 -mtune=r3000 -G0 -no-pad-sections"
LD_FLAGS = "-T /tmp/psx.ld -Map build/psx.map --no-check-sections -nostdlib" # -T undefined_syms_auto.txt if needed
MASPSX_FLAGS = "-G0 --aspsx-version 2.56 --expand-div"

# TODO: For the PSYQ 4.7 libraries
NEW_PSYQ = ""

# NEW_PSYQ += " -Lpsyq/lib"
# NEW_PSYQ += " --start-group"
# NEW_PSYQ += " -lapi -lc -lc2 -lcard -lcd -lcomb -lds -letc -lgpu -lgs -lgte -lgun -lhmd -lmath -lmcrd -lpad -lsio -lspu"
# NEW_PSYQ += " --end-group"

def print_error(message):
    print(colorama.Fore.RED + message + colorama.Style.RESET_ALL)

def print_warning(message):
    print(colorama.Fore.YELLOW + message + colorama.Style.RESET_ALL)

def print_info(message):
    print(colorama.Fore.CYAN + message + colorama.Style.RESET_ALL)

def print_success(message):
    print(colorama.Fore.GREEN + message + colorama.Style.RESET_ALL)

def sha256sum(filename):
    with open(filename, 'rb', buffering=0) as f:
        return hashlib.file_digest(f, 'sha256').hexdigest()

# Runs os.system but with a check for the return code
def system(command):
    if os.system(command) != 0:
        print_error(f"Command failed: {command}")
        exit(1)

#######################################################################################################
# HASH VALUES
final_exe_hash = "CB819EE78C556D403779309859CB08A7111331F624759BC1BC380946261BB26E" # Corrected checksum
base_exe_hash = "E5406997DCCC7300C8198498C20B9D6C4C0A547813BE1010446B6C4E5D50E39F"  # Uncorrected checksum

overlay_map = {
    ".credits": "credits.ovl",
    ".loading": "loading.ovl",
    ".title": "title.ovl",
    ".atlas": "atlas.ovl",
    ".options_ovl": "options.ovl",
    ".level_10": "level_10.ovl",
    ".level_11": "level_11.ovl",
    ".level_12": "level_12.ovl",
    ".level_13": "level_13.ovl",
    ".level_14": "level_14.ovl",
    ".level_15": "level_15.ovl",
    ".level_16": "level_16.ovl",
    ".level_17": "level_17.ovl",
    ".level_18": "level_18.ovl",
    ".level_20": "level_20.ovl",
    ".level_21": "level_21.ovl",
    ".level_22": "level_22.ovl",
    ".level_23": "level_23.ovl",
    ".level_24": "level_24.ovl",
    ".level_25": "level_25.ovl",
    ".level_26": "level_26.ovl",
    ".level_27": "level_27.ovl",
    ".level_28": "level_28.ovl",
    ".level_30": "level_30.ovl",
    ".level_31": "level_31.ovl",
    ".level_32": "level_32.ovl",
    ".level_33": "level_33.ovl",
    ".level_34": "level_34.ovl",
    ".level_35": "level_35.ovl",
    ".level_36": "level_36.ovl",
    ".level_37": "level_37.ovl",
    ".level_38": "level_38.ovl",
    ".level_40": "level_40.ovl",
    ".level_41": "level_41.ovl",
    ".level_42": "level_42.ovl",
    ".level_43": "level_43.ovl",
    ".level_44": "level_44.ovl",
    ".level_45": "level_45.ovl",
    ".level_46": "level_46.ovl",
    ".level_47": "level_47.ovl",
    ".level_48": "level_48.ovl",
    ".level_50": "level_50.ovl",
    ".cutscene_61": "cutscene_61.ovl",
    ".cutscene_62": "cutscene_62.ovl",
    ".cutscene_63": "cutscene_63.ovl",
    ".cutscene_64": "cutscene_64.ovl",
    ".cutscene_65": "cutscene_65.ovl",
    ".cutscene_66": "cutscene_66.ovl",
    ".cutscene_67": "cutscene_67.ovl",
    ".cutscene_68": "cutscene_68.ovl",
    ".cutscene_69": "cutscene_69.ovl",
    ".cutscene_70": "cutscene_70.ovl",
    ".cutscene_71": "cutscene_71.ovl",
    ".cutscene_73": "cutscene_73.ovl",
    ".cutscene_74": "cutscene_74.ovl",
    ".cutscene_75": "cutscene_75.ovl",
    ".cutscene_76": "cutscene_76.ovl",
    ".cutscene_77": "cutscene_77.ovl",
    ".cutscene_78": "cutscene_78.ovl",
    ".cutscene_79": "cutscene_79.ovl",
    ".cutscene_80": "cutscene_80.ovl",
}

# DECRYPTED HASHES - hashes of decrypted final overlays, contains corrected checks - will not match the actual intended hash
hash_map = {
	"credits.ovl": "BBE3F8DEB18E0F462C5918C8AFEDB03A32FE855CC6778E9B8D7E4E3849988BCD",
	"loading.ovl": "0E94063F258479586AE630C23260B77014BE18BAC5891FBB9A894156B5763AE2",
	"title.ovl": "675044820F58E521AE2F5AE67F3D050BA37D604D4F06FEC20DCD8806FD1B90F9",
	"atlas.ovl": "E8F8E69BE901F426D1A8895DDF5842794B73E939B49A09BF9F6ABD9B42E04B11",
	"options.ovl": "D9644E60000A0D0CC02AF4EE2B5DC4F471EA9CDE57901009A580086CF0CA78AE",
	"level_10.ovl": "5D5644D65CBC15037442AB0494F40437282A2E64834E35672AA230EB91D0B777",
	"level_11.ovl": "B463B39FC3E827521A2AF2E82A8385B48422686859C68E2F2D43042175C475CF",
	"level_12.ovl": "C9773906AD3EEEBA9428491D46C85D517686CD1ABBE04A31AA95D0D2F52FE135",
	"level_13.ovl": "51FCEDDEFADC102BFEA1727048DD6294263545C112775BE2CC62AF7BCEAA7B1F",
	"level_14.ovl": "D040BC26BE09D0DDD94071B6E629592FCA6502EC8CB831C1A97C8DB5DAA93D60",
	"level_15.ovl": "743B997A87B04AD67A93749BC3357B4FAC229A05BF1587B3AD25AE551A94E947",
	"level_16.ovl": "E516AE0C47D60D2A73E9488E25FDBEBFA1DF70F9D0EB15AFF1F57A6B6A7A25B5",
	"level_17.ovl": "0F04FC177EABC58D157FBB5B017592DC13F70FEA326E0EEF1C55BF98CEE1B234",
	"level_18.ovl": "FD8D6668ACCB61DEC3CAC62E8255C7F77ED50ADFCE6EF37CDB8CAD743E769511",
	"level_20.ovl": "2B7B80B5C8B2B730844616DDA24E15E8D9DF044AEF35B63B769BAAE973FFB32C",
	"level_21.ovl": "43F3C9688635CAC8933255DEEDDEDC16FF15E930E44FAC7D558DCB3DAB10C9A8",
	"level_22.ovl": "FD17E3F6B9E515C8D44BF0B86D86862A6427735783E589FA79D97B73731FEC1C",
	"level_23.ovl": "9369A8E4DC863F34851BE0159F2E982F7EA11C73AA2BADB70CA516FAB38B6768",
	"level_24.ovl": "38CEADBDB8584153547E3A422DCED957B56FFAF4A55A29A9CFD5A9CF9CD694E9",
	"level_25.ovl": "77174792416A09FD4E0AA48516CB8C65EC861FDB1DAB239844F2F5BAA586604F",
	"level_26.ovl": "D8C00A8534197545DF14DD8D38A9559662A5C27B863A066F58A11C56F0BC113B",
	"level_27.ovl": "E0F0F00A969CA8AAFA26021549F0340046403B67A6EEF2F3B27CAE6E6A851054",
	"level_28.ovl": "3F2A00AAB912BF1B9E5B5212A2C669A927DDE6462872A9E2213791149D3785DA",
	"level_30.ovl": "77D3808603DBF165CC45993C280CF276DD54DF294492C9A28B11B9E9B1E3D70F",
	"level_31.ovl": "20BC888154AC431E70BF33DD61588E39AB15DD20F681D2174E6E8349BA641E14",
	"level_32.ovl": "4B2AD530CDF0A193D4CF2FAF755124CCA54BE85FAB489E6AB03D78FA335C474B",
	"level_33.ovl": "D3F17A6C69BA7814B6CFF6B1AF900B312AA0A2B17023D63714B9EB9E42B9CDF3",
	"level_34.ovl": "699A40C0AA6EA1EBF2B8C44DCEB32BE46965781B03CA402EAD5B40AE0EE7A6B4",
	"level_35.ovl": "A3DA4106B81D6311376D17CEDBDE6C790AC11769DA266FDAD98B5B42B64A5511",
	"level_36.ovl": "65FEB0307D8FEF4F3FD8B1C0034E39D8E46AC05E7353BB6701DE031CECA6D8B5",
	"level_37.ovl": "C4DC3CB7F696E9D9529430B0A06043EA51F862739E2E07EF064A4EDDB94F73C9",
	"level_38.ovl": "DC36494B20E6A2CFFE499382FF02E486EFD330F76A7A23F05A86F59EA4CDC09E",
	"level_40.ovl": "8F8C0CE0F6A827494A20BB40343A9E113F2916D3C0894F9997B90B9C31E451B3",
	"level_41.ovl": "E5984E5E9F1D9E3DE8F9FCA1D976D215F6ED2BF36212DE15903DEFB1CFBA6D83",
	"level_42.ovl": "0FE67DC0BE1ECA46ED0D78BACBC07CC4784418C92FDFF4CC5BFAAA61A3B6725B",
	"level_43.ovl": "7B96B7EA58F4B2A3F593FF3E254AEF003B48C27B9B3B93C798186037EFBC93E6",
	"level_44.ovl": "2EA659F575C7D7667D260D94C2457B358D1EDB358599F0220825E0731C1B130A",
	"level_45.ovl": "77527066EC394E6DFCD066F471BC3A8A4196CCBAFB85A82E4F9E5C1F69B02E85",
	"level_46.ovl": "8C231C09EFE0084A3A82877A0580E6CF42C29F71FA5D10BA4E91D3A0502A097B",
	"level_47.ovl": "E26858E10FABC83A821BEE00B8D684D0A64FDD5E74545D55F3602BE5B4A126DE",
	"level_48.ovl": "280D3AB62194E8CB7165DC82402E8285A8C2ED46955F8364669CF4C0AAD81DA7",
	"level_50.ovl": "3F5E8ED5F3927844D4986B08DA402658809C4342E9B15E186490FCAB73D405C9",
	"cutscene_61.ovl": "A189DA2821DAC4911D3922E7E4B2BD1316463E7651C8FCE554DBA2510E7A53BE",
	"cutscene_62.ovl": "F81C232BE9389461EBA93814CCA9F90347DDCF8B164AE7BDBD213E1CCEC67E3F",
	"cutscene_63.ovl": "7EE9BB459BBDA5D1232346E1F5A5EB507EEDE774D2BB4284E2DF8298CF06A2DE",
	"cutscene_64.ovl": "0F80616B66705A97C3604A52A91139140D9E78D69635EA5A8FFCEAE96F2431F4",
	"cutscene_65.ovl": "F3058F57B292F4E744F16B6278172376608EA2DA700A373F0C11A4DBCBBFEBF5",
	"cutscene_66.ovl": "49EB8AD4581ECF4CC11BCC10CD4E9F675CBB9C24CE836F76BF20EFBD9C2DB378",
	"cutscene_67.ovl": "EDD3D01A604B182D8A610AE976F83C09F953B3B07B881C556A47E1BFC36AD176",
	"cutscene_68.ovl": "A0DFADECA23F1B2A893566F3B3552063B84C2B7DAB1B2A95BB6F5E5E642C3C4F",
	"cutscene_69.ovl": "6B8F4BD9DB15BE9CBCF55BE06032FEE0B75AE9B8517F394D108BCF07E4E79948",
	"cutscene_70.ovl": "7037E261E4333EDE3C62F635CC60E689192B1EBB4F1302D0D061240D04F001F7",
	"cutscene_71.ovl": "535FBA45489BB891623FA0C12557BF06015C76315FD3DB4D3072CA9C11D1E43A",
	"cutscene_73.ovl": "CE20FD06035F8A3BEEC5D55D623A2242891FAECF6FAC8D0A7A7C646C9F3DAD53",
	"cutscene_74.ovl": "3A9E83C3B0C18532A3B08B8E397A0ACC71385FE2B66EA0036BDA53400FF71E6E",
	"cutscene_75.ovl": "F0619BDD02CCE373AE8D7534EF8AF6B465687022E9756383C80A75591A1EC96F",
	"cutscene_76.ovl": "D88EA50BDFC1A894AE230972EEFE2D690E0B70D3AAC883302E1833962E0588F1",
	"cutscene_77.ovl": "14929F914246D6F2201EEBAE148074495275BB7F565E0F426307A9166C500125",
	"cutscene_78.ovl": "CA70FAF92EE688EC4D90BE9DE9C92950F365F57CBC6E194067EEB79521174BFE",
	"cutscene_79.ovl": "3A8FBA1F080A3C2070BE80A7BF370C2BFBA8F759482868424140A8B9F62055E9",
	"cutscene_80.ovl": "07B1A96059B8FA216A987E984CC513B734C76C8A5BBD2505B7A2AED2066BFE48",
}

# BASE HASHES - hashes of decrypted overlays without corrected checks - will not match the actual intended hash, but is checked during build
base_hash_map = {
	"credits.ovl": "BBE3F8DEB18E0F462C5918C8AFEDB03A32FE855CC6778E9B8D7E4E3849988BCD",
	"loading.ovl": "3FC5004F9DC0A260AD196240E1D6C490427B696EE3130F4811A25EB9987B0B85",
	"title.ovl": "100AD09741FFCD50B92A744283C265ECAE792CD624EB4EAEA69307076ABD2CEB",
	"atlas.ovl": "E8F8E69BE901F426D1A8895DDF5842794B73E939B49A09BF9F6ABD9B42E04B11",
	"options.ovl": "D9644E60000A0D0CC02AF4EE2B5DC4F471EA9CDE57901009A580086CF0CA78AE",
	"level_10.ovl": "4343B1A72F05F31C2128A0A8B795C829A1A4396B595746A3FC2AAA6E321A4CFE",
	"level_11.ovl": "8277A470FB66AE39B2E2D489E9F5FDA1D0672A5B0E5C70CE5F0F2C5022C25BDC",
	"level_12.ovl": "30E60194065FFB2445005645F292FF1E66ECA783BAB0C1B366767C5270821440",
	"level_13.ovl": "84B76F1770134E453AA4FDF64F94591557004CAC67AFD29F21ABB70EFA942A89",
	"level_14.ovl": "F4D0C3843D3B78BA38EF0A715B240FE97368C73975244961D97FD0FFC0304E16",
	"level_15.ovl": "32BA18FA7F9D9E2C5B356035F8381C8EBCA2371580DFEEF234625D612BA30373",
	"level_16.ovl": "3BA3CDB39809399456FF1444D0EEFEBDAD2CF1C4F9F00ABB6E98145514B3C4D0",
	"level_17.ovl": "278130586FF7535EDF9609BCA02C6A4D1716D3835EC89181033810426B70DCA0",
	"level_18.ovl": "BBFEA5202D4F6F9CBF606D962EE6A9A71E80C00EDB67168F36C8A56E5ED79695",
	"level_20.ovl": "0D6D1010C28056581F3D060631D39359CAACE2C0D3746E30CD0D26D82EBDBB85",
	"level_21.ovl": "7673A99437B1F1C49B7903F649CABC6A450C0BD8D5B1BDF4D37F4E8EFE5237B2",
	"level_22.ovl": "B01976B9175977B15199C7D6C7C5595796EE0FF6724D2EFC55008D5CC9A7ABB9",
	"level_23.ovl": "941DFF7F3893C208F860E3B707A2FB9B23C04D89A3AD64C3C32575D04C0E3209",
	"level_24.ovl": "A5BFD1BFB2A5F3EE5C2BAD22899D7708933913E7370AC1EB6A848ADCEFC3400C",
	"level_25.ovl": "5FD657AD52805882F855A3ADDA5EFE064AF73883FCDEE8923C5297CDB3D61F5F",
	"level_26.ovl": "E18600D5D7F38BA9E1E79030A6E0C9C5873BAC7368206C80AE87EA28691DD6AE",
	"level_27.ovl": "64911D1A4576370244E9D70F7C58DFFAAF8417D600CE919FBA62FF9445D4CFFD",
	"level_28.ovl": "65023A7B2612E77B542940D916507E92BEA95BB5FF1152E49DCF12B0AC9B8EC7",
	"level_30.ovl": "ADBEF86483B6647FFE7763773AEBC7F00F79BEC2C076270DAFBA37435DEAE305",
	"level_31.ovl": "A32093199E57FE340B71B05AAA3519E0AAAB7E826CCD891593AC95DBDC79299A",
	"level_32.ovl": "85D26F3371EB01B3D24C626695263ABE1B2045C7B29B34ECB2946F9B6B51CE6E",
	"level_33.ovl": "EE8856B6375A12368FDECA12A7AB822FAC59E4581EE2E9D8EABA7D077683E375",
	"level_34.ovl": "957CF778DB7B948B6C874D2DCFFC59572EB56723C010B4F710277DE30AC7ECA8",
	"level_35.ovl": "72527B61055234BD41B24ADBE4AC5EC221FC1EBE02780AD7C0D36514A2EA1F99",
	"level_36.ovl": "85F83A0346DF78B8432F466526E77CD4FFA0C8EE41BED67449FC2D4C22228712",
	"level_37.ovl": "33699BF0052A41A9BFAF1105BE070417C57AF3534E80C0305D1A0C81405E1FCD",
	"level_38.ovl": "1B111122A2416C72AD2B9E49A1397209D24E1BF6762467AD7EA68C1E5D3096B2",
	"level_40.ovl": "9572C3D53276BA43A6EEF8FC6CAD6614D0FDCB7C8CD2F8DBDFD079D86DC7AA05",
	"level_41.ovl": "65E48F8F871847CB578CD703C9E74BB890AC5459EC47B66A6BCC8C3F9D7C82E2",
	"level_42.ovl": "FF484D57BAA1876C5A747B10AB7FA26237C65366EA91987123B3389D5D98307F",
	"level_43.ovl": "C8C7967B08C80C4DA2DD5DBC3A4D6B8BC5C7F632B0130D3CF129B2ABE55A8389",
	"level_44.ovl": "83FE2BB88143A53D93CFAFB53B0066898554A9A9D4B89A1A265F477ED3280230",
	"level_45.ovl": "D69656F768623C0E34CACDEA3EB1F163D4D5D3D21D9E5ABF994C79E87E97D626",
	"level_46.ovl": "EE9D00BAE06195058083B916C81F2FF076AB867B3CC3568AE730FEEFA1FCE6B2",
	"level_47.ovl": "6D4A17EEDF326E4F5564340ACC486850B7967DD9FA2B5DAA77131D3FB48465C5",
	"level_48.ovl": "1DE8776A6895A806EA26EDE448137888C70C01F8C267BAF753096507CB764B18",
	"level_50.ovl": "AEC3ECAAD625833414F9185465866A322250D79B5AEF3F90CF7E16EB8503BFE3",
	"cutscene_61.ovl": "A189DA2821DAC4911D3922E7E4B2BD1316463E7651C8FCE554DBA2510E7A53BE",
	"cutscene_62.ovl": "F81C232BE9389461EBA93814CCA9F90347DDCF8B164AE7BDBD213E1CCEC67E3F",
	"cutscene_63.ovl": "7EE9BB459BBDA5D1232346E1F5A5EB507EEDE774D2BB4284E2DF8298CF06A2DE",
	"cutscene_64.ovl": "0F80616B66705A97C3604A52A91139140D9E78D69635EA5A8FFCEAE96F2431F4",
	"cutscene_65.ovl": "F3058F57B292F4E744F16B6278172376608EA2DA700A373F0C11A4DBCBBFEBF5",
	"cutscene_66.ovl": "49EB8AD4581ECF4CC11BCC10CD4E9F675CBB9C24CE836F76BF20EFBD9C2DB378",
	"cutscene_67.ovl": "EDD3D01A604B182D8A610AE976F83C09F953B3B07B881C556A47E1BFC36AD176",
	"cutscene_68.ovl": "A0DFADECA23F1B2A893566F3B3552063B84C2B7DAB1B2A95BB6F5E5E642C3C4F",
	"cutscene_69.ovl": "6B8F4BD9DB15BE9CBCF55BE06032FEE0B75AE9B8517F394D108BCF07E4E79948",
	"cutscene_70.ovl": "7037E261E4333EDE3C62F635CC60E689192B1EBB4F1302D0D061240D04F001F7",
	"cutscene_71.ovl": "535FBA45489BB891623FA0C12557BF06015C76315FD3DB4D3072CA9C11D1E43A",
	"cutscene_73.ovl": "CE20FD06035F8A3BEEC5D55D623A2242891FAECF6FAC8D0A7A7C646C9F3DAD53",
	"cutscene_74.ovl": "3A9E83C3B0C18532A3B08B8E397A0ACC71385FE2B66EA0036BDA53400FF71E6E",
	"cutscene_75.ovl": "F0619BDD02CCE373AE8D7534EF8AF6B465687022E9756383C80A75591A1EC96F",
	"cutscene_76.ovl": "D88EA50BDFC1A894AE230972EEFE2D690E0B70D3AAC883302E1833962E0588F1",
	"cutscene_77.ovl": "14929F914246D6F2201EEBAE148074495275BB7F565E0F426307A9166C500125",
	"cutscene_78.ovl": "CA70FAF92EE688EC4D90BE9DE9C92950F365F57CBC6E194067EEB79521174BFE",
	"cutscene_79.ovl": "3A8FBA1F080A3C2070BE80A7BF370C2BFBA8F759482868424140A8B9F62055E9",
	"cutscene_80.ovl": "07B1A96059B8FA216A987E984CC513B734C76C8A5BBD2505B7A2AED2066BFE48",
}

# FINAL HASHES - hashes of encrypted final overlays, contains corrected checks
final_hash_map = {
	# Unencrypted, no checks
	"credits.ovl": "BBE3F8DEB18E0F462C5918C8AFEDB03A32FE855CC6778E9B8D7E4E3849988BCD",

	# Unencrypted, checks corrected
	"loading.ovl": "0E94063F258479586AE630C23260B77014BE18BAC5891FBB9A894156B5763AE2",
	"title.ovl": "675044820F58E521AE2F5AE67F3D050BA37D604D4F06FEC20DCD8806FD1B90F9",

	# Unencrypted, no checks
	"atlas.ovl": "E8F8E69BE901F426D1A8895DDF5842794B73E939B49A09BF9F6ABD9B42E04B11",
	"options.ovl": "D9644E60000A0D0CC02AF4EE2B5DC4F471EA9CDE57901009A580086CF0CA78AE",

	# Encrypted, checks corrected
	"level_10.ovl": "B8C482FB6AA359D9CDD7A03EA487EB0CE3C05B44E0C2DC3D43DBA73F8B493310",
	"level_11.ovl": "FA11603F49DE1A78FA6E84111E8237F869831C37C9FC2E8F44C857693CFEB9C5",
	"level_12.ovl": "DA9CEB152622FF2A19C58A8B190146CBBB98BABB35049A6C1E6BFB7AC3CF906E",
	"level_13.ovl": "D8AC8A0CDA88EA800AE36B864F5910F7139C32EB106E3389F89F15A9B284EC4D",
	"level_14.ovl": "9F81762F5E71D8F880EE5951C8A17F4A3BEC13E968D72180389CE41F4B76526E",
	"level_15.ovl": "5895A1A44A3DB1D7BEFD56E3BE3C2F91AF7F6DB0A45BAE10C81A61ECDDBD5461",
	"level_16.ovl": "9C6B068EF258114F26309973E31CB92987A2126AD5595FFFBBEB281B3F2E6B79",
	"level_17.ovl": "0052CB2656E28E1D9F501C8DC6540929BC30D3F8726E04D38850C18BFE2DC07D",
	"level_18.ovl": "CB4D4DB57A656F41C1F6586966BD03B0543E0022D950C8A739B188D85984FD29",
	"level_20.ovl": "5812CCA80F1F8233F5E805E26F3D90B67F7A12F359911CF8362DEBEE3BB58FFD",
	"level_21.ovl": "5FB0343DFECF5A1A7DB3B72785DA92C8F1981765E73CAB014E37FD3D4A93E05E",
	"level_22.ovl": "0DC7BCD28F129C086C25C81D4C0EBB3EDBA24216C4E87DA4917D41B152E1FF12",
	"level_23.ovl": "90D95D9487758F3D7C9554C5CC418FE850AEDEA71BACD8738E939D233B70A899",
	"level_24.ovl": "A2ACF8129D66971C7BB66F61BEBE5EEA58BA2FAF1BF87B9DDFB926D21C0A901F",
	"level_25.ovl": "298F6D432A7D93E179AF2CCB780503F00A7C15ABC39E501D0820EBE6CDDF4C44",
	"level_26.ovl": "A84C0A7226B54B05B0559FE422011204EA9CB337016E98899B60467D7ECA5010",
	"level_27.ovl": "79D3D75D05D0F3184ECF1098D3C760A0B0C888E3D9A3234B349210E635C8C1AE",
	"level_28.ovl": "B426039423ABE1D30D370EDB1AB93DB8214F45842EB77F1290F2A0B343492C2E",
	"level_30.ovl": "6423897A25C95C60E9584BD1D4A1898820A6D02E1AD28545C05AD9B1BA620CAD",
	"level_31.ovl": "58C5FED3E371B85DF6269ED6F85BAA060D8CFE2EFFFDFBA115CC33CDE09189F0",
	"level_32.ovl": "6D20E28BC7DDC45EEB48A11D2B94BD9B6DA23F37BFE58A159A32A1A68DEECC32",
	"level_33.ovl": "1E80F108F3781C9DD2AE1180ECC6A364B0C785600BDA1ADB19AFB6B588B4E17C",
	"level_34.ovl": "E7DEF9DD29BC3D51E4B57583C19D5C4D1123E241133D91410459312C990F1923",
	"level_35.ovl": "FF1F35A60353B5276F5AFD2AA72A23C7B2B64822FC7EC5D336125B81D6522DD2",
	"level_36.ovl": "81FF24700513C90261FFDA1C9028E0D80B517034CB09685579DB69AEBB90C04B",
	"level_37.ovl": "22DBD9CBDAF3EE278FDFA5BB87701BBFFF31B9CC0345C7D0DDF5F25DA9931BE7",
	"level_38.ovl": "84B47DF569AC584E530FCA8CB4D2952860F25FA53637CBD8776F9F2CAC3C06E9",
	"level_40.ovl": "4DE201FC7E423B518160361C743143A8669D538783337C2D11218C2C2A2642A2",
	"level_41.ovl": "99E04DDA32B461C65DE303BAC8E55D357CD0A6D87495CF430E748C1E469323AE",
	"level_42.ovl": "DB4F017CD24C2A53E625C0A1C68AA645491C1A822CF5C31F424E2236E58F1A04",
	"level_43.ovl": "30E19C0BF7EB843C38B3A21C18DC3ED4E79AB1887BC7A90AEA0EA905349767C9",
	"level_44.ovl": "372FDF9B8551C4FC8BE6DADFC0B8F012D6358B8C2B0560B47A9858E19B0CFD95",
	"level_45.ovl": "6B3C55B68394E9E3035198949C2025E46D2FB4A31109B51BB88C355C7D7F2E1F",
	"level_46.ovl": "42B5819A5AE3BBA0E07A4282D5CD74AC819CBC5A486F8AAE06545AC77C287EA2",
	"level_47.ovl": "C22DE0B15E994D996602752F826A2080DC489AD94D0F41DD27CA2DC9D472370F",
	"level_48.ovl": "9EEEA655BDF20CF9F7942A34D24CC36C38B0852E18B9D16D51D663F6066B9427",
	"level_50.ovl": "EF5315F73D48DA658434315E2261EB5C4523AD80277CE97F31D200D3DE94AD2F",

	# Unencrypted, checks uncorrected and unused
	"cutscene_61.ovl": "A189DA2821DAC4911D3922E7E4B2BD1316463E7651C8FCE554DBA2510E7A53BE",
	"cutscene_62.ovl": "F81C232BE9389461EBA93814CCA9F90347DDCF8B164AE7BDBD213E1CCEC67E3F",
	"cutscene_63.ovl": "7EE9BB459BBDA5D1232346E1F5A5EB507EEDE774D2BB4284E2DF8298CF06A2DE",
	"cutscene_64.ovl": "0F80616B66705A97C3604A52A91139140D9E78D69635EA5A8FFCEAE96F2431F4",
	"cutscene_65.ovl": "F3058F57B292F4E744F16B6278172376608EA2DA700A373F0C11A4DBCBBFEBF5",
	"cutscene_66.ovl": "49EB8AD4581ECF4CC11BCC10CD4E9F675CBB9C24CE836F76BF20EFBD9C2DB378",
	"cutscene_67.ovl": "EDD3D01A604B182D8A610AE976F83C09F953B3B07B881C556A47E1BFC36AD176",
	"cutscene_68.ovl": "A0DFADECA23F1B2A893566F3B3552063B84C2B7DAB1B2A95BB6F5E5E642C3C4F",
	"cutscene_69.ovl": "6B8F4BD9DB15BE9CBCF55BE06032FEE0B75AE9B8517F394D108BCF07E4E79948",
	"cutscene_70.ovl": "7037E261E4333EDE3C62F635CC60E689192B1EBB4F1302D0D061240D04F001F7",
	"cutscene_71.ovl": "535FBA45489BB891623FA0C12557BF06015C76315FD3DB4D3072CA9C11D1E43A",
	"cutscene_73.ovl": "CE20FD06035F8A3BEEC5D55D623A2242891FAECF6FAC8D0A7A7C646C9F3DAD53",
	"cutscene_74.ovl": "3A9E83C3B0C18532A3B08B8E397A0ACC71385FE2B66EA0036BDA53400FF71E6E",
	"cutscene_75.ovl": "F0619BDD02CCE373AE8D7534EF8AF6B465687022E9756383C80A75591A1EC96F",
	"cutscene_76.ovl": "D88EA50BDFC1A894AE230972EEFE2D690E0B70D3AAC883302E1833962E0588F1",
	"cutscene_77.ovl": "14929F914246D6F2201EEBAE148074495275BB7F565E0F426307A9166C500125",
	"cutscene_78.ovl": "CA70FAF92EE688EC4D90BE9DE9C92950F365F57CBC6E194067EEB79521174BFE",
	"cutscene_79.ovl": "3A8FBA1F080A3C2070BE80A7BF370C2BFBA8F759482868424140A8B9F62055E9",
	"cutscene_80.ovl": "07B1A96059B8FA216A987E984CC513B734C76C8A5BBD2505B7A2AED2066BFE48",
}

#######################################################################################################

def get_address(symbol):
    # We do some horrible manipulation to get it in the right format
    addr = subprocess.check_output("grep '" + symbol + "' build/psx.map | head -n 1 | cut -dx -f2 | cut -d' ' -f1", shell=True)
    return str(hex(int(addr, 16)))[2:]

def get_address_offset(symbol, offset):
    # We do some horrible manipulation (again) to get it in the right format
    addr = subprocess.check_output("grep '" + symbol + "' build/psx.map | head -n 1 | cut -dx -f2 | cut -d' ' -f1", shell=True)
    return str(hex(int(addr, 16) + offset))[2:]

def fix_checksums():
    print_info("[4] Fixing checksums")

    address_map = dict()

    # Get main addresses
    address_map["main_TEXT_START"] = get_address("main_TEXT_START")
    address_map["main_TEXT_END"]   = get_address("main_TEXT_END")
    address_map["ovlHeader"]       = get_address("ovlHeader")

    # Get level addresses
    levels = [10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50]
    for id in range(10, 51):
        if id % 10 == 9:
            continue
        address_map["level_" + str(id) + "_check"]      = get_address("level_" + str(id) + "_check")
        address_map["level_" + str(id) + "_text_start"] = get_address("level_" + str(id) + "_text_start")
        address_map["level_" + str(id) + "_data_start"] = get_address("level_" + str(id) + "_data_start")

    # Get secondary addresses
    secondary_levels = [16, 17, 26, 27, 36, 37, 46, 47]
    function_starts  = ["func_8002CA50", "func_8003A40C", "func_8002CA50", "func_8003A40C", "func_8002CA50", "func_8002AB38", "func_8002CA50", "func_8002AB38"]
    function_ends    = ["func_8002D044", "func_8003A584", "func_8002D044", "func_8003A584", "func_8002D044", "func_8002AE00", "func_8002D044", "func_8002AE00"]
    function_offsets = [0, 0, 1, 0, 2, 0, 3, 0]
    for i in range(8):
        address_map["level_" + str(secondary_levels[i]) + "_secondary_check"] = get_address("level_" + str(secondary_levels[i]) + "_secondary_check")
        address_map["level_" + str(secondary_levels[i]) + "_secondary_start"] = get_address_offset(function_starts[i], function_offsets[i]) # name this differently to avoid clashes
        address_map["level_" + str(secondary_levels[i]) + "_secondary_end"]   = get_address_offset(function_ends[i], function_offsets[i])   # name this differently to avoid clashes

    # Loading and title addresses
    address_map["exe_check"]          = get_address("exe_check")
    address_map["loading_check"]      = get_address("loading_check")
    address_map["loading_text_start"] = get_address("loading_text_start")
    address_map["loading_text_end"]   = get_address("loading_text_end")
    address_map["title_check"]        = get_address("title_check")
    address_map["title_text_start"]   = get_address("title_text_start")
    address_map["title_text_end"]     = get_address("title_text_end")

    # Run dragonbreath
    command = DRAGONBREATH + " ./build/PSX.EXE ./build/wad/"
    common_args = "-W -q -s " + address_map.get("ovlHeader") + " "
    exe_args = "-E " + address_map.get("main_TEXT_START") + " " + address_map.get("main_TEXT_END") + " "

    # Title
    print_info("Updating primary check for title.ovl")
    system(command + "title.ovl -c title " + common_args + exe_args + "-O " + address_map.get("title_text_start") + " " + address_map.get("title_text_end") + " -C " + address_map.get("title_check") + " -X " + address_map.get("exe_check") + " -Z")

    # Loading
    print_info("Updating primary check for loading.ovl")
    system(command + "loading.ovl -c loading " + common_args + exe_args + "-O " + address_map.get("loading_text_start") + " " + address_map.get("loading_text_end") + " -C " + address_map.get("loading_check"))

    # Levels
    for i in range(37):
        print_info("Updating primary check for level_" + str(levels[i]) + ".ovl")
        system(command + "level_" + str(levels[i]) + ".ovl -c level " + common_args + exe_args + "-O " + address_map.get("level_" + str(levels[i]) + "_text_start") + " " + address_map.get("level_" + str(levels[i]) + "_data_start") + " -C " + address_map.get("level_" + str(levels[i]) + "_check") + " -L " + str(i) + " -e")

    # Secondaries
    for i in range(8):
        print_info("Updating secondary check for level_" + str(secondary_levels[i]) + ".ovl")
        system(command + "level_" + str(secondary_levels[i]) + ".ovl -c secondary " + common_args + "-E " + address_map.get("level_" + str(secondary_levels[i]) + "_secondary_start") + " " + address_map.get("level_" + str(secondary_levels[i]) + "_secondary_end") + " -O " + address_map.get("level_" + str(secondary_levels[i]) + "_text_start") + " " + address_map.get("level_" + str(secondary_levels[i]) + "_data_start") + " -C " + address_map.get("level_" + str(secondary_levels[i]) + "_secondary_check"))

    # Verify the SHA-256 of the PSX.EXE
    print_info("Verifying SHA-256 of PSX.EXE")
    sum = sha256sum("build/PSX.EXE")

    if sum.upper() != final_exe_hash:
        print_warning("BUILT NON-MATCHING EXECUTABLE")
        print_warning("PSX.EXE SHA-256: " + sum)
    else:
        print_success("Successfully built a matching executable")
        print_success("PSX.EXE SHA-256: " + sum)
    
    print_info("Verifying SHA-256 of overlays")
    nonmatching = False
    with open('overlay_corrected_hash_output.txt', 'w') as logfile:
        for file, ovlhash in final_hash_map.items():
            sum = sha256sum("build/wad/" + file)
            if sum.upper() != ovlhash:
                logfile.write(file + ': NON-MATCHING (' + sum + ')\n')
                nonmatching = True
            else:
                logfile.write(file + ': matching (' + sum + ')\n')
        logfile.close()

    if (nonmatching):
        print_warning("At least one overlay did not match - see overlay_corrected_hash_output.txt for more details")
    else:
        print_success("All overlays found to be matching")

# LET'S GET LINKING
def link_files():
    print_info("[1] Linking build/psx.elf")

    # Process the ld to allow us to use macros
    system(GCC + " -E -P -x assembler-with-cpp psx.ld -o /tmp/psx.ld")

    system(" ".join([LD, LD_FLAGS, NEW_PSYQ, "-o build/psx.elf"]))

    print_info("[2] Extracting PSX.EXE")
    
    # Take the main executable
    system(OBJCOPY + " --only-section=.header --only-section=.main -O binary build/psx.elf build/PSX.EXE")

    print_info("[3] Extracting overlays")

    for section, overlay in overlay_map.items():
        system(OBJCOPY + " --only-section=" + section + " -O binary build/psx.elf build/wad/" + overlay)

    # Verify the SHA-256 of the PSX.EXE
    print_info("Verifying SHA-256 of PSX.EXE")
    sum = sha256sum("build/PSX.EXE")

    if sum.upper() != base_exe_hash:
        print_warning("BUILT NON-MATCHING EXECUTABLE")
        print_warning("PSX.EXE SHA-256: " + sum)
    else:
        print_success("Successfully built a matching executable")
        print_success("PSX.EXE SHA-256: " + sum)
    
    print_info("Verifying SHA-256 of overlays")
    nonmatching = False
    with open('overlay_hash_output.txt', 'w') as logfile:
        for file, ovlhash in base_hash_map.items():
            sum = sha256sum("build/wad/" + file)
            if sum.upper() != ovlhash:
                logfile.write(file + ': NON-MATCHING (' + sum + ')\n')
                nonmatching = True
            else:
                logfile.write(file + ': matching (' + sum + ')\n')
        logfile.close()
    
    if (nonmatching):
        print_warning("At least one overlay did not match - see overlay_hash_output.txt for more details")
    else:
        print_success("All overlays found to be matching")
	
    if (FIX_CHECKSUMS):
        if (COMPILE_DRAGONBREATH):
            print_info("[3.5] Building Dragonbreath")
            os.system('g++ tools/dragonbreath/src/Dragonbreath.cpp -o ' + DRAGONBREATH)
            print_info("Built Dragonbreath.exe") # I should probably put a condition on this
        fix_checksums()

object_files = []

def assemble_file(file):
    # Remove .s from the file name
    out = file[:-2] + ".o"

    # Create the output directory if it doesn't exist
    os.makedirs(os.path.dirname("build/" + out), exist_ok=True)

    system(AS + " " + AS_FLAGS + " -o build/" + out + " " + file)

    return "build/" + out

def build_file(file):
    # Remove .c from the file name
    file = file[:-2]
    out = file + ".o"
    out_s = file + ".s"

    # Create the output directory if it doesn't exist
    os.makedirs(os.path.dirname("build/" + out), exist_ok=True)

    fileFlags = file_flags.get(file, "")

    debug_build = os.environ.get("DEBUG")

    system(GCC + ("" if not debug_build else " -DDEBUG") + " " + GCC_FLAGS + " build/" + file + ".o.d " + file + ".c | " + CC + " " + C_FLAGS + " " + fileFlags + " | python3 " + MASPSX + " " + MASPSX_FLAGS + " | python3 ./tools/fix_str_align.py | python3 ./tools/fix_jtbl_align.py > build/" + out_s)
    system(AS + " " + AS_FLAGS + " -o build/" + out + " build/" + out_s)

    return"build/" + out

def collect_c_files():
    files = []
    for root, _, filenames in os.walk("src"):
        for filename in filenames:
                if filename.endswith(".c"):
                    files.append(os.path.join(root, filename))
    return files

def collect_asm_files():
    files = []
    for root, _, filenames in os.walk("asm"):
        if "nonmatchings" in root:
            continue
        for filename in filenames:
            if filename.endswith(".s"):
                files.append(os.path.join(root, filename))
    return files

# Make sure the build/ and build/wad/ directories exist
os.makedirs("build/wad", exist_ok=True)

# You can skip compiling the source code and only link the files by calling LINK_ONLY=1 python build.py
if not os.environ.get("LINK_ONLY"):
    asm_files = collect_asm_files()
    c_files = collect_c_files()

    c_objects = []
    asm_objects = []

    with Pool() as pool:
        for i, result in enumerate(pool.imap_unordered(build_file, c_files), 1):
            print_info(f"Compiled {i}/{len(c_files)}: {result}")
            c_objects.append(result)

        for i, result in enumerate(pool.imap_unordered(assemble_file, asm_files), 1):
            print_info(f"Assembled {i}/{len(asm_files)}: {result}")
            asm_objects.append(result)


    object_files = c_objects + asm_objects

link_files()
