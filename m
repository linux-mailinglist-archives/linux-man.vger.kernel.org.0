Return-Path: <linux-man+bounces-781-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C502B8A9003
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 02:26:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A868282C72
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 00:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 042CD382;
	Thu, 18 Apr 2024 00:26:35 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smarthost01b.sbp.mail.zen.net.uk (smarthost01b.sbp.mail.zen.net.uk [212.23.1.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8603370
	for <linux-man@vger.kernel.org>; Thu, 18 Apr 2024 00:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.1.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713399994; cv=none; b=l16gj4/BvodTUbQYtj8ogTAV01ckBs2I0om7zzS+lz3BGRi68UWM4x9oc+Sz7WWM2foxuwpjP3RuIKX5qSOyCwjVgo7WVjtZUwaEC5q+3GNTDMm0mOy+XX99ZxhhpgpPuepHZWg1/Ay/+vXOyt6kXI0F3gqbIl+BXM7KuPzUcxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713399994; c=relaxed/simple;
	bh=qebz9/Dz/X4YYYHCteaq686bOvhs1e6PSJHDQZxr/W0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jw4DRKR5DC53xw1dZpHsTG8xpnU7lSB7s51OsXuSdzJ6tWsF78Kyo4oB4CWoFHOMAnqryXa6H0/UTwkes241BgQDmDyG9VWL4XzklACljRxwBnlkOOt+yPsCJJh1qrys9MTiEurj4cmJ7EjT6ZZOXzWwQT5+hrNlePbFp6m2NH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; arc=none smtp.client-ip=212.23.1.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01b.sbp.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rxFbh-005lqE-GR;
	Thu, 18 Apr 2024 00:26:29 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Date: Thu, 18 Apr 2024 01:26:28 +0100
Message-ID: <9708362.ozD36m3ToO@pip>
In-Reply-To: <ZiA1iq1NSqWWADrT@debian>
References:
 <Zhu_-FE5sl3vSu1w@debian> <3180200.v3Tbpv83Wp@pip> <ZiA1iq1NSqWWADrT@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Wednesday, 17 April 2024 21:48:04 BST Alejandro Colomar wrote:
> Hi Deri,
>=20
> On Wed, Apr 17, 2024 at 09:01:01PM +0100, Deri wrote:
> > On Wednesday, 17 April 2024 11:33:58 BST Alejandro Colomar wrote:
> > > No, but they contain binary.  Here's an example:
> > >=20
> > > gropdf:zic.8: warning: Don't understand 'dup 0 11 -| =EF=BF=BD=EF=BF=
=BD=EF=BF=BD=EF=BF=BD=EF=BF=BDB4fD=EF=BF=BD" |'
> >=20
> > Aah, this comes from the new font subsetting code in gropdf. I have not
> > seen a font quite like this before, most fonts used with groff have been
> > converted from a .ttf/.otf by running it through fontforge.If you are
> > interested in the gory details look at the git log for the fix just
> > committed to the groff git.
> Thanks!  However, I can still see that warning.  I've installed groff
> from git HEAD:
>=20
> 	$ git describe
> 	1.23.0-1149-g5589bcd18
> 	$ git log -1 | head
> 	commit 5589bcd18776c6d236c53226a0ee30506180e6b6
> 	Author: Deri James <deri@chuzzlewit.myzen.co.uk>
> 	Date:   Wed Apr 17 19:25:03 2024 +0100
>=20
> 	    Improve font parsing.
>=20
> 	    The usual (for fontforge converted ttf fonts) is to use the RD, ND
> 	    and NP operators within charstring definitions, however these are
> 	    just named in the private subrs dictionary so could be assigned
> 	    any name.
>=20
>=20
> And here's the warning in the man-pages' contrib branch:
>=20
> 	$ make clean
> 	RM -rf		.tmp
> 	$ groff --version | head -n1
> 	GNU groff version 1.23.0.1149-5589
> 	$ make build-pdf-book -j24 >/dev/null 2>&1
> 	$ rm .tmp/man-pages-6.7-63-ga4f3afd28.pdf
> 	$ make build-pdf-book
> 	GROPDF		.tmp/man-pages-6.7-63-ga4f3afd28.pdf
> 	troff:fanotify_init.2:322: warning [page 192, 4.2i]: cannot adjust=20
line
> 	troff:membarrier.2:272: warning [page 475, 3.0i]: cannot adjust line
> 	statx.2:240: warning: table wider than line length minus indentation
> 	troff:syscall.2:171: warning: cannot select font 'CW'
> 	troff:syscall.2:301: warning: cannot select font 'CW'
> 	...
> 	gropdf:zic.8: warning: Don't understand 'dup 0 11 -| =EF=BF=BD=EF=BF=BD=
=EF=BF=BD=EF=BF=BD=EF=BF=BDB4fD=EF=BF=BD" |'
>=20
>=20
> Have a lovely night!
> Alex

Hi Alex,

While testing I used a document just using the debian TinosR font, no probl=
em.=20
Issue occurs when both types of font are used in one document. I have now=20
pushed the fix to groff. Please try again.

Cheers=20

Deri







