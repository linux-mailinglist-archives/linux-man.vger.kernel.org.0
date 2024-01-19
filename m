Return-Path: <linux-man+bounces-395-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1453C833107
	for <lists+linux-man@lfdr.de>; Fri, 19 Jan 2024 23:58:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9765D1F22787
	for <lists+linux-man@lfdr.de>; Fri, 19 Jan 2024 22:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4EB58AA3;
	Fri, 19 Jan 2024 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3XAHsmy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9118256B7B
	for <linux-man@vger.kernel.org>; Fri, 19 Jan 2024 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705705114; cv=none; b=G/wW7A3VT7bfrJLr1Mln0L5wf3FTvSSW1WgogK6X9LnN6MNKY+dikSHmq/xK6KBlagbT9V7080yXMHRKS0vJEh+bWQuhbEWhIjC3JpkIxRbEKMyCgwnQFxY/zJWBEVbHZI2UQOzUO6AsWrmzGmob2QMCuoXe86IV9BjW4hL+B24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705705114; c=relaxed/simple;
	bh=Pa5QacaErqPI0K2z9LDOaw2GPDnOho51Lm0Lz3qJu4I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O/rWVzNxIGWH1AT+IspJQVMUQjr8wEnYO/hhkRDYxuInZ42WralogAE94lGPdsBxv1xtQex3m2o6TqVZDNZtkf82spCWFQT/zY8ewnaB9x164ImZqvRolrr/ipc3epSjf5BVdZl15a/X2DCvwslhxoT1eXhCpEmXhJ7L/W+3pz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3XAHsmy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66121C433C7;
	Fri, 19 Jan 2024 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705705114;
	bh=Pa5QacaErqPI0K2z9LDOaw2GPDnOho51Lm0Lz3qJu4I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P3XAHsmytuqBOBxwdzF1KRIp8JG4+oCoatmxbQG1LUzj60jtMOgCqPtxXfc88yO/W
	 IDYiJfedi8BEVDKyhxtd125rrOJzs+7YiLc1cnz4kSrY7GyDg1QIekNq9v4WAFIIn9
	 KVd3xMVRblbWCJyOseAh576Rx8moRNO6FfcwIHbMbTYNuzIFzNvARM9KbRygMgLVhu
	 zCxE/2C7+IFSHUl8ouNuVwklvIPbXxHVoRDyNhJTNWdM8Ewdvp4LbcJ4sByRAsn1Kv
	 AI9WLvXEH0fPMYC4/BnsjUtNtJ/w5rNMFP/WOT9JSBLR/pAQ2hiXVVK27QcJzS27AH
	 ZCMfZRPYvCGWQ==
Date: Fri, 19 Jan 2024 23:58:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: lijh8 <lijh8@qq.com>
Subject: Re: FWD: lijh8@qq.com: about operator(7) precedence
Message-ID: <Zar-liK0Ev692sTQ@debian>
References: <tencent_98F329827330C28C2727E9F2106379868609@qq.com>
 <ZaruodlIbZHnErOK@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lM1nsHbaJaA5DEYL"
Content-Disposition: inline
In-Reply-To: <ZaruodlIbZHnErOK@debian>


--lM1nsHbaJaA5DEYL
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jan 2024 23:58:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: lijh8 <lijh8@qq.com>
Subject: Re: FWD: lijh8@qq.com: about operator(7) precedence

On Fri, Jan 19, 2024 at 10:50:19PM +0100, Alejandro Colomar wrote:
> ----- Forwarded message from lijh8 <lijh8@qq.com> -----
>=20
> Date: Sat, 20 Jan 2024 05:20:40 +0800
> From: lijh8 <lijh8@qq.com>
> To: alx <alx@kernel.org>
> Cc: linux-man <linux-man@vger.kernel.org>
> Subject: about operator(7) precedence
> Message-ID: <tencent_98F329827330C28C2727E9F2106379868609@qq.com>
> X-Mailer: QQMail 2.x
>=20

I'll reorder your mail, for a better reply.

> What's the reason, is the C language changed?

The C language specifies operators in 6.5 (Expressions).
<http://port70.net/~nsz/c/c11/n1570.html#6.5>

There, there's a note, 85, that says that

	The syntax specifies the precedence of operators in the
	evaluation of an expression, which is the same as the order of
	the major subclauses of this subclause, highest precedence first.
	...
<http://port70.net/~nsz/c/c11/n1570.html#note85>

Postfix ++ and -- are described in 6.5.2.4, that is, in the second group
of operators, sorted by precedence (the first is _Generic(), which isn't
documented in the manual pages).
<http://port70.net/~nsz/c/c11/n1570.html#6.5.2.4>

Prefix ++ and -- are described in 6.5.3.1, that is, in the third group
of operators, sorted by precedence.
<http://port70.net/~nsz/c/c11/n1570.html#6.5.3.1>

> Why on linux, postfix and prefix are divided into two different=20
> precedences?

The Linux manual page is correct, closely following what ISO C says (I
showed C11, but I'm sure that all other versions of ISO C have the same
precedence rules).

> Hi, on macOS (and maybe freeBSD), postfix and prefix ++ -- are the same=
=20
> precedence and can be distinguished by associativities.

Since x--++ is not legal, because x-- is not an lvalue, there's probably
no real difference in the two different models of the same reality.

However, pedantically, the macOS manual page is lying.  I've checked,
and the FreeBSD and OpenBSD manual pages also lie about this.

<https://man.openbsd.org/operator.7>
<https://man.freebsd.org/cgi/man.cgi?query=3Doperator&manpath=3DFreeBSD+14.=
0-RELEASE+and+Ports>

Have a lovely day,
Alex

>=20
>=20
> ---
>=20
>=20
> ```
>=20
>=20
> OPERATOR(7)             Miscellaneous Information Manual            OPERA=
TOR(7)
>=20
>=20
> NAME
>      operator =E2=80=93 C operator precedence and order of evaluation
>=20
>=20
> DESCRIPTION
>            Operator                        Associativity
>            --------                        -------------
>            () [] -> .                      left to right
>            ! ~ ++ -- - (type) * & sizeof   right to left
>            * / %                           left to right
>            + -                             left to right
>            << >>                           left to right
>            < <=3D > >=3D                       left to right
>            =3D=3D !=3D                           left to right
>            &                               left to right
>            ^                               left to right
>            |                               left to right
>            &&                              left to right
>            ||                              left to right
>            ?:                              right to left
>            =3D +=3D -=3D etc.                    right to left
>            ,                               left to right
>=20
>=20
> FILES
>      /usr/share/misc/operator
>=20
>=20
> macOS 12.7                        June 9, 1993                       macO=
S 12.7
>=20
>=20
> ```
>=20
>=20
> ---
>=20
>=20
> ```
>=20
>=20
> operator(7)            Miscellaneous Information Manual           operato=
r(7)
>=20
>=20
> NAME
>        operator - C operator precedence and order of evaluation
>=20
>=20
> DESCRIPTION
>        This manual page lists C operators and their precedence in evaluat=
ion.
>=20
>=20
>        Operator                            Associativity   Notes
>        [] () . -> ++ --                    left to right   [1]
>        ++ -- & * + - ~ ! sizeof            right to left   [2]
>        (type)                              right to left
>        * / %                               left to right
>        + -                                 left to right
>        << >>                               left to right
>        < > <=3D >=3D                           left to right
>        =3D=3D !=3D                               left to right
>        &                                   left to right
>        ^                                   left to right
>        |                                   left to right
>        &&                                  left to right
>        ||                                  left to right
>        ?:                                  right to left
>        =3D *=3D /=3D %=3D +=3D -=3D <<=3D >>=3D &=3D ^=3D |=3D   right to=
 left
>        ,                                   left to right
>=20
>=20
>        The following notes provide further information to the above table:
>=20
>=20
>        [1] The  ++  and -- operators at this precedence level are the pos=
tfix
>            flavors of the operators.
>        [2] The ++ and -- operators at this precedence level  are  the  pr=
efix
>            flavors of the operators.
>=20
>=20
> Linux man-pages 6.03              2023-02-05                      operato=
r(7)
>=20
>=20
> ```
>=20
> ----- End forwarded message -----
>=20
> --=20
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--lM1nsHbaJaA5DEYL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWq/pAACgkQnowa+77/
2zIovw/6AtX4IKRGPuBprSTxBFQOwSHL0P64GU9uQEXTbEra/IEmJgyqPXu2Tc9m
ipn60GOvR/qLew8//u/ZtinD4SgWuXxIZdu5e0lUDkEHPgVjXyISFuexW0eN86+O
ZjLXVuahAzdUTT9VUv1dKRSHs8+tBoHV4iYKE/9hp5QIqOukp25G73M3mfWaZCPt
0BCNDZs5sbpR1Qgrd8psRfD34+hT06joQwNmsrdtcvFvoXqBVldPWpPmtOSDMHTD
IEekrMHt704aUJ1c88mkz82NAg9WPCTrQtMUrJJBNgDbIAt+ZB6i+H2YbEWGcq1X
KuqCBWl0buhMeeaxTvq8pGITA/HhCbPDhW3+v2xuXG5nOd3bQEkMBrnCUqHDLGpR
WlcxiB9BrcG43G9i5BSURlJiL9hGVdYLi4FQyyCuKF7ClwOVU9aISLzioYTDe0c2
GXGjdOKD1detcUyAF+t1K1QN56Jslp/OvGkh4zkhHfyvN0KsCs6cFVoCY7wJUO0R
JObfmHwE6BvfrfHjWci4XCvRQHFkaC67hPp34D3jX/D1UTysZJ+pclhQa4bvci+O
7UscbNUUkT9t7dKTrVP9EibpNNB3vEKgGMdEDroc5SPkwp91k+G04JUduzI2lVim
RQ0FCGDwW3FgguSR13vtAAaTXrN+GhMch8zA+xg0w7+1/dvuqIA=
=mI4W
-----END PGP SIGNATURE-----

--lM1nsHbaJaA5DEYL--

