Return-Path: <linux-man+bounces-585-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFED87AC42
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 18:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CF021F2820F
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 17:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64FC7605D9;
	Wed, 13 Mar 2024 16:38:52 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smarthost01a.ixn.mail.zen.net.uk (smarthost01a.ixn.mail.zen.net.uk [212.23.1.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90A2605B5
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 16:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.1.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710347932; cv=none; b=DUcrr+2JfeVHFFtFP1RyV6kFUAgQh8AQIGM9zqqxw4XYl8eNlLeaIUv3URC/WfnrwJIEcb7EBG/N1jfBauRTG6maN+ErfYc7a0q5UDwQ/8LmQ3PZp0FD6DGrIN6KwwW/AfS6HZS8B5Zyn6T+beultHEemY1yeYUcfuRT1JDgZuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710347932; c=relaxed/simple;
	bh=/DYjBGkdhhTo5E3TEF18HzGCABMjERdGWlLnpgMP3MY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cX54i3g9nI5yLa6hSYyKUGo0wctBaT1O2yPxlxIEZWqsbhNFAFYy1PDalh1CIhvOUekq4t81lTvvWAO2snDsa+MA7Jx3Z4WkV4jUPUdvy+VL1eLr6Q0CrTLexMuSa/5IxIyUmTW4OIAzHnNtJnJkGKtze/mdbHu0dyJXzeH8fNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; arc=none smtp.client-ip=212.23.1.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01a.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rkRcn-001Wu8-2H;
	Wed, 13 Mar 2024 16:38:41 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Unable to generate glyphs for chinese letters
Date: Wed, 13 Mar 2024 16:38:41 +0000
Message-ID: <2607548.uBY7QHFjlC@pip>
In-Reply-To: <ZfGpZTxUo4EelRlK@debian>
References: <ZfGpZTxUo4EelRlK@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Wednesday, 13 March 2024 13:25:51 GMT Alejandro Colomar wrote:
> Hi Deri,
>=20
> I've noticed another similar issue, this time with Chinese.
>=20
> I see chinese letters in the bookmarks, but they don't appear in the
> PDF body.  If I read the manual page in the terminal, I do see them.
> When generating the PDF, I get a bunch of warnings about special
> characters not defined.
>=20
>=20
> See the page head(1):
>=20
> 	$ MANWIDTH=3D64 man ./man/zh_CN/man1/chage.1 | head -n4
> 	CHAGE(1)                 User Commands                CHAGE(1)
>=20
> 	=E5=90=8D=E7=A7=B0
> 	     chage - =E6=9B=B4=E6=94=B9=E7=94=A8=E6=88=B7=E5=AF=86=E7=A0=81=E8=
=BF=87=E6=9C=9F=E4=BF=A1=E6=81=AF
>=20
> And here's how I generated the pages:
>=20
> $ pwd
> /home/alx/src/linux/man-pages/man-pages/shadow
> $ MANDIR=3D~/src/shadow/shadow/build/man
> $ pdfdir=3D.tmp
> $ GROFFBINDIR=3D/opt/local/gnu/groff/deri-gropdf-ng/bin
> $ PRECONV=3D$GROFFBINDIR/preconv
> $ PIC=3D$GROFFBINDIR/pic
> $ TBL=3D$GROFFBINDIR/tbl
> $ EQN=3D$GROFFBINDIR/eqn
> $ TROFF=3D$GROFFBINDIR/troff
> $ GROPDF=3D$GROFFBINDIR/gropdf
> $ make_book()
>=20
> > {
> > make build-book PRECONV=3D$PRECONV PIC=3D$PIC TBL=3D$TBL EQN=3D$EQN TRO=
=46F=3D$TROFF
> > GROPDF=3D$GROPDF "$@"; }
>=20
> $ make_book_lang()
>=20
> > {
> > _LMB=3D$pdfdir/shadow-HEAD_$1.pdf; make_book MANDIR=3D$MANDIR/$1 _LMB=
=3D$_LMB;
> > }
>=20
> $ make_book MANDIR=3D$MANDIR _LMB=3D$pdfdir/shadow-HEAD.pdf
> MKDIR		.tmp/
> Build		.tmp/shadow-HEAD.pdf
> $ make_book_lang da
> Build		.tmp/shadow-HEAD_da.pdf
> $ make_book_lang de
> Build		.tmp/shadow-HEAD_de.pdf
> /opt/local/gnu/groff/deri-gropdf-ng/bin/troff:newusers.8:44: warning [p 1,
> 2.8i]: cannot break line $ make_book_lang fr
> Build		.tmp/shadow-HEAD_fr.pdf
> $ make_book_lang it
> Build		.tmp/shadow-HEAD_it.pdf
> $ make_book_lang pl
> Build		.tmp/shadow-HEAD_pl.pdf
> $ make_book_lang ru
> Build		.tmp/shadow-HEAD_ru.pdf
> /opt/local/gnu/groff/deri-gropdf-ng/bin/gropdf:chage.1: warning:
> Font 'Tinos (TINOR)' has 2639 glyphs
> You would see a noticeable speedup if you install the perl module Inline:=
:C
>=20
> $ make_book_lang sv
> Build		.tmp/shadow-HEAD_sv.pdf
> $ make_book_lang uk
> Build		.tmp/shadow-HEAD_uk.pdf
> /opt/local/gnu/groff/deri-gropdf-ng/bin/gropdf:chage.1: warning:
> Font 'Tinos (TINOR)' has 2639 glyphs
> You would see a noticeable speedup if you install the perl module Inline:=
:C
>=20
> $ make_book_lang zh_CN
> Build		.tmp/shadow-HEAD_zh_CN.pdf
> /opt/local/gnu/groff/deri-gropdf-ng/bin/troff:chage.1:33: warning: special
> character 'u540D' not defined
> /opt/local/gnu/groff/deri-gropdf-ng/bin/troff:chage.1:33: warning: special
> character 'u79F0' not defined
> /opt/local/gnu/groff/deri-gropdf-ng/bin/troff:chage.1:34: warning: special
> character 'u66F4' not defined
> /opt/local/gnu/groff/deri-gropdf-ng/bin/troff:chage.1:34: warning: special
> character 'u6539' not defined
>=20
> [ And a bunch of similar warnings... ]
>=20
>=20
> Cheers,
> Alex

Hi Alex,

The chinese glyphs are present in the bookmarks because you are using my=20
branch. :-) They are missing in the text because you don't have a font=20
installed which contains those glyphs.

You can download a patch from here:-

http://chuzzlewit.co.uk/chinese.patch.gz

It is too large for email, it contains the UnifontMedium font which contain=
s=20
the Chinese glyphs, typographically it is not the best font, a proper type =
1=20
font which contains CJK glyphs would be better, also it does not do bold=20
glyphs.

Gunzip the file then use git apply. There will be two new files in the devp=
df=20
directory which should be added to git.

Cheers=20

Deri




