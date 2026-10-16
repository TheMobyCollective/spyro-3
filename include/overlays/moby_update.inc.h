#include "ovl_header.h"
#include "overlays/moby_update.h"

// Note that some moby functions are deliberately set to have the same pointer.
// As for the ifdefs / nullptrs, it might be able to be done with defsym / --allow-multiple-definition instead.

void (*NAME_OVERLAY_DATA(g_MobyUpdate)[1024]) (Moby* pMoby) = {

	#ifdef HAS_MOBY_0
		&MOBYUPDATE(0),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1
		&MOBYUPDATE(1),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_2
		&MOBYUPDATE(2),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_3
		&MOBYUPDATE(3),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_4
		&MOBYUPDATE(4),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_5
		&MOBYUPDATE(5),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_6
		&MOBYUPDATE(6),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_7
		&MOBYUPDATE(7),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_8
		&MOBYUPDATE(8),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_9
		&MOBYUPDATE(9),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_10
		&MOBYUPDATE(10),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_11
		&MOBYUPDATE(11),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_12
		&MOBYUPDATE(12),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_13
		&MOBYUPDATE(13),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_14
		&MOBYUPDATE(14),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_15
		&MOBYUPDATE(15),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_16
		&MOBYUPDATE(16),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_17
		&MOBYUPDATE(17),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_18
		&MOBYUPDATE(18),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_19
		&MOBYUPDATE(19),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_20
		&MOBYUPDATE(20),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_21
		&MOBYUPDATE(21),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_22
		&MOBYUPDATE(22),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_23
		&MOBYUPDATE(23),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_24
		&MOBYUPDATE(24),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_25
		&MOBYUPDATE(25),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_26
		&MOBYUPDATE(26),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_27
		&MOBYUPDATE(27),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_28
		&MOBYUPDATE(28),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_29
		&MOBYUPDATE(29),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_30
		&MOBYUPDATE(30),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_31
		&MOBYUPDATE(31),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_32
		&MOBYUPDATE(32),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_33
		&MOBYUPDATE(33),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_34
		&MOBYUPDATE(34),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_35
		&MOBYUPDATE(35),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_36
		&MOBYUPDATE(36),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_37
		&MOBYUPDATE(37),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_38
		&MOBYUPDATE(38),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_39
		&MOBYUPDATE(39),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_40
		&MOBYUPDATE(40),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_41
		&MOBYUPDATE(41),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_42
		&MOBYUPDATE(42),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_43
		&MOBYUPDATE(43),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_44
		&MOBYUPDATE(44),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_45
		&MOBYUPDATE(45),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_46
		&MOBYUPDATE(46),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_47
		&MOBYUPDATE(47),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_48
		&MOBYUPDATE(48),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_49
		&MOBYUPDATE(49),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_50
		&MOBYUPDATE(50),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_51
		&MOBYUPDATE(51),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_52
		&MOBYUPDATE(52),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_53
		&MOBYUPDATE(53),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_54
		&MOBYUPDATE(54),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_55
		&MOBYUPDATE(55),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_56
		&MOBYUPDATE(56),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_57
		&MOBYUPDATE(57),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_58
		&MOBYUPDATE(58),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_59
		&MOBYUPDATE(59),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_60
		&MOBYUPDATE(60),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_61
		&MOBYUPDATE(61),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_62
		&MOBYUPDATE(62),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_63
		&MOBYUPDATE(63),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_64
		&MOBYUPDATE(64),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_65
		&MOBYUPDATE(65),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_66
		&MOBYUPDATE(66),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_67
		&MOBYUPDATE(67),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_68
		&MOBYUPDATE(68),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_69
		&MOBYUPDATE(69),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_70
		&MOBYUPDATE(70),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_71
		&MOBYUPDATE(71),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_72
		&MOBYUPDATE(72),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_73
		&MOBYUPDATE(73),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_74
		&MOBYUPDATE(74),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_75
		&MOBYUPDATE(75),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_76
		&MOBYUPDATE(76),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_77
		&MOBYUPDATE(77),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_78
		&MOBYUPDATE(78),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_79
		&MOBYUPDATE(75), // Pushable blocks
	#else
		0,
	#endif

	#ifdef HAS_MOBY_80
		&MOBYUPDATE(80),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_81
		&MOBYUPDATE(81),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_82
		&MOBYUPDATE(82),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_83
		&MOBYUPDATE(83),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_84
		&MOBYUPDATE(84),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_85
		&MOBYUPDATE(85),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_86
		&MOBYUPDATE(86),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_87
		&MOBYUPDATE(87),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_88
		&MOBYUPDATE(88),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_89
		&MOBYUPDATE(89),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_90
		&MOBYUPDATE(90),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_91
		&MOBYUPDATE(91),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_92
		&MOBYUPDATE(92),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_93
		&MOBYUPDATE(93),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_94
		&MOBYUPDATE(94),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_95
		&MOBYUPDATE(95),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_96
		&MOBYUPDATE(96),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_97
		&MOBYUPDATE(97),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_98
		&MOBYUPDATE(98),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_99
		&MOBYUPDATE(99),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_100
		&MOBYUPDATE(100),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_101
		&MOBYUPDATE(101),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_102
		&MOBYUPDATE(102),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_103
		&MOBYUPDATE(103),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_104
		&MOBYUPDATE(104),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_105
		&MOBYUPDATE(105),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_106
		&MOBYUPDATE(106),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_107
		&MOBYUPDATE(107),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_108
		&MOBYUPDATE(108),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_109
		&MOBYUPDATE(109),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_110
		&MOBYUPDATE(110),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_111
		&MOBYUPDATE(111),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_112
		&MOBYUPDATE(112),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_113
		&MOBYUPDATE(113),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_114
		&MOBYUPDATE(114),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_115
		&MOBYUPDATE(115),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_116
		&MOBYUPDATE(116),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_117
		&MOBYUPDATE(117),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_118
		&MOBYUPDATE(118),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_119
		&MOBYUPDATE(119),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_120
		&MOBYUPDATE(120),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_121
		&MOBYUPDATE(121),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_122
		&MOBYUPDATE(122),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_123
		&MOBYUPDATE(123),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_124
		&MOBYUPDATE(124),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_125
		&MOBYUPDATE(125),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_126
		&MOBYUPDATE(126),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_127
		&MOBYUPDATE(127),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_128
		&MOBYUPDATE(128),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_129
		&MOBYUPDATE(129),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_130
		&MOBYUPDATE(130),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_131
		&MOBYUPDATE(131),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_132
		&MOBYUPDATE(132),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_133
		&MOBYUPDATE(133),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_134
		&MOBYUPDATE(134),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_135
		&MOBYUPDATE(135),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_136
		&MOBYUPDATE(136),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_137
		&MOBYUPDATE(137),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_138
		&MOBYUPDATE(138),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_139
		&MOBYUPDATE(139),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_140
		&MOBYUPDATE(140),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_141
		&MOBYUPDATE(141),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_142
		&MOBYUPDATE(142),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_143
		&MOBYUPDATE(143),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_144
		&MOBYUPDATE(144),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_145
		&MOBYUPDATE(142), // Lost Fleet fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_146
		&MOBYUPDATE(142), // Lost Fleet fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_147
		&MOBYUPDATE(147),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_148
		&MOBYUPDATE(148),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_149
		&MOBYUPDATE(149),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_150
		&MOBYUPDATE(150),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_151
		&MOBYUPDATE(151),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_152
		&MOBYUPDATE(152),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_153
		&MOBYUPDATE(153),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_154
		&MOBYUPDATE(154),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_155
		&MOBYUPDATE(155),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_156
		&MOBYUPDATE(156),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_157
		&MOBYUPDATE(157),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_158
		&MOBYUPDATE(158),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_159
		&MOBYUPDATE(159),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_160
		&MOBYUPDATE(160),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_161
		&MOBYUPDATE(161),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_162
		&MOBYUPDATE(162),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_163
		&MOBYUPDATE(163),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_164
		&MOBYUPDATE(164),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_165
		&MOBYUPDATE(165),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_166
		&MOBYUPDATE(166),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_167
		&MOBYUPDATE(167),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_168
		&MOBYUPDATE(168),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_169
		&MOBYUPDATE(169),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_170
		&MOBYUPDATE(170),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_171
		&MOBYUPDATE(171),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_172
		&MOBYUPDATE(172),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_173
		&MOBYUPDATE(173),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_174
		&MOBYUPDATE(174),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_175
		&MOBYUPDATE(175),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_176
		&MOBYUPDATE(176),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_177
		&MOBYUPDATE(177),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_178
		&MOBYUPDATE(178),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_179
		&MOBYUPDATE(179),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_180
		&MOBYUPDATE(180),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_181
		&MOBYUPDATE(181),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_182
		&MOBYUPDATE(182),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_183
		&MOBYUPDATE(183),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_184
		&MOBYUPDATE(184),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_185
		&MOBYUPDATE(185),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_186
		&MOBYUPDATE(186),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_187
		&MOBYUPDATE(187),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_188
		&MOBYUPDATE(188),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_189
		&MOBYUPDATE(189),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_190
		&MOBYUPDATE(190),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_191
		&MOBYUPDATE(191),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_192
		&MOBYUPDATE(192),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_193
		&MOBYUPDATE(193),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_194
		&MOBYUPDATE(194),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_195
		&MOBYUPDATE(265), // Portal icons - 195 was added late in development, 265 came first
	#else
		0,
	#endif

	#ifdef HAS_MOBY_196
		&MOBYUPDATE(196),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_197
		&MOBYUPDATE(197),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_198
		&MOBYUPDATE(198),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_199
		&MOBYUPDATE(199),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_200
		&MOBYUPDATE(200),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_201
		&MOBYUPDATE(201),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_202
		&MOBYUPDATE(201), // Gem containers
	#else
		0,
	#endif

	#ifdef HAS_MOBY_203
		&MOBYUPDATE(201), // Gem containers
	#else
		0,
	#endif

	#ifdef HAS_MOBY_204
		&MOBYUPDATE(204),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_205
		&MOBYUPDATE(205),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_206
		&MOBYUPDATE(206),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_207
		&MOBYUPDATE(207),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_208
		&MOBYUPDATE(208),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_209
		&MOBYUPDATE(209),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_210
		&MOBYUPDATE(210),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_211
		&MOBYUPDATE(16), // match for butterflies
	#else
		0,
	#endif

	#ifdef HAS_MOBY_212
		&MOBYUPDATE(212),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_213
		&MOBYUPDATE(213),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_214
		&MOBYUPDATE(213), // Lost Fleet walls
	#else
		0,
	#endif

	#ifdef HAS_MOBY_215
		&MOBYUPDATE(215),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_216
		&MOBYUPDATE(216),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_217
		&MOBYUPDATE(217),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_218
		&MOBYUPDATE(218),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_219
		&MOBYUPDATE(219),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_220
		&MOBYUPDATE(220),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_221
		&MOBYUPDATE(221),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_222
		&MOBYUPDATE(222),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_223
		&MOBYUPDATE(223),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_224
		&MOBYUPDATE(224),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_225
		&MOBYUPDATE(225),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_226
		&MOBYUPDATE(226),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_227
		&MOBYUPDATE(227),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_228
		&MOBYUPDATE(228),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_229
		&MOBYUPDATE(229),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_230
		&MOBYUPDATE(230),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_231
		&MOBYUPDATE(231),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_232
		&MOBYUPDATE(232),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_233
		&MOBYUPDATE(233),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_234
		&MOBYUPDATE(234),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_235
		&MOBYUPDATE(235),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_236
		&MOBYUPDATE(236),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_237
		&MOBYUPDATE(237),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_238
		&MOBYUPDATE(238),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_239
		&MOBYUPDATE(239),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_240
		&MOBYUPDATE(240),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_241
		&MOBYUPDATE(241),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_242
		&MOBYUPDATE(242),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_243
		&MOBYUPDATE(243),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_244
		&MOBYUPDATE(244),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_245
		&MOBYUPDATE(245),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_246
		&MOBYUPDATE(246),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_247
		&MOBYUPDATE(247),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_248
		&MOBYUPDATE(248),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_249
		&MOBYUPDATE(249),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_250
		&MOBYUPDATE(250),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_251
		&MOBYUPDATE(54), // Skateboards and skateboard spawners
	#else
		0,
	#endif

	#ifdef HAS_MOBY_252
		&MOBYUPDATE(252),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_253
		&MOBYUPDATE(253),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_254
		&MOBYUPDATE(254),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_255
		&MOBYUPDATE(255),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_256
		&MOBYUPDATE(256),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_257
		&MOBYUPDATE(257),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_258
		&MOBYUPDATE(258),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_259
		&MOBYUPDATE(259),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_260
		&MOBYUPDATE(260),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_261
		&MOBYUPDATE(261),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_262
		&MOBYUPDATE(262),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_263
		&MOBYUPDATE(263),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_264
		&MOBYUPDATE(264),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_265
		&MOBYUPDATE(265),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_266
		&MOBYUPDATE(266),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_267
		&MOBYUPDATE(267),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_268
		&MOBYUPDATE(268),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_269
		&MOBYUPDATE(269),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_270
		&MOBYUPDATE(270),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_271
		&MOBYUPDATE(271),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_272
		&MOBYUPDATE(272),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_273
		&MOBYUPDATE(273),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_274
		&MOBYUPDATE(274),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_275
		&MOBYUPDATE(752), // Dino Mines fragments, 752 was likely earlier
	#else
		0,
	#endif

	#ifdef HAS_MOBY_276
		&MOBYUPDATE(276),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_277
		&MOBYUPDATE(277),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_278
		&MOBYUPDATE(278),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_279
		&MOBYUPDATE(279),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_280
		&MOBYUPDATE(280),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_281
		&MOBYUPDATE(281),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_282
		&MOBYUPDATE(282),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_283
		&MOBYUPDATE(283),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_284
		&MOBYUPDATE(284),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_285
		&MOBYUPDATE(285),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_286
		&MOBYUPDATE(286),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_287
		&MOBYUPDATE(287),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_288
		&MOBYUPDATE(288),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_289
		&MOBYUPDATE(289),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_290
		&MOBYUPDATE(290),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_291
		&MOBYUPDATE(291),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_292
		&MOBYUPDATE(292),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_293
		&MOBYUPDATE(293),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_294
		&MOBYUPDATE(293), // Sgt Byrd's Base fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_295
		&MOBYUPDATE(295),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_296
		&MOBYUPDATE(296),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_297
		&MOBYUPDATE(297),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_298
		&MOBYUPDATE(298),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_299
		&MOBYUPDATE(299),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_300
		&MOBYUPDATE(300),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_301
		&MOBYUPDATE(301),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_302
		&MOBYUPDATE(302),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_303
		&MOBYUPDATE(303),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_304
		&MOBYUPDATE(304),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_305
		&MOBYUPDATE(305),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_306
		&MOBYUPDATE(306),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_307
		&MOBYUPDATE(306), // common fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_308
		&MOBYUPDATE(306), // common fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_309
		&MOBYUPDATE(306), // common fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_310
		&MOBYUPDATE(306), // common fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_311
		&MOBYUPDATE(311),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_312
		&MOBYUPDATE(312),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_313
		&MOBYUPDATE(313),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_314
		&MOBYUPDATE(314),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_315
		&MOBYUPDATE(315),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_316
		&MOBYUPDATE(316),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_317
		&MOBYUPDATE(317),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_318
		&MOBYUPDATE(318),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_319
		&MOBYUPDATE(319),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_320
		&MOBYUPDATE(320),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_321
		&MOBYUPDATE(321),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_322
		&MOBYUPDATE(322),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_323
		&MOBYUPDATE(323),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_324
		&MOBYUPDATE(121), // Ice blocks
	#else
		0,
	#endif

	#ifdef HAS_MOBY_325
		&MOBYUPDATE(325),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_326
		&MOBYUPDATE(326),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_327
		&MOBYUPDATE(327),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_328
		&MOBYUPDATE(328),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_329
		&MOBYUPDATE(329),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_330
		&MOBYUPDATE(330),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_331
		&MOBYUPDATE(331),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_332
		&MOBYUPDATE(332),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_333
		&MOBYUPDATE(333),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_334
		&MOBYUPDATE(334),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_335
		&MOBYUPDATE(335),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_336
		&MOBYUPDATE(336),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_337
		&MOBYUPDATE(337),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_338
		&MOBYUPDATE(338),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_339
		&MOBYUPDATE(339),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_340
		&MOBYUPDATE(340),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_341
		&MOBYUPDATE(341),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_342
		&MOBYUPDATE(342),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_343
		&MOBYUPDATE(343),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_344
		&MOBYUPDATE(344),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_345
		&MOBYUPDATE(345),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_346
		&MOBYUPDATE(346),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_347
		&MOBYUPDATE(347),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_348
		&MOBYUPDATE(348),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_349
		&MOBYUPDATE(349),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_350
		&MOBYUPDATE(350),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_351
		&MOBYUPDATE(351),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_352
		&MOBYUPDATE(352),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_353
		&MOBYUPDATE(353),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_354
		&MOBYUPDATE(354),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_355
		&MOBYUPDATE(355),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_356
		&MOBYUPDATE(356),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_357
		&MOBYUPDATE(357),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_358
		&MOBYUPDATE(358),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_359
		&MOBYUPDATE(359),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_360
		&MOBYUPDATE(360),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_361
		&MOBYUPDATE(361),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_362
		&MOBYUPDATE(362),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_363
		&MOBYUPDATE(363),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_364
		&MOBYUPDATE(364),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_365
		&MOBYUPDATE(365),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_366
		&MOBYUPDATE(366),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_367
		&MOBYUPDATE(367),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_368
		&MOBYUPDATE(368),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_369
		&MOBYUPDATE(369),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_370
		&MOBYUPDATE(370),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_371
		&MOBYUPDATE(371),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_372
		&MOBYUPDATE(372),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_373
		&MOBYUPDATE(373),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_374
		&MOBYUPDATE(374),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_375
		&MOBYUPDATE(375),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_376
		&MOBYUPDATE(376),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_377
		&MOBYUPDATE(377),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_378
		&MOBYUPDATE(378),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_379
		&MOBYUPDATE(379),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_380
		&MOBYUPDATE(380),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_381
		&MOBYUPDATE(381),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_382
		&MOBYUPDATE(382),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_383
		&MOBYUPDATE(383),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_384
		&MOBYUPDATE(384),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_385
		&MOBYUPDATE(385),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_386
		&MOBYUPDATE(386),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_387
		&MOBYUPDATE(387),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_388
		&MOBYUPDATE(388),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_389
		&MOBYUPDATE(389),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_390
		&MOBYUPDATE(390),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_391
		&MOBYUPDATE(391),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_392
		&MOBYUPDATE(392),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_393
		&MOBYUPDATE(393),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_394
		&MOBYUPDATE(394),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_395
		&MOBYUPDATE(395),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_396
		&MOBYUPDATE(396),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_397
		&MOBYUPDATE(397),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_398
		&MOBYUPDATE(398),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_399
		&MOBYUPDATE(399),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_400
		&MOBYUPDATE(400),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_401
		&MOBYUPDATE(401),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_402
		&MOBYUPDATE(402),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_403
		&MOBYUPDATE(403),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_404
		&MOBYUPDATE(404),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_405
		&MOBYUPDATE(405),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_406
		&MOBYUPDATE(406),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_407
		&MOBYUPDATE(407),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_408
		&MOBYUPDATE(325), // Signs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_409
		&MOBYUPDATE(409),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_410
		&MOBYUPDATE(410),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_411
		&MOBYUPDATE(411),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_412
		&MOBYUPDATE(412),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_413
		&MOBYUPDATE(413),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_414
		&MOBYUPDATE(414),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_415
		&MOBYUPDATE(415),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_416
		&MOBYUPDATE(416),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_417
		&MOBYUPDATE(417),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_418
		&MOBYUPDATE(418),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_419
		&MOBYUPDATE(419),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_420
		&MOBYUPDATE(420),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_421
		&MOBYUPDATE(421),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_422
		&MOBYUPDATE(422),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_423
		&MOBYUPDATE(423),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_424
		&MOBYUPDATE(423), // Seashell Shore / Charmed Ridge / Haunted Tomb fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_425
		&MOBYUPDATE(425),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_426
		&MOBYUPDATE(426),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_427
		&MOBYUPDATE(427),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_428
		&MOBYUPDATE(428),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_429
		&MOBYUPDATE(429),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_430
		&MOBYUPDATE(430),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_431
		&MOBYUPDATE(431),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_432
		&MOBYUPDATE(432),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_433
		&MOBYUPDATE(433),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_434
		&MOBYUPDATE(432), // Sunrise Spring Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_435
		&MOBYUPDATE(432), // Sunrise Spring Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_436
		&MOBYUPDATE(432), // Sunrise Spring Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_437
		&MOBYUPDATE(437),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_438
		&MOBYUPDATE(438),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_439
		&MOBYUPDATE(439),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_440
		&MOBYUPDATE(440),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_441
		&MOBYUPDATE(441),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_442
		&MOBYUPDATE(442),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_443
		&MOBYUPDATE(443),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_444
		&MOBYUPDATE(444),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_445
		&MOBYUPDATE(445),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_446
		&MOBYUPDATE(446),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_447
		&MOBYUPDATE(447),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_448
		&MOBYUPDATE(448),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_449
		&MOBYUPDATE(449),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_450
		&MOBYUPDATE(421), // Sand blocks
	#else
		0,
	#endif

	#ifdef HAS_MOBY_451
		&MOBYUPDATE(423), // Seashell Shore / Charmed Ridge / Haunted Tomb fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_452
		&MOBYUPDATE(452),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_453
		&MOBYUPDATE(453),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_454
		&MOBYUPDATE(454),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_455
		&MOBYUPDATE(455),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_456
		&MOBYUPDATE(456),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_457
		&MOBYUPDATE(457),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_458
		&MOBYUPDATE(458),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_459
		&MOBYUPDATE(459),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_460
		&MOBYUPDATE(460),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_461
		&MOBYUPDATE(54), // Skateboards and skateboard spawners
	#else
		0,
	#endif

	#ifdef HAS_MOBY_462
		&MOBYUPDATE(462),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_463
		&MOBYUPDATE(463),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_464
		&MOBYUPDATE(464),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_465
		&MOBYUPDATE(465),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_466
		&MOBYUPDATE(466),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_467
		&MOBYUPDATE(467),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_468
		&MOBYUPDATE(468),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_469
		&MOBYUPDATE(469),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_470
		&MOBYUPDATE(421), // Sand blocks
	#else
		0,
	#endif

	#ifdef HAS_MOBY_471
		&MOBYUPDATE(421), // Sand blocks
	#else
		0,
	#endif

	#ifdef HAS_MOBY_472
		&MOBYUPDATE(421), // Sand blocks
	#else
		0,
	#endif

	#ifdef HAS_MOBY_473
		&MOBYUPDATE(421), // Sand blocks
	#else
		0,
	#endif

	#ifdef HAS_MOBY_474
		&MOBYUPDATE(423), // Seashell Shore / Charmed Ridge / Haunted Tomb fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_475
		&MOBYUPDATE(475),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_476
		&MOBYUPDATE(423), // Seashell Shore / Charmed Ridge / Haunted Tomb fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_477
		&MOBYUPDATE(477),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_478
		&MOBYUPDATE(478),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_479
		&MOBYUPDATE(479),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_480
		&MOBYUPDATE(480),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_481
		&MOBYUPDATE(423), // Seashell Shore / Charmed Ridge / Haunted Tomb fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_482
		&MOBYUPDATE(482),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_483
		&MOBYUPDATE(483),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_484
		&MOBYUPDATE(484),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_485
		&MOBYUPDATE(485),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_486
		&MOBYUPDATE(486),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_487
		&MOBYUPDATE(487),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_488
		&MOBYUPDATE(488),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_489
		&MOBYUPDATE(489),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_490
		&MOBYUPDATE(490),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_491
		&MOBYUPDATE(327), // Crab fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_492
		&MOBYUPDATE(492),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_493
		&MOBYUPDATE(493),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_494
		&MOBYUPDATE(494),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_495
		&MOBYUPDATE(495),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_496
		&MOBYUPDATE(496),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_497
		&MOBYUPDATE(497),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_498
		&MOBYUPDATE(498),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_499
		&MOBYUPDATE(499),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_500
		&MOBYUPDATE(500),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_501
		&MOBYUPDATE(290), // A few overlapping fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_502
		&MOBYUPDATE(502),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_503
		&MOBYUPDATE(503),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_504
		&MOBYUPDATE(467), // Desert Ruins enemy fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_505
		&MOBYUPDATE(505),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_506
		&MOBYUPDATE(506),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_507
		&MOBYUPDATE(507),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_508
		&MOBYUPDATE(508),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_509
		&MOBYUPDATE(509),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_510
		&MOBYUPDATE(510),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_511
		&MOBYUPDATE(511),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_512
		&MOBYUPDATE(512),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_513
		&MOBYUPDATE(513),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_514
		&MOBYUPDATE(514),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_515
		&MOBYUPDATE(515),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_516
		&MOBYUPDATE(516),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_517
		&MOBYUPDATE(517),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_518
		&MOBYUPDATE(518),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_519
		&MOBYUPDATE(519),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_520
		&MOBYUPDATE(520),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_521
		&MOBYUPDATE(521),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_522
		&MOBYUPDATE(522),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_523
		&MOBYUPDATE(523),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_524
		&MOBYUPDATE(524),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_525
		&MOBYUPDATE(525),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_526
		&MOBYUPDATE(526),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_527
		&MOBYUPDATE(432), // Sunrise Spring Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_528
		&MOBYUPDATE(528),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_529
		&MOBYUPDATE(529),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_530
		&MOBYUPDATE(530),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_531
		&MOBYUPDATE(531),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_532
		&MOBYUPDATE(532),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_533
		&MOBYUPDATE(533),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_534
		&MOBYUPDATE(534),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_535
		&MOBYUPDATE(535),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_536
		&MOBYUPDATE(536),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_537
		&MOBYUPDATE(537),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_538
		&MOBYUPDATE(538),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_539
		&MOBYUPDATE(539),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_540
		&MOBYUPDATE(540),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_541
		&MOBYUPDATE(541),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_542
		&MOBYUPDATE(542),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_543
		&MOBYUPDATE(543),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_544
		&MOBYUPDATE(325), // Signs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_545
		&MOBYUPDATE(545),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_546
		&MOBYUPDATE(546),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_547
		&MOBYUPDATE(547),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_548
		&MOBYUPDATE(548),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_549
		&MOBYUPDATE(549),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_550
		&MOBYUPDATE(550),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_551
		&MOBYUPDATE(551),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_552
		&MOBYUPDATE(552),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_553
		&MOBYUPDATE(553),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_554
		&MOBYUPDATE(554),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_555
		&MOBYUPDATE(555),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_556
		&MOBYUPDATE(556),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_557
		&MOBYUPDATE(557),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_558
		&MOBYUPDATE(558),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_559
		&MOBYUPDATE(559),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_560
		&MOBYUPDATE(560),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_561
		&MOBYUPDATE(561),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_562
		&MOBYUPDATE(562),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_563
		&MOBYUPDATE(563),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_564
		&MOBYUPDATE(564),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_565
		&MOBYUPDATE(565),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_566
		&MOBYUPDATE(566),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_567
		&MOBYUPDATE(567),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_568
		&MOBYUPDATE(306), // common fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_569
		&MOBYUPDATE(564), // Enchanted Towers fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_570
		&MOBYUPDATE(290), // A few overlapping fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_571
		&MOBYUPDATE(571),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_572
		&MOBYUPDATE(572),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_573
		&MOBYUPDATE(573),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_574
		&MOBYUPDATE(574),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_575
		&MOBYUPDATE(575),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_576
		&MOBYUPDATE(576),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_577
		&MOBYUPDATE(577),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_578
		&MOBYUPDATE(578),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_579
		&MOBYUPDATE(579),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_580
		&MOBYUPDATE(580),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_581
		&MOBYUPDATE(581),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_582
		&MOBYUPDATE(582),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_583
		&MOBYUPDATE(583),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_584
		&MOBYUPDATE(584),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_585
		&MOBYUPDATE(585),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_586
		&MOBYUPDATE(586),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_587
		&MOBYUPDATE(587),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_588
		&MOBYUPDATE(588),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_589
		&MOBYUPDATE(589),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_590
		&MOBYUPDATE(590),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_591
		&MOBYUPDATE(591),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_592
		&MOBYUPDATE(592),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_593
		&MOBYUPDATE(593),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_594
		&MOBYUPDATE(594),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_595
		&MOBYUPDATE(595),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_596
		&MOBYUPDATE(596),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_597
		&MOBYUPDATE(597),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_598
		&MOBYUPDATE(598),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_599
		&MOBYUPDATE(599),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_600
		&MOBYUPDATE(600),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_601
		&MOBYUPDATE(601),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_602
		&MOBYUPDATE(602),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_603
		&MOBYUPDATE(603),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_604
		&MOBYUPDATE(604),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_605
		&MOBYUPDATE(605),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_606
		&MOBYUPDATE(606),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_607
		&MOBYUPDATE(607),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_608
		&MOBYUPDATE(608),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_609
		&MOBYUPDATE(609),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_610
		&MOBYUPDATE(610),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_611
		&MOBYUPDATE(611),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_612
		&MOBYUPDATE(612),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_613
		&MOBYUPDATE(613),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_614
		&MOBYUPDATE(614),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_615
		&MOBYUPDATE(615),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_616
		&MOBYUPDATE(318), // Electrical forcefields
	#else
		0,
	#endif

	#ifdef HAS_MOBY_617
		&MOBYUPDATE(617),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_618
		&MOBYUPDATE(618),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_619
		&MOBYUPDATE(423), // Seashell Shore / Charmed Ridge / Haunted Tomb fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_620
		&MOBYUPDATE(620),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_621
		&MOBYUPDATE(621),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_622
		&MOBYUPDATE(622),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_623
		&MOBYUPDATE(623),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_624
		&MOBYUPDATE(624),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_625
		&MOBYUPDATE(625),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_626
		&MOBYUPDATE(626),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_627
		&MOBYUPDATE(627),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_628
		&MOBYUPDATE(628),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_629
		&MOBYUPDATE(629),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_630
		&MOBYUPDATE(306), // common fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_631
		&MOBYUPDATE(306), // common fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_632
		&MOBYUPDATE(632),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_633
		&MOBYUPDATE(633),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_634
		&MOBYUPDATE(634),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_635
		&MOBYUPDATE(635),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_636
		&MOBYUPDATE(636),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_637
		&MOBYUPDATE(637),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_638
		&MOBYUPDATE(638),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_639
		&MOBYUPDATE(639),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_640
		&MOBYUPDATE(640),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_641
		&MOBYUPDATE(641),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_642
		&MOBYUPDATE(642),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_643
		&MOBYUPDATE(643),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_644
		&MOBYUPDATE(644),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_645
		&MOBYUPDATE(645),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_646
		&MOBYUPDATE(646),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_647
		&MOBYUPDATE(647),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_648
		&MOBYUPDATE(467), // Desert Ruins enemy fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_649
		&MOBYUPDATE(649),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_650
		&MOBYUPDATE(650),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_651
		&MOBYUPDATE(651),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_652
		&MOBYUPDATE(652),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_653
		&MOBYUPDATE(653),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_654
		&MOBYUPDATE(654),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_655
		&MOBYUPDATE(655),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_656
		&MOBYUPDATE(656),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_657
		&MOBYUPDATE(657),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_658
		&MOBYUPDATE(658),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_659
		&MOBYUPDATE(659),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_660
		&MOBYUPDATE(54), // Skateboards and skateboard spawners
	#else
		0,
	#endif

	#ifdef HAS_MOBY_661
		&MOBYUPDATE(661),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_662
		&MOBYUPDATE(661), // Midday Garden Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_663
		&MOBYUPDATE(661), // Midday Garden Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_664
		&MOBYUPDATE(661), // Midday Garden Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_665
		&MOBYUPDATE(665),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_666
		&MOBYUPDATE(666),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_667
		&MOBYUPDATE(667),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_668
		&MOBYUPDATE(668),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_669
		&MOBYUPDATE(661), // Midday Garden Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_670
		&MOBYUPDATE(670),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_671
		&MOBYUPDATE(671),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_672
		&MOBYUPDATE(672),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_673
		&MOBYUPDATE(673),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_674
		&MOBYUPDATE(674),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_675
		&MOBYUPDATE(674), // Evening Lake Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_676
		&MOBYUPDATE(674), // Evening Lake Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_677
		&MOBYUPDATE(674), // Evening Lake Home NPCs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_678
		&MOBYUPDATE(678),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_679
		&MOBYUPDATE(679),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_680
		&MOBYUPDATE(680),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_681
		&MOBYUPDATE(681),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_682
		&MOBYUPDATE(682),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_683
		&MOBYUPDATE(325), // Signs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_684
		&MOBYUPDATE(325), // Signs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_685
		&MOBYUPDATE(325), // Signs
	#else
		0,
	#endif

	#ifdef HAS_MOBY_686
		&MOBYUPDATE(686),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_687
		&MOBYUPDATE(687),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_688
		&MOBYUPDATE(688),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_689
		&MOBYUPDATE(689),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_690
		&MOBYUPDATE(690),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_691
		&MOBYUPDATE(691),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_692
		&MOBYUPDATE(692),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_693
		&MOBYUPDATE(693),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_694
		&MOBYUPDATE(694),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_695
		&MOBYUPDATE(695),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_696
		&MOBYUPDATE(696),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_697
		&MOBYUPDATE(697),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_698
		&MOBYUPDATE(698),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_699
		&MOBYUPDATE(699),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_700
		&MOBYUPDATE(700),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_701
		&MOBYUPDATE(701),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_702
		&MOBYUPDATE(702),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_703
		&MOBYUPDATE(703),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_704
		&MOBYUPDATE(704),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_705
		&MOBYUPDATE(705),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_706
		&MOBYUPDATE(706),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_707
		&MOBYUPDATE(707),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_708
		&MOBYUPDATE(708),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_709
		&MOBYUPDATE(709),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_710
		&MOBYUPDATE(710),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_711
		&MOBYUPDATE(711),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_712
		&MOBYUPDATE(712),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_713
		&MOBYUPDATE(713),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_714
		&MOBYUPDATE(714),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_715
		&MOBYUPDATE(715),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_716
		&MOBYUPDATE(716),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_717
		&MOBYUPDATE(717),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_718
		&MOBYUPDATE(718),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_719
		&MOBYUPDATE(719),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_720
		&MOBYUPDATE(720),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_721
		&MOBYUPDATE(721),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_722
		&MOBYUPDATE(722),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_723
		&MOBYUPDATE(723),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_724
		&MOBYUPDATE(724),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_725
		&MOBYUPDATE(725),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_726
		&MOBYUPDATE(726),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_727
		&MOBYUPDATE(727),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_728
		&MOBYUPDATE(728),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_729
		&MOBYUPDATE(729),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_730
		&MOBYUPDATE(730),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_731
		&MOBYUPDATE(731),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_732
		&MOBYUPDATE(732),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_733
		&MOBYUPDATE(733),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_734
		&MOBYUPDATE(734),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_735
		&MOBYUPDATE(735),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_736
		&MOBYUPDATE(735), // Midnight Mountain / Desert Ruins fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_737
		&MOBYUPDATE(735), // Midnight Mountain / Desert Ruins fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_738
		&MOBYUPDATE(735), // Midnight Mountain / Desert Ruins fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_739
		&MOBYUPDATE(739),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_740
		&MOBYUPDATE(740),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_741
		&MOBYUPDATE(741),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_742
		&MOBYUPDATE(742),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_743
		&MOBYUPDATE(743),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_744
		&MOBYUPDATE(744),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_745
		&MOBYUPDATE(745),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_746
		&MOBYUPDATE(746),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_747
		&MOBYUPDATE(747),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_748
		&MOBYUPDATE(467), // Desert Ruins enemy fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_749
		&MOBYUPDATE(744), // Dino Mines fragments
	#else
		0,
	#endif

	#ifdef HAS_MOBY_750
		&MOBYUPDATE(750),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_751
		&MOBYUPDATE(751),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_752
		&MOBYUPDATE(752),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_753
		&MOBYUPDATE(753),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_754
		&MOBYUPDATE(754),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_755
		&MOBYUPDATE(755),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_756
		&MOBYUPDATE(756),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_757
		&MOBYUPDATE(757),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_758
		&MOBYUPDATE(758),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_759
		&MOBYUPDATE(759),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_760
		&MOBYUPDATE(760),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_761
		&MOBYUPDATE(761),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_762
		&MOBYUPDATE(762),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_763
		&MOBYUPDATE(763),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_764
		&MOBYUPDATE(764),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_765
		&MOBYUPDATE(765),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_766
		&MOBYUPDATE(766),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_767
		&MOBYUPDATE(767),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_768
		&MOBYUPDATE(768),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_769
		&MOBYUPDATE(769),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_770
		&MOBYUPDATE(770),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_771
		&MOBYUPDATE(771),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_772
		&MOBYUPDATE(772),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_773
		&MOBYUPDATE(773),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_774
		&MOBYUPDATE(774),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_775
		&MOBYUPDATE(775),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_776
		&MOBYUPDATE(776),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_777
		&MOBYUPDATE(777),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_778
		&MOBYUPDATE(778),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_779
		&MOBYUPDATE(779),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_780
		&MOBYUPDATE(780),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_781
		&MOBYUPDATE(781),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_782
		&MOBYUPDATE(782),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_783
		&MOBYUPDATE(783),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_784
		&MOBYUPDATE(784),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_785
		&MOBYUPDATE(785),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_786
		&MOBYUPDATE(786),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_787
		&MOBYUPDATE(787),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_788
		&MOBYUPDATE(788),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_789
		&MOBYUPDATE(789),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_790
		&MOBYUPDATE(790),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_791
		&MOBYUPDATE(791),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_792
		&MOBYUPDATE(792),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_793
		&MOBYUPDATE(793),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_794
		&MOBYUPDATE(794),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_795
		&MOBYUPDATE(795),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_796
		&MOBYUPDATE(796),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_797
		&MOBYUPDATE(797),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_798
		&MOBYUPDATE(798),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_799
		&MOBYUPDATE(799),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_800
		&MOBYUPDATE(800),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_801
		&MOBYUPDATE(801),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_802
		&MOBYUPDATE(802),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_803
		&MOBYUPDATE(803),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_804
		&MOBYUPDATE(804),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_805
		&MOBYUPDATE(805),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_806
		&MOBYUPDATE(806),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_807
		&MOBYUPDATE(807),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_808
		&MOBYUPDATE(808),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_809
		&MOBYUPDATE(809),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_810
		&MOBYUPDATE(810),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_811
		&MOBYUPDATE(811),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_812
		&MOBYUPDATE(812),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_813
		&MOBYUPDATE(813),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_814
		&MOBYUPDATE(814),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_815
		&MOBYUPDATE(815),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_816
		&MOBYUPDATE(816),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_817
		&MOBYUPDATE(817),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_818
		&MOBYUPDATE(818),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_819
		&MOBYUPDATE(819),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_820
		&MOBYUPDATE(820),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_821
		&MOBYUPDATE(821),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_822
		&MOBYUPDATE(822),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_823
		&MOBYUPDATE(823),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_824
		&MOBYUPDATE(824),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_825
		&MOBYUPDATE(825),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_826
		&MOBYUPDATE(826),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_827
		&MOBYUPDATE(827),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_828
		&MOBYUPDATE(828),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_829
		&MOBYUPDATE(829),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_830
		&MOBYUPDATE(830),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_831
		&MOBYUPDATE(831),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_832
		&MOBYUPDATE(832),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_833
		&MOBYUPDATE(833),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_834
		&MOBYUPDATE(834),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_835
		&MOBYUPDATE(835),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_836
		&MOBYUPDATE(836),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_837
		&MOBYUPDATE(837),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_838
		&MOBYUPDATE(838),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_839
		&MOBYUPDATE(839),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_840
		&MOBYUPDATE(840),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_841
		&MOBYUPDATE(841),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_842
		&MOBYUPDATE(842),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_843
		&MOBYUPDATE(843),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_844
		&MOBYUPDATE(844),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_845
		&MOBYUPDATE(845),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_846
		&MOBYUPDATE(846),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_847
		&MOBYUPDATE(847),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_848
		&MOBYUPDATE(848),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_849
		&MOBYUPDATE(849),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_850
		&MOBYUPDATE(850),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_851
		&MOBYUPDATE(851),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_852
		&MOBYUPDATE(852),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_853
		&MOBYUPDATE(853),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_854
		&MOBYUPDATE(854),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_855
		&MOBYUPDATE(855),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_856
		&MOBYUPDATE(856),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_857
		&MOBYUPDATE(857),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_858
		&MOBYUPDATE(858),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_859
		&MOBYUPDATE(859),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_860
		&MOBYUPDATE(860),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_861
		&MOBYUPDATE(861),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_862
		&MOBYUPDATE(862),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_863
		&MOBYUPDATE(863),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_864
		&MOBYUPDATE(864),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_865
		&MOBYUPDATE(865),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_866
		&MOBYUPDATE(866),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_867
		&MOBYUPDATE(867),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_868
		&MOBYUPDATE(868),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_869
		&MOBYUPDATE(869),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_870
		&MOBYUPDATE(870),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_871
		&MOBYUPDATE(871),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_872
		&MOBYUPDATE(872),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_873
		&MOBYUPDATE(873),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_874
		&MOBYUPDATE(874),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_875
		&MOBYUPDATE(875),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_876
		&MOBYUPDATE(876),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_877
		&MOBYUPDATE(877),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_878
		&MOBYUPDATE(878),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_879
		&MOBYUPDATE(879),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_880
		&MOBYUPDATE(880),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_881
		&MOBYUPDATE(881),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_882
		&MOBYUPDATE(882),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_883
		&MOBYUPDATE(883),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_884
		&MOBYUPDATE(884),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_885
		&MOBYUPDATE(885),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_886
		&MOBYUPDATE(886),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_887
		&MOBYUPDATE(887),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_888
		&MOBYUPDATE(888),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_889
		&MOBYUPDATE(889),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_890
		&MOBYUPDATE(890),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_891
		&MOBYUPDATE(891),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_892
		&MOBYUPDATE(892),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_893
		&MOBYUPDATE(893),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_894
		&MOBYUPDATE(894),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_895
		&MOBYUPDATE(895),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_896
		&MOBYUPDATE(896),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_897
		&MOBYUPDATE(897),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_898
		&MOBYUPDATE(898),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_899
		&MOBYUPDATE(899),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_900
		&MOBYUPDATE(900),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_901
		&MOBYUPDATE(901),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_902
		&MOBYUPDATE(902),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_903
		&MOBYUPDATE(903),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_904
		&MOBYUPDATE(904),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_905
		&MOBYUPDATE(905),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_906
		&MOBYUPDATE(906),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_907
		&MOBYUPDATE(907),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_908
		&MOBYUPDATE(908),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_909
		&MOBYUPDATE(909),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_910
		&MOBYUPDATE(910),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_911
		&MOBYUPDATE(911),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_912
		&MOBYUPDATE(912),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_913
		&MOBYUPDATE(913),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_914
		&MOBYUPDATE(914),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_915
		&MOBYUPDATE(915),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_916
		&MOBYUPDATE(916),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_917
		&MOBYUPDATE(917),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_918
		&MOBYUPDATE(918),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_919
		&MOBYUPDATE(919),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_920
		&MOBYUPDATE(920),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_921
		&MOBYUPDATE(921),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_922
		&MOBYUPDATE(922),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_923
		&MOBYUPDATE(923),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_924
		&MOBYUPDATE(924),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_925
		&MOBYUPDATE(925),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_926
		&MOBYUPDATE(926),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_927
		&MOBYUPDATE(927),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_928
		&MOBYUPDATE(928),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_929
		&MOBYUPDATE(929),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_930
		&MOBYUPDATE(930),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_931
		&MOBYUPDATE(931),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_932
		&MOBYUPDATE(932),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_933
		&MOBYUPDATE(933),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_934
		&MOBYUPDATE(934),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_935
		&MOBYUPDATE(935),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_936
		&MOBYUPDATE(936),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_937
		&MOBYUPDATE(937),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_938
		&MOBYUPDATE(938),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_939
		&MOBYUPDATE(939),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_940
		&MOBYUPDATE(940),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_941
		&MOBYUPDATE(941),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_942
		&MOBYUPDATE(942),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_943
		&MOBYUPDATE(943),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_944
		&MOBYUPDATE(944),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_945
		&MOBYUPDATE(945),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_946
		&MOBYUPDATE(946),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_947
		&MOBYUPDATE(947),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_948
		&MOBYUPDATE(948),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_949
		&MOBYUPDATE(949),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_950
		&MOBYUPDATE(950),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_951
		&MOBYUPDATE(951),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_952
		&MOBYUPDATE(952),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_953
		&MOBYUPDATE(953),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_954
		&MOBYUPDATE(954),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_955
		&MOBYUPDATE(955),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_956
		&MOBYUPDATE(956),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_957
		&MOBYUPDATE(957),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_958
		&MOBYUPDATE(958),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_959
		&MOBYUPDATE(959),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_960
		&MOBYUPDATE(960),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_961
		&MOBYUPDATE(961),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_962
		&MOBYUPDATE(962),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_963
		&MOBYUPDATE(963),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_964
		&MOBYUPDATE(964),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_965
		&MOBYUPDATE(965),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_966
		&MOBYUPDATE(966),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_967
		&MOBYUPDATE(967),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_968
		&MOBYUPDATE(968),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_969
		&MOBYUPDATE(969),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_970
		&MOBYUPDATE(970),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_971
		&MOBYUPDATE(971),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_972
		&MOBYUPDATE(972),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_973
		&MOBYUPDATE(973),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_974
		&MOBYUPDATE(974),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_975
		&MOBYUPDATE(975),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_976
		&MOBYUPDATE(976),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_977
		&MOBYUPDATE(977),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_978
		&MOBYUPDATE(978),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_979
		&MOBYUPDATE(979),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_980
		&MOBYUPDATE(980),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_981
		&MOBYUPDATE(981),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_982
		&MOBYUPDATE(982),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_983
		&MOBYUPDATE(983),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_984
		&MOBYUPDATE(984),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_985
		&MOBYUPDATE(985),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_986
		&MOBYUPDATE(986),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_987
		&MOBYUPDATE(987),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_988
		&MOBYUPDATE(988),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_989
		&MOBYUPDATE(989),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_990
		&MOBYUPDATE(990),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_991
		&MOBYUPDATE(991),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_992
		&MOBYUPDATE(992),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_993
		&MOBYUPDATE(993),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_994
		&MOBYUPDATE(994),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_995
		&MOBYUPDATE(995),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_996
		&MOBYUPDATE(996),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_997
		&MOBYUPDATE(997),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_998
		&MOBYUPDATE(998),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_999
		&MOBYUPDATE(999),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1000
		&MOBYUPDATE(1000),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1001
		&MOBYUPDATE(1001),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1002
		&MOBYUPDATE(1002),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1003
		&MOBYUPDATE(1003),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1004
		&MOBYUPDATE(1004),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1005
		&MOBYUPDATE(1005),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1006
		&MOBYUPDATE(1006),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1007
		&MOBYUPDATE(1007),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1008
		&MOBYUPDATE(1008),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1009
		&MOBYUPDATE(1009),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1010
		&MOBYUPDATE(1010),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1011
		&MOBYUPDATE(1011),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1012
		&MOBYUPDATE(1012),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1013
		&MOBYUPDATE(1013),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1014
		&MOBYUPDATE(1014),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1015
		&MOBYUPDATE(1015),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1016
		&MOBYUPDATE(1016),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1017
		&MOBYUPDATE(1017),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1018
		&MOBYUPDATE(1018),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1019
		&MOBYUPDATE(1019),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1020
		&MOBYUPDATE(1020),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1021
		&MOBYUPDATE(1021),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1022
		&MOBYUPDATE(1022),
	#else
		0,
	#endif

	#ifdef HAS_MOBY_1023
		&MOBYUPDATE(1023),
	#else
		0,
	#endif

};
