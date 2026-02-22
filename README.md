# Spyro: Year of the Dragon Decompilation
A decompilation project for the third game in the *Spyro the Dragon* series, **Spyro: Year of the Dragon**.

This project aims to produce code that will build to an executable which byte-for-byte matches the one used in the final game. The earliest final version was selected for this project, but additional work to support changes made in the later versions may be supported in the future.

## Version Info
The earliest release build of the game is used in this project:
* Region: NTSC-U
* Revision: 0
* PV date: Sep 14th, 2000
* Product code: SCUS-94467

This version contains modchip protection, anti-crack protection, and encrypted overlays.

## Project Structure

- `asm/`: disassembly for non-matching code, and code originally written in assembly.
- `include/`: include headers for source code, and headers used by disassembly tools.
- `progress/`: markdown files indicating the current state of the executable and each overlay, for generating the progress tables.
- `src/`: decompiled source code.
- `tools/`: contains utilities for building the game.

## Progress
Last updated: 2026-02-22
|                            | EXE     | Overlays | Total   |
| -------------------------- | ------- | -------- | ------- |
| Total C functions matching | 96/337 | 159/3098 | 255/3435 |
| Progress percentage        | 28.49% | 5.13% | 7.42% |

*Note: the percentages given above are not necessarily representative of a linear indicator of progress. In particular, many overlay functions repeat and will be easier to implement on the whole than the EXE's functions.*

### Full Status
Hashes listed are for the final overlays, after correcting checksums and encrypting as necessary:

| EXE / Overlay | Expected SHA-256                                                   | C functions matching | Progess % |
| ------------- | ------------------------------------------------------------------ | -------------------- | --------- |
| EXE           | `CB819EE78C556D403779309859CB08A7111331F624759BC1BC380946261BB26E` | 96/337 | 28.49% |
| credits       | `BBE3F8DEB18E0F462C5918C8AFEDB03A32FE855CC6778E9B8D7E4E3849988BCD` | 0/5 | 0.00% |
| loading       | `0E94063F258479586AE630C23260B77014BE18BAC5891FBB9A894156B5763AE2` | 2/16 | 12.50% |
| title         | `675044820F58E521AE2F5AE67F3D050BA37D604D4F06FEC20DCD8806FD1B90F9` | 2/22 | 9.09% |
| atlas         | `E8F8E69BE901F426D1A8895DDF5842794B73E939B49A09BF9F6ABD9B42E04B11` | 0/32 | 0.00% |
| options       | `D9644E60000A0D0CC02AF4EE2B5DC4F471EA9CDE57901009A580086CF0CA78AE` | 2/13 | 15.38% |
| level_10      | `B8C482FB6AA359D9CDD7A03EA487EB0CE3C05B44E0C2DC3D43DBA73F8B493310` | 7/60 | 11.67% |
| level_11      | `FA11603F49DE1A78FA6E84111E8237F869831C37C9FC2E8F44C857693CFEB9C5` | 5/80 | 6.25% |
| level_12      | `DA9CEB152622FF2A19C58A8B190146CBBB98BABB35049A6C1E6BFB7AC3CF906E` | 2/57 | 3.51% |
| level_13      | `D8AC8A0CDA88EA800AE36B864F5910F7139C32EB106E3389F89F15A9B284EC4D` | 4/65 | 6.15% |
| level_14      | `9F81762F5E71D8F880EE5951C8A17F4A3BEC13E968D72180389CE41F4B76526E` | 3/82 | 3.66% |
| level_15      | `5895A1A44A3DB1D7BEFD56E3BE3C2F91AF7F6DB0A45BAE10C81A61ECDDBD5461` | 2/62 | 3.23% |
| level_16      | `9C6B068EF258114F26309973E31CB92987A2126AD5595FFFBBEB281B3F2E6B79` | 2/47 | 4.26% |
| level_17      | `0052CB2656E28E1D9F501C8DC6540929BC30D3F8726E04D38850C18BFE2DC07D` | 5/33 | 15.15% |
| level_18      | `CB4D4DB57A656F41C1F6586966BD03B0543E0022D950C8A739B188D85984FD29` | 2/64 | 3.12% |
| level_20      | `5812CCA80F1F8233F5E805E26F3D90B67F7A12F359911CF8362DEBEE3BB58FFD` | 1/64 | 1.56% |
| level_21      | `5FB0343DFECF5A1A7DB3B72785DA92C8F1981765E73CAB014E37FD3D4A93E05E` | 1/61 | 1.64% |
| level_22      | `0DC7BCD28F129C086C25C81D4C0EBB3EDBA24216C4E87DA4917D41B152E1FF12` | 1/90 | 1.11% |
| level_23      | `90D95D9487758F3D7C9554C5CC418FE850AEDEA71BACD8738E939D233B70A899` | 1/76 | 1.32% |
| level_24      | `A2ACF8129D66971C7BB66F61BEBE5EEA58BA2FAF1BF87B9DDFB926D21C0A901F` | 1/79 | 1.27% |
| level_25      | `298F6D432A7D93E179AF2CCB780503F00A7C15ABC39E501D0820EBE6CDDF4C44` | 1/63 | 1.59% |
| level_26      | `A84C0A7226B54B05B0559FE422011204EA9CB337016E98899B60467D7ECA5010` | 1/62 | 1.61% |
| level_27      | `79D3D75D05D0F3184ECF1098D3C760A0B0C888E3D9A3234B349210E635C8C1AE` | 1/43 | 2.33% |
| level_28      | `B426039423ABE1D30D370EDB1AB93DB8214F45842EB77F1290F2A0B343492C2E` | 1/59 | 1.69% |
| level_30      | `6423897A25C95C60E9584BD1D4A1898820A6D02E1AD28545C05AD9B1BA620CAD` | 1/63 | 1.59% |
| level_31      | `58C5FED3E371B85DF6269ED6F85BAA060D8CFE2EFFFDFBA115CC33CDE09189F0` | 1/70 | 1.43% |
| level_32      | `6D20E28BC7DDC45EEB48A11D2B94BD9B6DA23F37BFE58A159A32A1A68DEECC32` | 1/98 | 1.02% |
| level_33      | `1E80F108F3781C9DD2AE1180ECC6A364B0C785600BDA1ADB19AFB6B588B4E17C` | 1/83 | 1.20% |
| level_34      | `E7DEF9DD29BC3D51E4B57583C19D5C4D1123E241133D91410459312C990F1923` | 1/87 | 1.15% |
| level_35      | `FF1F35A60353B5276F5AFD2AA72A23C7B2B64822FC7EC5D336125B81D6522DD2` | 1/67 | 1.49% |
| level_36      | `81FF24700513C90261FFDA1C9028E0D80B517034CB09685579DB69AEBB90C04B` | 1/52 | 1.92% |
| level_37      | `22DBD9CBDAF3EE278FDFA5BB87701BBFFF31B9CC0345C7D0DDF5F25DA9931BE7` | 1/57 | 1.75% |
| level_38      | `84B47DF569AC584E530FCA8CB4D2952860F25FA53637CBD8776F9F2CAC3C06E9` | 1/59 | 1.69% |
| level_40      | `4DE201FC7E423B518160361C743143A8669D538783337C2D11218C2C2A2642A2` | 1/57 | 1.75% |
| level_41      | `99E04DDA32B461C65DE303BAC8E55D357CD0A6D87495CF430E748C1E469323AE` | 1/81 | 1.23% |
| level_42      | `DB4F017CD24C2A53E625C0A1C68AA645491C1A822CF5C31F424E2236E58F1A04` | 3/74 | 4.05% |
| level_43      | `30E19C0BF7EB843C38B3A21C18DC3ED4E79AB1887BC7A90AEA0EA905349767C9` | 4/79 | 5.06% |
| level_44      | `372FDF9B8551C4FC8BE6DADFC0B8F012D6358B8C2B0560B47A9858E19B0CFD95` | 1/74 | 1.35% |
| level_45      | `6B3C55B68394E9E3035198949C2025E46D2FB4A31109B51BB88C355C7D7F2E1F` | 1/64 | 1.56% |
| level_46      | `42B5819A5AE3BBA0E07A4282D5CD74AC819CBC5A486F8AAE06545AC77C287EA2` | 1/68 | 1.47% |
| level_47      | `C22DE0B15E994D996602752F826A2080DC489AD94D0F41DD27CA2DC9D472370F` | 1/54 | 1.85% |
| level_48      | `9EEEA655BDF20CF9F7942A34D24CC36C38B0852E18B9D16D51D663F6066B9427` | 1/60 | 1.67% |
| level_50      | `EF5315F73D48DA658434315E2261EB5C4523AD80277CE97F31D200D3DE94AD2F` | 1/98 | 1.02% |
| cutscene_61   | `A189DA2821DAC4911D3922E7E4B2BD1316463E7651C8FCE554DBA2510E7A53BE` | 10/27 | 37.04% |
| cutscene_62   | `F81C232BE9389461EBA93814CCA9F90347DDCF8B164AE7BDBD213E1CCEC67E3F` | 10/30 | 33.33% |
| cutscene_63   | `7EE9BB459BBDA5D1232346E1F5A5EB507EEDE774D2BB4284E2DF8298CF06A2DE` | 4/28 | 14.29% |
| cutscene_64   | `0F80616B66705A97C3604A52A91139140D9E78D69635EA5A8FFCEAE96F2431F4` | 4/29 | 13.79% |
| cutscene_65   | `F3058F57B292F4E744F16B6278172376608EA2DA700A373F0C11A4DBCBBFEBF5` | 4/26 | 15.38% |
| cutscene_66   | `49EB8AD4581ECF4CC11BCC10CD4E9F675CBB9C24CE836F76BF20EFBD9C2DB378` | 4/26 | 15.38% |
| cutscene_67   | `EDD3D01A604B182D8A610AE976F83C09F953B3B07B881C556A47E1BFC36AD176` | 4/28 | 14.29% |
| cutscene_68   | `A0DFADECA23F1B2A893566F3B3552063B84C2B7DAB1B2A95BB6F5E5E642C3C4F` | 4/26 | 15.38% |
| cutscene_69   | `6B8F4BD9DB15BE9CBCF55BE06032FEE0B75AE9B8517F394D108BCF07E4E79948` | 4/27 | 14.81% |
| cutscene_70   | `7037E261E4333EDE3C62F635CC60E689192B1EBB4F1302D0D061240D04F001F7` | 4/26 | 15.38% |
| cutscene_71   | `535FBA45489BB891623FA0C12557BF06015C76315FD3DB4D3072CA9C11D1E43A` | 4/26 | 15.38% |
| cutscene_73   | `CE20FD06035F8A3BEEC5D55D623A2242891FAECF6FAC8D0A7A7C646C9F3DAD53` | 4/31 | 12.90% |
| cutscene_74   | `3A9E83C3B0C18532A3B08B8E397A0ACC71385FE2B66EA0036BDA53400FF71E6E` | 4/26 | 15.38% |
| cutscene_75   | `F0619BDD02CCE373AE8D7534EF8AF6B465687022E9756383C80A75591A1EC96F` | 4/27 | 14.81% |
| cutscene_76   | `D88EA50BDFC1A894AE230972EEFE2D690E0B70D3AAC883302E1833962E0588F1` | 4/27 | 14.81% |
| cutscene_77   | `14929F914246D6F2201EEBAE148074495275BB7F565E0F426307A9166C500125` | 4/27 | 14.81% |
| cutscene_78   | `CA70FAF92EE688EC4D90BE9DE9C92950F365F57CBC6E194067EEB79521174BFE` | 4/29 | 13.79% |
| cutscene_79   | `3A8FBA1F080A3C2070BE80A7BF370C2BFBA8F759482868424140A8B9F62055E9` | 4/26 | 15.38% |
| cutscene_80   | `07B1A96059B8FA216A987E984CC513B734C76C8A5BBD2505B7A2AED2066BFE48` | 4/26 | 15.38% |

## Building

Executing `docker_env.sh` starts a container in interactive mode with the Dockerfile image, which comes with modern mipsel- gcc and binutils. For the source code, a much older compiler will be used, gcc2.7.2-mipsel.

After starting the container, executing `python3 ./build.py` will create the main executable, named `PSX.EXE` in the `/build` folder. The overlays will be output to `/build/wad`.

By default, this script does not produce overlays that have fixed antipiracy checksums or the appropriate encryption, and as such these are not usable for gameplay purposes. In order to build playable files, you'll need to turn on the FIX_CHECKSUMS flag in the script. This increases the length of the build process significantly so it's not recommended that you keep this setting on, but it's necessary when producing a build for testing. In addition, the first time you run this, you'll want to set COMPILE_DRAGONBREATH to "True" to compile a local copy of the Dragonbreath antipiracy tool.

Because this project primarily concerns the game's code, you will need a copy of the game for its assets. A separate tool such as [wadtool](https://github.com/altro50/wadtool) is needed to rebuild the WAD.WAD file. Edits to any non-overlay WADs (such as level data) will also require a separate tool. For creating the CD image, I would recommend [mkpsxiso](https://github.com/Lameguy64/mkpsxiso).

I have also included a pair of shell scripts `prepare_cd.sh` and `build_cd.sh` which use the aforementioned wadtool and mkpsxiso to extract the contents of a disc image, produce a build config file, extract the WAD.WAD file, copy the built overlay files across, rebuild the WAD, and recreate the disc image. The user may need to edit the build configuration file manually to ensure that the SPEECH.STR file is always at an offset of 90000, if they are using this decompilation to mod the game.

## Additional Tools
* `python3 progress.py` will generate values to put into the README progress tables.
  * Manual updates to the progress files in `/progress` is required first.
* `python3 context.py` will generate a context file appropriate for use in decomp.me.

## File Structure
The following assumptions have been made in determining an appropriate file structure for the project:
* The EXE appears to be split into a series of files that are roughly in alphabetical order. Most of these file names are guesses based on known official terminology, though some filenames have been observed in debug strings in Spyro the Dragon and Ratchet and Clank.
  * Splitting is also based on how the rodata is ordered. Strings and data appear at the top of a file, switch statements appear lower down.
* Overlays also appear to be built from multiple files. A rough file splitting was determined from the rodata for each overlay.
  * Level overlays appear to be particularly difficult, as rodata suggests that there is probably one file per moby, and this is also corroborated by debug strings in Ratchet and Clank which suggest the same would be true for that game. For now, all mobys have been put into a single file per level, but these may be split up later on if we can figure out how to reuse object files across different overlays. This might make adding new moby classes a bit of a pain though as it'd also probably mean updating the ld manually, so some part of the process probably needs to be automated.
  * The "level.c" files probably split up, too. There is some proof of what these splits are and how they affect the rodata for a given level; weirdly, the strings appear to go at the bottom of the level files instead of the top.
  * Many functions (e.g. saving and loading functions, moby functions, etc.) are shared by multiple levels. Currently it's not clear exactly how this was achieved, but where possible we will avoid repeat implementations of the same function.
  * Antipiracy check values are also implemented in the form of an assembly file which isn't currently supported in this project.

## Currently Unsupported Features
* In the long term, mobys should probably each have their own C file in `/src/moby`, so that each moby only needs to be built once. It's not clear how this will work, if it'll work at all.
  * There is evidence in the rodata structure for the overlays that each moby had a separate source file, rather than all of them sitting in one moby file per overlay.
  * Most mobys are the same across all levels. Mobys that aren't will need to be handled somewhat differently - eggs are one example.
* All PsyQ / library functions and variables are implemented by included assembly files. The PsyQ compiler and linker are not used and thus specific features it implements may be done slightly differently in this repository.
  * Supposedly chars are unsigned by default in the PsyQ compiler, whereas in this function they are currently signed by default. Fixing this and including the `-funsigned-char` build flag might be a bit tedious.

## Acknowledgements

- [splat](https://github.com/ethteck/splat) and its various [example projects](https://github.com/ethteck/splat/wiki/Examples)
- [spimdisasm](https://github.com/Decompollaborate/spimdisasm) disassembler used by splat
- [maspsx](https://github.com/mkst/maspsx)
- [decomp.me](https://decomp.me), a very handy tool for matching functions
- [Altro50](https://github.com/altro50) and his [Spyro 1 decomp](https://github.com/TheMobyCollective/spyro-1/tree/main)

---

First try rat? Smiley face
