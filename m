Return-Path: <linux-man+bounces-3121-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE96AD4E34
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 10:23:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09EED173B0D
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 08:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B63239090;
	Wed, 11 Jun 2025 08:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkzYsz6T"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F417238D53
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 08:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749630222; cv=none; b=VMCMeMXrLjc4LDuoxvJRnhdQXa2EQbUI9nc+pZlMAX4+bCKFNqqxh+XfUQQJAF+Zg4Oh3ujhm8ZFq7ksuLguaGu6hNOQlLUmI7L5Ec1/WTW8Uz4kdZq0aMDLwSPZAJMvgG9bWkay0Jk/3HvLgb1xhsp3tNdcf/KYMs6gmMmaHB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749630222; c=relaxed/simple;
	bh=6B9RFQzFAmVaXE9QoL2PXOLDT85DHk1z0Zta4rqomVo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nEBGk69wH2yPqke2Gpmf9Aq7V2AneJxIjCxs8h2o4++wmGUryY86p6Lp+Ar/5vyBqGW7JQnA1KeOEyKo2yJhU3W5tmWwVUy66ydpVLJFBXgvT451TXGmRnjvgxR5Ojxx/dA4PAc000jq2yd2cXP8qEUw+h1JtJZ5XbbRZzoLRZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkzYsz6T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D4BFC4CEEE;
	Wed, 11 Jun 2025 08:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749630221;
	bh=6B9RFQzFAmVaXE9QoL2PXOLDT85DHk1z0Zta4rqomVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SkzYsz6Tg/nfv7uZjnxafbOw0s+dmvaFZYNf6laHTRfbDWteAhWwz4xmUFkElRoBn
	 tOsSpcbQJXRaHKG5QJ5JTJ0Z7/GdLodAdi5p0L5Px6RRtysEjn3Awsj5VxFg+nMn8Y
	 EUaWY/+RCi2HFqHCf5HHeiHHK10MaU8tiEQYoDZxYe//D8JMV+Ww+uW1Wfo4FLLyfZ
	 dz4dAjlWZbKveIfsRrWEEnf0ennFa5UE+aXlkEWwjxS7MDVJniQBJMkHRL4kpP6zGj
	 AQgfr6EKUCu+UgrethzqGNjyYNpY4ieQ2EtEvnVim/K1y/45bO6QRChR1/Pq6DxafY
	 ZY7cqTcCMuHLw==
Date: Wed, 11 Jun 2025 10:23:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Nicolas Pitre <npitre@baylibre.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ioctl_vt.2: document VT_GETCONSIZECSRPOS
Message-ID: <w74mrip2pfy7qt2chniiyqzlshsxr365ahjy3cmctzyeajlgrp@iuz3fahnfapx>
References: <4n723o1q-pr52-319q-nsr7-6442387s12s2@onlyvoer.pbz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="brmy7jxome63c2mj"
Content-Disposition: inline
In-Reply-To: <4n723o1q-pr52-319q-nsr7-6442387s12s2@onlyvoer.pbz>


--brmy7jxome63c2mj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Nicolas Pitre <npitre@baylibre.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ioctl_vt.2: document VT_GETCONSIZECSRPOS
References: <4n723o1q-pr52-319q-nsr7-6442387s12s2@onlyvoer.pbz>
MIME-Version: 1.0
In-Reply-To: <4n723o1q-pr52-319q-nsr7-6442387s12s2@onlyvoer.pbz>

Hi Nicolas,

On Sat, Jun 07, 2025 at 04:01:51PM -0400, Nicolas Pitre wrote:
> Corresponding code is in drivers/tty/vt/vt_ioctl.c.
> New in Linux v6.16.
>=20
> Signed-off-by: Nicolas Pitre <npitre@baylibre.com>

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D2aaab85581f16c50858b62fb0eca848d2fb08495>


Cheers,
Alex

> ---
>  man/man2/ioctl_vt.2                      | 18 ++++++++++++++++++
>  man/man2const/VT_GETCONSIZECSRPOS.2const |  1 +
>  2 files changed, 19 insertions(+)
>  create mode 100644 man/man2const/VT_GETCONSIZECSRPOS.2const
>=20
> diff --git a/man/man2/ioctl_vt.2 b/man/man2/ioctl_vt.2
> index afce12936..05b4637f1 100644
> --- a/man/man2/ioctl_vt.2
> +++ b/man/man2/ioctl_vt.2
> @@ -156,6 +156,24 @@ Note that this does not change the videomode.
>  See
>  .BR resizecons (8).
>  (Since Linux 1.3.3.)
> +.TP
> +.B VT_GETCONSIZECSRPOS
> +Get console size and cursor position.
> +.I argp
> +points to a
> +.IP
> +.in +4n
> +.EX
> +struct vt_consizecsrpos {
> +    __u16 con_rows;  /* number of console rows */
> +    __u16 con_cols;  /* number of console columns */
> +    __u16 csr_row;   /* current cursor's row */
> +    __u16 csr_col;   /* current cursor's column */
> +};
> +.EE
> +.in
> +.IP
> +(Since Linux 6.16.)
>  .SH RETURN VALUE
>  On success, 0 is returned (except where indicated).
>  On failure, \-1 is returned, and
> diff --git a/man/man2const/VT_GETCONSIZECSRPOS.2const b/man/man2const/VT_=
GETCONSIZECSRPOS.2const
> new file mode 100644
> index 000000000..5c2119543
> --- /dev/null
> +++ b/man/man2const/VT_GETCONSIZECSRPOS.2const
> @@ -0,0 +1 @@
> +.so man2/ioctl_vt.2
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--brmy7jxome63c2mj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJPQoACgkQ64mZXMKQ
wqnzsQ//e9q+o4BvaHREbINNbWTiOk9kVUlvc1HATtS3o2p3ENAtj4mXrAqsU1vC
31r83rpDyenkxcZ8Msm/oSidUrFi8Sccdz14tWZp0d7A53mT/uELCv3c5TphlDzQ
0SjPG/lzxDkKjXCcrOR7alyCTC46ZhWImI2MQLPwduqC5eYmM9bW352/D7o1KUJ5
EaoFIBrei8e6ddVzbtxxeEM5T1iEOXUjiparPEM0i3XptCFWq3ZE7wyoBTMhFnrR
E1sJr0moveN2olTyj/+JX+mCERei39iG5HdnTwr+gIKUNEwi6UtJzvH6d1WJYLV4
RUzdCASSTgFImeAGbRG/7umFMUwPSatqo/mXbYjxH+lLv7N5nIgnCJ/Q42G1OfM2
bAGrx4e9lZNJz02uQBU6wvokmaZYXQnQmBqJf/a9TXTl/kyo8BqlKfvHWpvRWTQd
BcD1qz64FY3/WsJF97SpO0fdAVI1kR0HE5+4tQw5aRRiIQWAzdZFqpqpdHuz/nmP
57TW6PEk/b822fs7m9XkKGjyIya8doIHyryGDvWhF8bfwx5owC1J/mqCMwTIgdWj
2eInAk7/sDkzZeFxNsUy6CYWlw3XVxlAooM4SCj9EdaFtXkT9O8DMbHwCWwWfmXq
ur0xj5GqIt5HQbbRQ/mWRdP139ml57I3dpnybr6N0PEMOmTihBw=
=bVST
-----END PGP SIGNATURE-----

--brmy7jxome63c2mj--

