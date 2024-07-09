Return-Path: <linux-man+bounces-1393-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEA792B9F8
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 14:51:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79F5C284766
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193E3158DB9;
	Tue,  9 Jul 2024 12:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVSqe6G8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1FA14884D
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 12:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720529507; cv=none; b=KbmY3OPnDD16tdHEMWdA/5jtW34tg8SzCaKvNGNvu4mRd1KlDC2d0UP7quMnTruOn6AmSvsp9+LkgPqfQTbX7PJtm8H1BQIswrKcSS+7BVOa/dz8Mz8mFJkAZEmn/RciKTB2nx21d0RwxVdvoWHj1ZcYr/xRQeU8tFFgFX/4ASE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720529507; c=relaxed/simple;
	bh=e1aKnDgHIV/bLuuQxfAEWSefyegAmK6zPnbtL2MGE08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FMPqgB2oYLfKFT++ExPFq6OI+tgezJhMNOizb8fZX8oZhM9VdHXZ9FEk7X9U/0TlUSoGrlVCWNOQvkOzhD6j+kYfB5gGksQqRLumPVqOxDsB2cqIbW9WKi4/mpqgoZeJbtagSgDi8aCEpUt8CmIOTEhSEUih073T9bAwWtUziD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVSqe6G8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8F36C3277B;
	Tue,  9 Jul 2024 12:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720529507;
	bh=e1aKnDgHIV/bLuuQxfAEWSefyegAmK6zPnbtL2MGE08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IVSqe6G8scUOL8FsDmwS9LttnTfKg8AJopF8pFjZGDNEMSin+kCGaLZezetkaZGP2
	 NJodB35ybbNUTkntTeNIzD6nf4qyqwXqHqFuDbJpyyFNzr0eNdilA5TeremSUyb2z/
	 UuITNASXU+x2SmBplu7fWGXD9GZzTH81xxeLTqYciG39MLa936A7LQ5BB7IPZdkndM
	 k3Ae8PC3n/dY5DLSdIqry5RbgURGQSaKp1ayiCuLF7zYicvsO4W1NzNcc09dNSnQ1U
	 RSchY59dF2be2KvG4AZoxnr2+MBRpo+eKGxcyZjI1pZmKVIkO2a6hyajuPfAYa/ksy
	 20r9FcqHjZIyw==
Date: Tue, 9 Jul 2024 14:51:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ma Xinjian <maxj.fnst@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] utime.2: ERRORS: add EFAULT
Message-ID: <5ggvdaby2axwri6bzuromoj2bcp2s5ff3ucue4ubwh6tbchxki@khg5ejqzphg6>
References: <20240703035109.6087-1-maxj.fnst@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cx5mrr4574zxwdm3"
Content-Disposition: inline
In-Reply-To: <20240703035109.6087-1-maxj.fnst@fujitsu.com>


--cx5mrr4574zxwdm3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ma Xinjian <maxj.fnst@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] utime.2: ERRORS: add EFAULT
References: <20240703035109.6087-1-maxj.fnst@fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <20240703035109.6087-1-maxj.fnst@fujitsu.com>

Hi Ma,

On Wed, Jul 03, 2024 at 11:51:09AM GMT, Ma Xinjian wrote:
> Signed-off-by: Ma Xinjian <maxj.fnst@fujitsu.com>
> ---
>  man/man2/utime.2 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man/man2/utime.2 b/man/man2/utime.2
> index f4858d3e3..253f1fd3a 100644
> --- a/man/man2/utime.2
> +++ b/man/man2/utime.2
> @@ -7,6 +7,7 @@
>  .\" Modified 1995-06-10 by Andries Brouwer <aeb@cwi.nl>
>  .\" Modified 2004-06-23 by Michael Kerrisk <mtk.manpages@gmail.com>
>  .\" Modified 2004-10-10 by Andries Brouwer <aeb@cwi.nl>
> +.\" Modified 2024-07-03 by Ma Xinjian <maxj.fnst@fujitsu.com>

We don't write those comments anymore.  We have git for that.
Only copyright lines are still used.

>  .\"
>  .TH utime 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> @@ -132,6 +133,10 @@ or the
>  .B CAP_FOWNER
>  capability).
>  .TP
> +.B EFAULT
> +.I filename
> +points outside the process's address space.

I'd say just "Bad address.", which is what `errno EFAULT` says.  The
user shouldn't care much more than that.

Have a lovely day!
Alex

> +.TP
>  .B ENOENT
>  .I filename
>  does not exist.
> --=20
> 2.18.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--cx5mrr4574zxwdm3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNMmAACgkQnowa+77/
2zKm3hAAgKozoTbSRAgwll0U+jnVDz5YienGau54vpkWyLHT3qymn9Q71jyo19OL
JA5MTQl1KxgXlXeGnsaReAG/B3JUtH/yRVqrTiGlpGPPsVESzzsF95rbCJGO8DwK
Dmuj4zq6iMurJZj0r/cprJS6vP905dydv3rFe5mQjSwOaSKLLHPko1V4qaOumnU5
TOb/Eqtjqf+rhsjmzCVxdTZBdr1Gu5dddO2t8HUIAvr97s0ixuIIWK1Fw9NbBTO+
rb0Vd8rjFZcuaqNQubX0dnggGTjGhHaeoNq6krZXEWK+mPVj5768OH5UvANrWFtf
3OS4NNvaTnyojUvNZxA2K6tIysq4labkkfSFByc4aMOl6ntdt/WgAjuT+FQuqWfD
D+soqNtlAl3ym51KuYUfVHEu3P75xpkw5zZDVugssHy7tsr4M1rBPPvumW0DsIAf
NmqhNyoEwa2cRbXO5NoeFdwAGYbQ+OJX5ljYl0Ouz7jC2lGdkc6OccU8q4EKGFAE
9+vHYYqzZWvumDU98aw0GC1td6tSeRDcSUaUfEEvG/YvRI+AJYkldZMfYpExw6uj
evXP3SVA2MVNlaPhOa89J7KGgNy4fXkvePSd/fbQ5irjZlqS+SG70v8sVOPDwx/P
VLRpHuCcM3a2urfMr4PYtFNuXpiLJpd9a4uo5YRNj4WfJ2V0ywk=
=tGP3
-----END PGP SIGNATURE-----

--cx5mrr4574zxwdm3--

