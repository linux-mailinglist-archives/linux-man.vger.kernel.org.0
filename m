Return-Path: <linux-man+bounces-3025-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 698AAAC4E14
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:01:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F09791BA0843
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9C57260E;
	Tue, 27 May 2025 12:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWwqcSXA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC791EA91
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748347274; cv=none; b=dcZn5nzJp7797xnKV4TSZ/sJxgBkPxwKUM+s7Bw1qOTVHpTq0tethCMw918oI0mXVa0r+wLIUY5DG0rd5Dqh58KS1+QRDsSL7NWbnzrmcRnkXETSOrNFj1e8Cr+JurlQAt64m10dW9PyymU+kiklJhKEL0l53A1dMezUGhLoqpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748347274; c=relaxed/simple;
	bh=5WPMacY9T9HxmO09lgRN67YacPUX9pQJ0CI/Seacpgg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KFAwQwM4r0wqQ8kWzLUa6hJwKIHb/wqRrBOdhgNdNzL0oiXHFh0VgnMHFNuyfTVKJbNV2usJSehzGcWHYLbyMjofxHcvzawDaHqNCv6DjlAA44FAcvf15VtdmRFmxOCBmQcZPXNg2pkJDNuBaeLS4+CoBc9eAsKLoY3t21FOe10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWwqcSXA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3A5DC4CEE9;
	Tue, 27 May 2025 12:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748347273;
	bh=5WPMacY9T9HxmO09lgRN67YacPUX9pQJ0CI/Seacpgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RWwqcSXAgnUF4lI5kqSlMQmH4o8DBJk5phPVDkp3iyWmGi9qbU4GIYuvzqWJabONN
	 I24fDmenUAzBorHK6tNTNHUwMcKaa62wEhnW24yRk3ni4L/FO/1xlxXeZsP6pu3tSi
	 SwfpqpAlZf+L0dQBauneRddsV0bNsiFMcbk9GPAQX1miggjF3+2oh15bBsjdqi9wvm
	 eUBGVWL9k1A0DE6J2/1uQKCPXizMXDHDPPLEEqMwuiMb9BKeuTke1wJAUDwOGqgDEQ
	 KQHg08C26UrGqRjy1fiHpmLfZjbqnggycjoJSYS5US7RsqFLWA9me5efd7acKXeqyV
	 YWC3Xf4+rLzmg==
Date: Tue, 27 May 2025 14:01:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, 
	Ulrich Drepper <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
References: <20250527115303.3304206e@inria.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p4xe2pdicb572o6a"
Content-Disposition: inline
In-Reply-To: <20250527115303.3304206e@inria.fr>


--p4xe2pdicb572o6a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, 
	Ulrich Drepper <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
References: <20250527115303.3304206e@inria.fr>
MIME-Version: 1.0
In-Reply-To: <20250527115303.3304206e@inria.fr>

[Added a few people to CC]

Hi Jens,

On Tue, May 27, 2025 at 11:53:03AM +0200, J=E2=82=91=E2=82=99=E2=82=9B Gust=
edt wrote:
> Hello Alex and everybody,
> I stumbled upon this confusing text in the futex man page
>=20
>   Typical values to specify for `val` are `0` or `1`.  (Specifying
>   `INT_MAX` is not useful, because it would make the
>   `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`.)  The
>   limit value specified via `val2` is typically either `1` or
>   `INT_MAX`.  (Specifying the argument as `0` is not useful, because
>   it would make the `FUTEX_CMP_REQUEUE` operation equivalent to
>   `FUTEX_WAIT`.)
>=20
>   The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
>   earlier `FUTEX_REQUEUE`.  The difference is that the check of the
>   value at `uaddr` can be used to ensure that requeueing happens only
>   under certain conditions, which allows race conditions to be avoided
>   in certain use cases.
>=20
>=20
> This has several issues, the most severe beeing the word `FUTEX_WAIT`.
>=20
> - How can an operation that only does wakes, ever be equivalent to a
>   wait?

That seems to be a typo.  It seems to me that it would be equivalent to
FUTEX_WAKE (just like a few sentences before).

>=20
> But then, even if we assume that both subphrases mean to talk about
> `FUTEX_WAKE`,

Yep.

I've applied this patch:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D74aa7971e5148f67d5def9977ed87cced638016a>

	commit 74aa7971e5148f67d5def9977ed87cced638016a
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
	@@ -501,7 +501,7 @@ .SS Futex operations
	 (Specifying the argument as 0 is not useful, because it would make the
	 .B FUTEX_CMP_REQUEUE
	 operation equivalent to
	-.BR FUTEX_WAIT .)
	+.BR FUTEX_WAKE .)
	 .IP
	 The
	 .B FUTEX_CMP_REQUEUE

> the assumption that this can ever be equivalent is
> bogus. In fact `FUTEX_CMP_REQUEUE` checks for `val3` still being
> pressent in the memory location, which `FUTEX_WAKE` doesn't.

Yep, we should document that.

> So I think that specifying any of the values that are pointed out in
> this paragraph can make sense, because of the added comparison to
> `val3`.
>=20
> I suggest to change to something along
>=20
>   The limit value specified via `val2` is typically either `1` or
>   `INT_MAX`. Specifying the argument as `0` makes the
>   `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`, only that
>   the operation then also ensures an atomic check for `*uaddr =3D=3D
>   val3`.  Typical values to specify for `val` are `0`, `1` or
>   `INT_MAX`.
>=20
>=20
>   The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
>   earlier `FUTEX_REQUEUE`.  The difference is that the check of the
>   value at `uaddr` can be used to ensure that requeueing happens only
>   under certain conditions, which allows race conditions to be avoided
>   in certain use cases.  In particular, a combination of `val =3D=3D 1`
>   and `val2 =3D=3D 0` is similar to the operation of `pthread_cond_signal`
>   with an additional check for `val3`; `val =3D=3D 1` and `val2 =3D=3D
>   INT_MAX` is similar to `pthread_cond_broadcast` with such a check.

I'll wait a little bit before doing anything to see if someone else
wants to chime in.  I never used futex(2), so can't comment much.  It
sounds more or less reasonable.

In the meantime, I see some other things that need updates regarding
futex(2), so I'll work on that (e.g., the futex_requeue() system call).


Have a lovely day!
Alex

>=20
> Thanks
> J=E2=82=91=E2=82=99=E2=82=9B
>=20
> --=20
> :: ICube :::::::::::::::::::::::::::::: deputy director ::
> :: Universit=C3=A9 de Strasbourg :::::::::::::::::::::: ICPS ::
> :: INRIA antenne de Strasbourg :::::::::::::::::: Camus ::
> :: INRIA PIQ program Strasbourg :::::::::: piq.inria.fr ::
> :: :::::::::::::::::::::::::::::::::::: =E2=98=8E +33 368854536 ::
> :: https://icube-icps.unistra.fr/index.php/Jens_Gustedt ::

--=20
<https://www.alejandro-colomar.es/>

--p4xe2pdicb572o6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg1qX4ACgkQ64mZXMKQ
wqll5g//a5pxnsKxqf767Rf+6gLfrYVftlShS8RA3UF4Yu/utoC20haYdhjhvXSI
7TlNV/O73Mo+CphjmlHaQVgylG4HrUKY73VCrf0pM6F60eXdG5ScPP9FnQHmX5rS
xZicsUFSL87it50vqYWjVd82Sg8Fii9+ZTGvaHfY3HyLxptgJO9ZnhaKHgtddjxm
OGG6ByZDuwLD932av/V6H2BT9wrGvRSuvGmfxCYESdEf5HWmdtX42KfSfZVlPlVm
hK4LzepQLwBgA5DiKdn2JMLbv7laJcAWf28uFWdKzqYU41RGk7Ng1ftX3Hnt/neS
D9DYfyz1hHLUQDP99m+GSp3opcZ1NNlVBq3eRY3vCsx0YKWB+wze0GN4x78fChIF
P6U1OrSo2S1Uy6lFdlmNUo7n7+s60ADfdHaP278+WwgwzpwbjyfVrR/aofUuhgTx
w8R9dli0P9mzlHrbDSbHezZcArEt5QHpFuglN/D4h7Kt73VHsOXYY+CTvQgztBX6
FBuAyqMlakptMSZJIhP5JEqx3195A6Akn/7L+eWMeFwT+pyD3XuaETzGe5mvNMHT
Sbu1BystmNmfGTVvOeABvrxQa+MgsHBZq8JqdkL1zKhtTWoFhjbZ9Kz9HxkdvUcL
6BRK2iyc/1ukoto1t6e4SkWA9wTct3Jar2eOx2AIZyyX/VD4do4=
=eZo1
-----END PGP SIGNATURE-----

--p4xe2pdicb572o6a--

