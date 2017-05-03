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

		 /* PROC :init: */
	case 3: /* STATE 1 - mixer_target_finite.pml:197 - [i = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->i;
		((P3 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P3 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - mixer_target_finite.pml:197 - [((i<=7))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][2] = 1;
		if (!((((P3 *)this)->i<=7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - mixer_target_finite.pml:198 - [wallets[i].value = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P3 *)this)->i, 8) ].value;
		now.wallets[ Index(((P3 *)this)->i, 8) ].value = 10;
#ifdef VAR_RANGES
		logval("wallets[:init::i].value", now.wallets[ Index(((P3 *)this)->i, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 4 - mixer_target_finite.pml:199 - [wallets[i].locked = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)now.wallets[ Index(((P3 *)this)->i, 8) ].locked);
		now.wallets[ Index(((P3 *)this)->i, 8) ].locked = 0;
#ifdef VAR_RANGES
		logval("wallets[:init::i].locked", ((int)now.wallets[ Index(((P3 *)this)->i, 8) ].locked));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 5 - mixer_target_finite.pml:197 - [i = (i+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->i;
		((P3 *)this)->i = (((P3 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P3 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 11 - mixer_target_finite.pml:203 - [j = 0] (0:32:3 - 3) */
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
	case 9: /* STATE 14 - mixer_target_finite.pml:205 - [((j<=4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][14] = 1;
		if (!((((P3 *)this)->j<=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 15 - mixer_target_finite.pml:206 - [transactions[j].curr = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][15] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P3 *)this)->j, 5) ].curr;
		now.transactions[ Index(((P3 *)this)->j, 5) ].curr = 0;
#ifdef VAR_RANGES
		logval("transactions[:init::j].curr", now.transactions[ Index(((P3 *)this)->j, 5) ].curr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 16 - mixer_target_finite.pml:207 - [transactions[j].total = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][16] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P3 *)this)->j, 5) ].total;
		now.transactions[ Index(((P3 *)this)->j, 5) ].total = 0;
#ifdef VAR_RANGES
		logval("transactions[:init::j].total", now.transactions[ Index(((P3 *)this)->j, 5) ].total);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 17 - mixer_target_finite.pml:209 - [k = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][17] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->k;
		((P3 *)this)->k = 0;
#ifdef VAR_RANGES
		logval(":init::k", ((P3 *)this)->k);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 18 - mixer_target_finite.pml:209 - [((k<=7))] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][18] = 1;
		if (!((((P3 *)this)->k<=7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 19 - mixer_target_finite.pml:210 - [transactions[j].locks[k] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][19] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].locks[ Index(((P3 *)this)->k, 8) ]);
		now.transactions[ Index(((P3 *)this)->j, 5) ].locks[ Index(((P3 *)this)->k, 8) ] = 0;
#ifdef VAR_RANGES
		logval("transactions[:init::j].locks[:init::k]", ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].locks[ Index(((P3 *)this)->k, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 20 - mixer_target_finite.pml:209 - [k = (k+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][20] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->k;
		((P3 *)this)->k = (((P3 *)this)->k+1);
#ifdef VAR_RANGES
		logval(":init::k", ((P3 *)this)->k);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 26 - mixer_target_finite.pml:213 - [transactions[j].assigned = 1] (0:0:1 - 3) */
		IfNotBlocked
		reached[3][26] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].assigned);
		now.transactions[ Index(((P3 *)this)->j, 5) ].assigned = 1;
#ifdef VAR_RANGES
		logval("transactions[:init::j].assigned", ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].assigned));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 27 - mixer_target_finite.pml:214 - [transactions[j].completed = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][27] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].completed);
		now.transactions[ Index(((P3 *)this)->j, 5) ].completed = 1;
#ifdef VAR_RANGES
		logval("transactions[:init::j].completed", ((int)now.transactions[ Index(((P3 *)this)->j, 5) ].completed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 28 - mixer_target_finite.pml:215 - [transactions[j].dest = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P3 *)this)->j, 5) ].dest;
		now.transactions[ Index(((P3 *)this)->j, 5) ].dest = 0;
#ifdef VAR_RANGES
		logval("transactions[:init::j].dest", now.transactions[ Index(((P3 *)this)->j, 5) ].dest);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 29 - mixer_target_finite.pml:205 - [j = (j+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][29] = 1;
		(trpt+1)->bup.oval = ((P3 *)this)->j;
		((P3 *)this)->j = (((P3 *)this)->j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P3 *)this)->j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 35 - mixer_target_finite.pml:220 - [(run Creator())] (0:0:0 - 3) */
		IfNotBlocked
		reached[3][35] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 36 - mixer_target_finite.pml:221 - [(run Decider())] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][36] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 37 - mixer_target_finite.pml:222 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Creator */
	case 23: /* STATE 1 - mixer_target_finite.pml:157 - [((created==100))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][1] = 1;
		if (!((now.created==100)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 8 - mixer_target_finite.pml:161 - [((completed_transaction==1))] (0:0:0 - 3) */
		IfNotBlocked
		reached[2][8] = 1;
		if (!((((int)now.completed_transaction)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 9 - mixer_target_finite.pml:164 - [((transactions[i].completed==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][9] = 1;
		if (!((((int)now.transactions[ Index(((P2 *)this)->i, 5) ].completed)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 10 - mixer_target_finite.pml:165 - [assert((transactions[i].curr==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][10] = 1;
		spin_assert((now.transactions[ Index(((P2 *)this)->i, 5) ].curr==0), "(transactions[i].curr==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 11 - mixer_target_finite.pml:166 - [assert((transactions[i].assigned==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][11] = 1;
		spin_assert((((int)now.transactions[ Index(((P2 *)this)->i, 5) ].assigned)==1), "(transactions[i].assigned==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 12 - mixer_target_finite.pml:167 - [new_value = 0] (0:17:2 - 1) */
		IfNotBlocked
		reached[2][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->new_value;
		((P2 *)this)->new_value = 0;
#ifdef VAR_RANGES
		logval("Creator:new_value", ((P2 *)this)->new_value);
#endif
		;
		/* merge: new_value = 10(17, 13, 17) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->new_value;
		((P2 *)this)->new_value = 10;
#ifdef VAR_RANGES
		logval("Creator:new_value", ((P2 *)this)->new_value);
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[2][18] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 29: /* STATE 14 - mixer_target_finite.pml:168 - [((new_value<30))] (17:0:1 - 1) */
		IfNotBlocked
		reached[2][14] = 1;
		if (!((((P2 *)this)->new_value<30)))
			continue;
		/* merge: new_value = (new_value+1)(0, 15, 17) */
		reached[2][15] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->new_value;
		((P2 *)this)->new_value = (((P2 *)this)->new_value+1);
#ifdef VAR_RANGES
		logval("Creator:new_value", ((P2 *)this)->new_value);
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[2][18] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 30: /* STATE 20 - mixer_target_finite.pml:169 - [transactions[i].curr = new_value] (0:0:1 - 2) */
		IfNotBlocked
		reached[2][20] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P2 *)this)->i, 5) ].curr;
		now.transactions[ Index(((P2 *)this)->i, 5) ].curr = ((P2 *)this)->new_value;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].curr", now.transactions[ Index(((P2 *)this)->i, 5) ].curr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 21 - mixer_target_finite.pml:170 - [transactions[i].total = transactions[i].curr] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][21] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P2 *)this)->i, 5) ].total;
		now.transactions[ Index(((P2 *)this)->i, 5) ].total = now.transactions[ Index(((P2 *)this)->i, 5) ].curr;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].total", now.transactions[ Index(((P2 *)this)->i, 5) ].total);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 22 - mixer_target_finite.pml:171 - [transactions[i].completed = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][22] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P2 *)this)->i, 5) ].completed);
		now.transactions[ Index(((P2 *)this)->i, 5) ].completed = 0;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].completed", ((int)now.transactions[ Index(((P2 *)this)->i, 5) ].completed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 23 - mixer_target_finite.pml:172 - [transactions[i].dest = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][23] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P2 *)this)->i, 5) ].dest;
		now.transactions[ Index(((P2 *)this)->i, 5) ].dest = 0;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].dest", now.transactions[ Index(((P2 *)this)->i, 5) ].dest);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 24 - mixer_target_finite.pml:173 - [transactions[i].assigned = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P2 *)this)->i, 5) ].assigned);
		now.transactions[ Index(((P2 *)this)->i, 5) ].assigned = 0;
#ifdef VAR_RANGES
		logval("transactions[Creator:i].assigned", ((int)now.transactions[ Index(((P2 *)this)->i, 5) ].assigned));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 25 - mixer_target_finite.pml:174 - [created = (created+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][25] = 1;
		(trpt+1)->bup.oval = now.created;
		now.created = (now.created+1);
#ifdef VAR_RANGES
		logval("created", now.created);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 26 - mixer_target_finite.pml:175 - [completed_transaction = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][26] = 1;
		(trpt+1)->bup.oval = ((int)now.completed_transaction);
		now.completed_transaction = 0;
#ifdef VAR_RANGES
		logval("completed_transaction", ((int)now.completed_transaction));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 27 - mixer_target_finite.pml:176 - [new_transaction = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((int)now.new_transaction);
		now.new_transaction = 1;
#ifdef VAR_RANGES
		logval("new_transaction", ((int)now.new_transaction));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 34 - mixer_target_finite.pml:183 - [((i<4))] (5:0:1 - 1) */
		IfNotBlocked
		reached[2][34] = 1;
		if (!((((P2 *)this)->i<4)))
			continue;
		/* merge: i = (i+1)(0, 35, 5) */
		reached[2][35] = 1;
		(trpt+1)->bup.oval = ((P2 *)this)->i;
		((P2 *)this)->i = (((P2 *)this)->i+1);
#ifdef VAR_RANGES
		logval("Creator:i", ((P2 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 39, 5) */
		reached[2][39] = 1;
		;
		/* merge: goto loop(0, 40, 5) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 39: /* STATE 36 - mixer_target_finite.pml:184 - [((i>=4))] (5:0:2 - 1) */
		IfNotBlocked
		reached[2][36] = 1;
		if (!((((P2 *)this)->i>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)this)->i = 0;
		/* merge: i = 0(0, 37, 5) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)this)->i;
		((P2 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("Creator:i", ((P2 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 39, 5) */
		reached[2][39] = 1;
		;
		/* merge: goto loop(0, 40, 5) */
		reached[2][40] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 40: /* STATE 41 - mixer_target_finite.pml:190 - [printf('Finished creating 100 transactions\\n')] (0:0:0 - 2) */
		IfNotBlocked
		reached[2][41] = 1;
		Printf("Finished creating 100 transactions\n");
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 42 - mixer_target_finite.pml:191 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][42] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Decider */
	case 42: /* STATE 1 - mixer_target_finite.pml:81 - [((transactions[i].assigned==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.transactions[ Index(((P1 *)this)->i, 5) ].assigned)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 2 - mixer_target_finite.pml:84 - [new_transaction = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.new_transaction);
		now.new_transaction = 0;
#ifdef VAR_RANGES
		logval("new_transaction", ((int)now.new_transaction));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 3 - mixer_target_finite.pml:86 - [assert((transactions[i].completed==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		spin_assert((((int)now.transactions[ Index(((P1 *)this)->i, 5) ].completed)==0), "(transactions[i].completed==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 4 - mixer_target_finite.pml:87 - [assert((transactions[i].curr>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		spin_assert((now.transactions[ Index(((P1 *)this)->i, 5) ].curr>0), "(transactions[i].curr>0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 5 - mixer_target_finite.pml:89 - [printf('Unassigned index: %d \\n',i)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		Printf("Unassigned index: %d \n", ((P1 *)this)->i);
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 6 - mixer_target_finite.pml:90 - [printf('Transaction total: %d \\n',transactions[i].total)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		Printf("Transaction total: %d \n", now.transactions[ Index(((P1 *)this)->i, 5) ].total);
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 7 - mixer_target_finite.pml:92 - [neededWallets = (transactions[i].total/10)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->neededWallets;
		((P1 *)this)->neededWallets = (now.transactions[ Index(((P1 *)this)->i, 5) ].total/10);
#ifdef VAR_RANGES
		logval("Decider:neededWallets", ((P1 *)this)->neededWallets);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 8 - mixer_target_finite.pml:94 - [(((transactions[i].total%10)>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][8] = 1;
		if (!(((now.transactions[ Index(((P1 *)this)->i, 5) ].total%10)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: /* STATE 9 - mixer_target_finite.pml:95 - [neededWallets = (neededWallets+1)] (0:42:2 - 1) */
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->neededWallets;
		((P1 *)this)->neededWallets = (((P1 *)this)->neededWallets+1);
#ifdef VAR_RANGES
		logval("Decider:neededWallets", ((P1 *)this)->neededWallets);
#endif
		;
		/* merge: goto :b4(42, 10, 42) */
		reached[1][10] = 1;
		;
		/* merge: printf('Needed wallets: %d \\n',neededWallets)(42, 16, 42) */
		reached[1][16] = 1;
		Printf("Needed wallets: %d \n", ((P1 *)this)->neededWallets);
		/* merge: assert((neededWallets>0))(42, 17, 42) */
		reached[1][17] = 1;
		spin_assert((((P1 *)this)->neededWallets>0), "(neededWallets>0)", II, tt, t);
		/* merge: w = 0(42, 18, 42) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->w;
		((P1 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Decider:w", ((P1 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[1][43] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 51: /* STATE 16 - mixer_target_finite.pml:99 - [printf('Needed wallets: %d \\n',neededWallets)] (0:42:1 - 5) */
		IfNotBlocked
		reached[1][16] = 1;
		Printf("Needed wallets: %d \n", ((P1 *)this)->neededWallets);
		/* merge: assert((neededWallets>0))(42, 17, 42) */
		reached[1][17] = 1;
		spin_assert((((P1 *)this)->neededWallets>0), "(neededWallets>0)", II, tt, t);
		/* merge: w = 0(42, 18, 42) */
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->w;
		((P1 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Decider:w", ((P1 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[1][43] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 52: /* STATE 19 - mixer_target_finite.pml:104 - [((neededWallets==0))] (21:0:1 - 1) */
		IfNotBlocked
		reached[1][19] = 1;
		if (!((((P1 *)this)->neededWallets==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: neededWallets */  (trpt+1)->bup.oval = ((P1 *)this)->neededWallets;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->neededWallets = 0;
		/* merge: printf('Finished assigning index: %d \\n',i)(0, 20, 21) */
		reached[1][20] = 1;
		Printf("Finished assigning index: %d \n", ((P1 *)this)->i);
		_m = 3; goto P999; /* 1 */
	case 53: /* STATE 21 - mixer_target_finite.pml:106 - [transactions[i].assigned = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P1 *)this)->i, 5) ].assigned);
		now.transactions[ Index(((P1 *)this)->i, 5) ].assigned = 1;
#ifdef VAR_RANGES
		logval("transactions[Decider:i].assigned", ((int)now.transactions[ Index(((P1 *)this)->i, 5) ].assigned));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: /* STATE 22 - mixer_target_finite.pml:107 - [assert((transactions[i].completed==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][22] = 1;
		spin_assert((((int)now.transactions[ Index(((P1 *)this)->i, 5) ].completed)==0), "(transactions[i].completed==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 55: /* STATE 23 - mixer_target_finite.pml:108 - [(run Mix(i))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][23] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: /* STATE 24 - mixer_target_finite.pml:109 - [decided = (decided+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = now.decided;
		now.decided = (now.decided+1);
#ifdef VAR_RANGES
		logval("decided", now.decided);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: /* STATE 27 - mixer_target_finite.pml:113 - [((wallets[w].locked==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][27] = 1;
		if (!((((int)now.wallets[ Index(((P1 *)this)->w, 8) ].locked)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: /* STATE 28 - mixer_target_finite.pml:114 - [wallets[w].locked = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.wallets[ Index(((P1 *)this)->w, 8) ].locked);
		now.wallets[ Index(((P1 *)this)->w, 8) ].locked = 1;
#ifdef VAR_RANGES
		logval("wallets[Decider:w].locked", ((int)now.wallets[ Index(((P1 *)this)->w, 8) ].locked));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: /* STATE 29 - mixer_target_finite.pml:115 - [neededWallets = (neededWallets-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->neededWallets;
		((P1 *)this)->neededWallets = (((P1 *)this)->neededWallets-1);
#ifdef VAR_RANGES
		logval("Decider:neededWallets", ((P1 *)this)->neededWallets);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: /* STATE 30 - mixer_target_finite.pml:116 - [transactions[i].locks[w] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P1 *)this)->i, 5) ].locks[ Index(((P1 *)this)->w, 8) ]);
		now.transactions[ Index(((P1 *)this)->i, 5) ].locks[ Index(((P1 *)this)->w, 8) ] = 1;
#ifdef VAR_RANGES
		logval("transactions[Decider:i].locks[Decider:w]", ((int)now.transactions[ Index(((P1 *)this)->i, 5) ].locks[ Index(((P1 *)this)->w, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: /* STATE 33 - mixer_target_finite.pml:120 - [((w<7))] (39:0:1 - 1) */
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((P1 *)this)->w<7)))
			continue;
		/* merge: w = (w+1)(0, 34, 39) */
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->w;
		((P1 *)this)->w = (((P1 *)this)->w+1);
#ifdef VAR_RANGES
		logval("Decider:w", ((P1 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 38, 39) */
		reached[1][38] = 1;
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[1][40] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 62: /* STATE 35 - mixer_target_finite.pml:121 - [((w>=7))] (39:0:2 - 1) */
		IfNotBlocked
		reached[1][35] = 1;
		if (!((((P1 *)this)->w>=7)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: w */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->w;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->w = 0;
		/* merge: w = 0(0, 36, 39) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->w;
		((P1 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Decider:w", ((P1 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 38, 39) */
		reached[1][38] = 1;
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[1][40] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 63: /* STATE 46 - mixer_target_finite.pml:130 - [((decided==100))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][46] = 1;
		if (!((now.decided==100)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: /* STATE 53 - mixer_target_finite.pml:135 - [((i<4))] (59:0:1 - 1) */
		IfNotBlocked
		reached[1][53] = 1;
		if (!((((P1 *)this)->i<4)))
			continue;
		/* merge: i = (i+1)(0, 54, 59) */
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval("Decider:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 58, 59) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 65: /* STATE 55 - mixer_target_finite.pml:136 - [((i>=4))] (59:0:2 - 1) */
		IfNotBlocked
		reached[1][55] = 1;
		if (!((((P1 *)this)->i>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->i = 0;
		/* merge: i = 0(0, 56, 59) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval("Decider:i", ((P1 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 58, 59) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 66: /* STATE 59 - mixer_target_finite.pml:139 - [((new_transaction==1))] (0:0:0 - 3) */
		IfNotBlocked
		reached[1][59] = 1;
		if (!((((int)now.new_transaction)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: /* STATE 63 - mixer_target_finite.pml:143 - [printf('Decided 100 transactions\\n')] (0:0:0 - 3) */
		IfNotBlocked
		reached[1][63] = 1;
		Printf("Decided 100 transactions\n");
		_m = 3; goto P999; /* 0 */
	case 68: /* STATE 64 - mixer_target_finite.pml:145 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][64] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Mix */
	case 69: /* STATE 1 - mixer_target_finite.pml:25 - [assert((transactions[t_num].assigned==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		spin_assert((((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].assigned)==1), "(transactions[t_num].assigned==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 70: /* STATE 2 - mixer_target_finite.pml:28 - [w = 0] (0:35:2 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->w;
		((P0 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Mix:w", ((P0 *)this)->w);
#endif
		;
		/* merge: w = 0(35, 3, 35) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->w;
		((P0 *)this)->w = 0;
#ifdef VAR_RANGES
		logval("Mix:w", ((P0 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 71: /* STATE 4 - mixer_target_finite.pml:28 - [((w<=7))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((P0 *)this)->w<=7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: /* STATE 5 - mixer_target_finite.pml:30 - [((transactions[t_num].locks[w]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: /* STATE 6 - mixer_target_finite.pml:35 - [assert((transactions[t_num].curr>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		spin_assert((now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr>0), "(transactions[t_num].curr>0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 74: /* STATE 7 - mixer_target_finite.pml:36 - [assert((wallets[w].locked==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		spin_assert((((int)now.wallets[ Index(((P0 *)this)->w, 8) ].locked)==1), "(wallets[w].locked==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 75: /* STATE 8 - mixer_target_finite.pml:38 - [((transactions[t_num].curr>10))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!((now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr>10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: /* STATE 9 - mixer_target_finite.pml:39 - [wallets[w].value = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P0 *)this)->w, 8) ].value;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = 0;
#ifdef VAR_RANGES
		logval("wallets[Mix:w].value", now.wallets[ Index(((P0 *)this)->w, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: /* STATE 10 - mixer_target_finite.pml:40 - [transactions[t_num].dest = (transactions[t_num].dest+10)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest = (now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest+10);
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].dest", now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: /* STATE 11 - mixer_target_finite.pml:41 - [transactions[t_num].curr = (transactions[t_num].curr-10)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr = (now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr-10);
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].curr", now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: /* STATE 12 - mixer_target_finite.pml:42 - [wallets[w].value = 10] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P0 *)this)->w, 8) ].value;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = 10;
#ifdef VAR_RANGES
		logval("wallets[Mix:w].value", now.wallets[ Index(((P0 *)this)->w, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: /* STATE 15 - mixer_target_finite.pml:45 - [wallets[w].value = (wallets[w].value-transactions[t_num].curr)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P0 *)this)->w, 8) ].value;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = (now.wallets[ Index(((P0 *)this)->w, 8) ].value-now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#ifdef VAR_RANGES
		logval("wallets[Mix:w].value", now.wallets[ Index(((P0 *)this)->w, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: /* STATE 16 - mixer_target_finite.pml:46 - [transactions[t_num].dest = (transactions[t_num].dest+transactions[t_num].curr)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest = (now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest+now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].dest", now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: /* STATE 17 - mixer_target_finite.pml:47 - [wallets[w].value = (wallets[w].value+transactions[t_num].curr)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.wallets[ Index(((P0 *)this)->w, 8) ].value;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = (now.wallets[ Index(((P0 *)this)->w, 8) ].value+now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#ifdef VAR_RANGES
		logval("wallets[Mix:w].value", now.wallets[ Index(((P0 *)this)->w, 8) ].value);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: /* STATE 18 - mixer_target_finite.pml:48 - [transactions[t_num].curr = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr = 0;
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].curr", now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: /* STATE 23 - mixer_target_finite.pml:52 - [assert((wallets[w].value==10))] (0:0:0 - 5) */
		IfNotBlocked
		reached[0][23] = 1;
		spin_assert((now.wallets[ Index(((P0 *)this)->w, 8) ].value==10), "(wallets[w].value==10)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 85: /* STATE 24 - mixer_target_finite.pml:55 - [transactions[t_num].locks[w] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ]);
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ] = 0;
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].locks[Mix:w]", ((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: /* STATE 25 - mixer_target_finite.pml:56 - [wallets[w].locked = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((int)now.wallets[ Index(((P0 *)this)->w, 8) ].locked);
		now.wallets[ Index(((P0 *)this)->w, 8) ].locked = 0;
#ifdef VAR_RANGES
		logval("wallets[Mix:w].locked", ((int)now.wallets[ Index(((P0 *)this)->w, 8) ].locked));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: /* STATE 32 - mixer_target_finite.pml:28 - [w = (w+1)] (0:35:1 - 5) */
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->w;
		((P0 *)this)->w = (((P0 *)this)->w+1);
#ifdef VAR_RANGES
		logval("Mix:w", ((P0 *)this)->w);
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 88: /* STATE 38 - mixer_target_finite.pml:63 - [assert((transactions[t_num].curr==0))] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][38] = 1;
		spin_assert((now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr==0), "(transactions[t_num].curr==0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 89: /* STATE 39 - mixer_target_finite.pml:64 - [assert((transactions[t_num].dest==transactions[t_num].total))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		spin_assert((now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest==now.transactions[ Index(((P0 *)this)->t_num, 5) ].total), "(transactions[t_num].dest==transactions[t_num].total)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 90: /* STATE 41 - mixer_target_finite.pml:68 - [transactions[t_num].completed = 1] (0:0:1 - 2) */
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.oval = ((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].completed);
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].completed = 1;
#ifdef VAR_RANGES
		logval("transactions[Mix:t_num].completed", ((int)now.transactions[ Index(((P0 *)this)->t_num, 5) ].completed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: /* STATE 42 - mixer_target_finite.pml:69 - [completed_transaction = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)now.completed_transaction);
		now.completed_transaction = 1;
#ifdef VAR_RANGES
		logval("completed_transaction", ((int)now.completed_transaction));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: /* STATE 43 - mixer_target_finite.pml:71 - [-end-] (0:0:0 - 1) */
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

