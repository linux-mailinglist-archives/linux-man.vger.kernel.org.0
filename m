Return-Path: <linux-man+bounces-244-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 913D080BD09
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 21:35:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F5EE1F20EDE
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 20:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5F01B275;
	Sun, 10 Dec 2023 20:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXxk2DI+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD08847B
	for <linux-man@vger.kernel.org>; Sun, 10 Dec 2023 20:35:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A311C433C7;
	Sun, 10 Dec 2023 20:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702240525;
	bh=pXVJT1vMjuuQO3h3mBgnEuTCyqVHeQ7iKgOZ5e4WPFo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YXxk2DI+iKntEyrW/uiV1RBXf/ZJUUN86vnP8GN0bIE6m73E662sa1FVSUy4kRz/s
	 9IjzaPTXa/pMfg0pzZL/pxCgOZfldvtgHiV5fyc6JE7vofG5OGzDJd9pzosQ55LSmy
	 UshUDEE/YactFwUW14sj1xgrL099zQ52phsNvjeTFGsdtOOhOlbhU5BQNxqm6bHVKA
	 2j02Oc9oPBHxKHMLtLxg9wpiA7dkrR3Ai751KWhwf7NaittwxgvzrsVtXEbpxbafo1
	 9InP2gLCB1RmhzCX095m+wY32eZe24TrndyWdvuha/uAiNQHZ7i91zcoa8WvIKGA8B
	 3tTXKUPSLxjaQ==
Date: Sun, 10 Dec 2023 21:35:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: thomas@habets.se
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] atoi.3: Document return value on under/overflow as
 undefined
Message-ID: <ZXYhCo6s-usIn-9d@debian>
References: <CA+kHd+cpgbREUpfm+xBJkhUNc52n1juM3gF_M+8_Wo3AU6wdEw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g5kiS3gPeb4Mpcq0"
Content-Disposition: inline
In-Reply-To: <CA+kHd+cpgbREUpfm+xBJkhUNc52n1juM3gF_M+8_Wo3AU6wdEw@mail.gmail.com>


--g5kiS3gPeb4Mpcq0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 Dec 2023 21:35:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: thomas@habets.se
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] atoi.3: Document return value on under/overflow as
 undefined

Hello Thomas,

On Sun, Dec 10, 2023 at 06:08:48AM -0800, thomas@habets.se wrote:
> See patch below.
>=20
> --
> typedef struct me_s {
>   char name[]      =3D { "Thomas Habets" };
>   char email[]     =3D { "thomas@habets.se" };
>   char kernel[]    =3D { "Linux" };
>   char *pgpKey[]   =3D { "http://www.habets.pp.se/pubkey.txt" };
>   char pgp[] =3D { "9907 8698 8A24 F52F 1C2E  87F6 39A4 9EEA 460A 0169" };
>   char coolcmd[]   =3D { "echo '. ./_&. ./_'>_;. ./_" };
> } me_t;
>=20
>=20
> commit 095cc630082ea389d5f6657ce497e02d3dde0b21
> Author: Thomas Habets <thomas@habets.se>
> Date:   Sun Dec 10 13:44:47 2023 +0000
>=20
>     atoi.3: Document return value on under/overflow as undefined
>=20
>     Before this change, the manpage is clear enough:
>=20
>     ```
>     RETURN VALUE
>            The converted value or 0 on error.

For extra fun, you could have quoted this together :)

```
     except that atoi() does not detect errors.
```

>     [=E2=80=A6]
>     No checks for overflow or underflow are done.
>     ```
>=20
>     This is not really true. atoi() uses strtol() to convert from string
>     to long, and the results may under or overflow a long, in which
>     case strtol() returns LONG_MIN and LONG_MAX, respectively.
>=20
>     LONG_MIN cast to int is 0, which lives up to the manpage just fine
>     ("0 on error"), assuming underflow should be seen as an error.
>=20
>     LONG_MAX cast to int is -1.
>=20
>     POSIX says "The atoi() function shall return the converted value if
>     the value can be represented", the current behavior doesn't violate
>     POSIX.
>=20
>     But is surprising. And arguably is incorrectly documented for Linux
>     manpages. There is, in fact, a range check, but but against long, not
>     int.

We could say it's just an accident, and not an intentional check.
Something similar happens in sscanf(3).  Since something between INT_MAX
and LONG_MAX won't be covered by that range check, let's say there's
none, for simplicity.

> "Error" is not defined in the manpage. Is over/underflow an
>     error?
>=20
>     It's kinda handled, kinda not, with the effect that over and underflow
>     have different return values for atoi(), and for atol() proper range
>     checking is in fact being done by the implementation.
>=20
>     It would be possible to document atol(3) to say that it actually does
>     range checking, but that seems like a bigger commitment than this
>     clarification.
>=20
>     More thoughts from me on parsing and handling integers:
>=20
>     https://blog.habets.se/2022/10/No-way-to-parse-integers-in-C.html
>     https://blog.habets.se/2022/11/Integer-handling-is-broken.html

Very interesting!

>=20
>     Previously (incorrectly) filed as a bug here:
>     https://sourceware.org/bugzilla/show_bug.cgi?id=3D29753
>=20
>     Signed-off-by: Thomas Habets <thomas@habets.se>
>=20
> diff --git a/man3/atoi.3 b/man3/atoi.3
> index f5fb5d0e1..7c005fc15 100644
> --- a/man3/atoi.3
> +++ b/man3/atoi.3
> @@ -111,7 +111,9 @@ only.
>  .I errno
>  is not set on error so there is no way to distinguish between 0 as an
>  error and as the converted value.
> -No checks for overflow or underflow are done.
> +The return value in case of under/overflow is undefined, but currently
> +atol() and atoll() return LONG_MIN/LONG_MAX and LLONG_MIN/LLONG_MAX,
> +respectively.

I don't want to document current behavior, since that behavior is
completely bogus, and beter described as undefined.  Let curious
programmers find out how much undefined it is.

Also, it's not only the return value that is undefined; the entire
program behavior is undefined.  We're lucky that the compiler is
(likely) unable to see the UB, and so it can't freak out.

So, a patch should say the behavior is undefined if the value is not
representable in an int.

However, maybe we should instead try to fix glibc to do the right thing.

	int
	atoi(const char *nptr)
	{
		int   i, err;

		i =3D strtoi(nptr, NULL, 10, INT_MIN, INT_MAX, &err);
		if (err)
			errno =3D err;
		return i;
	}

This is compatible with ISO C, since it behaves like

	(int) strtol(nptr, NULL, 10);

"Except for the behavior on error", in which this atoi(3) implementation
sets errno, but nothing forbids that (ISO C only says "need not affect
the value of the integer expression errno on an error", which allows
affecting errno).  POSIX also allows this implementation: "except that
the handling of errors may differ".

Have a lovely night,
Alex

>  Only base-10 input can be converted.
>  It is recommended to instead use the
>  .BR strtol ()
>=20

--=20
<https://www.alejandro-colomar.es/>

--g5kiS3gPeb4Mpcq0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV2IQMACgkQnowa+77/
2zI4kxAAhLiyKNkTnxdvOpJK7HwojwHP4SXo3Ze8mZx5Xn6w1XYVz5MJVrcf/uig
+K4TOqiAB7JvXMWJj7MuG2NESEFTLpnqm858KWTU+dqg32/ghttMxMbOb3pueGa2
+F5kLY3A0yTpE7qwADJrhrnLmI2vCmN5dV9ieXZf7QCKe6L+7+UpjQAm241Z1FAu
rNix1wkD0/z3lO2IvA7lj6cX/lVk4ZeYekxKcikYIv69DU20IS+8uTkF8fE056uM
EuVAuGQMmpR0VwoaBXyxktVkJpSMw3itSfFe8h3CSMvk6U2ECBiRzcciJpKN2ylb
/c8Nwk4/SblfjqLMcrB+wGAfjK8YcuekyDQsFJBUo/qRmD4D+bUvg3tZnB7QQUwN
oG3/IB4vNRl/WsvdHqFl6aUJCqNGDaM9FdwVGyVUcpDO1mXnNWcc4QwwfWZoyK7B
xL02Pa6ZJ/h8LV6KZR1aSVsA0WBuaE+jmYj6wknWL4Nqbjj9+2YDSaRGvvoI1z8Q
lUdElpndZPV/NbRFtmkObGujX21PeTWam8UfOZWXbvzBa1ylu72tyzmYogQAsXqp
DOZVmxoAjgP8hzqP06AHxUvDt0upvQDnIFfnRloWBC/JGaNqn2FHLP8mLN0Uwrni
yuMCRMcpW399tUj+4LyPq3DPvK2Xj5zgB7MrqyDI8Y+qD85oxj4=
=KBNM
-----END PGP SIGNATURE-----

--g5kiS3gPeb4Mpcq0--

