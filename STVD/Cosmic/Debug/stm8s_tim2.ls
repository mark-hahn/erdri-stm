   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.14 - 18 Nov 2019
   3                     ; Generator (Limited) V4.4.11 - 19 Nov 2019
   4                     ; Optimizer V4.4.11 - 19 Nov 2019
  47                     ; 46 void TIM2_DeInit(void)
  47                     ; 47 {
  49                     	switch	.text
  50  0000               _TIM2_DeInit:
  54                     ; 49     TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  56  0000 725f5300      	clr	21248
  57                     ; 50     TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  59  0004 725f5301      	clr	21249
  60                     ; 51     TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  62  0008 725f5303      	clr	21251
  63                     ; 54     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  65  000c 725f5308      	clr	21256
  66                     ; 55     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  68  0010 725f5309      	clr	21257
  69                     ; 59     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  71  0014 725f5308      	clr	21256
  72                     ; 60     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  74  0018 725f5309      	clr	21257
  75                     ; 61     TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  77  001c 725f5305      	clr	21253
  78                     ; 62     TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  80  0020 725f5306      	clr	21254
  81                     ; 63     TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  83  0024 725f5307      	clr	21255
  84                     ; 64     TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  86  0028 725f530a      	clr	21258
  87                     ; 65     TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  89  002c 725f530b      	clr	21259
  90                     ; 66     TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  92  0030 725f530c      	clr	21260
  93                     ; 67     TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  95  0034 35ff530d      	mov	21261,#255
  96                     ; 68     TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  98  0038 35ff530e      	mov	21262,#255
  99                     ; 69     TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 101  003c 725f530f      	clr	21263
 102                     ; 70     TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 104  0040 725f5310      	clr	21264
 105                     ; 71     TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 107  0044 725f5311      	clr	21265
 108                     ; 72     TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 110  0048 725f5312      	clr	21266
 111                     ; 73     TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 113  004c 725f5313      	clr	21267
 114                     ; 74     TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 116  0050 725f5314      	clr	21268
 117                     ; 75     TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 119  0054 725f5302      	clr	21250
 120                     ; 76 }
 123  0058 81            	ret	
 291                     ; 85 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 291                     ; 86                         uint16_t TIM2_Period)
 291                     ; 87 {
 292                     	switch	.text
 293  0059               _TIM2_TimeBaseInit:
 295       ffffffff      OFST: set -1
 298                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 300  0059 c7530c        	ld	21260,a
 301                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 303  005c 7b03          	ld	a,(OFST+4,sp)
 304  005e c7530d        	ld	21261,a
 305                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 307  0061 7b04          	ld	a,(OFST+5,sp)
 308  0063 c7530e        	ld	21262,a
 309                     ; 93 }
 312  0066 81            	ret	
 469                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 469                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 469                     ; 106                   uint16_t TIM2_Pulse,
 469                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 469                     ; 108 {
 470                     	switch	.text
 471  0067               _TIM2_OC1Init:
 473  0067 89            	pushw	x
 474  0068 88            	push	a
 475       00000001      OFST:	set	1
 478                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 480                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 482                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 484                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 486  0069 c65308        	ld	a,21256
 487  006c a4fc          	and	a,#252
 488  006e c75308        	ld	21256,a
 489                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 489                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 491  0071 7b08          	ld	a,(OFST+7,sp)
 492  0073 a402          	and	a,#2
 493  0075 6b01          	ld	(OFST+0,sp),a
 495  0077 9f            	ld	a,xl
 496  0078 a401          	and	a,#1
 497  007a 1a01          	or	a,(OFST+0,sp)
 498  007c ca5308        	or	a,21256
 499  007f c75308        	ld	21256,a
 500                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 500                     ; 122                             (uint8_t)TIM2_OCMode);
 502  0082 c65305        	ld	a,21253
 503  0085 a48f          	and	a,#143
 504  0087 1a02          	or	a,(OFST+1,sp)
 505  0089 c75305        	ld	21253,a
 506                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 508  008c 7b06          	ld	a,(OFST+5,sp)
 509  008e c7530f        	ld	21263,a
 510                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 512  0091 7b07          	ld	a,(OFST+6,sp)
 513  0093 c75310        	ld	21264,a
 514                     ; 127 }
 517  0096 5b03          	addw	sp,#3
 518  0098 81            	ret	
 582                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 582                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 582                     ; 140                   uint16_t TIM2_Pulse,
 582                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 582                     ; 142 {
 583                     	switch	.text
 584  0099               _TIM2_OC2Init:
 586  0099 89            	pushw	x
 587  009a 88            	push	a
 588       00000001      OFST:	set	1
 591                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 593                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 595                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 597                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 599  009b c65308        	ld	a,21256
 600  009e a4cf          	and	a,#207
 601  00a0 c75308        	ld	21256,a
 602                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 602                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 604  00a3 7b08          	ld	a,(OFST+7,sp)
 605  00a5 a420          	and	a,#32
 606  00a7 6b01          	ld	(OFST+0,sp),a
 608  00a9 9f            	ld	a,xl
 609  00aa a410          	and	a,#16
 610  00ac 1a01          	or	a,(OFST+0,sp)
 611  00ae ca5308        	or	a,21256
 612  00b1 c75308        	ld	21256,a
 613                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 613                     ; 158                             (uint8_t)TIM2_OCMode);
 615  00b4 c65306        	ld	a,21254
 616  00b7 a48f          	and	a,#143
 617  00b9 1a02          	or	a,(OFST+1,sp)
 618  00bb c75306        	ld	21254,a
 619                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 621  00be 7b06          	ld	a,(OFST+5,sp)
 622  00c0 c75311        	ld	21265,a
 623                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 625  00c3 7b07          	ld	a,(OFST+6,sp)
 626  00c5 c75312        	ld	21266,a
 627                     ; 164 }
 630  00c8 5b03          	addw	sp,#3
 631  00ca 81            	ret	
 695                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 695                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 695                     ; 177                   uint16_t TIM2_Pulse,
 695                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 695                     ; 179 {
 696                     	switch	.text
 697  00cb               _TIM2_OC3Init:
 699  00cb 89            	pushw	x
 700  00cc 88            	push	a
 701       00000001      OFST:	set	1
 704                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 706                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 708                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 710                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 712  00cd c65309        	ld	a,21257
 713  00d0 a4fc          	and	a,#252
 714  00d2 c75309        	ld	21257,a
 715                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 715                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 717  00d5 7b08          	ld	a,(OFST+7,sp)
 718  00d7 a402          	and	a,#2
 719  00d9 6b01          	ld	(OFST+0,sp),a
 721  00db 9f            	ld	a,xl
 722  00dc a401          	and	a,#1
 723  00de 1a01          	or	a,(OFST+0,sp)
 724  00e0 ca5309        	or	a,21257
 725  00e3 c75309        	ld	21257,a
 726                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 726                     ; 192                             (uint8_t)TIM2_OCMode);
 728  00e6 c65307        	ld	a,21255
 729  00e9 a48f          	and	a,#143
 730  00eb 1a02          	or	a,(OFST+1,sp)
 731  00ed c75307        	ld	21255,a
 732                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 734  00f0 7b06          	ld	a,(OFST+5,sp)
 735  00f2 c75313        	ld	21267,a
 736                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 738  00f5 7b07          	ld	a,(OFST+6,sp)
 739  00f7 c75314        	ld	21268,a
 740                     ; 198 }
 743  00fa 5b03          	addw	sp,#3
 744  00fc 81            	ret	
 937                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 937                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 937                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 937                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 937                     ; 214                  uint8_t TIM2_ICFilter)
 937                     ; 215 {
 938                     	switch	.text
 939  00fd               _TIM2_ICInit:
 941  00fd 89            	pushw	x
 942       00000000      OFST:	set	0
 945                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 947                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 949                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 951                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 953                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 955                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
 957  00fe 9e            	ld	a,xh
 958  00ff 4d            	tnz	a
 959  0100 2614          	jrne	L104
 960                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
 960                     ; 227                    (uint8_t)TIM2_ICSelection,
 960                     ; 228                    (uint8_t)TIM2_ICFilter);
 962  0102 7b07          	ld	a,(OFST+7,sp)
 963  0104 88            	push	a
 964  0105 7b06          	ld	a,(OFST+6,sp)
 965  0107 97            	ld	xl,a
 966  0108 7b03          	ld	a,(OFST+3,sp)
 967  010a 95            	ld	xh,a
 968  010b cd0409        	call	L3_TI1_Config
 970  010e 84            	pop	a
 971                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 973  010f 7b06          	ld	a,(OFST+6,sp)
 974  0111 cd032a        	call	_TIM2_SetIC1Prescaler
 977  0114 202b          	jra	L304
 978  0116               L104:
 979                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
 981  0116 7b01          	ld	a,(OFST+1,sp)
 982  0118 4a            	dec	a
 983  0119 2614          	jrne	L504
 984                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
 984                     ; 237                    (uint8_t)TIM2_ICSelection,
 984                     ; 238                    (uint8_t)TIM2_ICFilter);
 986  011b 7b07          	ld	a,(OFST+7,sp)
 987  011d 88            	push	a
 988  011e 7b06          	ld	a,(OFST+6,sp)
 989  0120 97            	ld	xl,a
 990  0121 7b03          	ld	a,(OFST+3,sp)
 991  0123 95            	ld	xh,a
 992  0124 cd0439        	call	L5_TI2_Config
 994  0127 84            	pop	a
 995                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 997  0128 7b06          	ld	a,(OFST+6,sp)
 998  012a cd0337        	call	_TIM2_SetIC2Prescaler
1001  012d 2012          	jra	L304
1002  012f               L504:
1003                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
1003                     ; 247                    (uint8_t)TIM2_ICSelection,
1003                     ; 248                    (uint8_t)TIM2_ICFilter);
1005  012f 7b07          	ld	a,(OFST+7,sp)
1006  0131 88            	push	a
1007  0132 7b06          	ld	a,(OFST+6,sp)
1008  0134 97            	ld	xl,a
1009  0135 7b03          	ld	a,(OFST+3,sp)
1010  0137 95            	ld	xh,a
1011  0138 cd0469        	call	L7_TI3_Config
1013  013b 84            	pop	a
1014                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1016  013c 7b06          	ld	a,(OFST+6,sp)
1017  013e cd0344        	call	_TIM2_SetIC3Prescaler
1019  0141               L304:
1020                     ; 253 }
1023  0141 85            	popw	x
1024  0142 81            	ret	
1120                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1120                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1120                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1120                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1120                     ; 269                      uint8_t TIM2_ICFilter)
1120                     ; 270 {
1121                     	switch	.text
1122  0143               _TIM2_PWMIConfig:
1124  0143 89            	pushw	x
1125  0144 89            	pushw	x
1126       00000002      OFST:	set	2
1129                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1131                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1133                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1135                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1137                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1139                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1141                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1143  0145 9f            	ld	a,xl
1144  0146 a144          	cp	a,#68
1145  0148 2706          	jreq	L754
1146                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1148  014a a644          	ld	a,#68
1149  014c 6b01          	ld	(OFST-1,sp),a
1152  014e 2002          	jra	L164
1153  0150               L754:
1154                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1156  0150 0f01          	clr	(OFST-1,sp)
1158  0152               L164:
1159                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1161  0152 7b07          	ld	a,(OFST+5,sp)
1162  0154 4a            	dec	a
1163  0155 2604          	jrne	L364
1164                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1166  0157 a602          	ld	a,#2
1168  0159 2002          	jra	L564
1169  015b               L364:
1170                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1172  015b a601          	ld	a,#1
1173  015d               L564:
1174  015d 6b02          	ld	(OFST+0,sp),a
1176                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1178  015f 7b03          	ld	a,(OFST+1,sp)
1179  0161 2626          	jrne	L764
1180                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1180                     ; 304                    (uint8_t)TIM2_ICFilter);
1182  0163 7b09          	ld	a,(OFST+7,sp)
1183  0165 88            	push	a
1184  0166 7b08          	ld	a,(OFST+6,sp)
1185  0168 97            	ld	xl,a
1186  0169 7b05          	ld	a,(OFST+3,sp)
1187  016b 95            	ld	xh,a
1188  016c cd0409        	call	L3_TI1_Config
1190  016f 84            	pop	a
1191                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1193  0170 7b08          	ld	a,(OFST+6,sp)
1194  0172 cd032a        	call	_TIM2_SetIC1Prescaler
1196                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1198  0175 7b09          	ld	a,(OFST+7,sp)
1199  0177 88            	push	a
1200  0178 7b03          	ld	a,(OFST+1,sp)
1201  017a 97            	ld	xl,a
1202  017b 7b02          	ld	a,(OFST+0,sp)
1203  017d 95            	ld	xh,a
1204  017e cd0439        	call	L5_TI2_Config
1206  0181 84            	pop	a
1207                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1209  0182 7b08          	ld	a,(OFST+6,sp)
1210  0184 cd0337        	call	_TIM2_SetIC2Prescaler
1213  0187 2024          	jra	L174
1214  0189               L764:
1215                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1215                     ; 319                    (uint8_t)TIM2_ICFilter);
1217  0189 7b09          	ld	a,(OFST+7,sp)
1218  018b 88            	push	a
1219  018c 7b08          	ld	a,(OFST+6,sp)
1220  018e 97            	ld	xl,a
1221  018f 7b05          	ld	a,(OFST+3,sp)
1222  0191 95            	ld	xh,a
1223  0192 cd0439        	call	L5_TI2_Config
1225  0195 84            	pop	a
1226                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1228  0196 7b08          	ld	a,(OFST+6,sp)
1229  0198 cd0337        	call	_TIM2_SetIC2Prescaler
1231                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1233  019b 7b09          	ld	a,(OFST+7,sp)
1234  019d 88            	push	a
1235  019e 7b03          	ld	a,(OFST+1,sp)
1236  01a0 97            	ld	xl,a
1237  01a1 7b02          	ld	a,(OFST+0,sp)
1238  01a3 95            	ld	xh,a
1239  01a4 cd0409        	call	L3_TI1_Config
1241  01a7 84            	pop	a
1242                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1244  01a8 7b08          	ld	a,(OFST+6,sp)
1245  01aa cd032a        	call	_TIM2_SetIC1Prescaler
1247  01ad               L174:
1248                     ; 330 }
1251  01ad 5b04          	addw	sp,#4
1252  01af 81            	ret	
1307                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1307                     ; 340 {
1308                     	switch	.text
1309  01b0               _TIM2_Cmd:
1313                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1315                     ; 345     if (NewState != DISABLE)
1317  01b0 4d            	tnz	a
1318  01b1 2705          	jreq	L125
1319                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1321  01b3 72105300      	bset	21248,#0
1324  01b7 81            	ret	
1325  01b8               L125:
1326                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1328  01b8 72115300      	bres	21248,#0
1329                     ; 353 }
1332  01bc 81            	ret	
1411                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1411                     ; 370 {
1412                     	switch	.text
1413  01bd               _TIM2_ITConfig:
1415  01bd 89            	pushw	x
1416       00000000      OFST:	set	0
1419                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1421                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1423                     ; 375     if (NewState != DISABLE)
1425  01be 9f            	ld	a,xl
1426  01bf 4d            	tnz	a
1427  01c0 2706          	jreq	L365
1428                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1430  01c2 9e            	ld	a,xh
1431  01c3 ca5301        	or	a,21249
1433  01c6 2006          	jra	L565
1434  01c8               L365:
1435                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1437  01c8 7b01          	ld	a,(OFST+1,sp)
1438  01ca 43            	cpl	a
1439  01cb c45301        	and	a,21249
1440  01ce               L565:
1441  01ce c75301        	ld	21249,a
1442                     ; 385 }
1445  01d1 85            	popw	x
1446  01d2 81            	ret	
1482                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1482                     ; 395 {
1483                     	switch	.text
1484  01d3               _TIM2_UpdateDisableConfig:
1488                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1490                     ; 400     if (NewState != DISABLE)
1492  01d3 4d            	tnz	a
1493  01d4 2705          	jreq	L506
1494                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1496  01d6 72125300      	bset	21248,#1
1499  01da 81            	ret	
1500  01db               L506:
1501                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1503  01db 72135300      	bres	21248,#1
1504                     ; 408 }
1507  01df 81            	ret	
1565                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1565                     ; 419 {
1566                     	switch	.text
1567  01e0               _TIM2_UpdateRequestConfig:
1571                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1573                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1575  01e0 4d            	tnz	a
1576  01e1 2705          	jreq	L736
1577                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1579  01e3 72145300      	bset	21248,#2
1582  01e7 81            	ret	
1583  01e8               L736:
1584                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1586  01e8 72155300      	bres	21248,#2
1587                     ; 432 }
1590  01ec 81            	ret	
1647                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1647                     ; 444 {
1648                     	switch	.text
1649  01ed               _TIM2_SelectOnePulseMode:
1653                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1655                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1657  01ed 4d            	tnz	a
1658  01ee 2705          	jreq	L176
1659                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1661  01f0 72165300      	bset	21248,#3
1664  01f4 81            	ret	
1665  01f5               L176:
1666                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1668  01f5 72175300      	bres	21248,#3
1669                     ; 458 }
1672  01f9 81            	ret	
1740                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
1740                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
1740                     ; 491 {
1741                     	switch	.text
1742  01fa               _TIM2_PrescalerConfig:
1746                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
1748                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
1750                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
1752  01fa 9e            	ld	a,xh
1753  01fb c7530c        	ld	21260,a
1754                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
1756  01fe 9f            	ld	a,xl
1757  01ff c75304        	ld	21252,a
1758                     ; 501 }
1761  0202 81            	ret	
1819                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1819                     ; 513 {
1820                     	switch	.text
1821  0203               _TIM2_ForcedOC1Config:
1823  0203 88            	push	a
1824       00000000      OFST:	set	0
1827                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1829                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
1829                     ; 519                               | (uint8_t)TIM2_ForcedAction);
1831  0204 c65305        	ld	a,21253
1832  0207 a48f          	and	a,#143
1833  0209 1a01          	or	a,(OFST+1,sp)
1834  020b c75305        	ld	21253,a
1835                     ; 520 }
1838  020e 84            	pop	a
1839  020f 81            	ret	
1875                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1875                     ; 532 {
1876                     	switch	.text
1877  0210               _TIM2_ForcedOC2Config:
1879  0210 88            	push	a
1880       00000000      OFST:	set	0
1883                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1885                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
1885                     ; 538                             | (uint8_t)TIM2_ForcedAction);
1887  0211 c65306        	ld	a,21254
1888  0214 a48f          	and	a,#143
1889  0216 1a01          	or	a,(OFST+1,sp)
1890  0218 c75306        	ld	21254,a
1891                     ; 539 }
1894  021b 84            	pop	a
1895  021c 81            	ret	
1931                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1931                     ; 551 {
1932                     	switch	.text
1933  021d               _TIM2_ForcedOC3Config:
1935  021d 88            	push	a
1936       00000000      OFST:	set	0
1939                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1941                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1941                     ; 557                               | (uint8_t)TIM2_ForcedAction);
1943  021e c65307        	ld	a,21255
1944  0221 a48f          	and	a,#143
1945  0223 1a01          	or	a,(OFST+1,sp)
1946  0225 c75307        	ld	21255,a
1947                     ; 558 }
1950  0228 84            	pop	a
1951  0229 81            	ret	
1987                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1987                     ; 568 {
1988                     	switch	.text
1989  022a               _TIM2_ARRPreloadConfig:
1993                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1995                     ; 573     if (NewState != DISABLE)
1997  022a 4d            	tnz	a
1998  022b 2705          	jreq	L7201
1999                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2001  022d 721e5300      	bset	21248,#7
2004  0231 81            	ret	
2005  0232               L7201:
2006                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2008  0232 721f5300      	bres	21248,#7
2009                     ; 581 }
2012  0236 81            	ret	
2048                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2048                     ; 591 {
2049                     	switch	.text
2050  0237               _TIM2_OC1PreloadConfig:
2054                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2056                     ; 596     if (NewState != DISABLE)
2058  0237 4d            	tnz	a
2059  0238 2705          	jreq	L1501
2060                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2062  023a 72165305      	bset	21253,#3
2065  023e 81            	ret	
2066  023f               L1501:
2067                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2069  023f 72175305      	bres	21253,#3
2070                     ; 604 }
2073  0243 81            	ret	
2109                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2109                     ; 614 {
2110                     	switch	.text
2111  0244               _TIM2_OC2PreloadConfig:
2115                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2117                     ; 619     if (NewState != DISABLE)
2119  0244 4d            	tnz	a
2120  0245 2705          	jreq	L3701
2121                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2123  0247 72165306      	bset	21254,#3
2126  024b 81            	ret	
2127  024c               L3701:
2128                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2130  024c 72175306      	bres	21254,#3
2131                     ; 627 }
2134  0250 81            	ret	
2170                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2170                     ; 637 {
2171                     	switch	.text
2172  0251               _TIM2_OC3PreloadConfig:
2176                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2178                     ; 642     if (NewState != DISABLE)
2180  0251 4d            	tnz	a
2181  0252 2705          	jreq	L5111
2182                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2184  0254 72165307      	bset	21255,#3
2187  0258 81            	ret	
2188  0259               L5111:
2189                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2191  0259 72175307      	bres	21255,#3
2192                     ; 650 }
2195  025d 81            	ret	
2268                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2268                     ; 664 {
2269                     	switch	.text
2270  025e               _TIM2_GenerateEvent:
2274                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2276                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2278  025e c75304        	ld	21252,a
2279                     ; 670 }
2282  0261 81            	ret	
2318                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2318                     ; 682 {
2319                     	switch	.text
2320  0262               _TIM2_OC1PolarityConfig:
2324                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2326                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2328  0262 4d            	tnz	a
2329  0263 2705          	jreq	L1711
2330                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2332  0265 72125308      	bset	21256,#1
2335  0269 81            	ret	
2336  026a               L1711:
2337                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2339  026a 72135308      	bres	21256,#1
2340                     ; 695 }
2343  026e 81            	ret	
2379                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2379                     ; 707 {
2380                     	switch	.text
2381  026f               _TIM2_OC2PolarityConfig:
2385                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2387                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2389  026f 4d            	tnz	a
2390  0270 2705          	jreq	L3121
2391                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2393  0272 721a5308      	bset	21256,#5
2396  0276 81            	ret	
2397  0277               L3121:
2398                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2400  0277 721b5308      	bres	21256,#5
2401                     ; 720 }
2404  027b 81            	ret	
2440                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2440                     ; 732 {
2441                     	switch	.text
2442  027c               _TIM2_OC3PolarityConfig:
2446                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2448                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2450  027c 4d            	tnz	a
2451  027d 2705          	jreq	L5321
2452                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2454  027f 72125309      	bset	21257,#1
2457  0283 81            	ret	
2458  0284               L5321:
2459                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2461  0284 72135309      	bres	21257,#1
2462                     ; 745 }
2465  0288 81            	ret	
2510                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
2510                     ; 760 {
2511                     	switch	.text
2512  0289               _TIM2_CCxCmd:
2514  0289 89            	pushw	x
2515       00000000      OFST:	set	0
2518                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2520                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2522                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
2524  028a 9e            	ld	a,xh
2525  028b 4d            	tnz	a
2526  028c 2610          	jrne	L3621
2527                     ; 768         if (NewState != DISABLE)
2529  028e 9f            	ld	a,xl
2530  028f 4d            	tnz	a
2531  0290 2706          	jreq	L5621
2532                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
2534  0292 72105308      	bset	21256,#0
2536  0296 2029          	jra	L1721
2537  0298               L5621:
2538                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2540  0298 72115308      	bres	21256,#0
2541  029c 2023          	jra	L1721
2542  029e               L3621:
2543                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
2545  029e 7b01          	ld	a,(OFST+1,sp)
2546  02a0 4a            	dec	a
2547  02a1 2610          	jrne	L3721
2548                     ; 781         if (NewState != DISABLE)
2550  02a3 7b02          	ld	a,(OFST+2,sp)
2551  02a5 2706          	jreq	L5721
2552                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
2554  02a7 72185308      	bset	21256,#4
2556  02ab 2014          	jra	L1721
2557  02ad               L5721:
2558                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2560  02ad 72195308      	bres	21256,#4
2561  02b1 200e          	jra	L1721
2562  02b3               L3721:
2563                     ; 793         if (NewState != DISABLE)
2565  02b3 7b02          	ld	a,(OFST+2,sp)
2566  02b5 2706          	jreq	L3031
2567                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
2569  02b7 72105309      	bset	21257,#0
2571  02bb 2004          	jra	L1721
2572  02bd               L3031:
2573                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2575  02bd 72115309      	bres	21257,#0
2576  02c1               L1721:
2577                     ; 802 }
2580  02c1 85            	popw	x
2581  02c2 81            	ret	
2626                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
2626                     ; 825 {
2627                     	switch	.text
2628  02c3               _TIM2_SelectOCxM:
2630  02c3 89            	pushw	x
2631       00000000      OFST:	set	0
2634                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2636                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
2638                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
2640  02c4 9e            	ld	a,xh
2641  02c5 4d            	tnz	a
2642  02c6 2610          	jrne	L1331
2643                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2645  02c8 72115308      	bres	21256,#0
2646                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
2646                     ; 837                                | (uint8_t)TIM2_OCMode);
2648  02cc c65305        	ld	a,21253
2649  02cf a48f          	and	a,#143
2650  02d1 1a02          	or	a,(OFST+2,sp)
2651  02d3 c75305        	ld	21253,a
2653  02d6 2023          	jra	L3331
2654  02d8               L1331:
2655                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
2657  02d8 7b01          	ld	a,(OFST+1,sp)
2658  02da 4a            	dec	a
2659  02db 2610          	jrne	L5331
2660                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2662  02dd 72195308      	bres	21256,#4
2663                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
2663                     ; 846                                 | (uint8_t)TIM2_OCMode);
2665  02e1 c65306        	ld	a,21254
2666  02e4 a48f          	and	a,#143
2667  02e6 1a02          	or	a,(OFST+2,sp)
2668  02e8 c75306        	ld	21254,a
2670  02eb 200e          	jra	L3331
2671  02ed               L5331:
2672                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2674  02ed 72115309      	bres	21257,#0
2675                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2675                     ; 855                                 | (uint8_t)TIM2_OCMode);
2677  02f1 c65307        	ld	a,21255
2678  02f4 a48f          	and	a,#143
2679  02f6 1a02          	or	a,(OFST+2,sp)
2680  02f8 c75307        	ld	21255,a
2681  02fb               L3331:
2682                     ; 857 }
2685  02fb 85            	popw	x
2686  02fc 81            	ret	
2720                     ; 866 void TIM2_SetCounter(uint16_t Counter)
2720                     ; 867 {
2721                     	switch	.text
2722  02fd               _TIM2_SetCounter:
2726                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
2728  02fd 9e            	ld	a,xh
2729  02fe c7530a        	ld	21258,a
2730                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
2732  0301 9f            	ld	a,xl
2733  0302 c7530b        	ld	21259,a
2734                     ; 872 }
2737  0305 81            	ret	
2771                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
2771                     ; 882 {
2772                     	switch	.text
2773  0306               _TIM2_SetAutoreload:
2777                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
2779  0306 9e            	ld	a,xh
2780  0307 c7530d        	ld	21261,a
2781                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
2783  030a 9f            	ld	a,xl
2784  030b c7530e        	ld	21262,a
2785                     ; 888 }
2788  030e 81            	ret	
2822                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
2822                     ; 898 {
2823                     	switch	.text
2824  030f               _TIM2_SetCompare1:
2828                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
2830  030f 9e            	ld	a,xh
2831  0310 c7530f        	ld	21263,a
2832                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
2834  0313 9f            	ld	a,xl
2835  0314 c75310        	ld	21264,a
2836                     ; 903 }
2839  0317 81            	ret	
2873                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
2873                     ; 913 {
2874                     	switch	.text
2875  0318               _TIM2_SetCompare2:
2879                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
2881  0318 9e            	ld	a,xh
2882  0319 c75311        	ld	21265,a
2883                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
2885  031c 9f            	ld	a,xl
2886  031d c75312        	ld	21266,a
2887                     ; 918 }
2890  0320 81            	ret	
2924                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
2924                     ; 928 {
2925                     	switch	.text
2926  0321               _TIM2_SetCompare3:
2930                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
2932  0321 9e            	ld	a,xh
2933  0322 c75313        	ld	21267,a
2934                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
2936  0325 9f            	ld	a,xl
2937  0326 c75314        	ld	21268,a
2938                     ; 933 }
2941  0329 81            	ret	
2977                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
2977                     ; 947 {
2978                     	switch	.text
2979  032a               _TIM2_SetIC1Prescaler:
2981  032a 88            	push	a
2982       00000000      OFST:	set	0
2985                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
2987                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
2987                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
2989  032b c65305        	ld	a,21253
2990  032e a4f3          	and	a,#243
2991  0330 1a01          	or	a,(OFST+1,sp)
2992  0332 c75305        	ld	21253,a
2993                     ; 954 }
2996  0335 84            	pop	a
2997  0336 81            	ret	
3033                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3033                     ; 967 {
3034                     	switch	.text
3035  0337               _TIM2_SetIC2Prescaler:
3037  0337 88            	push	a
3038       00000000      OFST:	set	0
3041                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3043                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3043                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
3045  0338 c65306        	ld	a,21254
3046  033b a4f3          	and	a,#243
3047  033d 1a01          	or	a,(OFST+1,sp)
3048  033f c75306        	ld	21254,a
3049                     ; 974 }
3052  0342 84            	pop	a
3053  0343 81            	ret	
3089                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3089                     ; 987 {
3090                     	switch	.text
3091  0344               _TIM2_SetIC3Prescaler:
3093  0344 88            	push	a
3094       00000000      OFST:	set	0
3097                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3099                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3099                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3101  0345 c65307        	ld	a,21255
3102  0348 a4f3          	and	a,#243
3103  034a 1a01          	or	a,(OFST+1,sp)
3104  034c c75307        	ld	21255,a
3105                     ; 994 }
3108  034f 84            	pop	a
3109  0350 81            	ret	
3161                     ; 1001 uint16_t TIM2_GetCapture1(void)
3161                     ; 1002 {
3162                     	switch	.text
3163  0351               _TIM2_GetCapture1:
3165  0351 5204          	subw	sp,#4
3166       00000004      OFST:	set	4
3169                     ; 1004     uint16_t tmpccr1 = 0;
3171                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3175                     ; 1007     tmpccr1h = TIM2->CCR1H;
3177  0353 c6530f        	ld	a,21263
3178  0356 6b02          	ld	(OFST-2,sp),a
3180                     ; 1008     tmpccr1l = TIM2->CCR1L;
3182  0358 c65310        	ld	a,21264
3183  035b 6b01          	ld	(OFST-3,sp),a
3185                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3187  035d 5f            	clrw	x
3188  035e 97            	ld	xl,a
3189  035f 1f03          	ldw	(OFST-1,sp),x
3191                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3193  0361 5f            	clrw	x
3194  0362 7b02          	ld	a,(OFST-2,sp)
3195  0364 97            	ld	xl,a
3196  0365 7b04          	ld	a,(OFST+0,sp)
3197  0367 01            	rrwa	x,a
3198  0368 1a03          	or	a,(OFST-1,sp)
3199  036a 01            	rrwa	x,a
3201                     ; 1013     return (uint16_t)tmpccr1;
3205  036b 5b04          	addw	sp,#4
3206  036d 81            	ret	
3258                     ; 1021 uint16_t TIM2_GetCapture2(void)
3258                     ; 1022 {
3259                     	switch	.text
3260  036e               _TIM2_GetCapture2:
3262  036e 5204          	subw	sp,#4
3263       00000004      OFST:	set	4
3266                     ; 1024     uint16_t tmpccr2 = 0;
3268                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3272                     ; 1027     tmpccr2h = TIM2->CCR2H;
3274  0370 c65311        	ld	a,21265
3275  0373 6b02          	ld	(OFST-2,sp),a
3277                     ; 1028     tmpccr2l = TIM2->CCR2L;
3279  0375 c65312        	ld	a,21266
3280  0378 6b01          	ld	(OFST-3,sp),a
3282                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
3284  037a 5f            	clrw	x
3285  037b 97            	ld	xl,a
3286  037c 1f03          	ldw	(OFST-1,sp),x
3288                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3290  037e 5f            	clrw	x
3291  037f 7b02          	ld	a,(OFST-2,sp)
3292  0381 97            	ld	xl,a
3293  0382 7b04          	ld	a,(OFST+0,sp)
3294  0384 01            	rrwa	x,a
3295  0385 1a03          	or	a,(OFST-1,sp)
3296  0387 01            	rrwa	x,a
3298                     ; 1033     return (uint16_t)tmpccr2;
3302  0388 5b04          	addw	sp,#4
3303  038a 81            	ret	
3355                     ; 1041 uint16_t TIM2_GetCapture3(void)
3355                     ; 1042 {
3356                     	switch	.text
3357  038b               _TIM2_GetCapture3:
3359  038b 5204          	subw	sp,#4
3360       00000004      OFST:	set	4
3363                     ; 1044     uint16_t tmpccr3 = 0;
3365                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
3369                     ; 1047     tmpccr3h = TIM2->CCR3H;
3371  038d c65313        	ld	a,21267
3372  0390 6b02          	ld	(OFST-2,sp),a
3374                     ; 1048     tmpccr3l = TIM2->CCR3L;
3376  0392 c65314        	ld	a,21268
3377  0395 6b01          	ld	(OFST-3,sp),a
3379                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
3381  0397 5f            	clrw	x
3382  0398 97            	ld	xl,a
3383  0399 1f03          	ldw	(OFST-1,sp),x
3385                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3387  039b 5f            	clrw	x
3388  039c 7b02          	ld	a,(OFST-2,sp)
3389  039e 97            	ld	xl,a
3390  039f 7b04          	ld	a,(OFST+0,sp)
3391  03a1 01            	rrwa	x,a
3392  03a2 1a03          	or	a,(OFST-1,sp)
3393  03a4 01            	rrwa	x,a
3395                     ; 1053     return (uint16_t)tmpccr3;
3399  03a5 5b04          	addw	sp,#4
3400  03a7 81            	ret	
3434                     ; 1061 uint16_t TIM2_GetCounter(void)
3434                     ; 1062 {
3435                     	switch	.text
3436  03a8               _TIM2_GetCounter:
3438  03a8 89            	pushw	x
3439       00000002      OFST:	set	2
3442                     ; 1063      uint16_t tmpcntr = 0;
3444                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
3446  03a9 c6530a        	ld	a,21258
3447  03ac 97            	ld	xl,a
3448  03ad 4f            	clr	a
3449  03ae 02            	rlwa	x,a
3450  03af 1f01          	ldw	(OFST-1,sp),x
3452                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
3454  03b1 c6530b        	ld	a,21259
3455  03b4 5f            	clrw	x
3456  03b5 97            	ld	xl,a
3457  03b6 01            	rrwa	x,a
3458  03b7 1a02          	or	a,(OFST+0,sp)
3459  03b9 01            	rrwa	x,a
3460  03ba 1a01          	or	a,(OFST-1,sp)
3461  03bc 01            	rrwa	x,a
3464  03bd 5b02          	addw	sp,#2
3465  03bf 81            	ret	
3489                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
3489                     ; 1077 {
3490                     	switch	.text
3491  03c0               _TIM2_GetPrescaler:
3495                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
3497  03c0 c6530c        	ld	a,21260
3500  03c3 81            	ret	
3639                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3639                     ; 1097 {
3640                     	switch	.text
3641  03c4               _TIM2_GetFlagStatus:
3643  03c4 89            	pushw	x
3644  03c5 89            	pushw	x
3645       00000002      OFST:	set	2
3648                     ; 1098     FlagStatus bitstatus = RESET;
3650                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
3654                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
3656                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
3658  03c6 9f            	ld	a,xl
3659  03c7 c45302        	and	a,21250
3660  03ca 6b01          	ld	(OFST-1,sp),a
3662                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
3664  03cc 7b03          	ld	a,(OFST+1,sp)
3665  03ce 6b02          	ld	(OFST+0,sp),a
3667                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
3669  03d0 c45303        	and	a,21251
3670  03d3 1a01          	or	a,(OFST-1,sp)
3671  03d5 2702          	jreq	L5371
3672                     ; 1109         bitstatus = SET;
3674  03d7 a601          	ld	a,#1
3677  03d9               L5371:
3678                     ; 1113         bitstatus = RESET;
3681                     ; 1115     return (FlagStatus)bitstatus;
3685  03d9 5b04          	addw	sp,#4
3686  03db 81            	ret	
3721                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3721                     ; 1133 {
3722                     	switch	.text
3723  03dc               _TIM2_ClearFlag:
3727                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
3729                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
3731  03dc 9f            	ld	a,xl
3732  03dd 43            	cpl	a
3733  03de c75302        	ld	21250,a
3734                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
3736  03e1 35ff5303      	mov	21251,#255
3737                     ; 1140 }
3740  03e5 81            	ret	
3804                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3804                     ; 1155 {
3805                     	switch	.text
3806  03e6               _TIM2_GetITStatus:
3808  03e6 88            	push	a
3809  03e7 89            	pushw	x
3810       00000002      OFST:	set	2
3813                     ; 1156     ITStatus bitstatus = RESET;
3815                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
3819                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
3821                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
3823  03e8 c45302        	and	a,21250
3824  03eb 6b01          	ld	(OFST-1,sp),a
3826                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
3828  03ed c65301        	ld	a,21249
3829  03f0 1403          	and	a,(OFST+1,sp)
3830  03f2 6b02          	ld	(OFST+0,sp),a
3832                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
3834  03f4 7b01          	ld	a,(OFST-1,sp)
3835  03f6 2708          	jreq	L1102
3837  03f8 7b02          	ld	a,(OFST+0,sp)
3838  03fa 2704          	jreq	L1102
3839                     ; 1168         bitstatus = SET;
3841  03fc a601          	ld	a,#1
3844  03fe 2001          	jra	L3102
3845  0400               L1102:
3846                     ; 1172         bitstatus = RESET;
3848  0400 4f            	clr	a
3850  0401               L3102:
3851                     ; 1174     return (ITStatus)(bitstatus);
3855  0401 5b03          	addw	sp,#3
3856  0403 81            	ret	
3892                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
3892                     ; 1189 {
3893                     	switch	.text
3894  0404               _TIM2_ClearITPendingBit:
3898                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
3900                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
3902  0404 43            	cpl	a
3903  0405 c75302        	ld	21250,a
3904                     ; 1195 }
3907  0408 81            	ret	
3959                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
3959                     ; 1215                        uint8_t TIM2_ICSelection,
3959                     ; 1216                        uint8_t TIM2_ICFilter)
3959                     ; 1217 {
3960                     	switch	.text
3961  0409               L3_TI1_Config:
3963  0409 89            	pushw	x
3964  040a 88            	push	a
3965       00000001      OFST:	set	1
3968                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3970  040b 72115308      	bres	21256,#0
3971                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
3971                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
3973  040f 7b06          	ld	a,(OFST+5,sp)
3974  0411 97            	ld	xl,a
3975  0412 a610          	ld	a,#16
3976  0414 42            	mul	x,a
3977  0415 9f            	ld	a,xl
3978  0416 1a03          	or	a,(OFST+2,sp)
3979  0418 6b01          	ld	(OFST+0,sp),a
3981  041a c65305        	ld	a,21253
3982  041d a40c          	and	a,#12
3983  041f 1a01          	or	a,(OFST+0,sp)
3984  0421 c75305        	ld	21253,a
3985                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
3987  0424 7b02          	ld	a,(OFST+1,sp)
3988  0426 2706          	jreq	L1602
3989                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
3991  0428 72125308      	bset	21256,#1
3993  042c 2004          	jra	L3602
3994  042e               L1602:
3995                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3997  042e 72135308      	bres	21256,#1
3998  0432               L3602:
3999                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
4001  0432 72105308      	bset	21256,#0
4002                     ; 1236 }
4005  0436 5b03          	addw	sp,#3
4006  0438 81            	ret	
4058                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
4058                     ; 1256                        uint8_t TIM2_ICSelection,
4058                     ; 1257                        uint8_t TIM2_ICFilter)
4058                     ; 1258 {
4059                     	switch	.text
4060  0439               L5_TI2_Config:
4062  0439 89            	pushw	x
4063  043a 88            	push	a
4064       00000001      OFST:	set	1
4067                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4069  043b 72195308      	bres	21256,#4
4070                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4070                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4072  043f 7b06          	ld	a,(OFST+5,sp)
4073  0441 97            	ld	xl,a
4074  0442 a610          	ld	a,#16
4075  0444 42            	mul	x,a
4076  0445 9f            	ld	a,xl
4077  0446 1a03          	or	a,(OFST+2,sp)
4078  0448 6b01          	ld	(OFST+0,sp),a
4080  044a c65306        	ld	a,21254
4081  044d a40c          	and	a,#12
4082  044f 1a01          	or	a,(OFST+0,sp)
4083  0451 c75306        	ld	21254,a
4084                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4086  0454 7b02          	ld	a,(OFST+1,sp)
4087  0456 2706          	jreq	L3112
4088                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
4090  0458 721a5308      	bset	21256,#5
4092  045c 2004          	jra	L5112
4093  045e               L3112:
4094                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4096  045e 721b5308      	bres	21256,#5
4097  0462               L5112:
4098                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4100  0462 72185308      	bset	21256,#4
4101                     ; 1280 }
4104  0466 5b03          	addw	sp,#3
4105  0468 81            	ret	
4157                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4157                     ; 1297                        uint8_t TIM2_ICFilter)
4157                     ; 1298 {
4158                     	switch	.text
4159  0469               L7_TI3_Config:
4161  0469 89            	pushw	x
4162  046a 88            	push	a
4163       00000001      OFST:	set	1
4166                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4168  046b 72115309      	bres	21257,#0
4169                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4169                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4171  046f 7b06          	ld	a,(OFST+5,sp)
4172  0471 97            	ld	xl,a
4173  0472 a610          	ld	a,#16
4174  0474 42            	mul	x,a
4175  0475 9f            	ld	a,xl
4176  0476 1a03          	or	a,(OFST+2,sp)
4177  0478 6b01          	ld	(OFST+0,sp),a
4179  047a c65307        	ld	a,21255
4180  047d a40c          	and	a,#12
4181  047f 1a01          	or	a,(OFST+0,sp)
4182  0481 c75307        	ld	21255,a
4183                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4185  0484 7b02          	ld	a,(OFST+1,sp)
4186  0486 2706          	jreq	L5412
4187                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4189  0488 72125309      	bset	21257,#1
4191  048c 2004          	jra	L7412
4192  048e               L5412:
4193                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4195  048e 72135309      	bres	21257,#1
4196  0492               L7412:
4197                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4199  0492 72105309      	bset	21257,#0
4200                     ; 1318 }
4203  0496 5b03          	addw	sp,#3
4204  0498 81            	ret	
4217                     	xdef	_TIM2_ClearITPendingBit
4218                     	xdef	_TIM2_GetITStatus
4219                     	xdef	_TIM2_ClearFlag
4220                     	xdef	_TIM2_GetFlagStatus
4221                     	xdef	_TIM2_GetPrescaler
4222                     	xdef	_TIM2_GetCounter
4223                     	xdef	_TIM2_GetCapture3
4224                     	xdef	_TIM2_GetCapture2
4225                     	xdef	_TIM2_GetCapture1
4226                     	xdef	_TIM2_SetIC3Prescaler
4227                     	xdef	_TIM2_SetIC2Prescaler
4228                     	xdef	_TIM2_SetIC1Prescaler
4229                     	xdef	_TIM2_SetCompare3
4230                     	xdef	_TIM2_SetCompare2
4231                     	xdef	_TIM2_SetCompare1
4232                     	xdef	_TIM2_SetAutoreload
4233                     	xdef	_TIM2_SetCounter
4234                     	xdef	_TIM2_SelectOCxM
4235                     	xdef	_TIM2_CCxCmd
4236                     	xdef	_TIM2_OC3PolarityConfig
4237                     	xdef	_TIM2_OC2PolarityConfig
4238                     	xdef	_TIM2_OC1PolarityConfig
4239                     	xdef	_TIM2_GenerateEvent
4240                     	xdef	_TIM2_OC3PreloadConfig
4241                     	xdef	_TIM2_OC2PreloadConfig
4242                     	xdef	_TIM2_OC1PreloadConfig
4243                     	xdef	_TIM2_ARRPreloadConfig
4244                     	xdef	_TIM2_ForcedOC3Config
4245                     	xdef	_TIM2_ForcedOC2Config
4246                     	xdef	_TIM2_ForcedOC1Config
4247                     	xdef	_TIM2_PrescalerConfig
4248                     	xdef	_TIM2_SelectOnePulseMode
4249                     	xdef	_TIM2_UpdateRequestConfig
4250                     	xdef	_TIM2_UpdateDisableConfig
4251                     	xdef	_TIM2_ITConfig
4252                     	xdef	_TIM2_Cmd
4253                     	xdef	_TIM2_PWMIConfig
4254                     	xdef	_TIM2_ICInit
4255                     	xdef	_TIM2_OC3Init
4256                     	xdef	_TIM2_OC2Init
4257                     	xdef	_TIM2_OC1Init
4258                     	xdef	_TIM2_TimeBaseInit
4259                     	xdef	_TIM2_DeInit
4278                     	end
