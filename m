Return-Path: <linux-man+bounces-2866-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4778AAB17C
	for <lists+linux-man@lfdr.de>; Tue,  6 May 2025 06:01:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B44417B049
	for <lists+linux-man@lfdr.de>; Tue,  6 May 2025 03:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3254240117C;
	Tue,  6 May 2025 00:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIKLmDkP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4A52D9008
	for <linux-man@vger.kernel.org>; Mon,  5 May 2025 22:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746485495; cv=none; b=r9WxnnXg7oJ1GFS2AjbVjW1wY8Qnm8e3JSaFo3ihWzIb5RaqupFh/3LIGWo1SxFMIUyX3wKn4qpNmIi/cEIc/0xI0YaBWprVqVIh+KkR6sYqEdV7sngpuYhkaylcc7IO4quAQvZkalPTHm4eCBKypqqhbiqLTLle9l5hTlDlk4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746485495; c=relaxed/simple;
	bh=5OUqD/6EkXibbUcNeinUdshSzYGXeeapmK2gE+2ftjo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cXZ2Fu2Xy1br4BxZpaiWPbuHTC4mJtCSGz+SLjGMgd4xMYi8ZmlrfODpR/Qa1QwnXX52l2KF9EN1UHcJA067a96gGsyrYFzujv901UNwA4QKWu6J4M9ZAdOBCQYREA6XxHzVYO2h7v3+upP2oO0igOllkYzrwLtSNCZlARlQ9Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIKLmDkP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4790C4CEF3;
	Mon,  5 May 2025 22:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746485494;
	bh=5OUqD/6EkXibbUcNeinUdshSzYGXeeapmK2gE+2ftjo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OIKLmDkPdR8lyjNFNzThCC6k00EtfZLy95d8hyqce0OSvlQMVEKvvv1IF9p0vTljY
	 rbDYiM+iaN0x6lrIG5FNwY1fhE7t7dc7VnP3kbW6KGke8RgDuSprdtEODkLX2kbFaq
	 MK2bKY+X6GReGe40ZvokaO/c59bocBWpbPUfCPtT56Iz05T0M/hZQwtuGU6jAsWOs3
	 VDzm3HfeyBDOV9UEuaGY7gSyadxSQmu9pPR2m6kInLy9RKCBYRMdNpnVVzLXMWVEyz
	 MSmHxXAK51igbgMvlT4sZ29vqc8L0xagRC2uft3q5ogumJlKUkkahbKed4LJtRCtJX
	 G53jDuOrrzKgw==
Date: Tue, 6 May 2025 00:51:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	Amit Pinhas <amitpinhass@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <dbw2arak273mf5s4c3prra4hijicf5zp7o5mu5vq4l5pbw2zx6@ba3vwawaoqn2>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
 <37qabjc65x7co7f3oiibpgwtvhnigk5z7tpmmzgrjhisi4nqmz@ypx33dbbltdn>
 <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>
 <jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bf4erdtsd6tjeggb"
Content-Disposition: inline
In-Reply-To: <jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p>


--bf4erdtsd6tjeggb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	Amit Pinhas <amitpinhass@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
 <37qabjc65x7co7f3oiibpgwtvhnigk5z7tpmmzgrjhisi4nqmz@ypx33dbbltdn>
 <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>
 <jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p>
MIME-Version: 1.0
In-Reply-To: <jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p>

Hi all,

I've moved all contribution credits to a new CREDITS file, and changed
all copyright notices to claim

	Copyright, The contributors to the Linux man-pages project

(I've kept only a few copyright notices, which are not from contributors
 of this project, but from projects from which we've imported pages.  I
 may have made some mistakes while doing this, but they would be
 unintentional.  If anyone spots a mistake, please let me know and I'll
 fix it.)

$ grep -rh '^\.\\".*Copyright' man/ \
| sort \
| uniq -c \
| sort
      1 .\" Copyright (C) All BPF authors and contributors from 2014 to pre=
sent.
      1 .\" Copyright 1980-1991, The Regents of the University of Californi=
a.
      1 .\" Copyright 1980-1993, The Regents of the University of Californi=
a.
      1 .\" Copyright 1983-1987, The Regents of the University of Californi=
a.
      1 .\" Copyright 1983-1991, Regents of the University of California.
      1 .\" Copyright 1986, The Regents of the University of California.
      1 .\" Copyright 1987-1993, The Regents of the University of Californi=
a.
      1 .\" Copyright 1989-1994, The Regents of the University of Californi=
a.
      1 .\" Copyright 1990-1991, Regents of the University of California.
      1 .\" Copyright 1991-1992, Free Software Foundation
      1 .\" Copyright 1992-1994, The Regents of the University of Californi=
a.
      1 .\" Copyright 1996, Joerg Wunsch
      1 .\" Copyright 1998, The Internet Society.
      1 .\" Copyright, OpenBSD Group
      2 .\" Copyright 1983, The Regents of the University of California.
      2 .\" Copyright 1983-1993, The Regents of the University of Californi=
a.
      2 .\" Copyright 1989-1993, The Regents of the University of Californi=
a.
      2 .\" Copyright 1991, The Regents of the University of California.
      2 .\" Copyright, Free Software Foundation
      4 .\" Copyright 1996, Free Software Foundation, Inc.
      5 .\" Copyright 1980-1991, Regents of the University of California.
      5 .\" Copyright 1990-1993, The Regents of the University of Californi=
a.
      6 .\" Copyright 2003, Free Software Foundation, Inc.
      8 .\" Copyright 1993, The Regents of the University of California.
     10 .\" Copyright 1990-1991, The Regents of the University of Californi=
a.
     13 .\" Copyright 1983-1991, The Regents of the University of Californi=
a.
   1359 .\" Copyright, The contributors to the Linux man-pages project

These changes will be for a few days in my personal branch (to allow
amending any mistakes), and then I'll push to <git.kernel.org>.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De007a866ef60913bedf710caf8512cd401407062>

BTW, I plan to release a new version in a week or so.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--bf4erdtsd6tjeggb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgZQPIACgkQ64mZXMKQ
wqlMiRAAlD0ARhhY+CyxYTNimmCxoGV43k2Bf9ZDoTfARWCH0qIrMma6KWs1OJ7p
fOE4cJA1WFvzu6AGNmrDP+jlmFlOku1cd+QNv1XOmqtCcPshzDLNjXQabH41pxem
Ao8MdtG+yA3JaLypjnMBAvLIXgKEbrifJCWrqunKg76k0mN0BlzlEZE/25i+8yaP
lq1FKc4KQZTXPrwLqI2OJrFwlLvqYFzU60QO4hELJ7ZK8cKIKZYLMBhODGAPIpMd
DGx9jtGFrXld6z/oTYeWJCy2QZA/wi2h468JSRpGLrAsUPgQvHW/AyZKGuLR5WUx
4C3IfwH/h2y+Rn4IeGhhQi5dUNWcHmvGm+gC964DGSPZ9GOttzwSq5VJBx1tXLS5
g4LO4jrav0ZO+EG/M1SYIxio491uIXCGtYGEJtD5MI6q+x+Z7OulBV2ktGDhs67z
cJg5pAHmpfyFazZ/CtR11q6RLg73+jvLIrUiVCRf8nhaWonp7MFP8/5buk6gh+/W
oU0SrTpijelgjE3aPVYeL1s2zQ3Cr6y8zVyHygac4MEzuB4agvdCBRVDfv0kxQu2
6EKUz1hDrBu35zERY043hMKTNX6Nyb64SUmbZBDkUjVKawfQ5bFGoike6Jg/YT6i
u+l/IP0D2lOqxYPLXQP9cmdWyW/lXkiHLC1EI6gow41PzzFYV4g=
=u4D7
-----END PGP SIGNATURE-----

--bf4erdtsd6tjeggb--

