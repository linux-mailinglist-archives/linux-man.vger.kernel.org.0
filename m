Return-Path: <linux-man+bounces-3029-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B83AC4EAD
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE5EE7A62EC
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A90A25A349;
	Tue, 27 May 2025 12:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ax7EJI6r"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0721EEA3C
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348904; cv=none; b=Qx4I5zaHDtmc9RPXA+0WvCtPZ3mPQ7yVgvf8uCkkW+FASJ5Sb6W/UjkDBy+/lvzkXMyEj20yJc2AUlI7U0H6y6cCmyyrWeWS4YCVSm3AH6b1BAHYr80CseqiL3yg6lMXlFFy7OpoBvmI6/ZTe7QAH0vPizf4neK3X5Esh5zJZqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348904; c=relaxed/simple;
	bh=SXlO5/x/scp4/Bel4LewJgDawg0G2aqKV59UbNturos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jyYiQbUt0s4hG1un2eN37h5kozINBRZp6zPObQs5eUgfBV16yUIgR54jhFHi9ZSxdEbezsfivgH9IXbVplne824VOq3zLfJSsxyuFTHQzdwEBfDOC3BKJvV3jvgJOtGqFRddyyB2MtA2LvMnsIKBNFNjQSnm36OoNdpUogB9aNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ax7EJI6r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88FF8C4CEE9;
	Tue, 27 May 2025 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748348904;
	bh=SXlO5/x/scp4/Bel4LewJgDawg0G2aqKV59UbNturos=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ax7EJI6rgmF9lghXu9SQPOtQJZznvhHA8aB0RAXXIpL8YF9uhM6hrLJYueTjxJFaX
	 k+W+HX8RtKYBmkIoC9TKRvHZQH82nIQsWk4k7DEwxudy9M/5yaI6wlRUsxATona/GK
	 vitGwaLErNFYgYlzMnQrMKCRz3aHRIedl4xh9fCZ3EpkrpUqyxQU1ssVvEdF2GX7kU
	 UpWghoeESylPFLolChFnLIFXvowU2JYZ8rQomTTqeIC7QlRzFZGvBD2XC8V+SzXATz
	 sPapDgPP5kWeou1hBc6r4vvIsGBEsaU04bAVUQbFYBZSvlaisUgVctdsdpsjTNpSUF
	 G920HgcWi2/mA==
Date: Tue, 27 May 2025 14:28:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper <drepper@redhat.com>, 
	Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <zrwfojd3ddditnyyppbyxwmzc5xoqp32gkitffxws4gxabnvm6@bpm6xy7f2l7w>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gi37iy45gyako7ov"
Content-Disposition: inline
In-Reply-To: <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>


--gi37iy45gyako7ov
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper <drepper@redhat.com>, 
	Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
MIME-Version: 1.0
In-Reply-To: <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>

Hi Carlos,

On Tue, May 27, 2025 at 08:12:41AM -0400, Carlos O'Donell wrote:
> > > This has several issues, the most severe beeing the word `FUTEX_WAIT`.
> > >=20
> > > - How can an operation that only does wakes, ever be equivalent to a
> > >    wait?
> >=20
> > That seems to be a typo.  It seems to me that it would be equivalent to
> > FUTEX_WAKE (just like a few sentences before).
>=20
> As noted in my earlier response, this is not a typo?

See my response to that one for more details.

>=20
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3D74aa7971e5148f67d5def9977ed87cced638016a>
> >=20
> > 	commit 74aa7971e5148f67d5def9977ed87cced638016a
> > 	Author: Alejandro Colomar <alx@kernel.org>
> > 	Date:   Tue May 27 13:07:19 2025 +0200
> >=20
> > 	    man/man2/futex.2: tfix
> > =09
> > 	    Fixes: 3dfcc11d4630 (2015-12-15; "futex.2: Expand description of F=
UTEX_CMP_REQUEUE")
> > 	    Fixes: 8297383e9eeb (2015-12-15; "futex.2: Clean-ups and FIXME rem=
oveal after feedback from Thomas Gleixner")
> > 	    Reported-by: Jens Gustedt <jens.gustedt@inria.fr>
> > 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> >=20
> > 	diff --git a/man/man2/futex.2 b/man/man2/futex.2
> > 	index 128612ee1..9a15a0fdb 100644
> > 	--- a/man/man2/futex.2
> > 	+++ b/man/man2/futex.2
> > 	@@ -501,7 +501,7 @@ .SS Futex operations
> > 	 (Specifying the argument as 0 is not useful, because it would make the
> > 	 .B FUTEX_CMP_REQUEUE
> > 	 operation equivalent to
> > 	-.BR FUTEX_WAIT .)
> > 	+.BR FUTEX_WAKE .)
>=20
> This is incorrect.
>=20
> A value of zero means no tasks are woken.

I'll show the patch with more context.  It's val2 which is 0, not val.

	$ git show -U7
	commit 74aa7971e5148f67d5def9977ed87cced638016a (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Tue May 27 13:07:19 2025 +0200

	    man/man2/futex.2: tfix
	   =20
	    Fixes: 3dfcc11d4630 (2015-12-15; "futex.2: Expand description of FUTEX=
_CMP_REQUEUE")
	    Fixes: 8297383e9eeb (2015-12-15; "futex.2: Clean-ups and FIXME removea=
l after feedback from Thomas Gleixner")
	    Reported-by: Jens Gustedt <jens.gustedt@inria.fr>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2/futex.2 b/man/man2/futex.2
	index 128612ee1..9a15a0fdb 100644
	--- a/man/man2/futex.2
	+++ b/man/man2/futex.2
	@@ -497,15 +497,15 @@ .SS Futex operations
	 The limit value specified via
	 .I val2
	 is typically either 1 or
	 .BR INT_MAX .
	 (Specifying the argument as 0 is not useful, because it would make the
	 .B FUTEX_CMP_REQUEUE
	 operation equivalent to
	-.BR FUTEX_WAIT .)
	+.BR FUTEX_WAKE .)
	 .IP
	 The
	 .B FUTEX_CMP_REQUEUE
	 operation was added as a replacement for the earlier
	 .BR FUTEX_REQUEUE .
	 The difference is that the check of the value at
	 .I uaddr

>=20
> The key question here is how do you define or document the semantics
> of the linked WAKE/WAIT that puts the tasks in the new queue.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--gi37iy45gyako7ov
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg1r+QACgkQ64mZXMKQ
wqm6sQ//enoXOPvMfZ6u31Kw9oBAXGzskedif+N179iqMaq3cGHOXfYVpPTF6SBE
N8jw/7wh/xQRiD0UhuMyNxfppGIO4K7k7bENAD39Jzy/sEz5aLBNh1YiFRzBGj6G
NrEkIBFdYOTlYq8LQrc9TDEGYO9rzKvz7b2pYiQRvTekW/FlXcdJL6ymtsMLpz/N
GWDvdcMcgvHn2HrVtkPyE1D2C/dy88jgni2PLpE+buXwFhyjyELTWa6y/YCEsxHT
kVvqLkRF5ey7fG5UqlLfToSPVJYsLjlEycvtdJ9twMGmzGmtWcY4VZR7B2D22kO+
jWruIkhd0j4ufuLMER/pNeV3Rt9ZUmr8r5r3RZkeSwuiBXrZG9EKTOL5JAKCXaxn
aUn/KtK2+bjsEYUnKUcR5g/jYvvS8t9MLTPbFmB0v/3zwHEhNuhAMUItKue1JOGA
jRzuM/TYupeYCN57WjnOW0S7/awxJGjZ52o6bE8hFFhsHtcqdWt1my0C37IKkT/N
2kAkATR1WRJ3Ye09WIys0pJCVhBoEId3ZAvWQEdsQ4VtfV1RpAP1ioyR/KNV+GKE
BZI+y++SDRdFE2MmQckmTQib48KAncJ92u33yATShiBESdxYRWIX70YAMZkJF6Tt
7J/myVRNopbZKYsmHENqYRTLv29qzSMJnsJ0U/4PwwNqwemyuvg=
=84rQ
-----END PGP SIGNATURE-----

--gi37iy45gyako7ov--

