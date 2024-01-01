Return-Path: <linux-man+bounces-326-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F9C82139E
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 498001C20BF9
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 11:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D39061FA6;
	Mon,  1 Jan 2024 11:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g58oa0l8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989753C28
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 11:43:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A468C433C7;
	Mon,  1 Jan 2024 11:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704109437;
	bh=1npC4t90+gtYYrWU+I21A/57HtwJypfOCX3Jixt9xZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g58oa0l8nbcZAjeBCWHL64z4XqTzMkII2hq7EjKI8W8zna9PZWoFONq8QC4latWBH
	 mh2VyobQjB+LGm7fx2DC4pY2bykJDdm0Q727sw8OQbzjy4Rx+4RU5cyxwxn1E9r38V
	 Fo5CHzzSusXhtoxnVwcP0AkSGikIqrNIPSMepEm9RDfh3exyk9gyjqR2UukgJbqu6X
	 L07bb/TgNUfAgg6MCAsGi2WZIpw6tBtXU7wQlh8KpM6kxRN9LTG4p8/dYZJQLYjmUY
	 NYooSpXAvX6iK5GatbwKlUfzM4NJ23C1NaJwxyFmqJU9VwbuazFmK2ZHjwC/p+7pFU
	 3xti0Y3POJetQ==
Date: Mon, 1 Jan 2024 12:43:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Renzo Davoli <renzo@cs.unibo.it>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag
Message-ID: <ZZKled8QpdxwC90B@debian>
References: <ZXBVJ5phq4tK1fWq@cs.unibo.it>
 <ZXRWyMQh2_uV_U_1@debian>
 <ZXSXwZMWbojebpH1@cs.unibo.it>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q8fN33p5lA5QcvkW"
Content-Disposition: inline
In-Reply-To: <ZXSXwZMWbojebpH1@cs.unibo.it>


--Q8fN33p5lA5QcvkW
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 1 Jan 2024 12:43:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Renzo Davoli <renzo@cs.unibo.it>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag

[CCing again linux-man@]

Dear Renzo,

On Sat, Dec 09, 2023 at 05:37:21PM +0100, Renzo Davoli wrote:
> Dear Alex,
>=20
> On Sat, Dec 09, 2023 at 01:00:08PM +0100, Alejandro Colomar wrote:
> > On Wed, Dec 06, 2023 at 12:04:07PM +0100, Renzo Davoli wrote:
> > > utimensat and faccessat support the flag AT_EMPTY_PATH since Linux 5.=
8 but
> > > this option is still missing in the man pages.
> > Thanks for reporting that.  Would you mind preparing a patch updating
> > the page?  If you need any help, just ask for it.
>=20
> No problem. It is here attached. Let me know if it's okay.

Normally, you should send a patch with a commit message (as formatted by
git-format-patch(1)).  However, I've written something based on your
original mail, so you don't need to do it.  I also signed it with your
name.

Patch applied here:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D26cdb3ebb2f6bd5a0c947bcf46e35b7c07759632>

Thanks!

Have a lovely year,
Alex

>=20
> All the Best and Happy Hacking.
> ciao
>=20
> 	renzo

> diff --git a/man2/access.2 b/man2/access.2
> index 95de3815d..97398ba76 100644
> --- a/man2/access.2
> +++ b/man2/access.2
> @@ -19,6 +19,8 @@
>  .\" Modified 2002-04-23 by Roger Luethi <rl@hellgate.ch>
>  .\" Modified 2004-06-23 by Michael Kerrisk
>  .\" 2007-06-10, mtk, various parts rewritten, and added BUGS section.
> +.\" Modified 2023-12-09 by Renzo Davoli <renzo@cs.unibo.it>
> +.\"   add AT_EMPTY_PATH flag
>  .\"
>  .TH access 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> @@ -155,6 +157,27 @@ By default,
>  uses the real IDs (like
>  .BR access ()).
>  .TP
> +.BR AT_EMPTY_PATH " (since Linux 5.8)"
> +If
> +.I pathname
> +is an empty string, operate on the file referred to by
> +.I dirfd
> +(which may have been obtained using the
> +.BR open (2)
> +.B O_PATH
> +flag).
> +In this case,
> +.I dirfd
> +can refer to any type of file, not just a directory.
> +If
> +.I dirfd
> +is
> +.BR AT_FDCWD ,
> +the call operates on the current working directory.
> +This flag is Linux-specific; define
> +.B _GNU_SOURCE
> +to obtain its definition.
> +.TP
>  .B AT_SYMLINK_NOFOLLOW
>  If
>  .I pathname
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index 495e15cee..29980c464 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -4,6 +4,9 @@
>  .\"
>  .\" SPDX-License-Identifier: Linux-man-pages-copyleft
>  .\"
> +.\" Modified 2023-12-09 by Renzo Davoli <renzo@cs.unibo.it>
> +.\"     add AT_EMPTY_PATH flag
> +.\"
>  .TH utimensat 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
>  utimensat, futimens \- change file timestamps with nanosecond precision
> @@ -182,10 +185,31 @@ is ignored.
>  .P
>  The
>  .I flags
> -field is a bit mask that may be 0, or include the following constant,
> -defined in
> +argument is a bit mask created by ORing together zero or more of
> +the following values defined in
>  .IR <fcntl.h> :
>  .TP
> +.BR AT_EMPTY_PATH " (since Linux 5.8)"
> +If
> +.I pathname
> +is an empty string, operate on the file referred to by
> +.I dirfd
> +(which may have been obtained using the
> +.BR open (2)
> +.B O_PATH
> +flag).
> +In this case,
> +.I dirfd
> +can refer to any type of file, not just a directory.
> +If
> +.I dirfd
> +is
> +.BR AT_FDCWD ,
> +the call operates on the current working directory.
> +This flag is Linux-specific; define
> +.B _GNU_SOURCE
> +to obtain its definition.
> +.TP
>  .B AT_SYMLINK_NOFOLLOW
>  If
>  .I pathname


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Q8fN33p5lA5QcvkW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWSpXkACgkQnowa+77/
2zLRXRAAq7gPVRICZVHANgrBssM1vtkv2UdwHmsUHIf2D7v8E8JFg0HK5BKIWbg6
1TAfJ5mcPQCkTxSELy9tNZ92fv1ZSF4hI39Rt8kspgPCM6oqXFYU1ubyFwGJDy2j
3HcjKyW9w8Oh6CCQu94/8cUTfWe+K6eL6Hxthoq4DpRQ+KS8Vc81zqMFRwZu5+k9
5basivhhA8KvR9idxOvM32BQIU4hvxFpyUyQQ0OZFZmopmbTXlVXpAXgEf+NsZLv
4yIgQZHHIrk3Jmg6OgFDQgC8iu821ixExo4VyHKPFj5uC7w4fzhpROOw6P2sZGH3
k6t8e+ubxgJxgLSh3+8N6sMAX7WnHv+BmLOw4qcUBc5Ax7kIz+lgEbFEPxke2GLu
1BaT2oP4ShCBMqnHF/ND6J4Xa23T4lejF3ElVRZ7Pyj2aHQwgPQCYxBlGvo/zgor
o6+pRV0ysdSR5QIHVbycQHDodKxEXDiZUqC97ERxXkfQO1CeBJff9XrFCmHPaAQV
hS4Bg/pAcv5rkl3IwbAkshFfw92wajf1YWT3Qa+Sh6TY8yqoJoD82+uYMylcS897
Ky+xcyUUFTeFV3uZLWkY7GRT6z49SaV73Nytw8nFlJi4BB/emJQfHLDZ3RtOLfgl
7AXCD794rHEMEa7vWKCiS2kk18N5Fba+z11tsq5zeyWkHGd1QBE=
=Z2ve
-----END PGP SIGNATURE-----

--Q8fN33p5lA5QcvkW--

