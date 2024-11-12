Return-Path: <linux-man+bounces-1901-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 685769C656C
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 00:47:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BF0B282187
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 23:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F355221B427;
	Tue, 12 Nov 2024 23:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfTexfFp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B236E2FC23;
	Tue, 12 Nov 2024 23:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731455221; cv=none; b=cy2onJiMYyLWtNx2l018K72Q+VoTKIYznYILED/ZpeXIwr133qh/PeeKMYoTln13F4JplHsnmhDjQ4GGKEzVYw8qX7jPmP/j2HIEg5kCj/Q+pZxP745cWY/fEkfdxszlVfeaj07lnsEGkUaWLQsFGV516mSXn7DOwG1eeRa+cps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731455221; c=relaxed/simple;
	bh=p+pkVgK+GHj/lm+LRx0FaUf5eXSGISrXbitR3i4a8cg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ew75uj/56JsMnj445dRR06aE/oYy7wiA4/cMesaZEtvIUdVnflx7CgQXJ4zUvMCKxaV5P2sSXJcf7YDBU8qxz/v5a89qdbryBB4jiQRIDFpkUhb7hiMcrI2MiFLJU++coYYONJPlmDjowptlYPek9MHPhAVFxV5cAyUzd8dfoI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfTexfFp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CA2BC4CECD;
	Tue, 12 Nov 2024 23:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731455221;
	bh=p+pkVgK+GHj/lm+LRx0FaUf5eXSGISrXbitR3i4a8cg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bfTexfFpP1OUN0YkkD15tI/PbVUt5ZHC614phUNFvu6e2JPEZJos2kFxDfD3bsvH+
	 EIY2bxcQ2ln9NQjmCZ/8bfd0tXCT9638LrfF1lNbBveDSB4gxbtMVirbgipMJgY4u4
	 LhwXqIQk6v5tyNNKw6KjHBugQK96heqHn0Tq/Owl9Aqmzve5rU6jsKDGdlhx//hzcf
	 +0sWxswIrw5MSfAcdfVT2n5xKYd/Rl9bi7PbbrY/7Ksr0EUoUmJZ39W8RTbkMnVTjM
	 DWJ91VhJ1C7bb+pA6N3RFDzrg3PZcqYx5N6XVQbmsnYPkS73LtMThvdWmWIhJQyaSs
	 r6rhsbToQNC4Q==
Date: Wed, 13 Nov 2024 00:46:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, kuniyu@amazon.com, mtk.manpages@gmail.com, 
	branden@debian.org, netdev@vger.kernel.org
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <gmtdbcjvptsrkhos7hsw66vbcmroqlo3777qtlyki6vawgf5ot@tmavdu2oufde>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241111062205.207027-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a43pcku5xczo6dy3"
Content-Disposition: inline
In-Reply-To: <20241111062205.207027-1-alexhenrie24@gmail.com>


--a43pcku5xczo6dy3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, kuniyu@amazon.com, mtk.manpages@gmail.com, 
	branden@debian.org, netdev@vger.kernel.org
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241111062205.207027-1-alexhenrie24@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20241111062205.207027-1-alexhenrie24@gmail.com>

Hi Alex,

On Sun, Nov 10, 2024 at 11:20:06PM GMT, Alex Henrie wrote:
> struct ifa_cacheinfo contains the address's creation time, update time,
> preferred lifetime remaining, and valid lifetime remaining.
>=20
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/tree/include/uapi/linux/if_addr.h?h=3Dv6.11#n60>
> Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>

Patch applied.  Thanks!  And thank you for the review, Kuniyuki!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Deb801003747466333742aeb0e25abb8235ca4776>

I've applied some minor tweaks below, to avoid going over the 80-col
right margin in the formatted output (which BTW triggers a warning in
`make check`).  See below.

Cheers,
Alex

> ---
> Changes from v1:
> - Move link to Link line in commit message
> - Add the word "remaining" to clarify that the reported values will
>   decrease over time
> - Say UINT32_MAX instead of -1
> - Add a short paragraph to explain the constraints on the minimum and
>   maximum lifetimes
>=20
> Thanks to Kuniyuki and Alejandro for your feedback.
> ---
>  man/man7/rtnetlink.7 | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> index 86ed459bb..ed08834b0 100644
> --- a/man/man7/rtnetlink.7
> +++ b/man/man7/rtnetlink.7
> @@ -176,7 +176,24 @@ IFA_BROADCAST:raw protocol address:broadcast address
>  IFA_ANYCAST:raw protocol address:anycast address
>  IFA_CACHEINFO:struct ifa_cacheinfo:Address information
>  .TE
> -.\" FIXME Document struct ifa_cacheinfo
> +.IP
> +.EX
> +struct ifa_cacheinfo {
> +    __u32 ifa_prefered; /* Preferred lifetime remaining, in seconds */
> +    __u32 ifa_valid;    /* Valid lifetime remaining, in seconds */
> +    __u32 cstamp;       /* Creation timestamp, in hundredths of seconds =
*/
> +    __u32 tstamp;       /* Update timestamp, in hundredths of seconds */

+struct ifa_cacheinfo {
+    __u32 ifa_prefered; // Preferred lifetime remaining, in seconds
+    __u32 ifa_valid;    // Valid lifetime remaining, in seconds
+    __u32 cstamp;       // Creation timestamp, in centiseconds
+    __u32 tstamp;       // Update timestamp, in centiseconds

> +};
> +.EE
> +.IP
> +.I ifa_valid
> +cannot be zero, and
> +.I ifa_prefered
> +cannot be greater than
> +.IR ifa_valid .
> +A value of
> +.B UINT32_MAX
> +represents an infinite lifetime.
>  .TP
>  .B RTM_NEWROUTE
>  .TQ
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--a43pcku5xczo6dy3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcz6PEACgkQnowa+77/
2zLy9A/7BzU5nTIzdP12W2ZoiCiNxevyiR6aejlSfE9tixoOFo4wKuvTb2A+rlZ/
NAPa1plSKwD/luCZz7jJIgeWBTVVMxdTky30KTHp0gMfh8ssvNfcUtw64AJ/JK9c
WDJiaUmKDMDv72WhLJY5dLJy4txdSkEZ+fvluLy2jqmkpN1eQOfpOqFOPKsVzbr5
PW9TyfRLwrVFGmQ80qxJnzvP3lA529hPr9dsQ2+HJoPj9JK6NIc505IpN5/fvO1z
55oR+ZEwo40YA7kafM7O1Cwx5FE6FcOHshRsWn9j3852BpFciRZDENiJuJ/q5hdb
uZdLGslM/EeWHHCC1VAI7RW2HZfrSq1TdB5kaSPRJV8iJhDQUSe2vkcHk/mKajwS
e/NtJVswozOdZgFmWZlfqLyp3WFlZ0le2RTxJP1VsxLXsMetwQoXFJ7aAXWgjROV
aEUvpEuutByF74dAcDYOp4QyL/vFLddhDxFx9v8dJ60dpRnSpfxfaH5ekVOH3PXQ
tiEzY6zdMqXUoq2xNEV4Upe3bVuXnk3kNKSC7K9HG5aZnxgr/DyKYh5dbrSkEb6v
398nn/ixIf5piR/b7LPTmM4/FPI731WAso+w8rVE9ovdhXTL7+QB4pfbjkT3eiXR
fseKm/GtJskvHmYAHVOTU/ByJ8g2b7S9wJH7WU68CjNh9g5yl4Y=
=mXZl
-----END PGP SIGNATURE-----

--a43pcku5xczo6dy3--

