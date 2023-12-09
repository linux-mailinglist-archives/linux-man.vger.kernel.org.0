Return-Path: <linux-man+bounces-241-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 210D780B68E
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 22:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF7AE280F8E
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 21:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB031CF89;
	Sat,  9 Dec 2023 21:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqoeXYmT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68EDE1A284
	for <linux-man@vger.kernel.org>; Sat,  9 Dec 2023 21:36:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9742C433C7;
	Sat,  9 Dec 2023 21:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702157783;
	bh=wujUaN9ch6pyZJtla1D7/ExhgJLWXIgFA/1GNxS2LAA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cqoeXYmTLH7t5b84XvQKYiRatVi78KWwuQAaD3qYcA2A8y8MaJKLAAcPr015QqQ31
	 60Dca9rgM3cyVASdGM1JqqbtsfBZ81nMEdrpJIThby92J5cLR/PKH8r+krV0j0YYga
	 UX0unBtDWtBFEo4ic5/KA6It6u7z39oFQdQTl5uum2jNqgucaW8hCS37THdVdg2+Oa
	 7FlG8oQAt9CK6qUXHfc8L5ABbQcClSpJ304ddh5dbzaAdNugS28ZvRbtBl30tUfQJC
	 y+Dch/VMHP5XW6vieHFbyv+rTKHzc0e1fYfI4BQ0bBZ9uNozUMOb+JH+H3UYXajZDo
	 TnWg/QfWYJ5Sw==
Date: Sat, 9 Dec 2023 22:36:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Renzo Davoli <renzo@cs.unibo.it>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag
Message-ID: <ZXTd02-0f0lSWGjP@debian>
References: <ZXBVJ5phq4tK1fWq@cs.unibo.it>
 <ZXRWyMQh2_uV_U_1@debian>
 <ZXSYIRVx-soPB7cc@cs.unibo.it>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="boRuQRzneI51At82"
Content-Disposition: inline
In-Reply-To: <ZXSYIRVx-soPB7cc@cs.unibo.it>


--boRuQRzneI51At82
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 9 Dec 2023 22:36:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Renzo Davoli <renzo@cs.unibo.it>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag

Dear Renzo,

On Sat, Dec 09, 2023 at 05:38:57PM +0100, Renzo Davoli wrote:
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
>=20
> All the Best and Happy Hacking.
> ciao
>=20
>         renzo

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

We don't use those anymore.  Simply add yourself to Copyright if
appropriate, but for knowing what was written by who, git(1) works
better.

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

Same here.

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

LGTM.

Have a lovely night,
Alex

>  .B AT_SYMLINK_NOFOLLOW
>  If
>  .I pathname


--=20
<https://www.alejandro-colomar.es/>

--boRuQRzneI51At82
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV03dMACgkQnowa+77/
2zJmuw/+Ldq+WJvs2wx8pBkuXgn74m2quEuBvEY18NXpMeIQR4vI5fIOABQZIQ69
YP+5oAabJbS6fen8wBzPKfDY/8bkR9pJLBusBKEFelrAMh2X1dd3s8SO/IumUmlG
IU+njnRigQR1GB9Lzej4fPgGOVjRhyyX0GA+0DRx7D67olUkBZGe5YPJngwEb9bY
dbtDFkKxGwRkmjoOO02getwXFjc1Gd1Qy2qlaY2o630FEKY7zCF7AJgqpdZ5ELGr
XJaYJbzu9a290oVa2RlfzIC2caCWReUoDTRE0aJtoDbp8LQcjQrGF5hocUKpCKUs
XThU7sKltk9rH/JBR+HXuTpSfItQaWgPcHzjUIKJfL/V6yOYCzJzGM7T/FN4B9gD
7CYQWoChAuZERvieZ+3q6IdqdnC3mTKjnOjqWOAHc8zF1eeOYvMVi1muGCtDQ19z
chORr0Ur/KtfuQA+1uNhQbhbLmwPnnkbLTZXteBiV54JV8/XUdJv3pzver3vpomQ
sYUOSfLBkw49Z7PVwDqOiTFmcTEu6m2KYuOF318DDOqXoQTiWV4LAtdDAKPjxVI1
H14aDdolXKMyt0dIiVwLWVJVq+d8dhCrY5Wp75kIAz5VQ0fQdIBTKcnkIPG3RcI8
cQyGeVWgzy/bI6yusD3A/dpkHjIsjscjvcjMSv7nOaYJXmI7SVg=
=7GJT
-----END PGP SIGNATURE-----

--boRuQRzneI51At82--

