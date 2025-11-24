Return-Path: <linux-man+bounces-4317-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0410CC81BD4
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 84BE94E6F49
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 16:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75B0C314B91;
	Mon, 24 Nov 2025 16:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6gUE+Uh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C8313279
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 16:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764003379; cv=none; b=NOC6EePC0BovnoHNc1SW5WfMRg/X1uxEeQ4UzMw8E7O31Pbf2ML6Gf+KHNsRm5xGtEeHP8EI2qurkXF1e8poREvae1g8abxDQW+DzAnRkIXw/Ps5stay90OYVJKtWm3uYhsZIhlZznX5Dit7xDxOFoYiLum8DJmlpzF4vI8IbYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764003379; c=relaxed/simple;
	bh=HbQNhUHThB5TieS5lvX0JNVgPg6NacAlwXC3wJPtkco=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tuDA16k4N/XC0FvWarOXE2IsrpwwP0Ce4X8whMuCockY/ppFlqZKH0LOyR59nMzIwEtOKquXiqqPC/aX+STwjPR1M+cQ8JsCQM9jEdEC171JBaPJhLPNdtU07ynwesMfU7tafFQVsp1mGn4TFuxv2/9pgzYCIlsB3s8AS+0ucm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6gUE+Uh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A09C5C4CEF1;
	Mon, 24 Nov 2025 16:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764003378;
	bh=HbQNhUHThB5TieS5lvX0JNVgPg6NacAlwXC3wJPtkco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i6gUE+UhbR8HgcKjsFH9V7SIOSkqJSM5J0l/TF2E1eLzGPXmPZTzyzqi3GwjJj6sm
	 MORkqhZp+slM5rtxlnij5wZZhBPr3Mpwb2epP4D9DyVtFR0EBKLf3l2aBRny2G0txc
	 vtvSKkvYeNSXD3J0UxYcg65wxJaZ4Ccj3JzXpFptSfLS3L6Rpe5CFuYrW7AIAyFgJ2
	 3wpfbgB8rjf2qYEVjwobbfBd8KZjK4bU0vTrbkO921POU1prBWPFm2+G3sXH9Nd5CU
	 86x0dIfdGgDbYCBvPFQKklJuCkxVAcBUY5bW2DGNcxGEbt34iy5LaEl3KRRtCCiKSI
	 kdnEWQRHwp1GA==
Date: Mon, 24 Nov 2025 17:56:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Baoquan He <bhe@redhat.com>
Cc: linux-man@vger.kernel.org, chrisl@kernel.org, baohua@kernel.org
Subject: Re: [PATCH v2] iman/man2/swapon.2: update priority section
Message-ID: <wepvktnkiofwnp2xyifkr3mcs4gjdqafvvydyelv5wurmedrnv@zqn7e5g6ksmj>
References: <20251017123110.321638-1-bhe@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l55mm73jgverrioi"
Content-Disposition: inline
In-Reply-To: <20251017123110.321638-1-bhe@redhat.com>


--l55mm73jgverrioi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Baoquan He <bhe@redhat.com>
Cc: linux-man@vger.kernel.org, chrisl@kernel.org, baohua@kernel.org
Subject: Re: [PATCH v2] iman/man2/swapon.2: update priority section
Message-ID: <wepvktnkiofwnp2xyifkr3mcs4gjdqafvvydyelv5wurmedrnv@zqn7e5g6ksmj>
References: <20251017123110.321638-1-bhe@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20251017123110.321638-1-bhe@redhat.com>

Hi Baoquan,

On Fri, Oct 17, 2025 at 08:31:10PM +0800, Baoquan He wrote:
> This update the description about default priority value which is
> changed in kernel.
>=20
> Link: https://lore.kernel.org/all/20251011081624.224202-1-bhe@redhat.com/
> Signed-off-by: Baoquan He <bhe@redhat.com>
> Cc: chrisl@kernel.org
> Cc: baohua@kernel.org
> Cc: alx@kernel.org
> ---
>  man/man2/swapon.2 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
> index df5e8d8c7ec6..20e213827733 100644
> --- a/man/man2/swapon.2
> +++ b/man/man2/swapon.2
> @@ -60,9 +60,8 @@ These functions may be used only by a privileged proces=
s (one having the
>  capability).
>  .SS Priority
>  Each swap area has a priority, either high or low.
> -The default priority is low.
> -Within the low-priority areas,
> -newer areas are even lower priority than older areas.
> +The default priority is the lowest,
> +and all default areas share the same priority value, -1.

Please document the old behavior in the HISTORY section.


Have a lovely day!
Alex

>  .P
>  All priorities set with
>  .I swapflags
> --=20
> 2.41.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--l55mm73jgverrioi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkkji4ACgkQ64mZXMKQ
wqmsiA//WIKE1wDuRz95U8jaSgMEGx0ZeUcDsHBCtDNT5f3vVIu88iJr8HHTwTvk
/dfjQgKaJfb2CIJTWLGJvRXkVx9+R4fLaYZNKU9Q444An1RMaepk0AGrRmQArvZT
zDafHezq5Rd1p1KtdXMj6rgCG5wgvAW5jt5mlEM3z8t1d82AiQxFX9VRhAx/K1eZ
/2wL+q3pE7bc3Jdyxfa0J+964lH9DSMysHhKmO6DAHi3pu7tCT3wJemxO9wekyKC
wrrTv6HHn4nZ2bWxcPknFU3su0H8abYS+EpSjyM8p8OZa+k20VlUxgcDLSAoGkdw
Czbhu9W4o24nDIAVn217uq5cS20fOJNkylxZDCfoMz0IFtnZ6yc2gcKbgbmbcfvw
SsYNG2rSWLd0vlVruUhuG4cM4WMSFzg4kQMmwreHy83TGbiII4wPTINkWC8ClBIV
0Y03AVaNBXbAlZs9cAo0GfnDhFHCCaDNQHdxHqSXKZxe6MUO1EWOQwKpwpoIGk9f
h+15i0Kg1AAF8xJ0m/UbmSnZBkuZ1Ztz1fNNlhPBdtsOHdE7Tz/18SXvD52lTBCr
42Br0EColhYtIVxrPX+AHm1y/x5i/1k/a60eZp8H4LZG7oUedsxOsrfQfhwV73l1
qwooGZ3r6elsjQsuFDO11ZA18iF0h3eD5KqeKodxu3VoDhflnY0=
=k0f4
-----END PGP SIGNATURE-----

--l55mm73jgverrioi--

