Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD61277AB4C
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 23:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjHMVBs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 17:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbjHMVBr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 17:01:47 -0400
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B043A10D0
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:01:48 -0700 (PDT)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id VA46q2V49LAoIVIDbqZE1T; Sun, 13 Aug 2023 21:01:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1691960507; bh=/dP6RLZZhhdukkDWAYXG2iIZygcgOTjYskcz9GmK/UY=;
        h=From:To:Cc:Subject:Date;
        b=ebFxPdUR0KHTrRiWK9XNK9tJtfxKWDnhZS5e7OwGx6/Ip8Bo5b2aAYPZCH4Yu0Cur
         C3fjkcPT9MG5RpkD+p2fXrLgmRSF2Gf1tvZrCUI09TjI5RqYVdxjKnDdncH7P0JiWi
         dqsWPwuSWonGfI4z3TUqM45kwg959+ZrQph4OvzYa3TWJyY9do6SrfVGfPvTCd3v5S
         cvTiD7KnzV2IfjkU66wpwDIxxwl7GFwinmg6uX86oAjlUcJnMOP7D+qmU010ILi4Wr
         4+BRJVbJ5bpTB7rfcAzSTjdVw8M/HwN2jgid2DasdVNSnkGNHN/qcnTwae4bBuAmfr
         8LWf3PJplK+bg==
Received: from BWINGLISD.cg.shawcable.net. ([184.64.102.149])
        by cmsmtp with ESMTP
        id VIDbqyyXs3fOSVIDbqvDDS; Sun, 13 Aug 2023 21:01:47 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=64d944bb
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=HlrewBL5AAAA:8 a=_Dj-zB-qAAAA:8 a=VwQbUJbxAAAA:8
 a=H6xcvXDTh5HiGqRQ1pAA:9 a=QEXdDO2ut3YA:10 a=zDWlRupnz2gt0A-eipNM:22
 a=AjGcO6oz07-iQ99wixmX:22
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing ASCII-EBCDIC tables
Date:   Sun, 13 Aug 2023 15:01:44 -0600
Message-Id: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfJMOW2jAVaeDSe0hktE9G09ikcp9c8ZdLWVszK2/etfUKztcTZOEnML8/9gi3umkJByiujODUwKP7yBb3EjXs0FDGpu/BA8ZTNfu9qDt5MqE9cLSdN/f
 m1fDWUyrjVbUZFpmOmOyoNm5PoxqaT4PL0/VKH6t/4jqhWVPbNGHs0vf7IUJG781XQVswAkT391n96e631hTnfMctPvcHY64usQ6VScmpPjxlS/qySzlZ9Z+
 jjjurXUNcey3Tjdlw/JU3B2O8ZRc1RYQ+8Kg/LuCb+KjsdHdm56ZCAEVtH/fwjO4
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I have an OpenGroup/UNIX.org/Austin Group/POSIX account,
so added the missing ASCII-EBCDIC tables by copying from the POSIX PDF,
as copying data is fair use, and the man page copy itself is authorized.

As an aside to that, those ASCII-EBCDIC tables support characters from
the old ISO 2033:1983 MICR/OCR character sets now in Unicode OCR block
U+2440-U+245F, which appears only in a few fonts like Unifont and SIL
LastResort (and MS Segoe UI Symbol), and are still available as TTF
(some font formats and support are being dropped in favour of OTF).

They appear normal on my screen running 'man 1p dd' on my system which
has those fallback fonts installed.

Is it sufficient to run the groff addition install-font.sh script on
those fonts and add them to the config as .special, or is anything else
required to register and render the glyphs on other devices?

Or should I take this up on the groff list? 

Signed-off-by: Brian Inglis <Brian.Inglis@Shaw.ca>
Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=215971
---
 man-pages-posix-2017/man1p/dd.1p | 132 ++++++++++++++++++++++++++++++-
 1 file changed, 129 insertions(+), 3 deletions(-)

diff --git a/man-pages-posix-2017/man1p/dd.1p b/man-pages-posix-2017/man1p/dd.1p
index 4d1353d2ed6e..f79173e06251 100644
--- a/man-pages-posix-2017/man1p/dd.1p
+++ b/man-pages-posix-2017/man1p/dd.1p
@@ -378,15 +378,137 @@ intersections. For example, ASCII 0012 (LF) is the second row, third
 column, yielding 0045 in EBCDIC. The inverted tables (for EBCDIC to
 ASCII conversion) are not shown, but are in one-to-one correspondence
 with these tables. The differences between the two tables are
-highlighted by small boxes drawn around five entries.
+highlighted by small boxes drawn around five entries:
+0136, 0176, 0313, 0325, 0345.
 .br
 .sp
 .ce 1
 \fBTable 4-7: ASCII to EBCDIC Conversion\fR
+.sp
+.TS
+centre;
+l   cB sB cB sB cB sB cB sB cB sB cB sB cB sB cB sB
+l    _ _   _ _   _ _   _ _   _ _   _ _   _ _   _ _
+nB | n l | n l | n l | n l | n l | n l | n l | n l |
+.
+\&	0	1	2	3	4	5	6	7
+\&
+0000	0000	NUL	0001	SOH	0002	STX	0003	ETX	0067	EOT	0055	ENQ	0056	ACK	0057	BEL
+0010	0026	BS	0005	HT	0045	LF	0013	VT	0014	FF	0015	CR	0016	SO	0017	SI
+0020	0020	DLE	0021	DC1	0022	DC2	0023	DC3	0074	DC4	0075	NAK	0062	SYN	0046	ETB
+0030	0030	CAN	0031	EM	0077	SUB	0047	ESC	0034	IFS	0035	IGS	0036	IRS	0037	ITB
+0040	0100	Sp	0132	!	0177	"	0173	#	0133	$	0154	%	0120	&	0175	\[aq]
+0050	0115	(	0135	)	0134	*	0116	+	0153	,	0140	\-	0113	.	0141	/
+0060	0360	0	0361	1	0362	2	0363	3	0364	4	0365	5	0366	6	0367	7
+0070	0370	8	0371	9	0172	:	0136	;	0114	<	0176	\&=	0156	>	0157	?
+\&	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_
+0100	0174	@	0301	A	0302	B	0303	C	0304	D	0305	E	0306	F	0307	G
+0110	0310	H	0311	I	0321	J	0322	K	0323	L	0324	M	0325	N	0326	O
+0120	0327	P	0330	Q	0331	R	0342	S	0343	T	0344	U	0345	V	0346	W
+0130	0347	X	0350	Y	0351	Z	0255	[	0340	\e	0275	]	0232		0155	\&_
+0140	0171	`	0201	a	0202	b	0203	c	0204	d	0205	e	0206	f	0207	g
+0150	0210	h	0211	i	0221	j	0222	k	0223	]	0224	m	0225	n	0226	o
+0160	0227	p	0230	q	0231	r	0242	s	0243	t	0244	u	0245	v	0246	w
+0170	0247	x	0250	y	0251	z	0300	{	0117	|	0320	}	0137	¬	0007	DEL
+\&	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_
+0200	0040	DS	0041	SOS	0042	FS	0043	WUS	0044	BYP	0025	NL	0006	RNL	0027	POC
+0210	0050	SA	0051	SFE	0052	SM	0053	CSP	0054	MFA	0011	SPS	0012	RPT	0033	CU1
+0220	0060		0061		0032	UBS	0063	IR	0064	PP	0065	TRN	0066	NBS	0010	GE
+0230	0070	SBS	0071	IT	0072	RFF	0073	CU3	0004	SEL	0024	RES	0076		0341	
+0240	0101		0102		0103		0104		0105		0106		0107		0110	
+0250	0111		0121		0122		0123		0124		0125		0126		0127	
+0260	0130		0131		0142		0143		0144		0145		0146		0147	
+0270	0150		0151		0160		0161		0162		0163		0164		0165	
+\&	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_
+0300	0166		0167		0170		0200		0212		0213		0214		0215	
+0310	0216		0217		0220		0152	¦	0233		0234		0235		0236	
+0320	0237		0240		0252		0253		0254		0112	¢	0256		0257	
+0330	0260		0261		0262		0263		0264		0265		0266		0267	
+0340	0270		0271		0272		0273		0274		0241		0276		0277	
+0350	0312		0313		0314	\fB⑀\fP	0315		0316	\fB⑂\fP	0317		0332		0333	
+0360	0334		0335		0336		0337		0352		0353		0354	\fB⑁\fP	0355	
+0370	0356		0357		0372	|	0373		0374		0375		0376		0377	EO
+\&	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_
+.TE
 .bp
 .sp
+.sp
 .ce 1
 \fBTable 4-8: ASCII to IBM EBCDIC Conversion\fR
+.sp
+.TS
+centre;
+l   cB sB cB sB cB sB cB sB cB sB cB sB cB sB cB sB
+l    _ _   _ _   _ _   _ _   _ _   _ _   _ _   _ _
+nB | n l | n l | n l | n l | n l | n l | n l | n l |
+.
+\&	0	1	2	3	4	5	6	7
+\&
+0000	0000	NUL	0001	SOH	0002	STX	0003	ETX	0067	EOT	0055	ENQ	0056	ACK	0057	BEL
+0010	0026	BS	0005	HT	0045	LF	0013	VT	0014	FF	0015	CR	0016	SO	0017	SI
+0020	0020	DLE	0021	DC1	0022	DC2	0023	DC3	0074	DC4	0075	NAK	0062	SYN	0046	ETB
+0030	0030	CAN	0031	EM	0077	SUB	0047	ESC	0034	IFS	0035	IGS	0036	IRS	0037	ITB
+0040	0100	Sp	0132	!	0177	"	0173	#	0133	$	0154	%	0120	&	0175	\[aq]
+0050	0115	(	0135	)	0134	*	0116	+	0153	,	0140	\-	0113	.	0141	/
+0060	0360	0	0361	1	0362	2	0363	3	0364	4	0365	5	0366	6	0367	7
+0070	0370	8	0371	9	0172	:	0136	;	0114	<	0176	\&=	0156	>	0157	?
+\&	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_
+0100	0174	@	0301	A	0302	B	0303	C	0304	D	0305	E	0306	F	0307	G
+0110	0310	H	0311	I	0321	J	0322	K	0323	L	0324	M	0325	N	0326	O
+0120	0327	P	0330	Q	0331	R	0342	S	0343	T	0344	U	0345	V	0346	W
+0130	0347	X	0350	Y	0351	Z	0255	[	0340	\e	0275	]	0137	¬	0155	\&_
+0140	0171	`	0201	a	0202	b	0203	c	0204	d	0205	e	0206	f	0207	g
+0150	0210	h	0211	i	0221	j	0222	k	0223	]	0224	m	0225	n	0226	o
+0160	0227	p	0230	q	0231	r	0242	s	0243	t	0244	u	0245	v	0246	w
+0170	0247	x	0250	y	0251	z	0300	{	0117	|	0320	}	0241		0007	DEL
+\&	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_
+0200	0040	DS	0041	SOS	0042	FS	0043	WUS	0044	BYP	0025	NL	0006	RNL	0027	POC
+0210	0050	SA	0051	SFE	0052	SM	0053	CSP	0054	MFA	0011	SPS	0012	RPT	0033	CU1
+0220	0060		0061		0032	UBS	0063	IR	0064	PP	0065	TRN	0066	NBS	0010	GE
+0230	0070	SBS	0071	IT	0072	RFF	0073	CU3	0004	SEL	0024	RES	0076		0341	
+0240	0101		0102		0103		0104		0105		0106		0107		0110	
+0250	0111		0121		0122		0123		0124		0125		0126		0127	
+0260	0130		0131		0142		0143		0144		0145		0146		0147	
+0270	0150		0151		0160		0161		0162		0163		0164		0165	
+\&	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_
+0300	0166		0167		0170		0200		0212		0213		0214		0215	
+0310	0216		0217		0220		0232		0233		0234		0235		0236	
+0320	0237		0240		0252		0253		0254		0255	[	0256		0257	
+0330	0260		0261		0262		0263		0264		0265		0266		0267	
+0340	0270		0271		0272		0273		0274		0275	]	0276		0277	
+0350	0312		0313		0314	\fB⑀\fP	0315		0316	\fB⑂\fP	0317		0332		0333	
+0360	0334		0335		0336		0337		0352		0353		0354	\fB⑁\fP	0355	
+0370	0356		0357		0372	|	0373		0374		0375		0376		0377	EO
+\&	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_	_
+.TE
+.IP
+.SB Note:
+.SM Characters 0352\[->]0314, 0354\[->]0316, 0366\[->]0354 \
+are derived from those in \
+ISO 2033:1983 Coding of machine readable characters (MICR and OCR) \
+defining character sets with symbols used by \
+Magnetic Ink Character Recognition and Optical Character Recognition systems:
+.RS
+.TP
+.BR '⑀'
+0x3C/0074 table 0352\[->]0314 U+2440 OCR HOOK
+.TP
+.BR '⑂'
+0x5D/0135 table 0354\[->]0316 U+2442 OCR FORK
+.TP
+.BR '⑁'
+0x3E/0076 table 0366\[->]0354 U+2441 OCR CHAIR
+.PP
+.SM showing characters from the \
+Unicode Optical Character Recognition block U+2440\(enU+245F.
+.P
+.SM On cheques, bank code and cheque number are terminated with \c
+.BR '⑀' ,
+.SM account number and cheque type number are terminated with \c
+.BR '⑁' ,
+.SM and amount is terminated with \c
+.BR '⑂' .
+.RE
 .SH STDIN
 If no
 .BR if =
@@ -623,7 +745,9 @@ cells in the tables differ in such a way that:
 .IP " 1." 4
 EBCDIC 0112 (\c
 .BR '\(ct' )
-and 0152 (broken pipe) do not appear in the table.
+and 0152 (\c
+.BR '\(bb' " broken pipe)"
+do not appear in the table.
 .IP " 2." 4
 EBCDIC 0137 (\c
 .BR '\(no' )
@@ -664,7 +788,9 @@ in cell 0176.
 .P
 \0\0\0\0That displaced EBCDIC 0232 (no graphic) in cell 0136.
 .P
-\0\0\0\0That replaced EBCDIC 0152 (broken pipe) in cell 0313.
+\0\0\0\0That replaced EBCDIC 0152 (\c
+.BR '\(bb' " broken pipe)"
+in cell 0313.
 .P
 EBCDIC 0255 (\c
 .BR '[' )
-- 
2.39.0

