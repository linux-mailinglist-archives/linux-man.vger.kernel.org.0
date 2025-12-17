Return-Path: <linux-man+bounces-4446-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 60248CC9CCB
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 00:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BA943014126
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 23:26:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A76B5330336;
	Wed, 17 Dec 2025 23:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF5gmaYU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629D321CC7B
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 23:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766013990; cv=none; b=hcF5XF1r7S56Za2KYZ5Z5TMI/U2R7pOgV2ktnZ6n0w+kGx4Xk3YNSYTQ8nEsoNYVmxDObVEjb7ddTVnaigbRNcNSki/zbaodVtQ3a/SPJiiKvifVz/QmFoUxZnUwMFKE1oNg5ilFpvwVsTuqOQV5IOP9mhAzqSZE/E4kYJSoGK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766013990; c=relaxed/simple;
	bh=VfhslTTA9U8jeYMFgOBZN14AHBQg/ZRERlrmO55AnUM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=niEFWutxkNW80Oe6x2hbCKIcjDVbhDg84tXURuxPb/bdWbMieLHwo4TSZGxMjIiZEQRQIQRMTp32PuVODclMtgN6KPvoZcxsfgXTX5wRgXnbblZoX7gzdMdyNRvl8ZHTiVvO3j7zp1AOwq2ucEKy+diie87YftwL4lKNrmD+1EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF5gmaYU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D176C4CEF5;
	Wed, 17 Dec 2025 23:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766013989;
	bh=VfhslTTA9U8jeYMFgOBZN14AHBQg/ZRERlrmO55AnUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NF5gmaYU0jTLzBHGA8nimkuusWenDRJry6s2ugBawzmaWX9oT2Paz76M80gqDf1UI
	 9QfJW+1ow4XyYEgmNujwnwrLt8sCVcJIloCdTSCQ8V8GpzwzuOp5zzh58DCZUxESh6
	 oOsgq2++GIxqPlJeN9ppxdTt23xhdnZpDfgLf3OYNESF45hoNFIm+nmcJzcw6YHVJC
	 EH5hC6GWPk7FaCHcsx6jKdq36Tid+5YtnX7QekRo30HwVJnM+yJPTiIHXWyhdhG+Dr
	 WL1934y8XoLelyfOamv1muAPNzo9T07CiIpPu40VupPiqduxyUXkbP8bsF3EKaqOsG
	 y+V9AYigZ5kig==
Date: Thu, 18 Dec 2025 00:26:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt_long.3: Assist users
Message-ID: <qqtwb22ecgvbvikbkt4e6gyrpm3efkagacr6pyh25vwjtdflou@ehfcuxxrymda>
References: <20251214013754.hvrmeblfbr3cb4he@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mzmrxgpupkjz3urd"
Content-Disposition: inline
In-Reply-To: <20251214013754.hvrmeblfbr3cb4he@illithid>


--mzmrxgpupkjz3urd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt_long.3: Assist users
Message-ID: <qqtwb22ecgvbvikbkt4e6gyrpm3efkagacr6pyh25vwjtdflou@ehfcuxxrymda>
References: <20251214013754.hvrmeblfbr3cb4he@illithid>
MIME-Version: 1.0
In-Reply-To: <20251214013754.hvrmeblfbr3cb4he@illithid>

Hi Branden,

On Sat, Dec 13, 2025 at 07:37:54PM -0600, G. Branden Robinson wrote:
> Throw a bone to users of this function who need to report (in a
> diagnostic message, for instance) the identity of an invalid long option
> name.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc7d74dacc2c3615a26a80209226d186d34b4afcf>


Have a lovely night!
Alex

> ---
>  man/man3/getopt_long.3 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man/man3/getopt_long.3 b/man/man3/getopt_long.3
> index 73e8f3e6f..a464349fe 100644
> --- a/man/man3/getopt_long.3
> +++ b/man/man3/getopt_long.3
> @@ -102,6 +102,12 @@ .SH DESCRIPTION
>  is not NULL, it
>  points to a variable which is set to the index of the long option relati=
ve to
>  .IR longopts .
> +.P
> +Its analogue to
> +.BR getopt (3)'s
> +.I optopt
> +is
> +.RI \[lq] "argv[(optind \- 1)]" \[rq].
>  .SH RETURN VALUE
>  See
>  .BR getopt (3).
> --=20
> 2.30.2



--=20
<https://www.alejandro-colomar.es>

--mzmrxgpupkjz3urd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlDPCIACgkQ64mZXMKQ
wqlDWw/+IWqGhUNgWC2wgmjebtfHJwlQvv9DojR1AyqYWjNn7IHINn495QuBOjfG
FniDptjzSCBJ1+TaUuJtWbJCc1fhJOr3fw4kqDNx5BQztLTN/jlgcNa9LVlFZtyc
ICAZMXkyvvoItyj2KjC/YW7D/aC4V2XFt4lWUry6m5wp2BxBcmT6HvIObO8XE1/n
bGyd7/Rm+tdFKeOmZymehpgtRyACbjmz0zVZSjnAwHOVqfBAo1V4aNYjGgBdYywv
WdSn6CBRS4B8yfBplQQau+JI7VRWfbK0M9cjHu7c5KY8NCahZgF2vVwyuLE0OqvZ
kgUaI+Q1d0wdoN6ToyjCTZ/t3WpXPjCP57NDqarr3sKgb76vRw9uEVuKmh3YksDh
4U+Ha8rdftooWEHuQeI+fPyHw6dGAA1ZyZXT8GPgUMhyy6J/L+7orA4ZO70AfovY
Af8IM9mrt+Z+fragMswJPUW4FBo7O5D9+T1mIEthbicd0sgOzA1TLEqU0bxNsOeD
YdRf+bKEyRhNboo17H56JE0cd2nZ4AAix4zktySJTQ0/AQgCsnrPR/eZSmjom4h2
xbu9EbYye6L63QnWVuTiGvXWPmHUUVO6OMEWTNcOf0eUg4KOUSUXTMLjIM2UXhzp
oa8azIxGT6DklLnUp+WCwz/6kcDw/lafdZVpmdpYtTLBHpvdGw8=
=XsfH
-----END PGP SIGNATURE-----

--mzmrxgpupkjz3urd--

