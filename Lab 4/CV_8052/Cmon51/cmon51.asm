;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Sun Mar 03 15:14:28 2024
;--------------------------------------------------------
$name cmon51
$optc51 --model-small
	R_DSEG    segment data
	R_CSEG    segment code
	R_BSEG    segment bit
	R_XSEG    segment xdata
	R_PSEG    segment xdata
	R_ISEG    segment idata
	R_OSEG    segment data overlay
	BIT_BANK  segment data overlay
	R_HOME    segment code
	R_GSINIT  segment code
	R_IXSEG   segment xdata
	R_CONST   segment code
	R_XINIT   segment code
	R_DINIT   segment code

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	public _add_byte_buff_PARM_2
	public _fillmem_PARM_3
	public _fillmem_PARM_2
	public _regframe
	public _cnw
	public _cnr
	public _nba
	public _maskbit
	public _hexval
	public _cmdlst
	public _breakorstep
	public _nlist
	public _disp_regs
	public _add_byte_buff
	public _getwordn
	public _cleanbuff
	public _dispmem
	public _modifymem
	public _putcnl
	public _outwordnl
	public _outcursor
	public _outbytenl
	public _getsn
	public _clearline
	public _put_txbuff
	public _fill_rxbuff
	public _go_pending
	public _trace_type
	public _break_address
	public _gostep
	public _saved_int
	public _saved_jmp
	public _step_start
	public _gotbreak
	public _PC_save
	public _LEDRB_save
	public _LEDRA_save
	public _SP_save
	public _DPH_save
	public _DPL_save
	public _IE_save
	public _B_save
	public _PSW_save
	public _A_save
	public _br
	public _iram_save
	public _breakpoint
	public _buff_hasdot
	public _buff_haseq
	public _keepediting
	public _validbyte
	public _dispmem_PARM_3
	public _dispmem_PARM_2
	public _modifymem_PARM_2
	public _cursor
	public _buff
	public _putsp
	public _chartohex
	public _fillmem
	public _do_cmd
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
_P0             DATA 0x80
_SP             DATA 0x81
_DPL            DATA 0x82
_DPH            DATA 0x83
_PCON           DATA 0x87
_TCON           DATA 0x88
_TMOD           DATA 0x89
_TL0            DATA 0x8a
_TL1            DATA 0x8b
_TH0            DATA 0x8c
_TH1            DATA 0x8d
_P1             DATA 0x90
_SCON           DATA 0x98
_SBUF           DATA 0x99
_P2             DATA 0xa0
_IE             DATA 0xa8
_P3             DATA 0xb0
_IP             DATA 0xb8
_PSW            DATA 0xd0
_ACC            DATA 0xe0
_B              DATA 0xf0
_T2CON          DATA 0xc8
_RCAP2L         DATA 0xca
_RCAP2H         DATA 0xcb
_TL2            DATA 0xcc
_TH2            DATA 0xcd
_DPS            DATA 0x86
_DPH1           DATA 0x85
_DPL1           DATA 0x84
_HEX0           DATA 0x91
_HEX1           DATA 0x92
_HEX2           DATA 0x93
_HEX3           DATA 0x94
_HEX4           DATA 0x8e
_HEX5           DATA 0x8f
_LEDRA          DATA 0xe8
_LEDRB          DATA 0x95
_SWA            DATA 0xe8
_SWB            DATA 0x95
_KEY            DATA 0xf8
_P0MOD          DATA 0x9a
_P1MOD          DATA 0x9b
_P2MOD          DATA 0x9c
_P3MOD          DATA 0x9d
_LCD_CMD        DATA 0xd8
_LCD_DATA       DATA 0xd9
_LCD_MOD        DATA 0xda
_JCMD           DATA 0xc0
_JBUF           DATA 0xc1
_JCNT           DATA 0xc2
_REP_ADD_L      DATA 0xf1
_REP_ADD_H      DATA 0xf2
_REP_VALUE      DATA 0xf3
_DEBUG_CALL_L   DATA 0xfa
_DEBUG_CALL_H   DATA 0xfb
_BPC            DATA 0xfc
_BPS            DATA 0xfd
_BPAL           DATA 0xfe
_BPAH           DATA 0xff
_LBPAL          DATA 0xfa
_LBPAH          DATA 0xfb
_XRAMUSEDAS     DATA 0xc3
_FLASH_CMD      DATA 0xdb
_FLASH_DATA     DATA 0xdc
_FLASH_MOD      DATA 0xdd
_FLASH_ADD0     DATA 0xe1
_FLASH_ADD1     DATA 0xe2
_FLASH_ADD2     DATA 0xe3
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_P0_0           BIT 0x80
_P0_1           BIT 0x81
_P0_2           BIT 0x82
_P0_3           BIT 0x83
_P0_4           BIT 0x84
_P0_5           BIT 0x85
_P0_6           BIT 0x86
_P0_7           BIT 0x87
_IT0            BIT 0x88
_IE0            BIT 0x89
_IT1            BIT 0x8a
_IE1            BIT 0x8b
_TR0            BIT 0x8c
_TF0            BIT 0x8d
_TR1            BIT 0x8e
_TF1            BIT 0x8f
_P1_0           BIT 0x90
_P1_1           BIT 0x91
_P1_2           BIT 0x92
_P1_3           BIT 0x93
_P1_4           BIT 0x94
_P1_5           BIT 0x95
_P1_6           BIT 0x96
_P1_7           BIT 0x97
_RI             BIT 0x98
_TI             BIT 0x99
_RB8            BIT 0x9a
_TB8            BIT 0x9b
_REN            BIT 0x9c
_SM2            BIT 0x9d
_SM1            BIT 0x9e
_SM0            BIT 0x9f
_P2_0           BIT 0xa0
_P2_1           BIT 0xa1
_P2_2           BIT 0xa2
_P2_3           BIT 0xa3
_P2_4           BIT 0xa4
_P2_5           BIT 0xa5
_P2_6           BIT 0xa6
_P2_7           BIT 0xa7
_EX0            BIT 0xa8
_ET0            BIT 0xa9
_EX1            BIT 0xaa
_ET1            BIT 0xab
_ES             BIT 0xac
_ET2            BIT 0xad
_EA             BIT 0xaf
_P3_0           BIT 0xb0
_P3_1           BIT 0xb1
_P3_2           BIT 0xb2
_P3_3           BIT 0xb3
_P3_4           BIT 0xb4
_P3_5           BIT 0xb5
_P3_6           BIT 0xb6
_P3_7           BIT 0xb7
_RXD            BIT 0xb0
_TXD            BIT 0xb1
_INT0           BIT 0xb2
_INT1           BIT 0xb3
_T0             BIT 0xb4
_T1             BIT 0xb5
_WR             BIT 0xb6
_RD             BIT 0xb7
_PX0            BIT 0xb8
_PT0            BIT 0xb9
_PX1            BIT 0xba
_PT1            BIT 0xbb
_PS             BIT 0xbc
_PT2            BIT 0xbd
_P              BIT 0xd0
_F1             BIT 0xd1
_OV             BIT 0xd2
_RS0            BIT 0xd3
_RS1            BIT 0xd4
_F0             BIT 0xd5
_AC             BIT 0xd6
_CY             BIT 0xd7
_T2CON_0        BIT 0xc8
_T2CON_1        BIT 0xc9
_T2CON_2        BIT 0xca
_T2CON_3        BIT 0xcb
_T2CON_4        BIT 0xcc
_T2CON_5        BIT 0xcd
_T2CON_6        BIT 0xce
_T2CON_7        BIT 0xcf
_CP_RL2         BIT 0xc8
_C_T2           BIT 0xc9
_TR2            BIT 0xca
_EXEN2          BIT 0xcb
_TCLK           BIT 0xcc
_RCLK           BIT 0xcd
_EXF2           BIT 0xce
_TF2            BIT 0xcf
_LEDRA_0        BIT 0xe8
_LEDRA_1        BIT 0xe9
_LEDRA_2        BIT 0xea
_LEDRA_3        BIT 0xeb
_LEDRA_4        BIT 0xec
_LEDRA_5        BIT 0xed
_LEDRA_6        BIT 0xee
_LEDRA_7        BIT 0xef
_SWA_0          BIT 0xe8
_SWA_1          BIT 0xe9
_SWA_2          BIT 0xea
_SWA_3          BIT 0xeb
_SWA_4          BIT 0xec
_SWA_5          BIT 0xed
_SWA_6          BIT 0xee
_SWA_7          BIT 0xef
_KEY_0          BIT 0xf8
_KEY_1          BIT 0xf9
_KEY_2          BIT 0xfa
_KEY_3          BIT 0xfb
_LCD_RW         BIT 0xd8
_LCD_EN         BIT 0xd9
_LCD_RS         BIT 0xda
_LCD_ON         BIT 0xdb
_LCD_BLON       BIT 0xdc
_JRXRDY         BIT 0xc0
_JTXRDY         BIT 0xc1
_JRXEN          BIT 0xc2
_JTXEN          BIT 0xc3
_JTXFULL        BIT 0xc4
_JRXFULL        BIT 0xc5
_JTXEMPTY       BIT 0xc6
_JTDI           BIT 0xc7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
_buff:
	ds 32
_cursor:
	ds 1
_modifymem_PARM_2:
	ds 1
_modifymem_j_1_121:
	ds 1
_modifymem_sloc0_1_0:
	ds 1
_modifymem_sloc1_1_0:
	ds 3
_dispmem_PARM_2:
	ds 2
_dispmem_PARM_3:
	ds 1
_dispmem_begin_1_129:
	ds 3
_dispmem_j_1_130:
	ds 2
_do_cmd_i_1_166:
	ds 2
_do_cmd_j_1_166:
	ds 2
_do_cmd_n_1_166:
	ds 2
_do_cmd_q_1_166:
	ds 2
_do_cmd_y_1_166:
	ds 1
_do_cmd_cmd_1_166:
	ds 1
_do_cmd_sloc0_1_0:
	ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
	rseg	R_OSEG
_fillmem_PARM_2:
	ds 2
_fillmem_PARM_3:
	ds 1
	rseg	R_OSEG
_add_byte_buff_PARM_2:
	ds 1
	rseg	R_OSEG
_nlist_q_1_151:
	ds 1
_nlist_sloc0_1_0:
	ds 3
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	DSEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	rseg R_BSEG
_validbyte:
	DBIT	1
_keepediting:
	DBIT	1
_buff_haseq:
	DBIT	1
_buff_hasdot:
	DBIT	1
_breakpoint:
	DBIT	1
_do_cmd_p_bit_1_166:
	DBIT	1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	rseg R_PSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	rseg R_XSEG
	XSEG at 0x8000
_rxcount: ds 1
	public _rxcount
	rseg R_XSEG
	XSEG at 0x8001
_rxbuff: ds 254
	public _rxbuff
	rseg R_XSEG
	XSEG at 0x8100
_txcount: ds 1
	public _txcount
	rseg R_XSEG
	XSEG at 0x8101
_txbuff: ds 254
	public _txbuff
	rseg R_XSEG
_iram_save:
	ds 128
_br:
	ds 8
_A_save:
	ds 1
_PSW_save:
	ds 1
_B_save:
	ds 1
_IE_save:
	ds 1
_DPL_save:
	ds 2
_DPH_save:
	ds 2
_SP_save:
	ds 1
_LEDRA_save:
	ds 1
_LEDRB_save:
	ds 1
_PC_save:
	ds 2
_gotbreak:
	ds 1
_step_start:
	ds 2
_saved_jmp:
	ds 3
_saved_int:
	ds 3
_gostep:
	ds 1
_break_address:
	ds 2
_trace_type:
	ds 1
_go_pending:
	ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
	rseg R_HOME
	rseg R_GSINIT
	rseg R_CSEG
;--------------------------------------------------------
; Interrupt vectors
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	rseg R_HOME
	rseg R_GSINIT
	rseg R_GSINIT
;--------------------------------------------------------
; data variables initialization
;--------------------------------------------------------
	rseg R_DINIT
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function 'fill_rxbuff'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:79: void fill_rxbuff(void)
;	-----------------------------------------
;	 function fill_rxbuff
;	-----------------------------------------
_fill_rxbuff:
	using	0
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:82: rxcount=0;
	mov	dptr,#_rxcount
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:83: while(rxcount<254)
L002014?:
	mov	dptr,#_rxcount
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0xFE,L002027?
L002027?:
	jnc	L002016?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:85: if(RI)
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:87: RI=0;
	jbc	_RI,L002029?
	sjmp	L002014?
L002029?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:88: c=SBUF;
	mov	r2,_SBUF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:91: while (!TI);
L002001?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:92: TI=0;
	jbc	_TI,L002030?
	sjmp	L002001?
L002030?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:93: SBUF=c;
	mov	_SBUF,r2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:95: if (c=='\r')
	clr	a
	cjne	r2,#0x0D,L002031?
	inc	a
L002031?:
	mov	r3,a
	jz	L002008?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:97: while (!TI);
L002004?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:98: TI=0;
	jbc	_TI,L002034?
	sjmp	L002004?
L002034?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:99: SBUF='\n';
	mov	_SBUF,#0x0A
L002008?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:102: rxbuff[rxcount]=c;
	mov	dptr,#_rxcount
	movx	a,@dptr
	mov	r4,a
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	mov	a,r2
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:103: rxcount++;
	mov	dptr,#_rxcount
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:104: if((c=='\r') || (c=='\n')) break;
	mov	a,r3
	jnz	L002016?
	cjne	r2,#0x0A,L002014?
L002016?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:107: rxbuff[rxcount]=0;
	mov	dptr,#_rxcount
	movx	a,@dptr
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'put_txbuff'
;------------------------------------------------------------
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:110: void put_txbuff(void)
;	-----------------------------------------
;	 function put_txbuff
;	-----------------------------------------
_put_txbuff:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:113: for(j=0; j<txcount; j++)
	mov	r2,#0x00
	mov	r3,#0x00
L003004?:
	mov	dptr,#_txcount
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	L003007?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:115: while (!TI);
L003001?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:116: TI=0;
	jbc	_TI,L003015?
	sjmp	L003001?
L003015?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:117: SBUF=txbuff[j];
	mov	a,r2
	add	a,#_txbuff
	mov	dpl,a
	mov	a,r3
	addc	a,#(_txbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_SBUF,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:113: for(j=0; j<txcount; j++)
	inc	r2
	cjne	r2,#0x00,L003004?
	inc	r3
	sjmp	L003004?
L003007?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:119: txcount=0;
	mov	dptr,#_txcount
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putsp'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 r4 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:123: void putsp(unsigned char * x)
;	-----------------------------------------
;	 function putsp
;	-----------------------------------------
_putsp:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:127: j=0;
	mov	r5,#0x00
	mov	r6,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:128: if(P3_3==1)
	jnb	_P3_3,L004022?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:130: while(txcount!=0);
L004001?:
	mov	dptr,#_txcount
	movx	a,@dptr
	mov	r7,a
	jnz	L004001?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:132: while( ((*x)>0) && ((*x)<0x80) )
L004022?:
L004009?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	jz	L004011?
	cjne	r7,#0x80,L004029?
L004029?:
	jnc	L004011?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:134: if(*x==(unsigned char)'\n') txbuff[j++]='\r';
	cjne	r7,#0x0A,L004007?
	mov	ar7,r5
	mov	ar0,r6
	inc	r5
	cjne	r5,#0x00,L004033?
	inc	r6
L004033?:
	mov	a,r7
	add	a,#_txbuff
	mov	dpl,a
	mov	a,r0
	addc	a,#(_txbuff >> 8)
	mov	dph,a
	mov	a,#0x0D
	movx	@dptr,a
L004007?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:135: txbuff[j]=*x;
	mov	a,r5
	add	a,#_txbuff
	mov	r7,a
	mov	a,r6
	addc	a,#(_txbuff >> 8)
	mov	r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,r7
	mov	dph,r0
	mov	a,r1
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:136: x++;
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:137: j++;
	inc	r5
	cjne	r5,#0x00,L004009?
	inc	r6
	sjmp	L004009?
L004011?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:139: txbuff[j]=0;
	mov	a,r5
	add	a,#_txbuff
	mov	dpl,a
	mov	a,r6
	addc	a,#(_txbuff >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:140: txcount=(j<0x100)?j:0xff;
	mov	a,#0x100 - 0x01
	add	a,r6
	jc	L004016?
	mov	ar2,r5
	mov	ar3,r6
	sjmp	L004017?
L004016?:
	mov	r2,#0xFF
	mov	r3,#0x00
L004017?:
	mov	dptr,#_txcount
	mov	a,r2
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:141: if(P3_3==0) put_txbuff();
	jb	_P3_3,L004014?
	ljmp	_put_txbuff
L004014?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearline'
;------------------------------------------------------------
;j                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:144: void clearline (void)
;	-----------------------------------------
;	 function clearline
;	-----------------------------------------
_clearline:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:148: if(P3_3==1)
	jnb	_P3_3,L005005?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:150: while(txcount!=0);
L005001?:
	mov	dptr,#_txcount
	movx	a,@dptr
	mov	r2,a
	jnz	L005001?
L005005?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:152: txbuff[0]='\r';
	mov	dptr,#_txbuff
	mov	a,#0x0D
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:153: for(j=1; j<80; j++) txbuff[j]=' ';
	mov	r2,#0x01
L005008?:
	cjne	r2,#0x50,L005021?
L005021?:
	jnc	L005011?
	mov	a,r2
	add	a,#_txbuff
	mov	dpl,a
	clr	a
	addc	a,#(_txbuff >> 8)
	mov	dph,a
	mov	a,#0x20
	movx	@dptr,a
	inc	r2
	sjmp	L005008?
L005011?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:154: txbuff[j]='\r';
	mov	a,r2
	add	a,#_txbuff
	mov	dpl,a
	clr	a
	addc	a,#(_txbuff >> 8)
	mov	dph,a
	mov	a,#0x0D
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:155: txbuff[j+1]=0;
	mov	a,r2
	inc	a
	add	a,#_txbuff
	mov	dpl,a
	clr	a
	addc	a,#(_txbuff >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:156: txcount=j;
	mov	dptr,#_txcount
	mov	a,r2
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:157: if(P3_3==0) put_txbuff();
	jb	_P3_3,L005012?
	ljmp	_put_txbuff
L005012?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getsn'
;------------------------------------------------------------
;j                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:160: void getsn (void)
;	-----------------------------------------
;	 function getsn
;	-----------------------------------------
_getsn:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:164: if(P3_3==1)
	jnb	_P3_3,L006005?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:166: while(rxcount==0); // Wait for data to arrive
L006001?:
	mov	dptr,#_rxcount
	movx	a,@dptr
	mov	r2,a
	jnz	L006020?
	sjmp	L006001?
L006005?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:170: fill_rxbuff();
	lcall	_fill_rxbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:172: for(j=0; j<rxcount; j++)
L006020?:
	mov	r2,#0x00
L006010?:
	mov	dptr,#_rxcount
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,r3
	jnc	L006013?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:174: if(j<(BUFFSIZE-1))
	cjne	r2,#0x1F,L006025?
L006025?:
	jnc	L006013?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:176: buff[j]=rxbuff[j];
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	a,r2
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	@r0,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:172: for(j=0; j<rxcount; j++)
	inc	r2
	sjmp	L006010?
L006013?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:183: buff[j]=0;
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:184: rxcount=0;
	mov	dptr,#_rxcount
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'chartohex'
;------------------------------------------------------------
;c                         Allocated to registers 
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:187: unsigned char chartohex(char c)
;	-----------------------------------------
;	 function chartohex
;	-----------------------------------------
_chartohex:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:190: i=toupper(c)-'0';
	lcall	_toupper
	mov	a,dpl
	add	a,#0xd0
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:191: if(i>9) i-=7; //letter from A to F
	mov  r2,a
	add	a,#0xff - 0x09
	jnc	L007002?
	mov	a,r2
	add	a,#0xf9
	mov	r2,a
L007002?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:192: return i;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'outbytenl'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:195: void outbytenl(unsigned char x)
;	-----------------------------------------
;	 function outbytenl
;	-----------------------------------------
_outbytenl:
	mov	r2,dpl
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:197: get_txbuff();
	push	ar2
	lcall	_get_txbuff
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:198: add_byte_txbuff(x);
	mov	dpl,r2
	lcall	_add_byte_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:199: add_nlcursor_txbuff();
	lcall	_add_nlcursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:200: flush_txbuff();
	ljmp	_flush_txbuff
;------------------------------------------------------------
;Allocation info for local variables in function 'outcursor'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:203: void outcursor(void)
;	-----------------------------------------
;	 function outcursor
;	-----------------------------------------
_outcursor:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:205: get_txbuff();
	lcall	_get_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:206: add_cursor_txbuff();
	lcall	_add_cursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:207: flush_txbuff();
	ljmp	_flush_txbuff
;------------------------------------------------------------
;Allocation info for local variables in function 'outwordnl'
;------------------------------------------------------------
;val                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:210: void outwordnl (unsigned int val)
;	-----------------------------------------
;	 function outwordnl
;	-----------------------------------------
_outwordnl:
	mov	r2,dpl
	mov	r3,dph
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:212: get_txbuff();
	push	ar2
	push	ar3
	lcall	_get_txbuff
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:213: add_word_txbuff(val);
	mov	dpl,r2
	mov	dph,r3
	lcall	_add_word_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:214: add_nlcursor_txbuff();
	lcall	_add_nlcursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:215: flush_txbuff();
	ljmp	_flush_txbuff
;------------------------------------------------------------
;Allocation info for local variables in function 'putcnl'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:218: void putcnl(char c)
;	-----------------------------------------
;	 function putcnl
;	-----------------------------------------
_putcnl:
	mov	r2,dpl
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:220: get_txbuff();
	push	ar2
	lcall	_get_txbuff
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:221: add_char_txbuff(c);
	mov	dpl,r2
	lcall	_add_char_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:222: add_nlcursor_txbuff();
	lcall	_add_nlcursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:223: flush_txbuff();
	ljmp	_flush_txbuff
;------------------------------------------------------------
;Allocation info for local variables in function 'fillmem'
;------------------------------------------------------------
;len                       Allocated with name '_fillmem_PARM_2'
;val                       Allocated with name '_fillmem_PARM_3'
;begin                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:227: void fillmem(unsigned char * begin,  unsigned int len, unsigned char val)
;	-----------------------------------------
;	 function fillmem
;	-----------------------------------------
_fillmem:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:229: while(len)
	mov	r5,_fillmem_PARM_2
	mov	r6,(_fillmem_PARM_2 + 1)
L012001?:
	mov	a,r5
	orl	a,r6
	jz	L012004?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:231: *begin=val;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_fillmem_PARM_3
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:232: begin++;
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:233: len--;
	dec	r5
	cjne	r5,#0xff,L012001?
	dec	r6
	sjmp	L012001?
L012004?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'modifymem'
;------------------------------------------------------------
;loc                       Allocated with name '_modifymem_PARM_2'
;ptr                       Allocated to registers r2 r3 r4 
;j                         Allocated with name '_modifymem_j_1_121'
;sloc0                     Allocated with name '_modifymem_sloc0_1_0'
;sloc1                     Allocated with name '_modifymem_sloc1_1_0'
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:238: void modifymem(unsigned char * ptr,  char loc)
;	-----------------------------------------
;	 function modifymem
;	-----------------------------------------
_modifymem:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:242: get_txbuff();
	push	ar2
	push	ar3
	push	ar4
	lcall	_get_txbuff
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:243: while(1)
	mov	a,#0x49
	cjne	a,_modifymem_PARM_2,L013054?
	mov	a,#0x01
	sjmp	L013055?
L013054?:
	clr	a
L013055?:
	mov	_modifymem_sloc0_1_0,a
	mov	a,#0x44
	cjne	a,_modifymem_PARM_2,L013056?
	mov	a,#0x01
	sjmp	L013057?
L013056?:
	clr	a
L013057?:
	mov	r6,a
L013024?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:245: add_char_txbuff(loc);
	mov	dpl,_modifymem_PARM_2
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_add_char_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:246: add_char_txbuff(':');
	mov	dpl,#0x3A
	lcall	_add_char_txbuff
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:248: if((loc=='D')||(loc=='I'))
	mov	a,r6
	jnz	L013001?
	mov	a,_modifymem_sloc0_1_0
	jz	L013002?
L013001?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:249: add_byte_txbuff((unsigned char)ptr);
	mov	dpl,r2
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_add_byte_txbuff
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	L013003?
L013002?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:251: add_word_txbuff((unsigned int)ptr);
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_add_word_txbuff
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
L013003?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:253: add_str_txbuff("=  ");
	mov	dptr,#__str_0
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_add_str_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:254: flush_txbuff();
	lcall	_flush_txbuff
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:257: if(P3_3==0) fill_rxbuff(); // Using the serial port
	jb	_P3_3,L013007?
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_fill_rxbuff
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:258: while(rxcount==0);
L013007?:
	mov	dptr,#_rxcount
	movx	a,@dptr
	mov	r7,a
	jz	L013007?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:259: if( (!isxdigit(rxbuff[0])) || (!isxdigit(rxbuff[1])) )
	mov	dptr,#_rxbuff
	movx	a,@dptr
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_isxdigit
	mov	a,dpl
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	jz	L013019?
	mov	dptr,#(_rxbuff + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_isxdigit
	mov	a,dpl
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	jz	L013063?
	ljmp	L013050?
L013063?:
L013019?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:261: if (rxbuff[0]=='\'')
	mov	dptr,#_rxbuff
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x27,L013014?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:263: for(j=1; (rxbuff[j]!=0) && (rxbuff[j]!='\''); j++) (*ptr++)=rxbuff[j];
	mov	ar7,r2
	mov	ar0,r3
	mov	ar1,r4
	mov	_modifymem_j_1_121,#0x01
L013027?:
	mov	a,_modifymem_j_1_121
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x00,L013066?
	ljmp	L013052?
L013066?:
	mov	a,_modifymem_j_1_121
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x27,L013067?
	ljmp	L013052?
L013067?:
	mov	a,_modifymem_j_1_121
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrput
	inc	dptr
	mov	r7,dpl
	mov	r0,dph
	mov	ar2,r7
	mov	ar3,r0
	mov	ar4,r1
	inc	_modifymem_j_1_121
	sjmp	L013027?
L013014?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:265: else if (toupper(rxbuff[0])!='S')
	mov	dptr,#_rxbuff
	movx	a,@dptr
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_toupper
	mov	r5,dpl
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	cjne	r5,#0x53,L013068?
	sjmp	L013011?
L013068?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:267: rxcount=0;
	mov	dptr,#_rxcount
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:268: break; // get out of while(1) loop
	ljmp	L013025?
L013011?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:270: else ptr++;
	inc	r2
	cjne	r2,#0x00,L013069?
	inc	r3
L013069?:
	ljmp	L013021?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:274: for(j=0; j<rxcount; j+=3)
L013050?:
	mov	_modifymem_sloc1_1_0,r2
	mov	(_modifymem_sloc1_1_0 + 1),r3
	mov	(_modifymem_sloc1_1_0 + 2),r4
	mov	_modifymem_j_1_121,#0x00
L013031?:
	mov	dptr,#_rxcount
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,_modifymem_j_1_121
	subb	a,r5
	jc	L013070?
	ljmp	L013053?
L013070?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:276: if( (isxdigit(rxbuff[j])) && (isxdigit(rxbuff[j+1])) )
	mov	a,_modifymem_j_1_121
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar6
	lcall	_isxdigit
	mov	a,dpl
	pop	ar6
	jz	L013033?
	mov	a,_modifymem_j_1_121
	inc	a
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar6
	lcall	_isxdigit
	mov	a,dpl
	pop	ar6
	jz	L013033?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:278: (*ptr++)=chartohex(rxbuff[j])*0x10+chartohex(rxbuff[j+1]);
	push	ar6
	mov	a,_modifymem_j_1_121
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar6
	lcall	_chartohex
	mov	r5,dpl
	pop	ar6
	mov	a,r5
	swap	a
	anl	a,#0xf0
	mov	r5,a
	mov	a,_modifymem_j_1_121
	inc	a
	add	a,#_rxbuff
	mov	dpl,a
	clr	a
	addc	a,#(_rxbuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar5
	lcall	_chartohex
	mov	r6,dpl
	pop	ar5
	mov	a,r6
	add	a,r5
	mov	r5,a
	mov	dpl,_modifymem_sloc1_1_0
	mov	dph,(_modifymem_sloc1_1_0 + 1)
	mov	b,(_modifymem_sloc1_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	_modifymem_sloc1_1_0,dpl
	mov	(_modifymem_sloc1_1_0 + 1),dph
	mov	r2,_modifymem_sloc1_1_0
	mov	r3,(_modifymem_sloc1_1_0 + 1)
	mov	r4,(_modifymem_sloc1_1_0 + 2)
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:285: flush_txbuff();
	pop	ar6
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:278: (*ptr++)=chartohex(rxbuff[j])*0x10+chartohex(rxbuff[j+1]);
L013033?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:274: for(j=0; j<rxcount; j+=3)
	inc	_modifymem_j_1_121
	inc	_modifymem_j_1_121
	inc	_modifymem_j_1_121
	ljmp	L013031?
L013052?:
	mov	ar2,r7
	mov	ar3,r0
	mov	ar4,r1
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:285: flush_txbuff();
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:274: for(j=0; j<rxcount; j+=3)
	sjmp	L013021?
L013053?:
	mov	r2,_modifymem_sloc1_1_0
	mov	r3,(_modifymem_sloc1_1_0 + 1)
	mov	r4,(_modifymem_sloc1_1_0 + 2)
L013021?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:282: rxcount=0;
	mov	dptr,#_rxcount
	clr	a
	movx	@dptr,a
	ljmp	L013024?
L013025?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:284: add_nlcursor_txbuff();
	lcall	_add_nlcursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:285: flush_txbuff();
	ljmp	_flush_txbuff
;------------------------------------------------------------
;Allocation info for local variables in function 'dispmem'
;------------------------------------------------------------
;len                       Allocated with name '_dispmem_PARM_2'
;loc                       Allocated with name '_dispmem_PARM_3'
;begin                     Allocated with name '_dispmem_begin_1_129'
;j                         Allocated with name '_dispmem_j_1_130'
;n                         Allocated to registers r3 
;i                         Allocated to registers r2 
;k                         Allocated to registers 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:289: void dispmem(unsigned char * begin,  unsigned int len, char loc)
;	-----------------------------------------
;	 function dispmem
;	-----------------------------------------
_dispmem:
	mov	_dispmem_begin_1_129,dpl
	mov	(_dispmem_begin_1_129 + 1),dph
	mov	(_dispmem_begin_1_129 + 2),b
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:294: get_txbuff();
	lcall	_get_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:296: if(len==0) len=0x80;
	mov	a,_dispmem_PARM_2
	orl	a,(_dispmem_PARM_2 + 1)
	jnz	L014002?
	mov	_dispmem_PARM_2,#0x80
	clr	a
	mov	(_dispmem_PARM_2 + 1),a
L014002?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:298: buff[16]=0;
	mov	(_buff + 0x0010),#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:300: for(j=0; j<len; j++)
	mov	a,#0x49
	cjne	a,_dispmem_PARM_3,L014038?
	mov	a,#0x01
	sjmp	L014039?
L014038?:
	clr	a
L014039?:
	mov	r5,a
	mov	a,#0x44
	cjne	a,_dispmem_PARM_3,L014040?
	mov	a,#0x01
	sjmp	L014041?
L014040?:
	clr	a
L014041?:
	mov	r6,a
	clr	a
	mov	_dispmem_j_1_130,a
	mov	(_dispmem_j_1_130 + 1),a
L014018?:
	clr	c
	mov	a,_dispmem_j_1_130
	subb	a,_dispmem_PARM_2
	mov	a,(_dispmem_j_1_130 + 1)
	subb	a,(_dispmem_PARM_2 + 1)
	jc	L014042?
	ljmp	L014021?
L014042?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:302: if(loc=='I')
	mov	a,r5
	jz	L014004?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:304: n=*(idata unsigned char *)((unsigned char)begin+j);
	mov	r3,_dispmem_begin_1_129
	mov	r4,#0x00
	mov	a,_dispmem_j_1_130
	add	a,r3
	mov	r3,a
	mov	a,(_dispmem_j_1_130 + 1)
	addc	a,r4
	mov	r4,a
	mov	ar0,r3
	mov	ar3,@r0
	sjmp	L014005?
L014004?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:308: n=begin[j];
	mov	a,_dispmem_j_1_130
	add	a,_dispmem_begin_1_129
	mov	r4,a
	mov	a,(_dispmem_j_1_130 + 1)
	addc	a,(_dispmem_begin_1_129 + 1)
	mov	r2,a
	mov	r7,(_dispmem_begin_1_129 + 2)
	mov	dpl,r4
	mov	dph,r2
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
L014005?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:310: i=j&0xf;
	mov	a,#0x0F
	anl	a,_dispmem_j_1_130
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:312: if(i==0) 
	mov	r2,a
	mov	r4,#0x00
	jnz	L014011?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:314: add_char_txbuff(loc);  //A letter to indicate Data, Xram, Code, Idata
	mov	dpl,_dispmem_PARM_3
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_add_char_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:315: add_char_txbuff(':');
	mov	dpl,#0x3A
	lcall	_add_char_txbuff
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:316: if((loc=='D')||(loc=='I'))
	mov	a,r6
	jnz	L014006?
	mov	a,r5
	jz	L014007?
L014006?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:317: add_byte_txbuff((unsigned char)begin+j);
	mov	r4,_dispmem_begin_1_129
	mov	a,_dispmem_j_1_130
	add	a,r4
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_add_byte_txbuff
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
	sjmp	L014008?
L014007?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:319: add_word_txbuff((unsigned int)begin+j);
	mov	r4,_dispmem_begin_1_129
	mov	r7,(_dispmem_begin_1_129 + 1)
	mov	a,_dispmem_j_1_130
	add	a,r4
	mov	dpl,a
	mov	a,(_dispmem_j_1_130 + 1)
	addc	a,r7
	mov	dph,a
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_add_word_txbuff
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
L014008?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:320: add_str_txbuff(":  ");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_add_str_txbuff
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
L014011?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:322: add_byte_txbuff(n);
	mov	dpl,r3
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_add_byte_txbuff
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:323: add_char_txbuff(i==7?'-':' '); //A middle separator like the old good DOS debug
	cjne	r2,#0x07,L014024?
	mov	r4,#0x2D
	sjmp	L014025?
L014024?:
	mov	r4,#0x20
L014025?:
	mov	dpl,r4
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_add_char_txbuff
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:325: if((n>0x20)&&(n<0x7f))
	mov	a,r3
	add	a,#0xff - 0x20
	jnc	L014013?
	cjne	r3,#0x7F,L014050?
L014050?:
	jnc	L014013?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:326: buff[i]=n;
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	@r0,ar3
	sjmp	L014014?
L014013?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:328: buff[i]='.';
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x2E
L014014?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:330: if(i==0xf)
	cjne	r2,#0x0F,L014020?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:332: add_str_txbuff("   ");
	mov	dptr,#__str_2
	mov	b,#0x80
	push	ar5
	push	ar6
	lcall	_add_str_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:333: add_str_txbuff(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_add_str_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:334: add_char_txbuff('\r');
	mov	dpl,#0x0D
	lcall	_add_char_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:335: add_char_txbuff('\n');
	mov	dpl,#0x0A
	lcall	_add_char_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:336: update_txbuff();
	lcall	_update_txbuff
	pop	ar6
	pop	ar5
L014020?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:300: for(j=0; j<len; j++)
	inc	_dispmem_j_1_130
	clr	a
	cjne	a,_dispmem_j_1_130,L014054?
	inc	(_dispmem_j_1_130 + 1)
L014054?:
	ljmp	L014018?
L014021?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:339: add_nlcursor_txbuff();
	lcall	_add_nlcursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:340: flush_txbuff();
	ljmp	_flush_txbuff
;------------------------------------------------------------
;Allocation info for local variables in function 'cleanbuff'
;------------------------------------------------------------
;j                         Allocated to registers r2 
;k                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:344: void cleanbuff (void)
;	-----------------------------------------
;	 function cleanbuff
;	-----------------------------------------
_cleanbuff:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:348: buff_haseq=0;
	clr	_buff_haseq
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:349: buff_hasdot=0;
	clr	_buff_hasdot
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:352: for(j=0; j<BUFFSIZE; j++)
	mov	r2,#0x00
L015013?:
	cjne	r2,#0x20,L015041?
L015041?:
	jnc	L015016?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:354: buff[j]=toupper(buff[j]);
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	dpl,@r0
	push	ar2
	push	ar0
	lcall	_toupper
	mov	a,dpl
	pop	ar0
	pop	ar2
	mov	@r0,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:355: if(isspace(buff[j])) buff[j]=0;
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	dpl,@r0
	push	ar2
	lcall	_isspace
	mov	a,dpl
	pop	ar2
	jz	L015002?
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x00
L015002?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:356: if(buff[j]=='=')
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0x3D,L015007?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:358: buff[j]=0;
	mov	@r0,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:359: buff_haseq=1;
	setb	_buff_haseq
	sjmp	L015015?
L015007?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:361: else if((buff[j]=='.')||(buff[j]=='_'))
	mov	ar3,@r0
	cjne	r3,#0x2E,L015046?
	sjmp	L015003?
L015046?:
	cjne	r3,#0x5F,L015015?
L015003?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:363: buff[j]=0;
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:364: buff_hasdot=1;
	setb	_buff_hasdot
L015015?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:352: for(j=0; j<BUFFSIZE; j++)
	inc	r2
	sjmp	L015013?
L015016?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:369: for(j=0, k=0; j<BUFFSIZE; j++)
	mov	r2,#0x00
	mov	r3,#0x00
L015017?:
	cjne	r3,#0x20,L015049?
L015049?:
	jnc	L015037?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:371: buff[k]=buff[j];
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	a,r3
	add	a,#_buff
	mov	r1,a
	mov	ar4,@r1
	mov	@r0,ar4
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:372: if( ((buff[j]!=0)||(buff[j+1]!=0)) && buff[0]!=0) k++;
	mov	a,r4
	jnz	L015012?
	mov	a,r3
	inc	a
	add	a,#_buff
	mov	r0,a
	mov	a,@r0
	jz	L015019?
L015012?:
	mov	a,_buff
	jz	L015019?
	inc	r2
L015019?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:369: for(j=0, k=0; j<BUFFSIZE; j++)
	inc	r3
	sjmp	L015017?
L015037?:
L015021?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:374: for(; k<BUFFSIZE; k++) buff[k]=0;
	cjne	r2,#0x20,L015054?
L015054?:
	jnc	L015025?
	mov	a,r2
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x00
	inc	r2
	sjmp	L015021?
L015025?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getwordn'
;------------------------------------------------------------
;word                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:378: unsigned int getwordn(void)
;	-----------------------------------------
;	 function getwordn
;	-----------------------------------------
_getwordn:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:380: unsigned int word=0;
	mov	r2,#0x00
	mov	r3,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:387: cursor++;
L016003?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:382: for( ; buff[cursor]!=0; cursor++)
	mov	a,_cursor
	add	a,#_buff
	mov	r0,a
	mov	ar4,@r0
	cjne	r4,#0x00,L016012?
	sjmp	L016006?
L016012?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:384: if(isxdigit(buff[cursor]))
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_isxdigit
	mov	a,dpl
	pop	ar3
	pop	ar2
	jz	L016005?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:385: word=(word*0x10)+chartohex(buff[cursor]);
	mov	ar4,r2
	mov	a,r3
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,_cursor
	add	a,#_buff
	mov	r0,a
	mov	dpl,@r0
	push	ar4
	push	ar5
	lcall	_chartohex
	mov	r6,dpl
	pop	ar5
	pop	ar4
	mov	r7,#0x00
	mov	a,r6
	add	a,r4
	mov	r2,a
	mov	a,r7
	addc	a,r5
	mov	r3,a
L016005?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:382: for( ; buff[cursor]!=0; cursor++)
	inc	_cursor
	sjmp	L016003?
L016006?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:387: cursor++;
	inc	_cursor
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:388: return word;
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_byte_buff'
;------------------------------------------------------------
;loc                       Allocated with name '_add_byte_buff_PARM_2'
;val                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:391: void add_byte_buff(unsigned char val, unsigned char loc)
;	-----------------------------------------
;	 function add_byte_buff
;	-----------------------------------------
_add_byte_buff:
	mov	r2,dpl
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:393: txbuff[loc]=  hexval[val/0x10];
	mov	a,_add_byte_buff_PARM_2
	add	a,#_txbuff
	mov	r3,a
	clr	a
	addc	a,#(_txbuff >> 8)
	mov	r4,a
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov	dptr,#_hexval
	movc	a,@a+dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:394: txbuff[loc+1]=hexval[val&0x0f];
	mov	a,_add_byte_buff_PARM_2
	inc	a
	add	a,#_txbuff
	mov	r3,a
	clr	a
	addc	a,#(_txbuff >> 8)
	mov	r4,a
	mov	a,#0x0F
	anl	a,r2
	mov	dptr,#_hexval
	movc	a,@a+dptr
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disp_regs'
;------------------------------------------------------------
;j                         Allocated to registers r4 
;bank                      Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:405: void disp_regs(void)
;	-----------------------------------------
;	 function disp_regs
;	-----------------------------------------
_disp_regs:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:409: get_txbuff();
	lcall	_get_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:410: add_str_txbuff(regframe);
	mov	dptr,#_regframe
	mov	b,#0x80
	lcall	_add_str_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:412: add_byte_buff(A_save,   3);
	mov	dptr,#_A_save
	movx	a,@dptr
	mov	r2,a
	mov	_add_byte_buff_PARM_2,#0x03
	mov	dpl,r2
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:413: add_byte_buff(B_save,   10);
	mov	dptr,#_B_save
	movx	a,@dptr
	mov	r2,a
	mov	_add_byte_buff_PARM_2,#0x0A
	mov	dpl,r2
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:414: add_byte_buff(SP_save,  17);
	mov	dptr,#_SP_save
	movx	a,@dptr
	mov	r2,a
	mov	_add_byte_buff_PARM_2,#0x11
	mov	dpl,r2
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:415: add_byte_buff(IE_save,  24);
	mov	dptr,#_IE_save
	movx	a,@dptr
	mov	r2,a
	mov	_add_byte_buff_PARM_2,#0x18
	mov	dpl,r2
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:416: add_byte_buff(DPH_save, 32);
	mov	dptr,#_DPH_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	_add_byte_buff_PARM_2,#0x20
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:417: add_byte_buff(DPL_save, 39);
	mov	dptr,#_DPL_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	_add_byte_buff_PARM_2,#0x27
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:418: add_byte_buff(PSW_save, 46);
	mov	dptr,#_PSW_save
	movx	a,@dptr
	mov	r2,a
	mov	_add_byte_buff_PARM_2,#0x2E
	mov	dpl,r2
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:419: add_byte_buff((PC_save/0x100), 52);
	mov	dptr,#_PC_save
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,a
	mov	_add_byte_buff_PARM_2,#0x34
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:420: add_byte_buff((PC_save%0x100), 54);
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	_add_byte_buff_PARM_2,#0x36
	lcall	_add_byte_buff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:422: bank=(PSW_save/0x8)&0x3;
	mov	dptr,#_PSW_save
	movx	a,@dptr
	swap	a
	rl	a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:423: for(j=0; j<8; j++)
	anl	a,#(0x1f&0x03)
	mov	r2,a
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r3,a
	mov	r4,#0x00
L018001?:
	cjne	r4,#0x08,L018010?
L018010?:
	jnc	L018004?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:425: add_byte_buff(iram_save[j+bank*8], 58+3+(7*j));
	mov	a,r3
	add	a,r4
	add	a,#_iram_save
	mov	dpl,a
	clr	a
	addc	a,#(_iram_save >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	mov	b,#0x07
	mul	ab
	add	a,#0x3D
	mov	_add_byte_buff_PARM_2,a
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_add_byte_buff
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:423: for(j=0; j<8; j++)
	inc	r4
	sjmp	L018001?
L018004?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:427: txbuff[58+61]=('0'+bank);
	mov	a,#0x30
	add	a,r2
	mov	dptr,#(_txbuff + 0x0077)
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:429: append_txbuff=1;
	setb	_append_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:430: discnt=1;
	mov	_discnt,#0x01
	clr	a
	mov	(_discnt + 1),a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:431: unassemble(PC_save); //The next assembly instruction...
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_unassemble
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:432: append_txbuff=0;
	clr	_append_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:433: add_nlcursor_txbuff();
	lcall	_add_nlcursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:434: flush_txbuff();
	ljmp	_flush_txbuff
;------------------------------------------------------------
;Allocation info for local variables in function 'nlist'
;------------------------------------------------------------
;slist                     Allocated to registers r2 r3 r4 
;x                         Allocated to registers r5 
;q                         Allocated with name '_nlist_q_1_151'
;sloc0                     Allocated with name '_nlist_sloc0_1_0'
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:437: unsigned char nlist (unsigned char * slist)
;	-----------------------------------------
;	 function nlist
;	-----------------------------------------
_nlist:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:439: unsigned char x=0xff, q;
	mov	r5,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:441: while(*slist)
L019006?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	jz	L019008?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:443: if((*slist)>0x7f)
	mov	a,r6
	add	a,#0xff - 0x7F
	jnc	L019005?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:445: x=*(slist++);
	mov	ar5,r6
	inc	r2
	cjne	r2,#0x00,L019029?
	inc	r3
L019029?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:446: for(q=0; (*slist<=0x7f) && (*slist==(unsigned char)buff[q]) ; q++) slist++;
	mov	_nlist_sloc0_1_0,r2
	mov	(_nlist_sloc0_1_0 + 1),r3
	mov	(_nlist_sloc0_1_0 + 2),r4
	mov	_nlist_q_1_151,#0x00
L019012?:
	mov	dpl,_nlist_sloc0_1_0
	mov	dph,(_nlist_sloc0_1_0 + 1)
	mov	b,(_nlist_sloc0_1_0 + 2)
	lcall	__gptrget
	mov  r7,a
	add	a,#0xff - 0x7F
	jc	L019026?
	mov	a,_nlist_q_1_151
	add	a,#_buff
	mov	r0,a
	mov	ar6,@r0
	mov	a,r7
	cjne	a,ar6,L019026?
	inc	_nlist_sloc0_1_0
	clr	a
	cjne	a,_nlist_sloc0_1_0,L019033?
	inc	(_nlist_sloc0_1_0 + 1)
L019033?:
	inc	_nlist_q_1_151
	sjmp	L019012?
L019026?:
	mov	r2,_nlist_sloc0_1_0
	mov	r3,(_nlist_sloc0_1_0 + 1)
	mov	r4,(_nlist_sloc0_1_0 + 2)
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:447: if((*slist>0x7f)&&(buff[q]==0)) break;
	mov	dpl,_nlist_sloc0_1_0
	mov	dph,(_nlist_sloc0_1_0 + 1)
	mov	b,(_nlist_sloc0_1_0 + 2)
	lcall	__gptrget
	mov  r6,a
	add	a,#0xff - 0x7F
	jnc	L019005?
	mov	a,_nlist_q_1_151
	add	a,#_buff
	mov	r0,a
	mov	a,@r0
	jz	L019008?
L019005?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:449: slist++;
	inc	r2
	cjne	r2,#0x00,L019006?
	inc	r3
	sjmp	L019006?
L019008?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:451: if(*slist) return x;//Found one!
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	L019010?
	mov	dpl,r5
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:452: return 0xff; //What if a sfr is located at 0xff?
	ret
L019010?:
	mov	dpl,#0xFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'breakorstep'
;------------------------------------------------------------
;n                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:455: void breakorstep (void)
;	-----------------------------------------
;	 function breakorstep
;	-----------------------------------------
_breakorstep:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:459: gotbreak=0;
	mov	dptr,#_gotbreak
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:460: breakpoint=0;
	clr	_breakpoint
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:462: if(go_pending==0x55)
	mov	dptr,#_go_pending
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x55,L020002?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:464: go_pending=0xaa;
	mov	dptr,#_go_pending
	mov	a,#0xAA
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:465: step_start=PC_save; //Next instruction to be executed
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_step_start
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:466: gotbreak=0; //If changes to 1, the single step function worked!
	mov	dptr,#_gotbreak
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:467: gostep=1;
	mov	dptr,#_gostep
	mov	a,#0x01
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:468: dostep();
	lcall	_dostep
L020002?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:470: go_pending=0xaa;	
	mov	dptr,#_go_pending
	mov	a,#0xAA
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:472: if (trace_type)
	mov	dptr,#_trace_type
	movx	a,@dptr
	mov	r2,a
	jnz	L020043?
	ljmp	L020017?
L020043?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:474: if(trace_type==1) //Run in trace mode until a breapoint is hit
	mov	dptr,#_trace_type
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,L020006?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:476: for (n=0; n<4; n++)
	mov	r2,#0x00
L020021?:
	cjne	r2,#0x04,L020046?
L020046?:
	jnc	L020006?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:478: if(br[n]==PC_save)
	mov	a,r2
	add	a,r2
	add	a,#_br
	mov	dpl,a
	clr	a
	addc	a,#(_br >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	cjne	a,ar5,L020023?
	mov	a,r4
	cjne	a,ar6,L020023?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:480: breakpoint=1;
	setb	_breakpoint
L020023?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:476: for (n=0; n<4; n++)
	inc	r2
	sjmp	L020021?
L020006?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:484: if ((break_address!=PC_save))
	mov	dptr,#_break_address
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	cjne	a,ar4,L020050?
	mov	a,r3
	cjne	a,ar5,L020050?
	sjmp	L020017?
L020050?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:486: if (trace_type>=2)
	mov	dptr,#_trace_type
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x02,L020051?
L020051?:
	jc	L020008?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:488: discnt=1;
	mov	_discnt,#0x01
	clr	a
	mov	(_discnt + 1),a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:489: unassemble(step_start); //The executed assembly instruction...
	mov	dptr,#_step_start
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_unassemble
L020008?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:491: if((JRXRDY==0)&&(breakpoint==0))
	jb	_JRXRDY,L020017?
	jb	_breakpoint,L020017?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:493: if(trace_type==3) disp_regs();
	mov	dptr,#_trace_type
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x03,L020010?
	lcall	_disp_regs
L020010?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:494: step_start=PC_save;
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_step_start
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:495: dostep();
	lcall	_dostep
L020017?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:499: if((trace_type>=2) && (RI==0))
	mov	dptr,#_trace_type
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x02,L020057?
L020057?:
	jc	L020019?
	jb	_RI,L020019?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:501: discnt=1;
	mov	_discnt,#0x01
	clr	a
	mov	(_discnt + 1),a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:502: unassemble(step_start); //The executed assembly instruction...
	mov	dptr,#_step_start
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_unassemble
L020019?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:505: disp_regs();
	ljmp	_disp_regs
;------------------------------------------------------------
;Allocation info for local variables in function 'do_cmd'
;------------------------------------------------------------
;i                         Allocated with name '_do_cmd_i_1_166'
;j                         Allocated with name '_do_cmd_j_1_166'
;n                         Allocated with name '_do_cmd_n_1_166'
;p                         Allocated to registers r4 r5 
;q                         Allocated with name '_do_cmd_q_1_166'
;c                         Allocated to registers r6 
;d                         Allocated to registers r2 
;x                         Allocated to registers r7 
;y                         Allocated with name '_do_cmd_y_1_166'
;cmd                       Allocated with name '_do_cmd_cmd_1_166'
;sloc0                     Allocated with name '_do_cmd_sloc0_1_0'
;------------------------------------------------------------
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:508: void do_cmd (void)
;	-----------------------------------------
;	 function do_cmd
;	-----------------------------------------
_do_cmd:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:516: append_txbuff=0;
	clr	_append_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:518: if (gotbreak!=1) //Power-on reset
	mov	dptr,#_gotbreak
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x01,L021320?
	sjmp	L021002?
L021320?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:520: txcount=0;
	mov	dptr,#_txcount
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:521: putsp(BANNER);
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_putsp
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:522: SP_save=7; //Default user stack location
	mov	dptr,#_SP_save
	mov	a,#0x07
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:523: LEDRA_save=0xff;
	mov	dptr,#_LEDRA_save
	mov	a,#0xFF
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:524: LEDRB_save=0xff;
	mov	dptr,#_LEDRB_save
	mov	a,#0xFF
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:525: restorePC();
	lcall	_restorePC
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:526: cmd=0;
	mov	_do_cmd_cmd_1_166,#0x00
	sjmp	L021220?
L021002?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:528: else breakorstep(); //Got here from the beak/step interrupt
	lcall	_breakorstep
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:530: while(1)
L021220?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:532: fillmem(buff, BUFFSIZE, 0);;
	mov	_fillmem_PARM_2,#0x20
	clr	a
	mov	(_fillmem_PARM_2 + 1),a
	mov	_fillmem_PARM_3,#0x00
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_fillmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:533: getsn();
	lcall	_getsn
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:534: cleanbuff();
	lcall	_cleanbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:535: break_address=0;
	mov	dptr,#_break_address
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:536: trace_type=0;
	mov	dptr,#_trace_type
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:539: cursor=0;
	mov	_cursor,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:540: getwordn();   //skip the command name
	lcall	_getwordn
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:541: n=getwordn(); //n is the first parameter/number
	lcall	_getwordn
	mov	_do_cmd_n_1_166,dpl
	mov	(_do_cmd_n_1_166 + 1),dph
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:542: p=getwordn(); //p is the second parameter/number
	lcall	_getwordn
	mov	r4,dpl
	mov	r5,dph
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:543: q=getwordn(); //q is the third parameter/number
	push	ar4
	push	ar5
	lcall	_getwordn
	mov	_do_cmd_q_1_166,dpl
	mov	(_do_cmd_q_1_166 + 1),dph
	pop	ar5
	pop	ar4
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:544: i=n&0xfff0;
	mov	a,#0xF0
	anl	a,_do_cmd_n_1_166
	mov	_do_cmd_i_1_166,a
	mov	(_do_cmd_i_1_166 + 1),(_do_cmd_n_1_166 + 1)
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:545: j=(p+15)&0xfff0;
	mov	a,#0x0F
	add	a,r4
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r7,a
	mov	a,#0xF0
	anl	a,r6
	mov	_do_cmd_j_1_166,a
	mov	(_do_cmd_j_1_166 + 1),r7
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:546: c=n; // Sometimes for the first parameter we need an unsigned char
	mov	r6,_do_cmd_n_1_166
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:547: p_bit=(p==0?0:1);
	mov	a,r4
	orl	a,r5
	add	a,#0xff
	mov	_do_cmd_p_bit_1_166,c
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:549: cmd=nlist(cmdlst)&0x7f;
	mov	dptr,#_cmdlst
	mov	b,#0x80
	push	ar4
	push	ar5
	push	ar6
	lcall	_nlist
	mov	a,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	anl	a,#0x7F
	mov	_do_cmd_cmd_1_166,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:551: switch(cmd)
	mov	a,_do_cmd_cmd_1_166
	mov	r7,a
	add	a,#0xff - 0x2E
	jnc	L021321?
	ljmp	L021156?
L021321?:
	mov	a,r7
L021324?:
	add	a,#(L021322?-3-L021324?)
	movc	a,@a+pc
	push	acc
	mov	a,r7
L021325?:
	add	a,#(L021323?-3-L021325?)
	movc	a,@a+pc
	push	acc
	ret
L021322?:
	db	L021005?
	db	L021006?
	db	L021007?
	db	L021008?
	db	L021009?
	db	L021010?
	db	L021011?
	db	L021012?
	db	L021013?
	db	L021014?
	db	L021017?
	db	L021023?
	db	L021024?
	db	L021025?
	db	L021026?
	db	L021027?
	db	L021031?
	db	L021019?
	db	L021035?
	db	L021036?
	db	L021037?
	db	L021038?
	db	L021039?
	db	L021040?
	db	L021041?
	db	L021042?
	db	L021018?
	db	L021022?
	db	L021046?
	db	L021049?
	db	L021050?
	db	L021051?
	db	L021055?
	db	L021056?
	db	L021057?
	db	L021156?
	db	L021058?
	db	L021088?
	db	L021156?
	db	L021095?
	db	L021096?
	db	L021140?
	db	L021156?
	db	L021147?
	db	L021015?
	db	L021016?
	db	L021004?
L021323?:
	db	L021005?>>8
	db	L021006?>>8
	db	L021007?>>8
	db	L021008?>>8
	db	L021009?>>8
	db	L021010?>>8
	db	L021011?>>8
	db	L021012?>>8
	db	L021013?>>8
	db	L021014?>>8
	db	L021017?>>8
	db	L021023?>>8
	db	L021024?>>8
	db	L021025?>>8
	db	L021026?>>8
	db	L021027?>>8
	db	L021031?>>8
	db	L021019?>>8
	db	L021035?>>8
	db	L021036?>>8
	db	L021037?>>8
	db	L021038?>>8
	db	L021039?>>8
	db	L021040?>>8
	db	L021041?>>8
	db	L021042?>>8
	db	L021018?>>8
	db	L021022?>>8
	db	L021046?>>8
	db	L021049?>>8
	db	L021050?>>8
	db	L021051?>>8
	db	L021055?>>8
	db	L021056?>>8
	db	L021057?>>8
	db	L021156?>>8
	db	L021058?>>8
	db	L021088?>>8
	db	L021156?>>8
	db	L021095?>>8
	db	L021096?>>8
	db	L021140?>>8
	db	L021156?>>8
	db	L021147?>>8
	db	L021015?>>8
	db	L021016?>>8
	db	L021004?>>8
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:553: case ID_nothing:
L021004?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:554: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:556: case ID_display_data:
L021005?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:557: dispmem(iram_save, 0, 'D');
	clr	a
	mov	_dispmem_PARM_2,a
	mov	(_dispmem_PARM_2 + 1),a
	mov	_dispmem_PARM_3,#0x44
	mov	dptr,#_iram_save
	mov	b,#0x00
	lcall	_dispmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:558: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:560: case ID_modify_data:
L021006?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:561: modifymem(&iram_save[n&0x7f], 'D');
	mov	a,#0x7F
	anl	a,_do_cmd_n_1_166
	mov	r2,#0x00
	add	a,#_iram_save
	mov	r7,a
	mov	a,r2
	addc	a,#(_iram_save >> 8)
	mov	r2,a
	mov	r3,#0x00
	mov	_modifymem_PARM_2,#0x44
	mov	dpl,r7
	mov	dph,r2
	mov	b,r3
	lcall	_modifymem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:562: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:564: case ID_fill_data:
L021007?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:565: fillmem(&iram_save[n&0x7f], (p>0x80)?0x80:p, (unsigned char) q);
	mov	a,#0x7F
	anl	a,_do_cmd_n_1_166
	mov	r3,#0x00
	add	a,#_iram_save
	mov	r2,a
	mov	a,r3
	addc	a,#(_iram_save >> 8)
	mov	r3,a
	mov	r7,#0x00
	clr	c
	mov	a,#0x80
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	L021232?
	mov	_do_cmd_sloc0_1_0,#0x80
	clr	a
	mov	(_do_cmd_sloc0_1_0 + 1),a
	sjmp	L021233?
L021232?:
	mov	_do_cmd_sloc0_1_0,r4
	mov	(_do_cmd_sloc0_1_0 + 1),r5
L021233?:
	mov	_fillmem_PARM_3,_do_cmd_q_1_166
	mov	_fillmem_PARM_2,_do_cmd_sloc0_1_0
	mov	(_fillmem_PARM_2 + 1),(_do_cmd_sloc0_1_0 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_fillmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:566: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:568: case ID_display_idata:
L021008?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:569: dispmem((unsigned char data *)(0x80), 0, 'I');
	clr	a
	mov	_dispmem_PARM_2,a
	mov	(_dispmem_PARM_2 + 1),a
	mov	_dispmem_PARM_3,#0x49
	mov	dptr,#0x4080
	mov	b,#0x00
	lcall	_dispmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:570: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:572: case ID_modify_idata:
L021009?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:573: modifymem((unsigned char data *)((n&0x7f)|0x80), 'I');
	mov	a,#0x7F
	anl	a,_do_cmd_n_1_166
	mov	r2,a
	orl	ar2,#0x80
	mov	r3,#0x00
	mov	r7,#0x40
	mov	_modifymem_PARM_2,#0x49
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_modifymem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:574: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:576: case ID_fill_idata:
L021010?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:577: fillmem((unsigned char data *)((n&0x7f)|0x80), p>0x80?0x80:p, (unsigned char) q);
	mov	a,#0x7F
	anl	a,_do_cmd_n_1_166
	mov	r2,a
	orl	ar2,#0x80
	mov	r3,#0x00
	mov	r7,#0x40
	clr	c
	mov	a,#0x80
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	L021234?
	mov	_do_cmd_sloc0_1_0,#0x80
	clr	a
	mov	(_do_cmd_sloc0_1_0 + 1),a
	sjmp	L021235?
L021234?:
	mov	_do_cmd_sloc0_1_0,r4
	mov	(_do_cmd_sloc0_1_0 + 1),r5
L021235?:
	mov	_fillmem_PARM_3,_do_cmd_q_1_166
	mov	_fillmem_PARM_2,_do_cmd_sloc0_1_0
	mov	(_fillmem_PARM_2 + 1),(_do_cmd_sloc0_1_0 + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_fillmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:578: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:580: case ID_display_xdata:
L021011?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:581: dispmem((unsigned char xdata *)i, j, 'X');
	mov	r2,_do_cmd_i_1_166
	mov	r3,(_do_cmd_i_1_166 + 1)
	mov	r7,#0x00
	mov	_dispmem_PARM_2,_do_cmd_j_1_166
	mov	(_dispmem_PARM_2 + 1),(_do_cmd_j_1_166 + 1)
	mov	_dispmem_PARM_3,#0x58
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_dispmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:582: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:584: case ID_modify_xdata:
L021012?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:585: modifymem((unsigned char xdata *)n, 'X');
	mov	r2,_do_cmd_n_1_166
	mov	r3,(_do_cmd_n_1_166 + 1)
	mov	r7,#0x00
	mov	_modifymem_PARM_2,#0x58
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_modifymem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:586: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:588: case ID_fill_xdata:
L021013?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:589: fillmem((unsigned char xdata *)n, p, (unsigned char)q);
	mov	r2,_do_cmd_n_1_166
	mov	r3,(_do_cmd_n_1_166 + 1)
	mov	r7,#0x00
	mov	_fillmem_PARM_3,_do_cmd_q_1_166
	mov	_fillmem_PARM_2,r4
	mov	(_fillmem_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_fillmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:590: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:592: case ID_display_code:
L021014?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:593: dispmem((unsigned char code *)i, j, 'C');
	mov	r2,_do_cmd_i_1_166
	mov	r3,(_do_cmd_i_1_166 + 1)
	mov	r7,#0x80
	mov	_dispmem_PARM_2,_do_cmd_j_1_166
	mov	(_dispmem_PARM_2 + 1),(_do_cmd_j_1_166 + 1)
	mov	_dispmem_PARM_3,#0x43
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_dispmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:594: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:596: case ID_modify_code:
L021015?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:597: XRAMUSEDAS=0x01; // 32k RAM accessed as xdata
	mov	_XRAMUSEDAS,#0x01
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:598: modifymem((unsigned char xdata *)n, 'C');
	mov	r2,_do_cmd_n_1_166
	mov	r3,(_do_cmd_n_1_166 + 1)
	mov	r7,#0x00
	mov	_modifymem_PARM_2,#0x43
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_modifymem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:599: XRAMUSEDAS=0x00; // 32k RAM accessed as code
	mov	_XRAMUSEDAS,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:600: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:602: case ID_fill_code:
L021016?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:603: XRAMUSEDAS=0x01; // 32k RAM accessed as xdata
	mov	_XRAMUSEDAS,#0x01
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:604: fillmem((unsigned char xdata *)n, p, (unsigned char)q);
	mov	r2,_do_cmd_n_1_166
	mov	r3,(_do_cmd_n_1_166 + 1)
	mov	r7,#0x00
	mov	_fillmem_PARM_3,_do_cmd_q_1_166
	mov	_fillmem_PARM_2,r4
	mov	(_fillmem_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_fillmem
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:605: XRAMUSEDAS=0x00; // 32k RAM accessed as code
	mov	_XRAMUSEDAS,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:606: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:608: case ID_unassemble:
L021017?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:609: discnt=p;
	mov	_discnt,r4
	mov	(_discnt + 1),r5
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:610: append_txbuff=1;
	setb	_append_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:611: unassemble(n);
	mov	dpl,_do_cmd_n_1_166
	mov	dph,(_do_cmd_n_1_166 + 1)
	lcall	_unassemble
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:612: append_txbuff=0;
	clr	_append_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:613: add_nlcursor_txbuff();
	lcall	_add_nlcursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:614: flush_txbuff();
	lcall	_flush_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:615: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:617: case ID_trace_reg:
L021018?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:618: trace_type++;
	mov	dptr,#_trace_type
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:620: case ID_trace:
L021019?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:621: trace_type++;
	mov	dptr,#_trace_type
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:622: if(n==0) break;
	mov	a,_do_cmd_n_1_166
	orl	a,(_do_cmd_n_1_166 + 1)
	jnz	L021328?
	ljmp	L021220?
L021328?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:623: break_address=n;
	mov	dptr,#_break_address
	mov	a,_do_cmd_n_1_166
	movx	@dptr,a
	inc	dptr
	mov	a,(_do_cmd_n_1_166 + 1)
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:624: n=0;
	clr	a
	mov	_do_cmd_n_1_166,a
	mov	(_do_cmd_n_1_166 + 1),a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:626: case ID_go_breaks:
L021022?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:627: trace_type++;
	mov	dptr,#_trace_type
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:628: step_start=(n==0)?PC_save:n; //Next instruction to be executed
	mov	a,_do_cmd_n_1_166
	orl	a,(_do_cmd_n_1_166 + 1)
	cjne	a,#0x01,L021329?
L021329?:
	clr	a
	rlc	a
	mov	r2,a
	jz	L021236?
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	sjmp	L021237?
L021236?:
	mov	r2,_do_cmd_n_1_166
	mov	r3,(_do_cmd_n_1_166 + 1)
L021237?:
	mov	dptr,#_step_start
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:629: gotbreak=0; //If changes to 1, the single step function worked!
	mov	dptr,#_gotbreak
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:630: gostep=0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_gostep
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:631: dostep();
	lcall	_dostep
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:633: case ID_go:
L021023?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:634: go_pending=0x55;
	mov	dptr,#_go_pending
	mov	a,#0x55
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:635: case ID_step:
L021024?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:636: step_start=(n==0)?PC_save:n; //Next instruction to be executed
	mov	a,_do_cmd_n_1_166
	orl	a,(_do_cmd_n_1_166 + 1)
	cjne	a,#0x01,L021331?
L021331?:
	clr	a
	rlc	a
	mov	r2,a
	jz	L021238?
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	sjmp	L021239?
L021238?:
	mov	r2,_do_cmd_n_1_166
	mov	r3,(_do_cmd_n_1_166 + 1)
L021239?:
	mov	dptr,#_step_start
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:637: gotbreak=0; //If changes to 1, the single step function worked!
	mov	dptr,#_gotbreak
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:638: gostep=0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_gostep
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:639: dostep();
	lcall	_dostep
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:640: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:642: case ID_registers:
L021025?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:643: disp_regs();
	lcall	_disp_regs
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:644: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:646: case ID_load:
L021026?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:648: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:650: case ID_reg_dptr:
L021027?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:651: if(buff_haseq)
	jnb	_buff_haseq,L021029?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:653: DPL_save=c;
	mov	dptr,#_DPL_save
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:654: DPH_save=highof(n);
	mov	r2,(_do_cmd_n_1_166 + 1)
	mov	r3,#0x00
	mov	dptr,#_DPH_save
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:655: outcursor();
	lcall	_outcursor
	ljmp	L021220?
L021029?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:657: else outwordnl((DPH_save*0x100)+DPL_save);
	mov	dptr,#_DPH_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	(_do_cmd_sloc0_1_0 + 1),r2
	mov	_do_cmd_sloc0_1_0,#0x00
	mov	dptr,#_DPL_save
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r7
	add	a,_do_cmd_sloc0_1_0
	mov	dpl,a
	mov	a,r2
	addc	a,(_do_cmd_sloc0_1_0 + 1)
	mov	dph,a
	lcall	_outwordnl
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:658: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:660: case ID_reg_pc:
L021031?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:661: if(buff_haseq)
	jnb	_buff_haseq,L021033?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:663: PC_save=n;
	mov	dptr,#_PC_save
	mov	a,_do_cmd_n_1_166
	movx	@dptr,a
	inc	dptr
	mov	a,(_do_cmd_n_1_166 + 1)
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:664: outcursor();
	lcall	_outcursor
	ljmp	L021220?
L021033?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:666: else outwordnl(PC_save);
	mov	dptr,#_PC_save
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_outwordnl
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:667: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:669: case ID_reg_r0:
L021035?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:670: case ID_reg_r1:
L021036?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:671: case ID_reg_r2:
L021037?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:672: case ID_reg_r3:
L021038?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:673: case ID_reg_r4:
L021039?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:674: case ID_reg_r5:
L021040?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:675: case ID_reg_r6:
L021041?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:676: case ID_reg_r7:
L021042?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:677: d=(PSW_save&0x18)+buff[1]-'0';
	mov	dptr,#_PSW_save
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0x18
	mov	a,(_buff + 0x0001)
	add	a,r2
	add	a,#0xd0
	mov	r2,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:678: if(buff_haseq)
	jnb	_buff_haseq,L021044?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:680: iram_save[d]=c;
	mov	a,r2
	add	a,#_iram_save
	mov	dpl,a
	clr	a
	addc	a,#(_iram_save >> 8)
	mov	dph,a
	mov	a,r6
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:681: outcursor();
	lcall	_outcursor
	ljmp	L021220?
L021044?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:685: outbytenl(iram_save[d]);
	mov	a,r2
	add	a,#_iram_save
	mov	dpl,a
	clr	a
	addc	a,#(_iram_save >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	lcall	_outbytenl
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:687: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:689: case ID_brl:
L021046?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:691: get_txbuff();
	lcall	_get_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:692: BPC=0x40;
	mov	_BPC,#0x40
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:693: for(n=0; n<0x8000; n++)
	clr	a
	mov	_do_cmd_n_1_166,a
	mov	(_do_cmd_n_1_166 + 1),a
L021222?:
	mov	a,#0x100 - 0x80
	add	a,(_do_cmd_n_1_166 + 1)
	jnc	L021336?
	ljmp	L021225?
L021336?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:695: BPAH=n/0x100;
	mov	r3,(_do_cmd_n_1_166 + 1)
	mov	_BPAH,r3
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:696: BPAL=n%0x100;
	mov	r3,_do_cmd_n_1_166
	mov	r7,#0x00
	mov	_BPAL,r3
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:699: _endasm; //We need to clock-in the value before reading it
	
	     nop
	     
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:700: if(BPS&0x01)
	mov	a,_BPS
	jnb	acc.0,L021224?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:702: add_wordnl_txbuff(n);
	mov	dpl,_do_cmd_n_1_166
	mov	dph,(_do_cmd_n_1_166 + 1)
	lcall	_add_wordnl_txbuff
L021224?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:693: for(n=0; n<0x8000; n++)
	inc	_do_cmd_n_1_166
	clr	a
	cjne	a,_do_cmd_n_1_166,L021338?
	inc	(_do_cmd_n_1_166 + 1)
L021338?:
	ljmp	L021222?
L021225?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:705: BPC=0x00;
	mov	_BPC,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:707: BPAL=0xff;
	mov	_BPAL,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:708: BPAH=0xff;
	mov	_BPAH,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:709: add_cursor_txbuff();
	lcall	_add_cursor_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:710: flush_txbuff();
	lcall	_flush_txbuff
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:711: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:713: case ID_brc:
L021049?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:715: BPC=0x02;
	mov	_BPC,#0x02
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:716: for(n=0; n<0x8000; n++)
	clr	a
	mov	_do_cmd_n_1_166,a
	mov	(_do_cmd_n_1_166 + 1),a
L021226?:
	mov	a,#0x100 - 0x80
	add	a,(_do_cmd_n_1_166 + 1)
	jc	L021229?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:718: BPAH=n/0x100;
	mov	r3,(_do_cmd_n_1_166 + 1)
	mov	_BPAH,r3
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:719: BPAL=n%0x100;
	mov	r3,_do_cmd_n_1_166
	mov	r7,#0x00
	mov	_BPAL,r3
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:716: for(n=0; n<0x8000; n++)
	inc	_do_cmd_n_1_166
	clr	a
	cjne	a,_do_cmd_n_1_166,L021226?
	inc	(_do_cmd_n_1_166 + 1)
	sjmp	L021226?
L021229?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:721: BPAL=0xff;
	mov	_BPAL,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:722: BPC=0x00;
	mov	_BPC,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:724: BPAL=0xff;
	mov	_BPAL,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:725: BPAH=0xff;
	mov	_BPAH,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:726: outcursor();
	lcall	_outcursor
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:727: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:729: case ID_br2:
L021050?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:730: case ID_br3:
L021051?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:731: d=buff[2]-'0';
	mov	a,(_buff + 0x0002)
	add	a,#0xd0
	mov	r2,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:732: if(buff_haseq) br[d]=n;
	jnb	_buff_haseq,L021053?
	mov	a,r2
	add	a,r2
	mov	r3,a
	add	a,#_br
	mov	dpl,a
	clr	a
	addc	a,#(_br >> 8)
	mov	dph,a
	mov	a,_do_cmd_n_1_166
	movx	@dptr,a
	inc	dptr
	mov	a,(_do_cmd_n_1_166 + 1)
	movx	@dptr,a
	ljmp	L021220?
L021053?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:733: else outwordnl(br[d]);
	mov	a,r2
	add	a,r2
	add	a,#_br
	mov	dpl,a
	clr	a
	addc	a,#(_br >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r7
	lcall	_outwordnl
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:734: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:736: case ID_broff:
L021055?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:738: BPAL=n%0x100;
	mov	r3,_do_cmd_n_1_166
	mov	_BPAL,r3
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:739: BPAH=n/0x100;
	mov	r3,(_do_cmd_n_1_166 + 1)
	mov	_BPAH,r3
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:741: BPC=0x00;
	mov	_BPC,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:742: BPC=0x02;
	mov	_BPC,#0x02
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:743: BPC=0x00;
	mov	_BPC,#0x00
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:745: BPAL=0xff;
	mov	_BPAL,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:746: BPAH=0xff;
	mov	_BPAH,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:747: outcursor();
	lcall	_outcursor
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:748: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:750: case ID_bron:
L021056?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:752: BPAL=n%0x100;
	mov	r3,_do_cmd_n_1_166
	mov	_BPAL,r3
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:753: BPAH=n/0x100;
	mov	r3,(_do_cmd_n_1_166 + 1)
	mov	_BPAH,r3
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:755: BPC=0x01;
	mov	_BPC,#0x01
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:756: BPC=0x03;
	mov	_BPC,#0x03
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:757: BPC=0x01;
	mov	_BPC,#0x01
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:759: BPAL=0xff;
	mov	_BPAL,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:760: BPAH=0xff;
	mov	_BPAH,#0xFF
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:761: outcursor();
	lcall	_outcursor
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:762: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:764: case ID_pcr:  //Restore the PC
L021057?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:765: restorePC();
	lcall	_restorePC
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:766: outcursor();
	lcall	_outcursor
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:767: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:769: case ID_LEDRA:
L021058?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:770: if(buff_haseq)
	jnb	_buff_haseq,L021086?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:772: if(buff_hasdot)
	jnb	_buff_hasdot,L021083?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:774: if     (c==0) LEDRA_0=p_bit;
	mov	a,r6
	jnz	L021080?
	mov	c,_do_cmd_p_bit_1_166
	mov	_LEDRA_0,c
	sjmp	L021084?
L021080?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:775: else if(c==1) LEDRA_1=p_bit;
	cjne	r6,#0x01,L021077?
	mov	c,_do_cmd_p_bit_1_166
	mov	_LEDRA_1,c
	sjmp	L021084?
L021077?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:776: else if(c==2) LEDRA_2=p_bit;
	cjne	r6,#0x02,L021074?
	mov	c,_do_cmd_p_bit_1_166
	mov	_LEDRA_2,c
	sjmp	L021084?
L021074?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:777: else if(c==3) LEDRA_3=p_bit;
	cjne	r6,#0x03,L021071?
	mov	c,_do_cmd_p_bit_1_166
	mov	_LEDRA_3,c
	sjmp	L021084?
L021071?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:778: else if(c==4) LEDRA_4=p_bit;
	cjne	r6,#0x04,L021068?
	mov	c,_do_cmd_p_bit_1_166
	mov	_LEDRA_4,c
	sjmp	L021084?
L021068?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:779: else if(c==5) LEDRA_5=p_bit;
	cjne	r6,#0x05,L021065?
	mov	c,_do_cmd_p_bit_1_166
	mov	_LEDRA_5,c
	sjmp	L021084?
L021065?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:780: else if(c==6) LEDRA_6=p_bit;
	cjne	r6,#0x06,L021062?
	mov	c,_do_cmd_p_bit_1_166
	mov	_LEDRA_6,c
	sjmp	L021084?
L021062?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:781: else if(c==7) LEDRA_7=p_bit;
	cjne	r6,#0x07,L021084?
	mov	c,_do_cmd_p_bit_1_166
	mov	_LEDRA_7,c
	sjmp	L021084?
L021083?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:785: LEDRA=c;
	mov	_LEDRA,r6
L021084?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:787: outcursor();
	lcall	_outcursor
	ljmp	L021220?
L021086?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:789: else putsp(cnr);
	mov	dptr,#_cnr
	mov	b,#0x80
	lcall	_putsp
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:790: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:792: case ID_LEDRB:
L021088?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:793: if(buff_haseq)
	jnb	_buff_haseq,L021093?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:795: if(buff_hasdot)
	jnb	_buff_hasdot,L021090?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:797: putsp(nba);
	mov	dptr,#_nba
	mov	b,#0x80
	lcall	_putsp
	ljmp	L021220?
L021090?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:801: LEDRB=c;
	mov	_LEDRB,r6
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:802: outcursor();
	lcall	_outcursor
	ljmp	L021220?
L021093?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:805: else putsp(cnr);
	mov	dptr,#_cnr
	mov	b,#0x80
	lcall	_putsp
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:806: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:808: case ID_KEY:
L021095?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:809: case ID_SWA:
L021096?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:810: if(buff_haseq==0)
	jnb	_buff_haseq,L021361?
	ljmp	L021138?
L021361?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:812: if(buff_hasdot)
	jb	_buff_hasdot,L021362?
	ljmp	L021135?
L021362?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:814: if(cmd==ID_SWA)
	mov	a,#0x28
	cjne	a,_do_cmd_cmd_1_166,L021132?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:816: if     (c==0) p_bit=SWA_0;
	mov	a,r6
	jnz	L021118?
	mov	c,_SWA_0
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021118?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:817: else if(c==1) p_bit=SWA_1;
	cjne	r6,#0x01,L021115?
	mov	c,_SWA_1
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021115?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:818: else if(c==2) p_bit=SWA_2;
	cjne	r6,#0x02,L021112?
	mov	c,_SWA_2
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021112?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:819: else if(c==3) p_bit=SWA_3;
	cjne	r6,#0x03,L021109?
	mov	c,_SWA_3
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021109?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:820: else if(c==4) p_bit=SWA_4;
	cjne	r6,#0x04,L021106?
	mov	c,_SWA_4
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021106?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:821: else if(c==5) p_bit=SWA_5;
	cjne	r6,#0x05,L021103?
	mov	c,_SWA_5
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021103?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:822: else if(c==6) p_bit=SWA_6;
	cjne	r6,#0x06,L021100?
	mov	c,_SWA_6
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021100?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:823: else if(c==7) p_bit=SWA_7;
	cjne	r6,#0x07,L021133?
	mov	c,_SWA_7
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021132?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:827: if     (c==0) p_bit=KEY_0;
	mov	a,r6
	jnz	L021129?
	mov	c,_KEY_0
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021129?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:828: else if(c==1) p_bit=KEY_1;
	cjne	r6,#0x01,L021126?
	mov	c,_KEY_1
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021126?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:829: else if(c==2) p_bit=KEY_2;
	cjne	r6,#0x02,L021123?
	mov	c,_KEY_2
	mov	_do_cmd_p_bit_1_166,c
	sjmp	L021133?
L021123?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:830: else if(c==3) p_bit=KEY_3;
	cjne	r6,#0x03,L021133?
	mov	c,_KEY_3
	mov	_do_cmd_p_bit_1_166,c
L021133?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:832: putcnl(p_bit?'1':'0');
	jnb	_do_cmd_p_bit_1_166,L021240?
	mov	r3,#0x31
	sjmp	L021241?
L021240?:
	mov	r3,#0x30
L021241?:
	mov	dpl,r3
	lcall	_putcnl
	ljmp	L021220?
L021135?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:836: outbytenl(cmd==ID_SWA?SWA:KEY);
	mov	a,#0x28
	cjne	a,_do_cmd_cmd_1_166,L021242?
	mov	r3,_SWA
	sjmp	L021243?
L021242?:
	mov	r3,_KEY
L021243?:
	mov	dpl,r3
	lcall	_outbytenl
	ljmp	L021220?
L021138?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:839: else putsp(cnw);
	mov	dptr,#_cnw
	mov	b,#0x80
	lcall	_putsp
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:840: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:842: case ID_SWB:
L021140?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:843: if(buff_haseq==0)
	jb	_buff_haseq,L021145?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:845: if(buff_hasdot)
	jnb	_buff_hasdot,L021142?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:847: putsp(nba);
	mov	dptr,#_nba
	mov	b,#0x80
	lcall	_putsp
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:848: break;
	ljmp	L021220?
L021142?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:852: outbytenl(SWB);
	mov	dpl,_SWB
	lcall	_outbytenl
	ljmp	L021220?
L021145?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:855: else putsp(cnw);
	mov	dptr,#_cnw
	mov	b,#0x80
	lcall	_putsp
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:856: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:858: case ID_BANK:
L021147?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:859: if(buff_haseq)
	jnb	_buff_haseq,L021154?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:861: PSW_save&=0b_1110_0111;
	mov	dptr,#_PSW_save
	movx	a,@dptr
	mov	r3,a
	anl	a,#0xE7
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:862: switch(c&3)
	mov	a,#0x03
	anl	a,r6
	mov  r3,a
	add	a,#0xff - 0x03
	jc	L021152?
	mov	a,r3
	add	a,r3
	add	a,r3
	mov	dptr,#L021394?
	jmp	@a+dptr
L021394?:
	ljmp	L021148?
	ljmp	L021149?
	ljmp	L021150?
	ljmp	L021151?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:864: case 0:
L021148?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:865: break;
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:866: case 1:
	sjmp	L021152?
L021149?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:867: PSW_save|=0b_0000_1000;
	mov	dptr,#_PSW_save
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x08
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:868: break;
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:869: case 2:
	sjmp	L021152?
L021150?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:870: PSW_save|=0b_0001_0000;
	mov	dptr,#_PSW_save
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x10
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:871: break;
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:872: case 3:
	sjmp	L021152?
L021151?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:873: PSW_save|=0b_0001_1000;
	mov	dptr,#_PSW_save
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x18
	movx	@dptr,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:875: }
L021152?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:876: outcursor();
	lcall	_outcursor
	ljmp	L021220?
L021154?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:880: outbytenl((PSW_save/0x8)&0x3);
	mov	dptr,#_PSW_save
	movx	a,@dptr
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r3,a
	mov	a,#0x03
	anl	a,r3
	mov	dpl,a
	lcall	_outbytenl
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:882: break;
	ljmp	L021220?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:884: default:
L021156?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:886: y=nlist(bitn); //Search for bit names first
	mov	dptr,#_bitn
	mov	b,#0x80
	push	ar4
	push	ar5
	push	ar6
	lcall	_nlist
	mov	_do_cmd_y_1_166,dpl
	pop	ar6
	pop	ar5
	pop	ar4
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:887: if (y!=0xff)
	mov	a,#0xFF
	cjne	a,_do_cmd_y_1_166,L021395?
	sjmp	L021160?
L021395?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:889: x=y&0xf8;
	mov	a,#0xF8
	anl	a,_do_cmd_y_1_166
	mov	r7,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:890: y=maskbit[y&0x7];
	mov	a,#0x07
	anl	a,_do_cmd_y_1_166
	mov	dptr,#_maskbit
	movc	a,@a+dptr
	mov	_do_cmd_y_1_166,a
	sjmp	L021161?
L021160?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:894: x=nlist(sfrn); //Is not a bit, try a sfr
	mov	dptr,#_sfrn
	mov	b,#0x80
	push	ar4
	push	ar5
	push	ar6
	lcall	_nlist
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:895: if(buff_hasdot)
	jnb	_buff_hasdot,L021161?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:897: y=maskbit[c&0x7];
	mov	a,#0x07
	anl	a,r6
	mov	dptr,#_maskbit
	movc	a,@a+dptr
	mov	_do_cmd_y_1_166,a
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:898: c=p;
	mov	ar6,r4
L021161?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:902: if(x!=0xff)
	cjne	r7,#0xFF,L021397?
	ljmp	L021216?
L021397?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:905: /**/ if (x==0xd0) d=PSW_save;
	clr	a
	cjne	r7,#0xD0,L021398?
	inc	a
L021398?:
	mov	r4,a
	jz	L021181?
	mov	dptr,#_PSW_save
	movx	a,@dptr
	mov	r2,a
	sjmp	L021182?
L021181?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:906: else if (x==0xe0) d=A_save;
	cjne	r7,#0xE0,L021178?
	mov	dptr,#_A_save
	movx	a,@dptr
	mov	r2,a
	sjmp	L021182?
L021178?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:907: else if (x==0xf0) d=B_save;
	cjne	r7,#0xF0,L021175?
	mov	dptr,#_B_save
	movx	a,@dptr
	mov	r2,a
	sjmp	L021182?
L021175?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:908: else if (x==0xa8) d=IE_save;
	cjne	r7,#0xA8,L021172?
	mov	dptr,#_IE_save
	movx	a,@dptr
	mov	r2,a
	sjmp	L021182?
L021172?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:909: else if (x==0x81) d=SP_save;
	cjne	r7,#0x81,L021169?
	mov	dptr,#_SP_save
	movx	a,@dptr
	mov	r2,a
	sjmp	L021182?
L021169?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:910: else if (x==0x82) d=DPL_save;
	cjne	r7,#0x82,L021166?
	mov	dptr,#_DPL_save
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar2,r5
	sjmp	L021182?
L021166?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:911: else if (x==0x83) d=DPH_save;
	cjne	r7,#0x83,L021163?
	mov	dptr,#_DPH_save
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r3
	sjmp	L021182?
L021163?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:912: else d=read_sfr(x);
	mov	dpl,r7
	push	ar4
	push	ar6
	push	ar7
	lcall	_read_sfr
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar4
L021182?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:915: if(y!=0xff)
	mov	a,#0xFF
	cjne	a,_do_cmd_y_1_166,L021413?
	mov	a,#0x01
	sjmp	L021414?
L021413?:
	clr	a
L021414?:
	mov	r3,a
	jnz	L021187?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:917: if(c) c=d|y;
	mov	a,r6
	jz	L021184?
	mov	a,_do_cmd_y_1_166
	orl	a,r2
	mov	r6,a
	sjmp	L021187?
L021184?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:918: else c=d&(~y);
	mov	a,_do_cmd_y_1_166
	cpl	a
	mov	r5,a
	anl	a,r2
	mov	r6,a
L021187?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:922: if(buff_haseq)
	jnb	_buff_haseq,L021213?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:924: /**/ if (x==0xd0) PSW_save=c;
	mov	a,r4
	jz	L021207?
	mov	dptr,#_PSW_save
	mov	a,r6
	movx	@dptr,a
	sjmp	L021208?
L021207?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:925: else if (x==0xe0) A_save=c;
	cjne	r7,#0xE0,L021204?
	mov	dptr,#_A_save
	mov	a,r6
	movx	@dptr,a
	sjmp	L021208?
L021204?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:926: else if (x==0xf0) B_save=c;
	cjne	r7,#0xF0,L021201?
	mov	dptr,#_B_save
	mov	a,r6
	movx	@dptr,a
	sjmp	L021208?
L021201?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:927: else if (x==0xa8) IE_save=c;
	cjne	r7,#0xA8,L021198?
	mov	dptr,#_IE_save
	mov	a,r6
	movx	@dptr,a
	sjmp	L021208?
L021198?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:928: else if (x==0x81) SP_save=c;
	cjne	r7,#0x81,L021195?
	mov	dptr,#_SP_save
	mov	a,r6
	movx	@dptr,a
	sjmp	L021208?
L021195?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:929: else if (x==0x82) DPL_save=c;
	cjne	r7,#0x82,L021192?
	mov	dptr,#_DPL_save
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	sjmp	L021208?
L021192?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:930: else if (x==0x83) DPH_save=c;
	cjne	r7,#0x83,L021189?
	mov	dptr,#_DPH_save
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	sjmp	L021208?
L021189?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:931: else write_sfr(x, c);
	mov	_write_sfr_PARM_2,r6
	mov	dpl,r7
	lcall	_write_sfr
L021208?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:932: outcursor();
	lcall	_outcursor
	ljmp	L021220?
L021213?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:936: if(y==0xff)
	mov	a,r3
	jz	L021210?
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:937: outbytenl(d);
	mov	dpl,r2
	lcall	_outbytenl
	ljmp	L021220?
L021210?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:940: putcnl((d&y)?'1':'0');
	mov	a,_do_cmd_y_1_166
	anl	a,r2
	jz	L021244?
	mov	r2,#0x31
	sjmp	L021245?
L021244?:
	mov	r2,#0x30
L021245?:
	mov	dpl,r2
	lcall	_putcnl
	ljmp	L021220?
L021216?:
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:944: else putsp("What?\n> ");
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_putsp
;	C:\Source\CV_8052_MAC\Cmon51\.\cmon51.c:946: }
	ljmp	L021220?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
_cmdlst:
	db 0x80
	db 'D'
	db 0x81
	db 'MD'
	db 0x82
	db 'FD'
	db 0x83
	db 'I'
	db 0x84
	db 'MI'
	db 0x85
	db 'FI'
	db 0x86
	db 'X'
	db 0x87
	db 'MX'
	db 0x88
	db 'FX'
	db 0x89
	db 'C'
	db 0x8A
	db 'U'
	db 0x8B
	db 'G'
	db 0x8C
	db 'S'
	db 0x8D
	db 'R'
	db 0x8E
	db 'L'
	db 0x8F
	db 'DPTR'
	db 0x90
	db 'PC'
	db 0x91
	db 'T'
	db 0x92
	db 'R0'
	db 0x93
	db 'R1'
	db 0x94
	db 'R2'
	db 0x95
	db 'R3'
	db 0x96
	db 'R'
	db '4'
	db 0x97
	db 'R5'
	db 0x98
	db 'R6'
	db 0x99
	db 'R7'
	db 0x9A
	db 'TR'
	db 0x9B
	db 'GB'
	db 0x9C
	db 'BRL'
	db 0x9D
	db 'BRC'
	db 0x9E
	db 'BR2'
	db 0x9F
	db 'BR3'
	db 0xA0
	db 'BROFF'
	db 0xA1
	db 'BRON'
	db 0xA2
	db 'PCR'
	db 0xA3
	db 'LEDG'
	db 0xA4
	db 'LEDRA'
	db 0xA5
	db 'L'
	db 'EDRB'
	db 0xA6
	db 'LEDRC'
	db 0xA7
	db 'KEY'
	db 0xA8
	db 'SWA'
	db 0xA9
	db 'SWB'
	db 0xAA
	db 'SWC'
	db 0xAB
	db 'BANK'
	db 0xAC
	db 'MC'
	db 0xAD
	db 'FC'
	db 0xAE
	db 0xAF
	db 0x00
	db 0x00
_hexval:
	db '0123456789ABCDEF'
	db 0x00
_maskbit:
	db 0x01	; 1 
	db 0x02	; 2 
	db 0x04	; 4 
	db 0x08	; 8 
	db 0x10	; 16 
	db 0x20	; 32 
	db 0x40	; 64 
	db 0x80	; 128 	�
_nba:
	db 'Not bit-addressable!'
	db 0x0A
	db '> '
	db 0x00
_cnr:
	db 'Can'
	db 0x27
	db 't read!'
	db 0x0A
	db '> '
	db 0x00
_cnw:
	db 'Can'
	db 0x27
	db 't write!'
	db 0x0A
	db '> '
	db 0x00
__str_0:
	db '=  '
	db 0x00
__str_1:
	db ':  '
	db 0x00
__str_2:
	db '   '
	db 0x00
_regframe:
	db 'A =xx  B =xx  SP=xx  IE=xx  DPH=xx DPL=xx PSW=xx PC=xxxx'
	db 0x0D
	db 0x0A
	db 'R0'
	db '=xx  R1=xx  R2=xx  R3=xx  R4=xx  R5=xx  R6=xx  R7=xx  BANK=x'
	db 0x0D
	db 0x0A
	db 0x00
__str_3:
	db 0x0A
	db 0x0A
	db 'CMON51 V2.0'
	db 0x0A
	db 'CopyRight (c) 2005-2023 Jesus Calvino-Fraga'
	db 0x0A
	db 'Po'
	db 'rt: CV_8052 V1.1'
	db 0x0A
	db '> '
	db 0x00
__str_4:
	db 'What?'
	db 0x0A
	db '> '
	db 0x00

	CSEG

end
