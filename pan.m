#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM no_starvation_transaction_complete */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [(!(transactions[4].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(((int)now.transactions[4].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [(!(transactions[3].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][3] = 1;
		if (!( !(((int)now.transactions[3].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 5 - _spin_nvr.tmp:5 - [(!(transactions[2].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][5] = 1;
		if (!( !(((int)now.transactions[2].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 7 - _spin_nvr.tmp:6 - [(!(transactions[1].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][7] = 1;
		if (!( !(((int)now.transactions[1].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 9 - _spin_nvr.tmp:7 - [(!(transactions[0].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][9] = 1;
		if (!( !(((int)now.transactions[0].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 16 - _spin_nvr.tmp:12 - [(!(transactions[4].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][16] = 1;
		if (!( !(((int)now.transactions[4].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 21 - _spin_nvr.tmp:16 - [(!(transactions[3].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][21] = 1;
		if (!( !(((int)now.transactions[3].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 26 - _spin_nvr.tmp:20 - [(!(transactions[2].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][26] = 1;
		if (!( !(((int)now.transactions[2].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 31 - _spin_nvr.tmp:24 - [(!(transactions[1].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][31] = 1;
		if (!( !(((int)now.transactions[1].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 36 - _spin_nvr.tmp:28 - [(!(transactions[0].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][36] = 1;
		if (!( !(((int)now.transactions[0].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 41 - _spin_nvr.tmp:32 - [(!(transactions[0].completed))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][41] = 1;
		if (!( !(((int)now.transactions[0].completed))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 48 - _spin_nvr.tmp:35 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][48] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 15: /* STATE 1 - mixer_target.pml:158 - [i = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->i;
		((P3 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P3 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 2 - mixer_target.pml:158 - [((i<=7))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][2] = 1;
		if (!((((P3 *)this)->i<=7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 3 - mixer_target.pml:159 - [wallets[i].value = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P3 *)this)->i, 8) ].value;
		now.wallets[ Index(((P3 *)this)->i, 8) ].value = 10;
#ifdef VAR_RANGES
		logval("wallets[:init::i].value", now.wallets[ Index(((P3 *)this)->i, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 4 - mixer_target.pml:160 - [wallets[i].locked = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)now.wallets[ Index(((P3 *)this)->i, 8) ].locked);
		now.wallets[ Index(((P3 *)this)->i, 8) ].locked = 0;
#ifdef VAR_RANGES
		logval("wallets[:init::i].locked", ((int)now.wallets[ Index(((P3 *)this)->i, 8) ].locked));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 5 - mixer_target.pml:158 - [i = (i+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->i;
		((P3 *)this)->i = (((P3 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P3 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 11 - mixer_target.pml:164 - [j = 0] (0:32:3 - 3) */
		IfNotBlocked
		reached[3][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P3 *)this)->j;
		((P3 *)this)->j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P3 *)this)->j);
#endif
		;
		/* merge: k = 0(32, 12, 32) */
		reached[3][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P3 *)this)->k;
		((P3 *)this)->k = 0;
#ifdef VAR_RANGES
		logval(":init::k", ((P3 *)this)->k);
#endif
		;
		/* merge: j = 0(32, 13, 32) */
		reached[3][13] = 1;
		(trpt+1)->bup.ovals[2] = ((P3 *)this)->j;
		((P3 *)this)->j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P3 *)this)->j);
#endif
		;
		/* merge: .(goto)(0, 33, 32) */
		reached[3][33] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 21: /* STATE 14 - mixer_target.pml:166 - [((j<=4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][14] = 1;
		if (!((((P3 *)this)->j<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 15 - mixer_target.pml:167 - [transactions[j].curr = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][15] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P3 *)this)->j, 5) ].curr;
		now.transactions[ Index(((P3 *)this)->j, 5) ].curr = 0;
#ifdef VAR_RANGES
		logval("transactions[:init::j].curr", now.transactions[ Index(((P3 *)this)->j, 5) ].curr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 16 - mixer_target.pml:168 - [transactions[j].total = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][16] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P3 *)this)->j, 5) ].total;
		now.transactions[ Index(((P3 *)this)->j, 5) ].total = 0;
#ifdef VAR_RANGES
		logval("transactions[:init::j].total", now.transactions[ Index(((P3 *)this)->j, 5) ].total);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 17 - mixer_target.pml:170 - [k = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][17] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->k;
		((P3 *)this)->k = 0;
#ifdef VAR_RANGES
		logval(":init::k", ((P3 *)this)->k);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 18 - mixer_target.pml:170 - [((k<=7))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][18] = 1;
		if (!((((P3 *)this)->k<=7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 19 - mixer_target.pml:171 - [transactions[j].locks[k] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][19] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].locks[ Index(((P3 *)this)->k, 8) ]);
		now.transactions[ Index(((P3 *)this)->j, 5) ].locks[ Index(((P3 *)this)->k, 8) ] = 0;
#ifdef VAR_RANGES
		logval("transactions[:init::j].locks[:init::k]", ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].locks[ Index(((P3 *)this)->k, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 20 - mixer_target.pml:170 - [k = (k+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][20] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->k;
		((P3 *)this)->k = (((P3 *)this)->k+1);
#ifdef VAR_RANGES
		logval(":init::k", ((P3 *)this)->k);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 26 - mixer_target.pml:174 - [transactions[j].assigned = 1] (0:0:1 - 3) */
		IfNotBlocked
		reached[3][26] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].assigned);
		now.transactions[ Index(((P3 *)this)->j, 5) ].assigned = 1;
#ifdef VAR_RANGES
		logval("transactions[:init::j].assigned", ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].assigned));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 27 - mixer_target.pml:175 - [transactions[j].completed = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][27] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].completed);
		now.transactions[ Index(((P3 *)this)->j, 5) ].completed = 1;
#ifdef VAR_RANGES
		logval("transactions[:init::j].completed", ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].completed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 28 - mixer_target.pml:176 - [transactions[j].dest = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P3 *)this)->j, 5) ].dest;
		now.transactions[ Index(((P3 *)this)->j, 5) ].dest = 0;
#ifdef VAR_RANGES
		logval("transactions[:init::j].dest", now.transactions[ Index(((P3 *)this)->j, 5) ].dest);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 29 - mixer_target.pml:166 - [j = (j+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][29] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->j;
		((P3 *)this)->j = (((P3 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P3 *)this)->j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 35 - mixer_target.pml:181 - [(run Creator())] (0:0:0 - 3) */
		IfNotBlocked
		reached[3][35] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 36 - mixer_target.pml:182 - [(run Decider())] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][36] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 37 - mixer_target.pml:183 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Creator */
	case 35: /* STATE 1 - mixer_target.pml:132 - [((transactions[i].completed==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][1] = 1;
		if (!((((int)now.transactions[ Index(((P2 *)this)->i, 5) ].completed)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 2 - mixer_target.pml:133 - [assert((transactions[i].curr==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][2] = 1;
		spin_assert((now.transactions[ Index(((P2 *)this)->i, 5) ].curr==0), "(transactions[i].curr==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 3 - mixer_target.pml:134 - [assert((transactions[i].assigned==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][3] = 1;
		spin_assert((((int)now.transactions[ Index(((P2 *)this)->i, 5) ].assigned)==1), "(transactions[i].assigned==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 4 - mixer_target.pml:135 - [new_value = 0] (0:9:2 - 1) */
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->new_value;
		((P2 *)this)->new_value = 0;
#ifdef VAR_RANGES
		logval("Creator:new_value", ((P2 *)this)->new_value);
#endif
		;
		/* merge: new_value = 10(9, 5, 9) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->new_value;
		((P2 *)this)->new_value = 10;
#ifdef VAR_RANGES
		logval("Creator:new_value", ((P2 *)this)->new_value);
#endif
		;
		/* merge: .(goto)(0, 10, 9) */
		reached[2][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: /* STATE 6 - mixer_target.pml:136 - [((new_value<30))] (9:0:1 - 1) */
		IfNotBlocked
		reached[2][6] = 1;
		if (!((((P2 *)this)->new_value<30)))
			continue;
		/* merge: new_value = (new_value+1)(0, 7, 9) */
		reached[2][7] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->new_value;
		((P2 *)this)->new_value = (((P2 *)this)->new_value+1);
#ifdef VAR_RANGES
		logval("Creator:new_value", ((P2 *)this)->new_value);
#endif
		;
		/* merge: .(goto)(0, 10, 9) */
		reached[2][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 40: /* STATE 12 - mixer_target.pml:137 - [transactions[i].curr = new_value] (0:0:1 - 2) */
		IfNotBlocked
		reached[2][12] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P2 *)this)->i, 5) ].curr;
		now.transactions[ Index(((P2 *)this)->i, 5) ].curr = ((P2 *)this)->new_value;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].curr", now.transactions[ Index(((P2 *)this)->i, 5) ].curr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 13 - mixer_target.pml:138 - [transactions[i].total = transactions[i].curr] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P2 *)this)->i, 5) ].total;
		now.transactions[ Index(((P2 *)this)->i, 5) ].total = now.transactions[ Index(((P2 *)this)->i, 5) ].curr;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].total", now.transactions[ Index(((P2 *)this)->i, 5) ].total);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 14 - mixer_target.pml:139 - [transactions[i].assigned = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P2 *)this)->i, 5) ].assigned);
		now.transactions[ Index(((P2 *)this)->i, 5) ].assigned = 0;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].assigned", ((int)now.transactions[ Index(((P2 *)this)->i, 5) ].assigned));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 15 - mixer_target.pml:140 - [transactions[i].completed = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P2 *)this)->i, 5) ].completed);
		now.transactions[ Index(((P2 *)this)->i, 5) ].completed = 0;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].completed", ((int)now.transactions[ Index(((P2 *)this)->i, 5) ].completed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 16 - mixer_target.pml:141 - [transactions[i].dest = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][16] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P2 *)this)->i, 5) ].dest;
		now.transactions[ Index(((P2 *)this)->i, 5) ].dest = 0;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].dest", now.transactions[ Index(((P2 *)this)->i, 5) ].dest);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 23 - mixer_target.pml:147 - [((i<4))] (20:0:1 - 1) */
		IfNotBlocked
		reached[2][23] = 1;
		if (!((((P2 *)this)->i<4)))
			continue;
		/* merge: i = (i+1)(0, 24, 20) */
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->i;
		((P2 *)this)->i = (((P2 *)this)->i+1);
#ifdef VAR_RANGES
		logval("Creator:i", ((P2 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 28, 20) */
		reached[2][28] = 1;
		;
		/* merge: goto loop(0, 29, 20) */
		reached[2][29] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 46: /* STATE 25 - mixer_target.pml:148 - [((i>=4))] (20:0:2 - 1) */
		IfNotBlocked
		reached[2][25] = 1;
		if (!((((P2 *)this)->i>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->i = 0;
		/* merge: i = 0(0, 26, 20) */
		reached[2][26] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->i;
		((P2 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("Creator:i", ((P2 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 28, 20) */
		reached[2][28] = 1;
		;
		/* merge: goto loop(0, 29, 20) */
		reached[2][29] = 1;
		;
		_m = 3; goto P999; /* 3 */

		 /* PROC Decider */
	case 47: /* STATE 1 - mixer_target.pml:75 - [((transactions[i].assigned==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.transactions[ Index(((P1 *)this)->i, 5) ].assigned)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 2 - mixer_target.pml:78 - [assert((transactions[i].completed==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		spin_assert((((int)now.transactions[ Index(((P1 *)this)->i, 5) ].completed)==0), "(transactions[i].completed==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 3 - mixer_target.pml:79 - [assert((transactions[i].curr>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		spin_assert((now.transactions[ Index(((P1 *)this)->i, 5) ].curr>0), "(transactions[i].curr>0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 50: /* STATE 4 - mixer_target.pml:81 - [printf('Unassigned index: %d \\n',i)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		Printf("Unassigned index: %d \n", ((P1 *)this)->i);
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 5 - mixer_target.pml:82 - [printf('Transaction total: %d \\n',transactions[i].total)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		Printf("Transaction total: %d \n", now.transactions[ Index(((P1 *)this)->i, 5) ].total);
		_m = 3; goto P999; /* 0 */
	case 52: /* STATE 6 - mixer_target.pml:84 - [neededWallets = (transactions[i].total/10)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->neededWallets;
		((P1 *)this)->neededWallets = (now.transactions[ Index(((P1 *)this)->i, 5) ].total/10);
#ifdef VAR_RANGES
		logval("Decider:neededWallets", ((P1 *)this)->neededWallets);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: /* STATE 7 - mixer_target.pml:86 - [(((transactions[i].total%10)>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		if (!(((now.transactions[ Index(((P1 *)this)->i, 5) ].total%10)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: /* STATE 8 - mixer_target.pml:87 - [neededWallets = (neededWallets+1)] (0:40:2 - 1) */
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->neededWallets;
		((P1 *)this)->neededWallets = (((P1 *)this)->neededWallets+1);
#ifdef VAR_RANGES
		logval("Decider:neededWallets", ((P1 *)this)->neededWallets);
#endif
		;
		/* merge: goto :b4(40, 9, 40) */
		reached[1][9] = 1;
		;
		/* merge: printf('Needed wallets: %d \\n',neededWallets)(40, 15, 40) */
		reached[1][15] = 1;
		Printf("Needed wallets: %d \n", ((P1 *)this)->neededWallets);
		/* merge: assert((neededWallets>0))(40, 16, 40) */
		reached[1][16] = 1;
		spin_assert((((P1 *)this)->neededWallets>0), "(neededWallets>0)", II, tt, t);
		/* merge: w = 0(40, 17, 40) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->w;
		((P1 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Decider:w", ((P1 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 55: /* STATE 15 - mixer_target.pml:91 - [printf('Needed wallets: %d \\n',neededWallets)] (0:40:1 - 5) */
		IfNotBlocked
		reached[1][15] = 1;
		Printf("Needed wallets: %d \n", ((P1 *)this)->neededWallets);
		/* merge: assert((neededWallets>0))(40, 16, 40) */
		reached[1][16] = 1;
		spin_assert((((P1 *)this)->neededWallets>0), "(neededWallets>0)", II, tt, t);
		/* merge: w = 0(40, 17, 40) */
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->w;
		((P1 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Decider:w", ((P1 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 56: /* STATE 18 - mixer_target.pml:96 - [((neededWallets==0))] (20:0:1 - 1) */
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((P1 *)this)->neededWallets==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: neededWallets */  (trpt+1)->bup.oval = ((P1 *)this)->neededWallets;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->neededWallets = 0;
		/* merge: printf('Finished assigning index: %d \\n',i)(0, 19, 20) */
		reached[1][19] = 1;
		Printf("Finished assigning index: %d \n", ((P1 *)this)->i);
		_m = 3; goto P999; /* 1 */
	case 57: /* STATE 20 - mixer_target.pml:98 - [transactions[i].assigned = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P1 *)this)->i, 5) ].assigned);
		now.transactions[ Index(((P1 *)this)->i, 5) ].assigned = 1;
#ifdef VAR_RANGES
		logval("transactions[Decider:i].assigned", ((int)now.transactions[ Index(((P1 *)this)->i, 5) ].assigned));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: /* STATE 21 - mixer_target.pml:99 - [assert((transactions[i].completed==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		spin_assert((((int)now.transactions[ Index(((P1 *)this)->i, 5) ].completed)==0), "(transactions[i].completed==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 59: /* STATE 22 - mixer_target.pml:100 - [(run Mix(i))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][22] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: /* STATE 25 - mixer_target.pml:104 - [((wallets[w].locked==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][25] = 1;
		if (!((((int)now.wallets[ Index(((P1 *)this)->w, 8) ].locked)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: /* STATE 26 - mixer_target.pml:105 - [wallets[w].locked = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.wallets[ Index(((P1 *)this)->w, 8) ].locked);
		now.wallets[ Index(((P1 *)this)->w, 8) ].locked = 1;
#ifdef VAR_RANGES
		logval("wallets[Decider:w].locked", ((int)now.wallets[ Index(((P1 *)this)->w, 8) ].locked));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: /* STATE 27 - mixer_target.pml:106 - [neededWallets = (neededWallets-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->neededWallets;
		((P1 *)this)->neededWallets = (((P1 *)this)->neededWallets-1);
#ifdef VAR_RANGES
		logval("Decider:neededWallets", ((P1 *)this)->neededWallets);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: /* STATE 28 - mixer_target.pml:107 - [transactions[i].locks[w] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P1 *)this)->i, 5) ].locks[ Index(((P1 *)this)->w, 8) ]);
		now.transactions[ Index(((P1 *)this)->i, 5) ].locks[ Index(((P1 *)this)->w, 8) ] = 1;
#ifdef VAR_RANGES
		logval("transactions[Decider:i].locks[Decider:w]", ((int)now.transactions[ Index(((P1 *)this)->i, 5) ].locks[ Index(((P1 *)this)->w, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: /* STATE 31 - mixer_target.pml:111 - [((w<7))] (37:0:1 - 1) */
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((P1 *)this)->w<7)))
			continue;
		/* merge: w = (w+1)(0, 32, 37) */
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->w;
		((P1 *)this)->w = (((P1 *)this)->w+1);
#ifdef VAR_RANGES
		logval("Decider:w", ((P1 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 36, 37) */
		reached[1][36] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[1][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 65: /* STATE 33 - mixer_target.pml:112 - [((w>=7))] (37:0:2 - 1) */
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((P1 *)this)->w>=7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: w */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->w;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->w = 0;
		/* merge: w = 0(0, 34, 37) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->w;
		((P1 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Decider:w", ((P1 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 36, 37) */
		reached[1][36] = 1;
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[1][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 66: /* STATE 44 - mixer_target.pml:119 - [((i<4))] (50:0:1 - 1) */
		IfNotBlocked
		reached[1][44] = 1;
		if (!((((P1 *)this)->i<4)))
			continue;
		/* merge: i = (i+1)(0, 45, 50) */
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("Decider:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 49, 50) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 51, 50) */
		reached[1][51] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 67: /* STATE 46 - mixer_target.pml:120 - [((i>=4))] (50:0:2 - 1) */
		IfNotBlocked
		reached[1][46] = 1;
		if (!((((P1 *)this)->i>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->i = 0;
		/* merge: i = 0(0, 47, 50) */
		reached[1][47] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("Decider:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 49, 50) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 51, 50) */
		reached[1][51] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 68: /* STATE 53 - mixer_target.pml:124 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][53] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Mix */
	case 69: /* STATE 1 - mixer_target.pml:22 - [assert((transactions[t_num].assigned==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		spin_assert((((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].assigned)==1), "(transactions[t_num].assigned==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 70: /* STATE 2 - mixer_target.pml:25 - [w = 0] (0:36:2 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->w;
		((P0 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Mix:w", ((P0 *)this)->w);
#endif
		;
		/* merge: w = 0(36, 3, 36) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->w;
		((P0 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Mix:w", ((P0 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 71: /* STATE 4 - mixer_target.pml:25 - [((w<=7))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((P0 *)this)->w<=7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: /* STATE 5 - mixer_target.pml:27 - [((transactions[t_num].locks[w]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: /* STATE 6 - mixer_target.pml:32 - [assert((transactions[t_num].curr>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		spin_assert((now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr>0), "(transactions[t_num].curr>0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 74: /* STATE 7 - mixer_target.pml:33 - [assert((wallets[w].locked==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		spin_assert((((int)now.wallets[ Index(((P0 *)this)->w, 8) ].locked)==1), "(wallets[w].locked==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 75: /* STATE 8 - mixer_target.pml:35 - [((transactions[t_num].curr>10))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!((now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr>10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: /* STATE 9 - mixer_target.pml:36 - [wallets[w].value = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P0 *)this)->w, 8) ].value;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = 0;
#ifdef VAR_RANGES
		logval("wallets[Mix:w].value", now.wallets[ Index(((P0 *)this)->w, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: /* STATE 10 - mixer_target.pml:37 - [transactions[t_num].dest = (transactions[t_num].dest+10)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest = (now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest+10);
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].dest", now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: /* STATE 11 - mixer_target.pml:38 - [transactions[t_num].curr = (transactions[t_num].curr-10)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr = (now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr-10);
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].curr", now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: /* STATE 12 - mixer_target.pml:39 - [wallets[w].value = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P0 *)this)->w, 8) ].value;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = 10;
#ifdef VAR_RANGES
		logval("wallets[Mix:w].value", now.wallets[ Index(((P0 *)this)->w, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: /* STATE 15 - mixer_target.pml:42 - [wallets[w].value = (wallets[w].value-transactions[t_num].curr)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P0 *)this)->w, 8) ].value;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = (now.wallets[ Index(((P0 *)this)->w, 8) ].value-now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#ifdef VAR_RANGES
		logval("wallets[Mix:w].value", now.wallets[ Index(((P0 *)this)->w, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: /* STATE 16 - mixer_target.pml:43 - [transactions[t_num].dest = (transactions[t_num].dest+transactions[t_num].curr)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest = (now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest+now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].dest", now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: /* STATE 17 - mixer_target.pml:44 - [wallets[w].value = (wallets[w].value+transactions[t_num].curr)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P0 *)this)->w, 8) ].value;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = (now.wallets[ Index(((P0 *)this)->w, 8) ].value+now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#ifdef VAR_RANGES
		logval("wallets[Mix:w].value", now.wallets[ Index(((P0 *)this)->w, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: /* STATE 18 - mixer_target.pml:45 - [transactions[t_num].curr = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr = 0;
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].curr", now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: /* STATE 23 - mixer_target.pml:50 - [transactions[t_num].locks[w] = 0] (0:0:1 - 5) */
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ]);
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ] = 0;
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].locks[Mix:w]", ((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: /* STATE 24 - mixer_target.pml:51 - [wallets[w].locked = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)now.wallets[ Index(((P0 *)this)->w, 8) ].locked);
		now.wallets[ Index(((P0 *)this)->w, 8) ].locked = 0;
#ifdef VAR_RANGES
		logval("wallets[Mix:w].locked", ((int)now.wallets[ Index(((P0 *)this)->w, 8) ].locked));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: /* STATE 25 - mixer_target.pml:52 - [printf('Transaction number: %d\\n',t_num)] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		Printf("Transaction number: %d\n", ((P0 *)this)->t_num);
		_m = 3; goto P999; /* 0 */
	case 87: /* STATE 26 - mixer_target.pml:53 - [assert((wallets[w].value==10))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][26] = 1;
		spin_assert((now.wallets[ Index(((P0 *)this)->w, 8) ].value==10), "(wallets[w].value==10)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 88: /* STATE 33 - mixer_target.pml:25 - [w = (w+1)] (0:36:1 - 5) */
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->w;
		((P0 *)this)->w = (((P0 *)this)->w+1);
#ifdef VAR_RANGES
		logval("Mix:w", ((P0 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 89: /* STATE 39 - mixer_target.pml:60 - [assert((transactions[t_num].curr==0))] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][39] = 1;
		spin_assert((now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr==0), "(transactions[t_num].curr==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 90: /* STATE 40 - mixer_target.pml:61 - [assert((transactions[t_num].dest==transactions[t_num].total))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][40] = 1;
		spin_assert((now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest==now.transactions[ Index(((P0 *)this)->t_num, 5) ].total), "(transactions[t_num].dest==transactions[t_num].total)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 91: /* STATE 42 - mixer_target.pml:65 - [transactions[t_num].completed = 1] (0:0:1 - 2) */
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].completed);
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].completed = 1;
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].completed", ((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].completed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: /* STATE 43 - mixer_target.pml:67 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

