Return-Path: <linux-man+bounces-888-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 643AE8BE334
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2024 15:13:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96C111C235E6
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2024 13:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07FF215E204;
	Tue,  7 May 2024 13:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1s3TbbF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE18015E207
	for <linux-man@vger.kernel.org>; Tue,  7 May 2024 13:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715087535; cv=none; b=IIVZHYSzUxld50qAN24TkoUIpeTLqp8LbTDSfp+If8cpEzFXVuVxrVYic0YydR76DdrFlN8mxTPPGEyuoyrcOkmEPTPNGIin6DbOoctbpt0cxtJ6Z8NGmV4CT1BlT5q4SqShg8NHKzwsTsG94bjZask4rFZkGZunm7Tt6qTsK/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715087535; c=relaxed/simple;
	bh=MGWWGTIJEeOWhPHvVNj20cGMOCkFh3eh5hWOWIDJkP0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sn3MZxZinql9c4km1dU3mGZSeiKOz0rxDm6ZOxIdxVxZ5phrKnLeysVAAEiVSCqAxQc3ocJRBWXiz0YxDjQvccuAZSJJTMDc8YIRxOBkro88Q1yRFLXMimccLz+Mg+6zhziJP/kuZ55L1J5M6YDOgOpaSFxWfSASHOYkVoJgUGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1s3TbbF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C9C0C2BBFC;
	Tue,  7 May 2024 13:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087535;
	bh=MGWWGTIJEeOWhPHvVNj20cGMOCkFh3eh5hWOWIDJkP0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M1s3TbbFU8Ysi4rcDlZEMNL0zb0tqskeCG1DeOdDRdn30nIPKaNZrRLOtPYlb9f92
	 mY3h9Ovw/bRo0HgQWI+exIn5Cu2CXALX4NcV2+YjoZnC0RHLUUxWBGWnvuRmb6i9C+
	 Gyl6tXzEdXpdTKp/HJv5jb6vNu8+8YtjjKvYoi/Pi/NXfC2fhWg5luiLsaGF7m2Rcr
	 VZxN0eT2j6BE2GDze8Q/FLNVKS1f+tcJru10qLDyviCmTt656z99GuCa6uA6OTwsnu
	 dewIsMiMRgcckwxhh2u5DG/Aixd9Rex3lAGXyMQS/jrYQVyBB80TjC/zXoConvJhWZ
	 mmXYUjN94zK+g==
Date: Tue, 7 May 2024 15:12:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joachim Wuttke <j.wuttke@fz-juelich.de>
Cc: bug-binutils@gnu.org, linux-man@vger.kernel.org,
	Mike Frysinger <vapier@gentoo.org>,
	Joseph Myers <josmyers@redhat.com>
Subject: Re: [patch] elf.5 and ld.so.8: undeprecate DT_RPATH; explain
 DT_RPATH vs DT_RUNPATH
Message-ID: <Zjooq_8IKPdvfuk1@debian>
References: <643ad7be-1cf5-491d-bd0c-d87e2b260912@fz-juelich.de>
 <ZiXpBp-vigNCwpHx@debian>
 <48c28639-f09d-dab2-10bb-9a6813b28062@redhat.com>
 <ZialT7CDXzj28K4Q@debian>
 <9674d2f0-6455-4233-8da6-4181d8e57781@fz-juelich.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HfCjc3gr3QntvGYU"
Content-Disposition: inline
In-Reply-To: <9674d2f0-6455-4233-8da6-4181d8e57781@fz-juelich.de>


--HfCjc3gr3QntvGYU
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 7 May 2024 15:12:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joachim Wuttke <j.wuttke@fz-juelich.de>
Cc: bug-binutils@gnu.org, linux-man@vger.kernel.org,
	Mike Frysinger <vapier@gentoo.org>,
	Joseph Myers <josmyers@redhat.com>
Subject: Re: [patch] elf.5 and ld.so.8: undeprecate DT_RPATH; explain
 DT_RPATH vs DT_RUNPATH

Hi Joachim,

On Tue, Apr 23, 2024 at 09:53:03AM +0200, Joachim Wuttke wrote:
> In elf.5 and ld.so.8, remove deprecation of DT_RPATH
> In elf.5, amend the description of DT_RUNPATH and DT_RPATH.
>=20
> Rationale:
> There is no credible path towards removal of DT_RPATH.
> Lots of software depend on DT_RPATH as is.
> It is used e.g. for testing and in binary installers.
>=20
> Signed-off-by: Joachim Wuttke <j.wuttke@fz-juelich.de>

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D5fe3738ffceec44fac809fd1acfd65e74b84ff93>

Have a lovely day!
Alex

> ---
>  man5/elf.5   | 4 ++--
>  man8/ld.so.8 | 1 -
>  2 files changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/man5/elf.5 b/man5/elf.5
> index 9aff88afb..57136159c 100644
> --- a/man5/elf.5
> +++ b/man5/elf.5
> @@ -1787,7 +1787,7 @@ Address of the termination function
>  String table offset to name of shared object
>  .TP
>  .B DT_RPATH
> -String table offset to library search path (deprecated)
> +String table offset to search path for direct and indirect library depen=
dencies
>  .TP
>  .B DT_SYMBOLIC
>  Alert linker to search this shared object before the executable for symb=
ols
> @@ -1819,7 +1819,7 @@ Instruct dynamic linker to process all relocations =
before
>  transferring control to the executable
>  .TP
>  .B DT_RUNPATH
> -String table offset to library search path
> +String table offset to search path for direct library dependencies
>  .TP
>  .B DT_LOPROC
>  .TQ
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index fa75b7820..23cddb9df 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -61,7 +61,6 @@ then it is searched for in the following order:
>  Using the directories specified in the
>  DT_RPATH dynamic section attribute
>  of the binary if present and DT_RUNPATH attribute does not exist.
> -Use of DT_RPATH is deprecated.
>  .IP (2)
>  Using the environment variable
>  .BR LD_LIBRARY_PATH ,
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--HfCjc3gr3QntvGYU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmY6KKsACgkQnowa+77/
2zK+4w//QKBg0MTOsOQmIfBnAvH/R1mbZueGs1nJ0L/t2QwK67LDp/pyVvNV8yQE
p+YeQeRibI9rE8hSBfyGmiPBT52eYO9KUNG9jwrvFDZ8pQPV6sfIHH1kP1R0AD/B
6oajQVWaLyaWCzP84k5zq/W1P6Azllq8jA8n4lSN8ESt9hzDGrKrnLUCiCS7jjla
f4P9AZRR98SHSsb/c1dzWT2FZMxevhyYIjq1eNpv1bN+/NRl4Y1TensuuTpEb4dt
9gc5XyCSJx1XmroqTvCtupve0BhSfxbOeUtLaTuZ6hHyrDPXThJSBSWTdPvpEx1T
JDHXyqGt02RL/AC5c5CNw/94EMg2ZHbfOAZl1/KzS/mV1z0pAXfJVQ4DciC+EN9d
UIP1YzR0nHQOgJsQ+xDIrE8BN2N/fWUP63Umm6sMMQR9N5Lv4mTynI/hUEGEy+xR
9zfnb5/RZIRlpU9H4Ftaghc/5PqEtLBa1/+CVEtnFLlYAax2rzIw5PwtS86iCCXt
OiIktjryYLxwnPBQmwC02BlRn51i8k5YrU65Q6ZJgbgOSSdGx7tnYf0FfLMVDI+5
ASeQuNSeLsqBBmcyndD4/bq6SM38CSVwTIklIixU9Q/b2ogU/tY1UqDT++AMgdtu
RciBSh+4M6N01UlsGWS4T8lAxrTPp1KrclsKyIOmcng8Vw9JTqk=
=8p+5
-----END PGP SIGNATURE-----

--HfCjc3gr3QntvGYU--

