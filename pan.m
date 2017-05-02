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

		 /* CLAIM no_starvation */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [(!(!(in_create)))] (0:0:0 - 1) */
		
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
		reached[3][1] = 1;
		if (!( !( !(((int)now.in_create)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [(!(in_mix))] (0:0:0 - 1) */
		
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
		reached[3][3] = 1;
		if (!( !(((int)now.in_mix))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 10 - _spin_nvr.tmp:9 - [(!(!(in_create)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!( !( !(((int)now.in_create)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 15 - _spin_nvr.tmp:13 - [(!(in_mix))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][15] = 1;
		if (!( !(((int)now.in_mix))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 20 - _spin_nvr.tmp:17 - [(!(in_mix))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][20] = 1;
		if (!( !(((int)now.in_mix))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 27 - _spin_nvr.tmp:20 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 9: /* STATE 1 - mixer_base.pml:88 - [wallet[0] = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.wallet[0];
		now.wallet[0] = 10;
#ifdef VAR_RANGES
		logval("wallet[0]", now.wallet[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 2 - mixer_base.pml:89 - [wallet[1] = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = now.wallet[1];
		now.wallet[1] = 10;
#ifdef VAR_RANGES
		logval("wallet[1]", now.wallet[1]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 3 - mixer_base.pml:90 - [wallet[2] = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = now.wallet[2];
		now.wallet[2] = 10;
#ifdef VAR_RANGES
		logval("wallet[2]", now.wallet[2]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 4 - mixer_base.pml:91 - [wallet[3] = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = now.wallet[3];
		now.wallet[3] = 10;
#ifdef VAR_RANGES
		logval("wallet[3]", now.wallet[3]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 5 - mixer_base.pml:94 - [(run Decider())] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][5] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 6 - mixer_base.pml:95 - [(run Creator())] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][6] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 7 - mixer_base.pml:97 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][7] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Creator */
	case 16: /* STATE 1 - mixer_base.pml:70 - [((in_mix==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.in_mix)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 2 - mixer_base.pml:72 - [printf('Hello there 1 %d \\n',curr_transaction)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		Printf("Hello there 1 %d \n", now.curr_transaction);
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 3 - mixer_base.pml:73 - [assert((curr_transaction==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		spin_assert((now.curr_transaction==0), "(curr_transaction==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 4 - mixer_base.pml:74 - [dest_transaction = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.dest_transaction;
		now.dest_transaction = 0;
#ifdef VAR_RANGES
		logval("dest_transaction", now.dest_transaction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 5 - mixer_base.pml:77 - [curr_transaction = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.curr_transaction;
		now.curr_transaction = 10;
#ifdef VAR_RANGES
		logval("curr_transaction", now.curr_transaction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 6 - mixer_base.pml:77 - [((curr_transaction<30))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		if (!((now.curr_transaction<30)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 7 - mixer_base.pml:77 - [curr_transaction = (curr_transaction+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = now.curr_transaction;
		now.curr_transaction = (now.curr_transaction+1);
#ifdef VAR_RANGES
		logval("curr_transaction", now.curr_transaction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 12 - mixer_base.pml:78 - [expected_transaction = curr_transaction] (0:0:1 - 2) */
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = now.expected_transaction;
		now.expected_transaction = now.curr_transaction;
#ifdef VAR_RANGES
		logval("expected_transaction", now.expected_transaction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 13 - mixer_base.pml:80 - [in_create = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.in_create);
		now.in_create = 0;
#ifdef VAR_RANGES
		logval("in_create", ((int)now.in_create));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 14 - mixer_base.pml:81 - [in_mix = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.in_mix);
		now.in_mix = 1;
#ifdef VAR_RANGES
		logval("in_mix", ((int)now.in_mix));
#endif
		;
		_m = 3; goto P999; /* 0 */

		 /* PROC Decider */
	case 26: /* STATE 1 - mixer_base.pml:23 - [((in_create==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.in_create)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 2 - mixer_base.pml:25 - [printf('Hello there 2\\n')] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		Printf("Hello there 2\n");
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 3 - mixer_base.pml:26 - [assert((curr_transaction!=0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		spin_assert((now.curr_transaction!=0), "(curr_transaction!=0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 4 - mixer_base.pml:28 - [target_wallet = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->target_wallet;
		((P0 *)this)->target_wallet = 0;
#ifdef VAR_RANGES
		logval("Decider:target_wallet", ((P0 *)this)->target_wallet);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 5 - mixer_base.pml:29 - [printf('Current Transaction, %d \\n',curr_transaction)] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		Printf("Current Transaction, %d \n", now.curr_transaction);
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 6 - mixer_base.pml:32 - [((curr_transaction>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.curr_transaction>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 7 - mixer_base.pml:34 - [((curr_transaction>10))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!((now.curr_transaction>10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 8 - mixer_base.pml:35 - [printf('Inside do larger than 10 loop: %d \\n',curr_transaction)] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		Printf("Inside do larger than 10 loop: %d \n", now.curr_transaction);
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 9 - mixer_base.pml:36 - [wallet[target_wallet] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.wallet[ Index(((P0 *)this)->target_wallet, 4) ];
		now.wallet[ Index(((P0 *)this)->target_wallet, 4) ] = 0;
#ifdef VAR_RANGES
		logval("wallet[Decider:target_wallet]", now.wallet[ Index(((P0 *)this)->target_wallet, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 10 - mixer_base.pml:37 - [dest_transaction = (dest_transaction+10)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.dest_transaction;
		now.dest_transaction = (now.dest_transaction+10);
#ifdef VAR_RANGES
		logval("dest_transaction", now.dest_transaction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 11 - mixer_base.pml:38 - [curr_transaction = (curr_transaction-10)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.curr_transaction;
		now.curr_transaction = (now.curr_transaction-10);
#ifdef VAR_RANGES
		logval("curr_transaction", now.curr_transaction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 12 - mixer_base.pml:39 - [wallet[target_wallet] = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.wallet[ Index(((P0 *)this)->target_wallet, 4) ];
		now.wallet[ Index(((P0 *)this)->target_wallet, 4) ] = 10;
#ifdef VAR_RANGES
		logval("wallet[Decider:target_wallet]", now.wallet[ Index(((P0 *)this)->target_wallet, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 13 - mixer_base.pml:41 - [target_wallet = (target_wallet+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->target_wallet;
		((P0 *)this)->target_wallet = (((P0 *)this)->target_wallet+1);
#ifdef VAR_RANGES
		logval("Decider:target_wallet", ((P0 *)this)->target_wallet);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 14 - mixer_base.pml:43 - [((curr_transaction<=10))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		if (!((now.curr_transaction<=10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 15 - mixer_base.pml:44 - [printf('Inside do smaller than 10 loop: %d \\n',curr_transaction)] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		Printf("Inside do smaller than 10 loop: %d \n", now.curr_transaction);
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 16 - mixer_base.pml:45 - [wallet[target_wallet] = (wallet[target_wallet]-curr_transaction)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.wallet[ Index(((P0 *)this)->target_wallet, 4) ];
		now.wallet[ Index(((P0 *)this)->target_wallet, 4) ] = (now.wallet[ Index(((P0 *)this)->target_wallet, 4) ]-now.curr_transaction);
#ifdef VAR_RANGES
		logval("wallet[Decider:target_wallet]", now.wallet[ Index(((P0 *)this)->target_wallet, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 17 - mixer_base.pml:46 - [dest_transaction = (dest_transaction+curr_transaction)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.dest_transaction;
		now.dest_transaction = (now.dest_transaction+now.curr_transaction);
#ifdef VAR_RANGES
		logval("dest_transaction", now.dest_transaction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 18 - mixer_base.pml:47 - [wallet[target_wallet] = (wallet[target_wallet]+curr_transaction)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.wallet[ Index(((P0 *)this)->target_wallet, 4) ];
		now.wallet[ Index(((P0 *)this)->target_wallet, 4) ] = (now.wallet[ Index(((P0 *)this)->target_wallet, 4) ]+now.curr_transaction);
#ifdef VAR_RANGES
		logval("wallet[Decider:target_wallet]", now.wallet[ Index(((P0 *)this)->target_wallet, 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 19 - mixer_base.pml:48 - [curr_transaction = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.curr_transaction;
		now.curr_transaction = 0;
#ifdef VAR_RANGES
		logval("curr_transaction", now.curr_transaction);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 20 - mixer_base.pml:50 - [assert((wallet[target_wallet]==10))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		spin_assert((now.wallet[ Index(((P0 *)this)->target_wallet, 4) ]==10), "(wallet[target_wallet]==10)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 28 - mixer_base.pml:55 - [printf('Done with mixing! %d \\n',curr_transaction)] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][28] = 1;
		Printf("Done with mixing! %d \n", now.curr_transaction);
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 29 - mixer_base.pml:57 - [assert((dest_transaction==expected_transaction))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		spin_assert((now.dest_transaction==now.expected_transaction), "(dest_transaction==expected_transaction)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 30 - mixer_base.pml:58 - [in_mix = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)now.in_mix);
		now.in_mix = 0;
#ifdef VAR_RANGES
		logval("in_mix", ((int)now.in_mix));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 31 - mixer_base.pml:59 - [in_create = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = ((int)now.in_create);
		now.in_create = 1;
#ifdef VAR_RANGES
		logval("in_create", ((int)now.in_create));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

