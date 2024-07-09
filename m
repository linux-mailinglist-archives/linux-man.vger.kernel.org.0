Return-Path: <linux-man+bounces-1394-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD4492BA05
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 14:55:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFA3A1C21FAD
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 803B515AD83;
	Tue,  9 Jul 2024 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqavwtsM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B3215A874
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720529708; cv=none; b=Aw2gxEH4B4sthfBrOpXgmKDdrake5PbNMTcxYmYpiU3YxgWnb6gK8M+Mc97G3lGW78kNlXGNyY2pJ2tDMPW2I3m90e1v4iQooR8TTwLGQZPIIkDIHznKXHLq0Y5a6kQe4I0P8727zvH+vxOajWJJQRo1gu0VZAwrCDxYuQ+VKdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720529708; c=relaxed/simple;
	bh=h+iPeI662pYq6XrUgfjCeVjBQoB4+q358oOgcHMHm1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WIp0K0lWiAAOi2L2w5CLcUZzAjPmytpPiM2Sfia8EsDGshjyJXH5GD4dT35X3QKqikGGuytkt9nJgHtPrQ2s7BoQRHdNmat6CpcoNE59PU8M6uuPahaW2RV/itsy7TpmCwIOl5hvjBeZFiwPZUKBunvpz6OChjGdbtPAj25LR8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqavwtsM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41331C32786;
	Tue,  9 Jul 2024 12:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720529707;
	bh=h+iPeI662pYq6XrUgfjCeVjBQoB4+q358oOgcHMHm1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IqavwtsM+NFx7KTXIpjQCI/gLvTkq2c+FOjdCIPn3DF2lLZE2H1j17xI+YT6ihv0C
	 gT8WLdKd90Fwks686rqRrJkNcmq/oxSMyPNvRHgYBJpvPubmIBtAs5ixO1IRMDmmxW
	 Ob6EhEcfUBdkCZ853hNtYs3p+ZVR1YVvRkYs/2aNYtV30ii94zcWnaodBaGdE5oPpN
	 wGk1GHqLBTpMoOI2e/XdlSiYj0mlhQwxWI23kVvRJCaT4HhcvAEnU4q9kqa64YYy+U
	 6ie8d7IGu5PPOrApvllUDhWiqm1QG1cdzzEhzeL2FlBd24LFDbxgSEzaYcUgXL7tvC
	 brlY7rcm46HOg==
Date: Tue, 9 Jul 2024 14:55:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ma Xinjian <maxj.fnst@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] clone.2: ffix
Message-ID: <xujkeecji62fg5jza74raaigtxlc47ui7r4zd3kes4wu25lp4j@lvqenovdtiu4>
References: <20240704064108.27257-1-maxj.fnst@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z7hptxkatfakefyd"
Content-Disposition: inline
In-Reply-To: <20240704064108.27257-1-maxj.fnst@fujitsu.com>


--z7hptxkatfakefyd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ma Xinjian <maxj.fnst@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] clone.2: ffix
References: <20240704064108.27257-1-maxj.fnst@fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <20240704064108.27257-1-maxj.fnst@fujitsu.com>

Hi Ma,

On Thu, Jul 04, 2024 at 02:41:08PM GMT, Ma Xinjian wrote:
> Signed-off-by: Ma Xinjian <maxj.fnst@fujitsu.com>
> ---
>  man/man2/clone.2 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/clone.2 b/man/man2/clone.2
> index 655e50b82..0287091b2 100644
> --- a/man/man2/clone.2
> +++ b/man/man2/clone.2
> @@ -37,6 +37,7 @@
>  .\" 2008-11-19, mtk, document CLONE_NEWUTS
>  .\" 2008-11-19, mtk, document CLONE_NEWIPC
>  .\" 2008-11-19, Jens Axboe, mtk, document CLONE_IO
> +.\" 2024-07-04, ffix by Ma Xinjian <maxj.fnst@fujitsu.com>

I've removed that comment, since we don't use them anymore.

>  .\"
>  .TH clone 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> @@ -1684,8 +1685,8 @@ On ia64, a different interface is used:
>  .BI "int __clone2(int (*" "fn" ")(void *),"
>  .BI "             void *" stack_base ", size_t " stack_size ,
>  .BI "             int " flags ", void *" "arg" ", ..."
> -.BI "          /* pid_t *" parent_tid ", struct user_desc *" tls ,
> -.BI "             pid_t *" child_tid " */ );"
> +.BI "          \fR/*\fP pid_t *" parent_tid ", struct user_desc *" tls ,
> +.BI "             pid_t *" child_tid " \fR*/\fP );"

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D20b3f06e3213a5a2158688e987fa4a509e0fb9a0>

Have a lovely day!
Alex

>  .EE
>  .in
>  .P
> --=20
> 2.18.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--z7hptxkatfakefyd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNMygACgkQnowa+77/
2zL5OA/9Hsujiomyt8NNJJfXfk2QnxVwTY+vUEsQwoj2mpuI9663zegMGjlt9t3F
8UGFB328R9CMYnVKvcuIkz+4DrG2ynkh5syVpqJSGJiTxvxEG9ekey2M+jyExqjU
dQW/z4UzB/NTjJnHLJI1iFbxF9DhcKTAq+s1HPOhWlQ/yjrxnVi2s0aS+mfJIvfg
s6E7obE/H3Xbf8vWOw22qtkWDNFX4OqigDKXF8fs35IZjfgBhL0/fApQ1DFnMTt5
mXnDMXHIdBvibnYppS7Cee4AVPa1LbXxFDAX39y8KMkW85mDdV0Mzuntc9RTjN3r
RdDeul1G0N9CRlRbdv7TlRTXv1jNBDpBndBwaRLkYe0gaWgtChDBvA3dMjFAObGe
DPNY28KL5iHYiODpNVHgsYKBJUXJrZximZIMIYMYWMDN7soi83s3Enm94uJUBr5I
HN0h8icteifOcTUjK3FIsPTQTSM9uBlUS2HrzqN6dDeeD2zEHFlhhob8YZ10Yq4m
vmixKBRuv20avQ39UvpVPcxKG9aV2+6Wii1EBRJ7hCoybWyecImU8pX45Hs7qj9b
211MBWEyZ6m7S+VWWbkMGw5iI0bbVopD4kEFDdRUf1s3nmabfTmOqcWZkvgrZ9mX
DVCGkehXRsd++Rt2nGAXRRDYAMDSib5me8XfjQLfmKYnJ3j12vg=
=L57E
-----END PGP SIGNATURE-----

--z7hptxkatfakefyd--

