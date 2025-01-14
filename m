Return-Path: <linux-man+bounces-2221-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1885BA0FD54
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 01:20:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EF551685B5
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 00:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDDD1BDC3;
	Tue, 14 Jan 2025 00:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+sMP6n+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D62AF9C1
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 00:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736814024; cv=none; b=OMZiHkoiPcWzLgXWeKVjsYQLpG7X1OAfKSh2Oyz/zsEHJT7ydgDbifO/2GgmouAvE1XuxhSwt5wccM1hA9F7RoHtcEhQV9GwxrvO5Yx60PuoLU8UcUXf8X6njTbDULC4ABtYTKHrd1b80In9wk5bcySuZuCQKiFj/Dkj+HEKLVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736814024; c=relaxed/simple;
	bh=iooWLG09yZE0R999ferWbpvdN2AJ7O65VKEKW43o1kQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jlpiAgWK+UoC4HFWH+dHMu8ld2ex+ZdQs83a5twJu4KaY6CMrU06YBST+7p7SkJ7Ycmu59qvK/AzYK6zLKzlnzdQGyzooyEpv2L145xcrOMyZrEhGwrbRPEbT6EhXyv+3mWx/WpBvr5lZipSb9rtvn4AQnBYyd1RenMFAvsJeFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+sMP6n+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43084C4CED6;
	Tue, 14 Jan 2025 00:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736814023;
	bh=iooWLG09yZE0R999ferWbpvdN2AJ7O65VKEKW43o1kQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C+sMP6n+g64N5v0C/QJNcyrV5XExM+a2UfcNdDKjmdE8aE3EJ2tvRkoRjABK4AHpF
	 sRw9thPgPxPdz18VTGwhS0U/GESu4JJvWuDhFr1ZJxJ3gTT0tqUJ/3UoxF7QRBZum/
	 RMUYUgUMOzBI/pBPifZ5jwzEys/ayNn7RwFaiNbxthQuaP7DXtJFe7hq2a+kPLrtNf
	 1RE9Nn0+gNLV9Z+9j0/YmNx7QF4YlG+FtifXZa8SATz6ARB2bF1DS8VsWban2lXNg/
	 q+AQX7qP6S+bxXTaXPXX64sMOmibLbcgF9WcRagw0aqKm0ZyWVkBa7cFPi7mcrC3K9
	 jY9EGUcL8ABjA==
Date: Tue, 14 Jan 2025 01:20:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/path-format.7: Add file documenting format of
 pathnames
Message-ID: <rph24kz36vysoeix4qoxxxcwq3c3fskws2vmxkkgcb2lpits3f@ysm7ug66svzh>
References: <20250113213301.410280-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qsymnnpqkvdxcafc"
Content-Disposition: inline
In-Reply-To: <20250113213301.410280-1-jason@jasonyundt.email>


--qsymnnpqkvdxcafc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/path-format.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <20250113213301.410280-1-jason@jasonyundt.email>

Hi Jason,

On Mon, Jan 13, 2025 at 04:32:46PM -0500, Jason Yundt wrote:
> The goal of this new manual page is to help people create programs that
> do the right thing even in the face of unusual paths.  The information
> that I used to create this new manual page came from this Unix & Linux
> Stack Exchange answer [1] and from this Libc-help mailing list post [2].
>=20
> [1]: <https://unix.stackexchange.com/a/39179/316181>
> [2]: <https://sourceware.org/pipermail/libc-help/2024-August/006737.html>
>=20
> Signed-off-by: Jason Yundt <jason@jasonyundt.email>
> ---
>  man/man7/path-format.7 | 41 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 man/man7/path-format.7
>=20
> diff --git a/man/man7/path-format.7 b/man/man7/path-format.7
> new file mode 100644
> index 000000000..c3c01cbf5
> --- /dev/null
> +++ b/man/man7/path-format.7
> @@ -0,0 +1,41 @@
> +.\" Copyright (C) 2025 Jason Yundt (jason@jasonyundt.email)
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PATH-FORMAT 7 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +path-format \- how pathnames are encoded and interpreted

I would use path_format instead of path-format or PATH-FORMAT.

> +.SH DESCRIPTION
> +Some system calls allow you to pass a pathname as a parameter.
> +When writing code that deals with paths,
> +there are kernel space requirements that you must comply with
> +and userspace requirements that you should comply with.
> +.P
> +The kernel stores paths as null-terminated byte sequences.
> +As far as the kernel is concerned, there are only three rules for paths:
> +.IP \[bu]
> +The last byte in the sequence needs to be a null.
> +.IP \[bu]
> +Any other bytes in the sequence need to not be null bytes.

=2E.. need to be non-null bytes.

seems easier to read.

> +.IP \[bu]
> +A 0x2F byte is always interpreted as a directory separator (/).
> +.P
> +This means that programs can technically do weird things
> +like create paths using random character encodings
> +or create paths without using any character encoding at all.
> +Filesystems may impose additional restrictions on paths, though.
> +For example, if you want to store a file on an ext4 filesystem,
> +then its filename can=E2=80=99t be longer than 255 bytes.
> +.P
> +Userspace treats paths differently.
> +Userspace applications typically expect paths to use
> +a consistent character encoding.
> +For maximum interoperability, programs should use
> +.BR nl_langinfo (3)
> +to determine the current locale=E2=80=99s codeset.

I would say that for maximum interoperability one should self-limit to
the POSIX Portable Filename Character Set:
<https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.html#t=
ag_03_265>


Have a lovely night!
Alex

> +Paths should be encoded and decoded using the current locale=E2=80=99s c=
odeset
> +in order to help prevent mojibake.
> +.SH SEE ALSO
> +.BR open (2),
> +.BR nl_langinfo (3),
> +.BR path_resolution (7)
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--qsymnnpqkvdxcafc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeFrcEACgkQnowa+77/
2zLMAQ/9F1xlwuS6kemkxFMFwuXLs2607juSlr5qsxZ5CU17FR6CLmC3qAHAd3V3
JJyNSmX1FsncTh9/ooDVMvKvYWF5ImmuP+5d8rdLR1KtPg2Sd9rFICcw3REFkVjN
49lvlCpf6DyREbzJiZ3qJX6jWJaf4tvAB3RC6291WdZs/MMUukGiyvzSnKtrBR1U
+kZDIZE232yf3p04K4g+FpSvEU1Ft7CT7vPY5GG8P+rYUfFCm0rPVqIyimpyBP/L
Jp75GlbKq7iIAOhKNwLROzL3CpZj+3QRpHjRbpq0J35AGImoP46VCXMYzsT/wgwJ
sHSL9MnOT31bmLp6u2qAqbtRDwPyh0AsMlNYp51XO6Ywx5KHN+u3fFhtJwsabj4p
uEZrOezYkB9xl5HsMsOTkWVrWTOWUSAUpQnhTpTYIgtt0p8sNzsG6REYwbou64m4
0KyVWChiFGdiGYO1gITonqwXm2w13TZUz7aPZdLyzZSowculJvLliZvGhOa3TMye
1hi7zhqsooxBcNHsw6YSiiaKdc7g0aBCSvaL6ZuHhPbD1ohDhzn1JqFOtp2P6Fgv
QJsE7GUdbSTKURaFJPW0UFlrfhg/u7ZyHvyleVmGxthuZQg7VwLUV6Ih+evjW0eC
U0Bq0A244EoDcS+SHuyNxIWuYg0LyLPw9Zbu6OwHFbI9YTHBAJw=
=cSXQ
-----END PGP SIGNATURE-----

--qsymnnpqkvdxcafc--

