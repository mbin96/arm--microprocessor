......... ...
 68       	for (i = 0; i<(n&~3); i++)
 69       	{
          add_int:
001007ec:   bics    r2, r2, #3
001007f0:   bxeq    lr
 65       {
 66       	unsigned int i;
 67       
001007f4:   push    {r4,r5,r6,r7,r8,lr}
001007f8:   add     r12, r0, #16
001007fc:   add     lr, r1, #16
00100800:   cmp     r1, r12
00100804:   cmpcc   r0, lr
00100808:   movcs   lr, #1
0010080c:   movcc   lr, #0
00100810:   cmp     r2, #9
00100814:   movls   lr, #0
00100818:   andhi   lr, lr, #1
0010081c:   cmp     lr, #0
00100820:   beq     +220    ; addr=0x00100904: add_int + 0x00000118
00100824:   sbfx    r12, r1, #2, #1
00100828:   ands    r12, r12, #3
0010082c:   beq     +200    ; addr=0x001008fc: add_int + 0x00000110
 70       		pa[i] = pb[i] + x;
 71       	}
 72       }
 73       
 74       
 75       void add_int_restrict(int *__restrict__ pa, int *__restrict__ pb, unsigned int n, int x)
00100830:   ldr     lr, [r1]
00100834:   cmp     r12, #1
00100838:   add     lr, lr, r3
0010083c:   str     lr, [r0]
00100840:   beq     +180    ; addr=0x001008fc: add_int + 0x00000110
00100844:   ldr     lr, [r1, #+4]
00100848:   cmp     r12, #3
0010084c:   add     lr, lr, r3
00100850:   str     lr, [r0, #+4]
 68       	for (i = 0; i<(n&~3); i++)
 69       	{
00100854:   moveq   lr, r12
 70       		pa[i] = pb[i] + x;
 71       	}
 72       }
 73       
 74       
 75       void add_int_restrict(int *__restrict__ pa, int *__restrict__ pb, unsigned int n, int x)
00100858:   ldreq   r4, [r1, #+8]
 68       	for (i = 0; i<(n&~3); i++)
 69       	{
0010085c:   movne   lr, #2
 70       		pa[i] = pb[i] + x;
 71       	}
 72       }
 73       
 74       
 75       void add_int_restrict(int *__restrict__ pa, int *__restrict__ pb, unsigned int n, int x)
00100860:   addeq   r4, r4, r3
00100864:   streq   r4, [r0, #+8]
00100868:   sub     r7, r2, r12
0010086c:   lsl     r12, r12, #2
00100870:   sub     r4, r7, #4
00100874:   vdup.32 q9, r3
00100878:   lsr     r4, r4, #2
0010087c:   add     r6, r1, r12
 68       	for (i = 0; i<(n&~3); i++)
 69       	{
00100880:   mov     r5, #0
00100884:   add     r4, r4, #1
00100888:   add     r12, r0, r12
0010088c:   lsl     r8, r4, #2
 70       		pa[i] = pb[i] + x;
 71       	}
 72       }
 73       
 74       
 75       void add_int_restrict(int *__restrict__ pa, int *__restrict__ pb, unsigned int n, int x)
00100890:   vld1.64 {d16,d17}, [r6@64]
00100894:   add     r5, r5, #1
00100898:   vadd.i32 q8, q9, q8
0010089c:   cmp     r4, r5
001008a0:   add     r6, r6, #16
001008a4:   vst1.32 {d16,d17}, [r12]
......... ...
          _puts_r:
00102740:   push    {r4,r5,lr}
00102744:   mov     r5, r0
00102748:   sub     sp, sp, #36
0010274c:   mov     r0, r1
00102750:   mov     r4, r1
00102754:   blx     +164    ; addr=0x00102800: strlen
00102758:   ldr     r1, [r5, #+56]
0010275c:   movw    r3, #61844
00102760:   str     r4, [sp, #+16]
00102764:   movt    r3, #16
00102768:   cmp     r1, #0
0010276c:   str     r3, [sp, #+24]
00102770:   mov     r1, #1
00102774:   mov     r3, #2
00102778:   ldr     r4, [r5, #+8]
0010277c:   str     r1, [sp, #+28]
00102780:   add     r2, r0, #1
00102784:   str     r0, [sp, #+20]
00102788:   str     r2, [sp, #+12]
0010278c:   add     r2, sp, #16
00102790:   stmib   sp, {r2,r3}
00102794:   beq     +60     ; addr=0x001027d8: _puts_r + 0x00000098
00102798:   ldrsh   r3, [r4, #+12]
0010279c:   mov     r1, r4
001027a0:   mov     r0, r5
001027a4:   tst     r3, #8192
001027a8:   orreq   r3, r3, #8192
001027ac:   strheq  r3, [r4, #+12]
001027b0:   ldreq   r2, [r4, #+100]
001027b4:   biceq   r3, r2, #8192
001027b8:   add     r2, sp, #4
001027bc:   streq   r3, [r4, #+100]
001027c0:   bl      +21040  ; addr=0x001079f8: __sfvwrite_r
001027c4:   cmp     r0, #0
001027c8:   mvnne   r0, #0
001027cc:   moveq   r0, #10
001027d0:   add     sp, sp, #36
001027d4:   pop     {r4,r5,pc}
001027d8:   mov     r0, r5
001027dc:   bl      +19944  ; addr=0x001075cc: __sinit
001027e0:   b       -80     ; addr=0x00102798: _puts_r + 0x00000058
          puts:
001027e4:   movw    r3, #62392
001027e8:   movt    r3, #16
001027ec:   mov     r1, r0
001027f0:   ldr     r0, [r3]
001027f4:   b       -188    ; addr=0x00102740: _puts_r
001027f8:   andeq   r0, r0, r0
001027fc:   andeq   r0, r0, r0
          strlen:
00102800:   pld     [r0]
00102804:   strd    r4, r5, [sp, #-8]!
00102808:   bic.w   r1, r0, #7
0010280c:   mvn.w   r12, #0
00102810:   ands.w  r4, r0, #7
00102814:   pld     [r1, #+32]
00102818:   bne.w   +146    ; addr=0x001028ae: strlen + 0x000000ae
0010281c:   mov.w   r4, #0
00102820:   mvn.w   r0, #7
00102824:   ldrd    r2, r3, [r1]
00102828:   pld     [r1, #+64]
0010282c:   add.w   r0, r0, #8
00102830:   uadd8   r2, r2, r12
00102834:   sel     r2, r4, r12
00102838:   uadd8   r3, r3, r12
0010283c:   sel     r3, r2, r12
00102840:   cbnz    r3, +82 ; addr=0x00102896: strlen + 0x00000096
00102842:   ldrd    r2, r3, [r1, #+8]
00102846:   uadd8   r2, r2, r12
0010284a:   add.w   r0, r0, #8
0010284e:   sel     r2, r4, r12
00102852:   uadd8   r3, r3, r12
00102856:   sel     r3, r2, r12
0010285a:   cbnz    r3, +56 ; addr=0x00102896: strlen + 0x00000096
0010285c:   ldrd    r2, r3, [r1, #+16]
00102860:   uadd8   r2, r2, r12
00102864:   add.w   r0, r0, #8
00102868:   sel     r2, r4, r12
0010286c:   uadd8   r3, r3, r12
00102870:   sel     r3, r2, r12
00102874:   cbnz    r3, +30 ; addr=0x00102896: strlen + 0x00000096
00102876:   ldrd    r2, r3, [r1, #+24]
0010287a:   add.w   r1, r1, #32
0010287e:   uadd8   r2, r2, r12
00102882:   add.w   r0, r0, #8
00102886:   sel     r2, r4, r12
0010288a:   uadd8   r3, r3, r12
0010288e:   sel     r3, r2, r12
00102892:   cmp     r3, #0
00102894:   beq.n   -116    ; addr=0x00102824: strlen + 0x00000024
00102896:   cmp     r2, #0
00102898:   itt     eq
0010289a:   addeq   r0, #4
0010289c:   moveq   r2, r3
0010289e:   rev     r2, r2
001028a0:   clz     r2, r2
001028a4:   ldrd    r4, r5, [sp], #+8
001028a8:   add.w   r0, r0, r2, lsr #3
001028ac:   bx      lr
001028ae:   ldrd    r2, r3, [r1]
001028b2:   and.w   r5, r4, #3
......... ...
 93       	printf("----Benchmarking starting----\r\n");
          main:
0010eb78:   movw    r0, #61748
 86       {
 87       	unsigned int i = 0;
 88       	int n = N;
 89       
 90       	BENCHMARK_CASE *pBenchmarkCase;
 91       	BENCHMARK_STATISTICS *pStat;
 92       
0010eb7c:   push    {r4,r5,r6,r7,lr}
 93       	printf("----Benchmarking starting----\r\n");
0010eb80:   movt    r0, #16
 86       {
 87       	unsigned int i = 0;
 88       	int n = N;
 89       
 90       	BENCHMARK_CASE *pBenchmarkCase;
 91       	BENCHMARK_STATISTICS *pStat;
 92       
0010eb84:   sub     sp, sp, #148
 97       	b = address1;
0010eb88:   mov     r4, #436207616
0010eb8c:   movw    r5, #16428
 93       	printf("----Benchmarking starting----\r\n");
0010eb90:   bl      -50100  ; addr=0x001027e4: puts
 94       	printf("CPU_FREQ_HZ=%d, TIMER_FREQ_HZ=%d\r\n",
 95       			CPU_FREQ_HZ, CPU_FREQ_HZ/2/(TIMER_PRE_SCALE+1));
 96       
0010eb94:   movw    r2, #17247
0010eb98:   movw    r1, #34495
0010eb9c:   movw    r0, #61780
0010eba0:   movt    r2, #5086
0010eba4:   movt    r1, #10172
0010eba8:   movt    r0, #16
0010ebac:   bl      -50356  ; addr=0x00102700: printf
 97       	b = address1;
0010ebb0:   movt    r5, #17
 98       	b_rest = address2;
 99       	for(i=0;i<N;i++)
100       	{
101       	    b[i]=0;
102       	    b_rest[i] = 0;
103       	}
0010ebb4:   mov     r7, #452984832
0010ebb8:   mov     r0, r4
0010ebbc:   mov     r2, #4096
0010ebc0:   mov     r1, #0
0010ebc4:   stm     r5, {r4,r7}
0010ebc8:   bl      -50716  ; addr=0x001025b4: memset
0010ebcc:   mov     r2, #4096
0010ebd0:   mov     r1, #0
0010ebd4:   mov     r0, r7
120       		xil_printf("    %d  %d \r\n",a[i], a_rest[i]);
121       	}
122       
0010ebd8:   movw    r6, #61832
0010ebdc:   bl      -50736  ; addr=0x001025b4: memset
106       	a = b + (N+1);           //address
0010ebe0:   movw    r12, #4100
104       	x = 1;
0010ebe4:   mov     lr, #1
107       	a_rest = b_rest + (N+1); //address
108       
109       	//오염
110       	//a = b + (4);           //address
111       	//a_rest = b_rest + (4); //address
112       
0010ebe8:   mov     r2, r12
106       	a = b + (N+1);           //address
0010ebec:   movt    r12, #6656
107       	a_rest = b_rest + (N+1); //address
108       
109       	//오염
110       	//a = b + (4);           //address
111       	//a_rest = b_rest + (4); //address
112       
0010ebf0:   movt    r2, #6912
113       	add_int(a,b,n,x); //1
114       
0010ebf4:   mov     r1, r4
0010ebf8:   mov     r3, lr
0010ebfc:   mov     r0, r12
107       	a_rest = b_rest + (N+1); //address
108       
109       	//오염
110       	//a = b + (4);           //address
111       	//a_rest = b_rest + (4); //address
112       
0010ec00:   str     r2, [r5, #+20]
113       	add_int(a,b,n,x); //1
114       
0010ec04:   mov     r2, #1024
104       	x = 1;
0010ec08:   str     lr, [r5, #+8]
120       		xil_printf("    %d  %d \r\n",a[i], a_rest[i]);
121       	}
122       
0010ec0c:   movt    r6, #16
105       	x_rest = 1;
0010ec10:   str     lr, [r5, #+12]
117       	xil_printf("=== 1  2 ===\r\n");
0010ec14:   mov     r4, #0
106       	a = b + (N+1);           //address
0010ec18:   str     r12, [r5, #+16]
113       	add_int(a,b,n,x); //1
114       
0010ec1c:   bl      -58424  ; addr=0x001007ec: add_int
115       	add_int_restrict(a_rest,b_rest,n,x_rest); //2
116       
0010ec20:   ldr     r0, [r5, #+20]
0010ec24:   mov     r2, #1024
0010ec28:   ldr     r3, [r5, #+12]
0010ec2c:   ldr     r1, [r5, #+4]
0010ec30:   bl      -57964  ; addr=0x001009cc: add_int_restrict
117       	xil_printf("=== 1  2 ===\r\n");
0010ec34:   movw    r0, #61816
0010ec38:   movt    r0, #16
0010ec3c:   bl      -54392  ; addr=0x001017cc: xil_printf
120       		xil_printf("    %d  %d \r\n",a[i], a_rest[i]);
121       	}
122       
0010ec40:   ldr     r2, [r5, #+20]
0010ec44:   mov     r0, r6
0010ec48:   ldr     r3, [r5, #+16]
0010ec4c:   ldr     r2, [r2, +r4]
0010ec50:   ldr     r1, [r3, +r4]
0010ec54:   add     r4, r4, #4
0010ec58:   bl      -54420  ; addr=0x001017cc: xil_printf
118       	for(i = 0; i<N; i++)
119       	{
0010ec5c:   cmp     r4, #4096
0010ec60:   bne     -40     ; addr=0x0010ec40: main + 0x000000c8
123       	BENCHMARK_CASE BenchmarkCases[NR_BENCHMARK_CASE] = {
124       			{"Vector addition", TEST_ROUNDS, initializor_dummy,
125       			  add_int, {(int)a,(int)b,N,x}, 0, validator_dummy},
126         			{"Vector addition restrict", TEST_ROUNDS, initializor_dummy,
127       			  add_int_restrict, {(int *__restrict__)a_rest,(int *__restrict__)b_rest,
128       		      N,x_rest}, 0, validator_dummy}
129       
130       	};
131       
132           // Now we can collect the execution time statistics
133           for(i=0;i<NR_BENCHMARK_CASE;i++)
134           {
135           	pBenchmarkCase = &BenchmarkCases[i];
136           	pStat = &(pBenchmarkCase->stat);
0010ec64:   mov     r2, #144
0010ec68:   mov     r0, sp
0010ec6c:   mov     r1, #0
0010ec70:   bl      -50884  ; addr=0x001025b4: memset
0010ec74:   movw    r3, #2832
0010ec78:   ldr     r0, [r5, #+16]
0010ec7c:   movt    r3, #16
0010ec80:   movw    r1, #2028
0010ec84:   str     r3, [sp, #+8]
0010ec88:   movt    r1, #16
0010ec8c:   str     r3, [sp, #+80]
0010ec90:   movw    r3, #2020
0010ec94:   ldr     r12, [r5]
0010ec98:   movt    r3, #16
0010ec9c:   ldr     lr, [r5, #+12]
0010eca0:   movw    r2, #61848
0010eca4:   ldr     r4, [r5, #+4]
0010eca8:   movt    r2, #16
0010ecac:   ldr     r7, [r5, #+8]
0010ecb0:   ldr     r6, [r5, #+20]
0010ecb4:   str     r1, [sp, #+12]
0010ecb8:   movw    r1, #61864
0010ecbc:   str     r3, [sp, #+36]
0010ecc0:   movt    r1, #16
......... ...
