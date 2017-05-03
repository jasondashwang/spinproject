#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(5*sizeof(Trans **));

	/* proctype 3: :init: */

	trans[3] = (Trans **) emalloc(38*sizeof(Trans *));

	trans[3][1]	= settr(149,0,8,3,3,"i = 0", 0, 2, 0);
	trans[3][9]	= settr(157,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[3][8] = settr(156,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(156,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(156,0,6,0,0,"DO", 0, 2, 0);
	trans[3][2]	= settr(150,0,3,4,0,"((i<=7))", 0, 2, 0);
	trans[3][3]	= settr(151,0,4,5,5,"wallets[i].value = 10", 1, 2, 0);
	trans[3][4]	= settr(152,0,5,6,6,"wallets[i].locked = 0", 1, 2, 0);
	trans[3][5]	= settr(153,0,8,7,7,"i = (i+1)", 0, 2, 0);
	trans[3][6]	= settr(154,0,11,2,0,"else", 0, 2, 0);
	trans[3][7]	= settr(155,0,11,1,0,"goto :b11", 0, 2, 0); /* m: 11 -> 0,32 */
	reached3[11] = 1;
	trans[3][10]	= settr(158,0,11,1,0,"break", 0, 2, 0);
	trans[3][11]	= settr(159,0,32,8,8,"j = 0", 0, 2, 0); /* m: 12 -> 0,32 */
	reached3[12] = 1;
	trans[3][12]	= settr(0,0,0,0,0,"k = 0",0,0,0);
	trans[3][13]	= settr(0,0,0,0,0,"j = 0",0,0,0);
	trans[3][33]	= settr(181,0,32,1,0,".(goto)", 0, 2, 0);
	T = trans[3][32] = settr(180,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(180,0,14,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(180,0,30,0,0,"DO", 0, 2, 0);
	trans[3][14]	= settr(162,0,15,9,0,"((j<=4))", 0, 2, 0);
	trans[3][15]	= settr(163,0,16,10,10,"transactions[j].curr = 0", 1, 2, 0);
	trans[3][16]	= settr(164,0,17,11,11,"transactions[j].total = 0", 1, 2, 0);
	trans[3][17]	= settr(165,0,23,12,12,"k = 0", 0, 2, 0);
	trans[3][24]	= settr(172,0,23,1,0,".(goto)", 0, 2, 0);
	T = trans[3][23] = settr(171,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(171,0,18,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(171,0,21,0,0,"DO", 0, 2, 0);
	trans[3][18]	= settr(166,0,19,13,0,"((k<=7))", 0, 2, 0);
	trans[3][19]	= settr(167,0,20,14,14,"transactions[j].locks[k] = 0", 1, 2, 0);
	trans[3][20]	= settr(168,0,23,15,15,"k = (k+1)", 0, 2, 0);
	trans[3][21]	= settr(169,0,26,2,0,"else", 0, 2, 0);
	trans[3][22]	= settr(170,0,26,1,0,"goto :b13", 0, 2, 0);
	trans[3][25]	= settr(173,0,26,1,0,"break", 0, 2, 0);
	trans[3][26]	= settr(174,0,27,16,16,"transactions[j].assigned = 1", 1, 2, 0);
	trans[3][27]	= settr(175,0,28,17,17,"transactions[j].completed = 1", 1, 2, 0);
	trans[3][28]	= settr(176,0,29,18,18,"transactions[j].dest = 0", 1, 2, 0);
	trans[3][29]	= settr(177,0,32,19,19,"j = (j+1)", 0, 2, 0);
	trans[3][30]	= settr(178,0,35,2,0,"else", 0, 2, 0);
	trans[3][31]	= settr(179,0,35,1,0,"goto :b12", 0, 2, 0);
	trans[3][34]	= settr(182,0,35,1,0,"break", 0, 2, 0);
	trans[3][35]	= settr(183,0,36,20,20,"(run Creator())", 0, 2, 0);
	trans[3][36]	= settr(184,0,37,21,21,"(run Decider())", 0, 2, 0);
	trans[3][37]	= settr(185,0,0,22,22,"-end-", 0, 3500, 0);

	/* proctype 2: Creator */

	trans[2] = (Trans **) emalloc(43*sizeof(Trans *));

	trans[2][6]	= settr(112,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[2][5] = settr(111,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(111,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(111,0,3,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(107,0,41,23,0,"((created==100))", 1, 2, 0);
	trans[2][2]	= settr(108,0,41,1,0,"goto end", 0, 2, 0);
	trans[2][3]	= settr(109,0,8,2,0,"else", 0, 2, 0);
	trans[2][4]	= settr(110,0,8,1,0,"goto :b8", 0, 2, 0);
	trans[2][7]	= settr(113,0,8,1,0,"break", 0, 2, 0);
	trans[2][8]	= settr(114,0,31,24,0,"((completed_transaction==1))", 1, 2, 0);
	trans[2][32]	= settr(138,0,31,1,0,".(goto)", 0, 2, 0);
	T = trans[2][31] = settr(137,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(137,0,9,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(137,0,29,0,0,"DO", 0, 2, 0);
	trans[2][9]	= settr(115,0,10,25,0,"((transactions[i].completed==1))", 1, 2, 0);
	trans[2][10]	= settr(116,0,11,26,0,"assert((transactions[i].curr==0))", 1, 2, 0);
	trans[2][11]	= settr(117,0,12,27,0,"assert((transactions[i].assigned==1))", 1, 2, 0);
	trans[2][12]	= settr(118,0,17,28,28,"new_value = 0", 0, 2, 0); /* m: 13 -> 0,17 */
	reached2[13] = 1;
	trans[2][13]	= settr(0,0,0,0,0,"new_value = 10",0,0,0);
	trans[2][18]	= settr(124,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[2][17] = settr(123,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(123,0,16,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(123,0,14,0,0,"DO", 0, 2, 0);
	trans[2][16]	= settr(122,0,20,1,0,"goto :b10", 0, 2, 0);
	trans[2][14]	= settr(120,0,17,29,29,"((new_value<30))", 0, 2, 0); /* m: 15 -> 17,0 */
	reached2[15] = 1;
	trans[2][15]	= settr(0,0,0,0,0,"new_value = (new_value+1)",0,0,0);
	trans[2][19]	= settr(125,0,20,1,0,"break", 0, 2, 0);
	trans[2][20]	= settr(126,0,21,30,30,"transactions[i].curr = new_value", 1, 2, 0);
	trans[2][21]	= settr(127,0,22,31,31,"transactions[i].total = transactions[i].curr", 1, 2, 0);
	trans[2][22]	= settr(128,0,23,32,32,"transactions[i].completed = 0", 1, 2, 0);
	trans[2][23]	= settr(129,0,24,33,33,"transactions[i].dest = 0", 1, 2, 0);
	trans[2][24]	= settr(130,0,25,34,34,"transactions[i].assigned = 0", 1, 2, 0);
	trans[2][25]	= settr(131,0,26,35,35,"created = (created+1)", 1, 2, 0);
	trans[2][26]	= settr(132,0,27,36,36,"completed_transaction = 0", 1, 2, 0);
	trans[2][27]	= settr(133,0,38,37,37,"new_transaction = 1", 1, 2, 0);
	trans[2][28]	= settr(134,0,38,1,0,"goto :b9", 0, 2, 0);
	trans[2][29]	= settr(135,0,38,2,0,"else", 0, 2, 0);
	trans[2][30]	= settr(136,0,38,1,0,"goto :b9", 0, 2, 0);
	trans[2][33]	= settr(139,0,38,1,0,"break", 0, 2, 0);
	T = trans[2][38] = settr(144,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(144,0,34,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(144,0,36,0,0,"IF", 0, 2, 0);
	trans[2][34]	= settr(140,0,5,38,38,"((i<4))", 0, 2, 0); /* m: 35 -> 5,0 */
	reached2[35] = 1;
	trans[2][35]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[2][39]	= settr(145,0,5,1,0,".(goto)", 0, 2, 0);
	trans[2][36]	= settr(142,0,5,39,39,"((i>=4))", 0, 2, 0); /* m: 37 -> 5,0 */
	reached2[37] = 1;
	trans[2][37]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[2][40]	= settr(146,0,5,1,0,"goto loop", 0, 2, 0);
	trans[2][41]	= settr(147,0,42,40,0,"printf('Finished creating 100 transactions\\n')", 0, 2, 0);
	trans[2][42]	= settr(148,0,0,41,41,"-end-", 0, 3500, 0);

	/* proctype 1: Decider */

	trans[1] = (Trans **) emalloc(65*sizeof(Trans *));

	trans[1][61]	= settr(103,0,60,1,0,".(goto)", 0, 2, 0);
	T = trans[1][60] = settr(102,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(102,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(102,0,45,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(43,0,2,42,0,"((transactions[i].assigned==0))", 1, 2, 0);
	trans[1][2]	= settr(44,0,3,43,43,"new_transaction = 0", 1, 2, 0);
	trans[1][3]	= settr(45,0,4,44,0,"assert((transactions[i].completed==0))", 1, 2, 0);
	trans[1][4]	= settr(46,0,5,45,0,"assert((transactions[i].curr>0))", 1, 2, 0);
	trans[1][5]	= settr(47,0,6,46,0,"printf('Unassigned index: %d \\n',i)", 0, 2, 0);
	trans[1][6]	= settr(48,0,7,47,0,"printf('Transaction total: %d \\n',transactions[i].total)", 1, 2, 0);
	trans[1][7]	= settr(49,0,13,48,48,"neededWallets = (transactions[i].total/10)", 1, 2, 0);
	trans[1][14]	= settr(56,0,13,1,0,".(goto)", 0, 2, 0);
	T = trans[1][13] = settr(55,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(55,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(55,0,11,0,0,"DO", 0, 2, 0);
	trans[1][8]	= settr(50,0,9,49,0,"(((transactions[i].total%10)>0))", 1, 2, 0);
	trans[1][9]	= settr(51,0,42,50,50,"neededWallets = (neededWallets+1)", 0, 2, 0); /* m: 16 -> 0,42 */
	reached1[16] = 1;
	trans[1][10]	= settr(52,0,16,1,0,"goto :b4", 0, 2, 0); /* m: 16 -> 0,42 */
	reached1[16] = 1;
	trans[1][11]	= settr(53,0,16,2,0,"else", 0, 2, 0);
	trans[1][12]	= settr(54,0,16,1,0,"goto :b4", 0, 2, 0); /* m: 16 -> 0,42 */
	reached1[16] = 1;
	trans[1][15]	= settr(57,0,16,1,0,"break", 0, 2, 0);
	trans[1][16]	= settr(58,0,42,51,51,"printf('Needed wallets: %d \\n',neededWallets)", 0, 2, 0); /* m: 17 -> 0,42 */
	reached1[17] = 1;
	trans[1][17]	= settr(0,0,0,0,0,"assert((neededWallets>0))",0,0,0);
	trans[1][18]	= settr(0,0,0,0,0,"w = 0",0,0,0);
	trans[1][43]	= settr(85,0,42,1,0,".(goto)", 0, 2, 0);
	T = trans[1][42] = settr(84,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,19,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(84,0,26,0,0,"DO", 0, 2, 0);
	trans[1][19]	= settr(61,0,21,52,52,"((neededWallets==0))", 0, 2, 0); /* m: 20 -> 21,0 */
	reached1[20] = 1;
	trans[1][20]	= settr(0,0,0,0,0,"printf('Finished assigning index: %d \\n',i)",0,0,0);
	trans[1][21]	= settr(63,0,22,53,53,"transactions[i].assigned = 1", 1, 2, 0);
	trans[1][22]	= settr(64,0,23,54,0,"assert((transactions[i].completed==0))", 1, 2, 0);
	trans[1][23]	= settr(65,0,24,55,55,"(run Mix(i))", 0, 2, 0);
	trans[1][24]	= settr(66,0,60,56,56,"decided = (decided+1)", 1, 2, 0);
	trans[1][25]	= settr(67,0,60,1,0,"goto :b5", 0, 2, 0);
	trans[1][26]	= settr(68,0,39,2,0,"else", 0, 2, 0);
	trans[1][40]	= settr(82,0,39,1,0,".(goto)", 0, 2, 0);
	T = trans[1][39] = settr(81,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(81,0,27,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(81,0,32,0,0,"DO", 0, 2, 0);
	trans[1][27]	= settr(69,0,28,57,0,"((wallets[w].locked==0))", 1, 2, 0);
	trans[1][28]	= settr(70,0,29,58,58,"wallets[w].locked = 1", 1, 2, 0);
	trans[1][29]	= settr(71,0,30,59,59,"neededWallets = (neededWallets-1)", 0, 2, 0);
	trans[1][30]	= settr(72,0,42,60,60,"transactions[i].locks[w] = 1", 1, 2, 0);
	trans[1][31]	= settr(73,0,42,1,0,"goto :b6", 0, 2, 0);
	trans[1][32]	= settr(74,0,37,2,0,"else", 0, 2, 0);
	T = trans[1][37] = settr(79,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(79,0,33,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(79,0,35,0,0,"IF", 0, 2, 0);
	trans[1][33]	= settr(75,0,39,61,61,"((w<7))", 0, 2, 0); /* m: 34 -> 39,0 */
	reached1[34] = 1;
	trans[1][34]	= settr(0,0,0,0,0,"w = (w+1)",0,0,0);
	trans[1][38]	= settr(80,0,39,1,0,".(goto)", 0, 2, 0);
	trans[1][35]	= settr(77,0,39,62,62,"((w>=7))", 0, 2, 0); /* m: 36 -> 39,0 */
	reached1[36] = 1;
	trans[1][36]	= settr(0,0,0,0,0,"w = 0",0,0,0);
	trans[1][41]	= settr(83,0,42,1,0,"break", 0, 2, 0);
	trans[1][44]	= settr(86,0,60,1,0,"break", 0, 2, 0);
	trans[1][45]	= settr(87,0,50,2,0,"else", 0, 2, 0);
	trans[1][51]	= settr(93,0,50,1,0,".(goto)", 0, 2, 0);
	T = trans[1][50] = settr(92,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(92,0,46,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(92,0,48,0,0,"DO", 0, 2, 0);
	trans[1][46]	= settr(88,0,63,63,0,"((decided==100))", 1, 2, 0);
	trans[1][47]	= settr(89,0,63,1,0,"goto end", 0, 2, 0);
	trans[1][48]	= settr(90,0,57,2,0,"else", 0, 2, 0);
	trans[1][49]	= settr(91,0,57,1,0,"goto :b7", 0, 2, 0);
	trans[1][52]	= settr(94,0,57,1,0,"break", 0, 2, 0);
	T = trans[1][57] = settr(99,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(99,0,53,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(99,0,55,0,0,"IF", 0, 2, 0);
	trans[1][53]	= settr(95,0,59,64,64,"((i<4))", 0, 2, 0); /* m: 54 -> 59,0 */
	reached1[54] = 1;
	trans[1][54]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[1][58]	= settr(100,0,59,1,0,".(goto)", 0, 2, 0);
	trans[1][55]	= settr(97,0,59,65,65,"((i>=4))", 0, 2, 0); /* m: 56 -> 59,0 */
	reached1[56] = 1;
	trans[1][56]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[1][59]	= settr(101,0,60,66,0,"((new_transaction==1))", 1, 2, 0);
	trans[1][62]	= settr(104,0,63,1,0,"break", 0, 2, 0);
	trans[1][63]	= settr(105,0,64,67,0,"printf('Decided 100 transactions\\n')", 0, 2, 0);
	trans[1][64]	= settr(106,0,0,68,68,"-end-", 0, 3500, 0);

	/* proctype 0: Mix */

	trans[0] = (Trans **) emalloc(44*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,69,0,"assert((transactions[t_num].assigned==1))", 1, 2, 0);
	trans[0][2]	= settr(1,0,35,70,70,"w = 0", 0, 2, 0); /* m: 3 -> 0,35 */
	reached0[3] = 1;
	trans[0][3]	= settr(0,0,0,0,0,"w = 0",0,0,0);
	trans[0][36]	= settr(35,0,35,1,0,".(goto)", 0, 2, 0);
	T = trans[0][35] = settr(34,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(34,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(34,0,33,0,0,"DO", 0, 2, 0);
	trans[0][4]	= settr(3,0,29,71,0,"((w<=7))", 0, 2, 0);
	trans[0][30]	= settr(29,0,29,1,0,".(goto)", 0, 2, 0);
	T = trans[0][29] = settr(28,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(28,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(28,0,27,0,0,"DO", 0, 2, 0);
	trans[0][5]	= settr(4,0,6,72,0,"((transactions[t_num].locks[w]==1))", 1, 2, 0);
	trans[0][6]	= settr(5,0,7,73,0,"assert((transactions[t_num].curr>0))", 1, 2, 0);
	trans[0][7]	= settr(6,0,20,74,0,"assert((wallets[w].locked==1))", 1, 2, 0);
	trans[0][21]	= settr(20,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[0][20] = settr(19,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(19,0,8,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(19,0,14,0,0,"DO", 0, 2, 0);
	trans[0][8]	= settr(7,0,9,75,0,"((transactions[t_num].curr>10))", 1, 2, 0);
	trans[0][9]	= settr(8,0,10,76,76,"wallets[w].value = 0", 1, 2, 0);
	trans[0][10]	= settr(9,0,11,77,77,"transactions[t_num].dest = (transactions[t_num].dest+10)", 1, 2, 0);
	trans[0][11]	= settr(10,0,12,78,78,"transactions[t_num].curr = (transactions[t_num].curr-10)", 1, 2, 0);
	trans[0][12]	= settr(11,0,23,79,79,"wallets[w].value = 10", 1, 2, 0);
	trans[0][13]	= settr(12,0,23,1,0,"goto :b2", 0, 2, 0);
	trans[0][14]	= settr(13,0,15,2,0,"else", 0, 2, 0);
	trans[0][15]	= settr(14,0,16,80,80,"wallets[w].value = (wallets[w].value-transactions[t_num].curr)", 1, 2, 0);
	trans[0][16]	= settr(15,0,17,81,81,"transactions[t_num].dest = (transactions[t_num].dest+transactions[t_num].curr)", 1, 2, 0);
	trans[0][17]	= settr(16,0,18,82,82,"wallets[w].value = (wallets[w].value+transactions[t_num].curr)", 1, 2, 0);
	trans[0][18]	= settr(17,0,23,83,83,"transactions[t_num].curr = 0", 1, 2, 0);
	trans[0][19]	= settr(18,0,23,1,0,"goto :b2", 0, 2, 0);
	trans[0][22]	= settr(21,0,23,1,0,"break", 0, 2, 0);
	trans[0][23]	= settr(22,0,24,84,0,"assert((wallets[w].value==10))", 1, 2, 0);
	trans[0][24]	= settr(23,0,25,85,85,"transactions[t_num].locks[w] = 0", 1, 2, 0);
	trans[0][25]	= settr(24,0,32,86,86,"wallets[w].locked = 0", 1, 2, 0);
	trans[0][26]	= settr(25,0,32,1,0,"goto :b1", 0, 2, 0); /* m: 32 -> 0,35 */
	reached0[32] = 1;
	trans[0][27]	= settr(26,0,32,2,0,"else", 0, 2, 0);
	trans[0][28]	= settr(27,0,32,1,0,"goto :b1", 0, 2, 0); /* m: 32 -> 0,35 */
	reached0[32] = 1;
	trans[0][31]	= settr(30,0,32,1,0,"break", 0, 2, 0);
	trans[0][32]	= settr(31,0,35,87,87,"w = (w+1)", 0, 2, 0);
	trans[0][33]	= settr(32,0,38,2,0,"else", 0, 2, 0);
	trans[0][34]	= settr(33,0,38,1,0,"goto :b0", 0, 2, 0);
	trans[0][37]	= settr(36,0,38,1,0,"break", 0, 2, 0);
	trans[0][38]	= settr(37,0,39,88,0,"assert((transactions[t_num].curr==0))", 1, 2, 0);
	trans[0][39]	= settr(38,0,41,89,0,"assert((transactions[t_num].dest==transactions[t_num].total))", 1, 2, 0);
	trans[0][40]	= settr(39,0,41,1,0,"goto end", 0, 2, 0);
	trans[0][41]	= settr(40,0,42,90,90,"transactions[t_num].completed = 1", 1, 2, 0);
	trans[0][42]	= settr(41,0,43,91,91,"completed_transaction = 1", 1, 2, 0);
	trans[0][43]	= settr(42,0,0,92,92,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
