   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.14 - 18 Nov 2019
   3                     ; Generator (Limited) V4.4.11 - 19 Nov 2019
   4                     ; Optimizer V4.4.11 - 19 Nov 2019
  57                     ; 45 void main(void)
  57                     ; 46 {
  59                     	switch	.text
  60  0000               _main:
  64                     ; 49   TIM2_DeInit();
  66  0000 cd0000        	call	_TIM2_DeInit
  68                     ; 52   TIM2_TimeBaseInit(TIM2_PRESCALER_1, 999);
  70  0003 ae03e7        	ldw	x,#999
  71  0006 89            	pushw	x
  72  0007 4f            	clr	a
  73  0008 cd0000        	call	_TIM2_TimeBaseInit
  75  000b 85            	popw	x
  76                     ; 56   TIM2_OC1Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE,CCR1_Val, TIM2_OCPOLARITY_LOW ); 
  78  000c 4b22          	push	#34
  79  000e ae01f4        	ldw	x,#500
  80  0011 89            	pushw	x
  81  0012 ae7011        	ldw	x,#28689
  82  0015 cd0000        	call	_TIM2_OC1Init
  84  0018 5b03          	addw	sp,#3
  85                     ; 57   TIM2_OC1PreloadConfig(ENABLE);
  87  001a a601          	ld	a,#1
  88  001c cd0000        	call	_TIM2_OC1PreloadConfig
  90                     ; 60   TIM2_OC2Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE,CCR2_Val, TIM2_OCPOLARITY_LOW );
  92  001f 4b22          	push	#34
  93  0021 ae00fa        	ldw	x,#250
  94  0024 89            	pushw	x
  95  0025 ae7011        	ldw	x,#28689
  96  0028 cd0000        	call	_TIM2_OC2Init
  98  002b 5b03          	addw	sp,#3
  99                     ; 61   TIM2_OC2PreloadConfig(ENABLE);
 101  002d a601          	ld	a,#1
 102  002f cd0000        	call	_TIM2_OC2PreloadConfig
 104                     ; 64 	TIM2_OC3Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE,CCR3_Val, TIM2_OCPOLARITY_LOW );
 106  0032 4b22          	push	#34
 107  0034 ae02ee        	ldw	x,#750
 108  0037 89            	pushw	x
 109  0038 ae7011        	ldw	x,#28689
 110  003b cd0000        	call	_TIM2_OC3Init
 112  003e 5b03          	addw	sp,#3
 113                     ; 65   TIM2_OC3PreloadConfig(ENABLE);
 115  0040 a601          	ld	a,#1
 116  0042 cd0000        	call	_TIM2_OC3PreloadConfig
 118                     ; 68 	TIM2_ARRPreloadConfig(ENABLE);
 120  0045 a601          	ld	a,#1
 121  0047 cd0000        	call	_TIM2_ARRPreloadConfig
 123                     ; 71   TIM2_Cmd(ENABLE);
 125  004a a601          	ld	a,#1
 126  004c cd0000        	call	_TIM2_Cmd
 128  004f               L12:
 129                     ; 74   while (1); 
 131  004f 20fe          	jra	L12
 144                     	xdef	_main
 145                     	xref	_TIM2_OC3PreloadConfig
 146                     	xref	_TIM2_OC2PreloadConfig
 147                     	xref	_TIM2_OC1PreloadConfig
 148                     	xref	_TIM2_ARRPreloadConfig
 149                     	xref	_TIM2_Cmd
 150                     	xref	_TIM2_OC3Init
 151                     	xref	_TIM2_OC2Init
 152                     	xref	_TIM2_OC1Init
 153                     	xref	_TIM2_TimeBaseInit
 154                     	xref	_TIM2_DeInit
 173                     	end
