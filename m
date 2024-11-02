Return-Path: <linux-man+bounces-1840-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC779BA302
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 00:17:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57ADA1C21854
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 23:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFC3D18593A;
	Sat,  2 Nov 2024 23:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXKmzBE8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE03158DC4
	for <linux-man@vger.kernel.org>; Sat,  2 Nov 2024 23:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730589433; cv=none; b=cO/HWio8hxRYkAHhkLdflQrPJpuPRUR6MYuQz55/dQhiujGwzxwzhWoBwYii32Zb7l07a3mi2qCTyMN8/pHBZ61AV7mhO+t9FBZjnJtC8HZ9/mPrIxrfbsthyDrdCvmVeStZ0tYfFeykL07HhaDUwmxLQaZIIuVxO7s6pGa36c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730589433; c=relaxed/simple;
	bh=kgTwKeALZgC9O7RLUtNuMeQrCJ14Xmm3sdLfxaj75Xs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eJ3FoPibjftyCy7cbaldfHPuxeHtYegroBkNq1q7f/T3fAe4OHuhX1b6N9D3Tabhl1wx1ydgI3oqqCkWsrBhkE3gXscv/P/a12HD2zeNw+Czt93rcDRSEiijVvWBXGWyhSkX+vtoRxa/NaWxESf3Ne3eHgBwKdpXFfF1a5Ljrog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXKmzBE8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE45EC4CEC3;
	Sat,  2 Nov 2024 23:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730589433;
	bh=kgTwKeALZgC9O7RLUtNuMeQrCJ14Xmm3sdLfxaj75Xs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FXKmzBE8r87UDUyrDLgFMwwB94vaTYrO4AWOyzcSZ66w4DV8GyaMy+/OflntKuesS
	 ZIfFSs7qk61SbB09tL+yc+wlf5XiAV62MqeirndbZvcfT2Iv3fZL2bKzmFo0r0n5uz
	 PkhiOlzN15uFutCIJeZ6fBFE7156Vo2EPjvEHoWy0FeSnOnk8x12wjecuUhsb5acpt
	 I0wszjJVEj4qQq3v1Wt43fkQurb3zB4YoyCbg/n/t3MbrvuTQl5CV57qzxdhtFFdcs
	 o7nNSpg3meDovIWyZzBSDqRHHVavD03QNB5Ymgavx54JnlDOCvEgUdW0k9ea91mPP3
	 rNv/DlUXmNqEA==
Date: Sun, 3 Nov 2024 00:17:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org,
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>,
	Jiri Olsa <jolsa@kernel.org>
Cc: groff@gnu.org
Subject: Re: [PATCH] CONTRIBUTING.d/patches: Document new features alongside
 the features
Message-ID: <20241102231150.tjhrq6ugdjr2jri3@devuan>
References: <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <cover.1730588410.git.alx@kernel.org>
 <20241102231018.18979-1-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sr3x27kokorwmhqo"
Content-Disposition: inline
In-Reply-To: <20241102231018.18979-1-alx@kernel.org>


--sr3x27kokorwmhqo
Content-Type: multipart/signed; protected-headers=v1; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="joi74y32ju7ceqr2"
Content-Disposition: inline
Subject: Re: [PATCH] CONTRIBUTING.d/patches: Document new features alongside
 the features
MIME-Version: 1.0


--joi74y32ju7ceqr2
Content-Type: multipart/signed; protected-headers=v1; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ilvqxv3ug4ooctsq"
Content-Disposition: inline
Subject: Re: [PATCH] CONTRIBUTING.d/patches: Document new features alongside
 the features
MIME-Version: 1.0


--ilvqxv3ug4ooctsq
Content-Type: text/plain; charset=utf-8; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] CONTRIBUTING.d/patches: Document new features alongside
 the features
MIME-Version: 1.0

Oops, this was sent by accident.  :)

On Sun, Nov 03, 2024 at 12:10:18AM +0100, Alejandro Colomar wrote:
> Link: <https://lwn.net/Articles/989380/>
> Cc: Jiri Olsa <jolsa@kernel.org>
> Cc: G=C3=BCnther Noack <gnoack@google.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>=20
> [offlist]
>=20
> Hi G=C3=BCnther, Jiri,
>=20
> I've prepared a draft of this contributing process that we talked about.
> I won't officially post it until the other situation (sponsoring) is
> resolved, but we can discuss it in private if you want.
>=20
>=20
> Have a lovely night!
> Alex
>=20
>  CONTRIBUTING.d/patches | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>=20
> diff --git a/CONTRIBUTING.d/patches b/CONTRIBUTING.d/patches
> index fedb163d3..0562ded66 100644
> --- a/CONTRIBUTING.d/patches
> +++ b/CONTRIBUTING.d/patches
> @@ -131,6 +131,26 @@ Description
>         to the list.  See also <CONTRIBUTING.d/git> for instructions for
>         configuring git-send-email(1) to use neomutt(1) as a driver.
> =20
> +   New kernel/libc features
> +       If you write a new kernel or libc feature, you should document it
> +       in the same patch set that adds the feature, including any
> +       patches to the manual pages.  The entire patch set consisting of
> +       both the feature and its manual page should be sent to all
> +       recipients for a better review process.  That can be done with
> +       the following procedure:
> +
> +       1)  Generate the kernel or libc patch set, with a cover letter,
> +           and using --thread in git-format-patch(1) (as specified in
> +           our ./CONTRIBUTING.d/git).  This will generate a Message-ID
> +           header field in the cover letter.
> +
> +       2)  Generate the man-pages patch set using
> +           --in-reply-to=3D"<message-id>", where <message-id> is the val=
ue
> +           of the header field of the cover letter.
> +
> +       3)  Send first the kernel/libc patch set, and then the man-pages
> +           one, so that they have a consistent order.
> +
>  See also
>         CONTRIBUTING
>         CONTRIBUTING.d/*
> --=20
> 2.39.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--ilvqxv3ug4ooctsq--

--joi74y32ju7ceqr2--

--sr3x27kokorwmhqo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmsvMACgkQnowa+77/
2zI5FBAAiOcBgPePLqDI1vybwnr1qknAMbmxXft2dZK7E/Dioy4q2SpwLzXLB+2C
fGM4UtujD33u5p+2vV5ZwRthUQjaSn4/zxFtiCLgSyx2jqLeqgVgcLaLY+xnPqqj
q37G3flPs+nAGGMRRD49s0h6rrZv0lP0MUsyTv7XC2s/GLk0DVjkvtvSL8wlUdRt
udYmJMo3ee0R6hJMomiA6CqlVBkZB1t1Bzbh9e/eJIhGTrotvd5RgRanm6eaVt/A
tLtpWDDmJWQ27ZQK/TlTYXheNhdoLbll86VMWlZalMV1G60h/6FJDun89BkiTFW3
GSUDbO2V94rGr9Moiv7L4pt1meDN8NPZi8ARWIY96pfFmFtteMSOPecnBgWqZphe
44pLUm1bGlwB/4GrDAR81yXYJ3DUbfgzO6RXTJJGntaZuZg02rIslvrRZnj5qWK3
QotejvzsK32yj0b4gX/ARL+HrfXvWJPpp4KTJKkep+CBXOqYQ5g/19v+C90dACVk
rK1UlOAKTSx0f0YUe1agKp1hWHAKmSJ4odnMN1iiL+ys4b45PDDmBAIQJFHyd6Zn
rHj6iIS2Nx7eBUzXwcb/6+5thhBLc07/k8tjXIhV4rMu3gJhkAqCcWsOCtmE3XbE
6syYrn9Ghbt5UvnvGLHYGei9co7EwViXNDW41i9a0aNKRc11e7M=
=j5r4
-----END PGP SIGNATURE-----

--sr3x27kokorwmhqo--

