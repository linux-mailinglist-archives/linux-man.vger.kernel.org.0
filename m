Return-Path: <linux-man+bounces-720-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F05B8983AE
	for <lists+linux-man@lfdr.de>; Thu,  4 Apr 2024 11:01:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8856C1C22E8B
	for <lists+linux-man@lfdr.de>; Thu,  4 Apr 2024 09:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600DD1B7F4;
	Thu,  4 Apr 2024 09:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBPKxhgr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC73745C3
	for <linux-man@vger.kernel.org>; Thu,  4 Apr 2024 09:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712221303; cv=none; b=bmvIDjoMxhAb1WPOmt1yJwEMcigkLQGdf/Krm2H2WW1/JPVOWIwlcMFv3O7Tjus41RDK0ybw+cu9v6KLyH0SuPeV4w4Ue33GhceRLCWlSJG/JgSk6sTuZ6BoNdIu5bQccSzkz8qcxwD7/bLrDubj0VV0kgRtZeVAaVWkNl6RsUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712221303; c=relaxed/simple;
	bh=IHCKzMB1Ipo3LBSFSt0PacRjxHD2rucoJSNvz5MWpho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KG0WvUHjjhdPGxBkpDqlYdkd02MWy88jkSVWFj9lRgWHWjSoZdXldjdp+dPQv7co7/HeJ/FIaw+oHyUXhkk0WRRPN/r39/XN9kThtSR/oHgIv5z4fEuy1aLofhZo5iR/KS3GdSrZ+ZB/p53nDTgCsS8di1RlfJ184TvFsexAY6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBPKxhgr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B15BCC43399;
	Thu,  4 Apr 2024 09:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712221302;
	bh=IHCKzMB1Ipo3LBSFSt0PacRjxHD2rucoJSNvz5MWpho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eBPKxhgr9DJCudsmp/hKWUZZ0Onf2Wu5Y16RDglmW5zgS47C7suS5zDRIfe55mSoK
	 fHhK409s5OMFYXFNRlhiHQ/fBbNlWXRqykN8aO1a4huH5NR4toVa3onX/talqZWIBX
	 Bx7nduaae+CfaW1zH1LF40hY8WAUK8vOTeOIkn16bwsJj0rjDYN0wGLaGqjT1skZd/
	 yoSy95ABvccMmSOWh2VXJUpKqoLZXHmXJEkJ2tKpIQ6WGK3P849gOh9NXI7JZQg9/X
	 ZuddloCMMGDHi3jeE8TWxIVfEoH5l/DEOVqL3Wkx2atMYSPWAPCb7YRe6vGkyULGiF
	 HnPqR2BfpoPIg==
Date: Thu, 4 Apr 2024 11:01:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Michael =?utf-8?B?V2Vpw58=?= <michael.weiss@aisec.fraunhofer.de>
Cc: linux-man@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag
Message-ID: <qzdqvyayhf4ubzbcvjlzxhscta4qhrbhdl3yqgu7273okdquvn@yao4dmurtir2>
References: <20240403114223.42696-1-michael.weiss@aisec.fraunhofer.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4wsrpksdujem3ddu"
Content-Disposition: inline
In-Reply-To: <20240403114223.42696-1-michael.weiss@aisec.fraunhofer.de>


--4wsrpksdujem3ddu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Michael =?utf-8?B?V2Vpw58=?= <michael.weiss@aisec.fraunhofer.de>
Cc: linux-man@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag
MIME-Version: 1.0
In-Reply-To: <20240403114223.42696-1-michael.weiss@aisec.fraunhofer.de>

Hi Michael,

On Wed, Apr 03, 2024 at 01:42:23PM GMT, Michael Wei=C3=9F wrote:
> finit_module() supports the MODULE_INIT_COMPRESS_FILE flag since
> Linux 5.17. See commit b1ae6dc41eaaa ("module: add in-kernel support
> for decompressing")
>=20
> During implementation of a secure module loader in GyroidOS, we
> wanted to filter unsafe module parameters. To verify that only the
> two documented flags which are disabling sanity checks are unsafe,
> we had a look in the current kernel implementation.
>=20
> We discovered that this new flag MODULE_INIT_COMPRESS_FILE was added.
> Having a deeper look at the code, we also discovered that a new error
> code EOPNOTSUPP is possible within newer kernels.
>=20
> The inital commit only supported gzip and xz compression algorithms.
> Support for zstd was added in Linux 6.2 by commit 169a58ad824d8
> ("module/decompress: Support zstd in-kernel decompression")
>=20
> Signed-off-by: Michael Wei=C3=9F <michael.weiss@aisec.fraunhofer.de>

I've applied the patch, with some minor cosmetic changes:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D852f6874f5c1f57e70fcdc6e68411435acea2369>

Have a lovely day!
Alex

> ---
>=20
> Changes in v2:
> - Update formatting (Alejandro)
> - Split EINVAL into two entries (Alejandro)
> - Fixed error in EINVAL, s/CONFIG_MODULE_DECOMPRESS/MODULE_INIT_COMPRESSE=
D_FILE/
> - Fixed incomplete description for EOPNOTSUPP (Alejandro)
> - Link to v1: https://lore.kernel.org/r/20240329124137.630521-1-michael.w=
eiss@aisec.fraunhofer.de/
>=20
> ---
>  man2/init_module.2 | 50 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
>=20
> diff --git a/man2/init_module.2 b/man2/init_module.2
> index 95917a079..133d82b53 100644
> --- a/man2/init_module.2
> +++ b/man2/init_module.2
> @@ -107,6 +107,10 @@ Ignore symbol version hashes.
>  .TP
>  .B MODULE_INIT_IGNORE_VERMAGIC
>  Ignore kernel version magic.
> +.TP
> +.BR MODULE_INIT_COMPRESSED_FILE " (since Linux 5.17)"
> +.\" commit b1ae6dc41eaaa98bb75671e0f3665bfda248c3e7
> +Use in-kernel module decompression.
>  .P
>  There are some safety checks built into a module to ensure that
>  it matches the kernel against which it is loaded.
> @@ -136,6 +140,39 @@ If the kernel is built to permit forced loading (i.e=
=2E, configured with
>  then loading continues, otherwise it fails with the error
>  .B ENOEXEC
>  as expected for malformed modules.
> +.P
> +If the kernel was build with
> +.BR CONFIG_MODULE_DECOMPRESS ,
> +the in-kernel decompression feature can be used.
> +Userspace code can check if the kernel supports decompression by reading=
 the
> +.I /sys/module/compression
> +attribute.
> +If the kernel supports decompression,
> +the compressed file can directly be passed to
> +.BR finit_module ()
> +using the
> +.B MODULE_INIT_COMPRESSED_FILE
> +flag.
> +The in-kernel module decompressor supports the following compression alg=
orithms:
> +.P
> +.RS 4
> +.PD 0
> +.IP \[bu] 3
> +.I gzip
> +(since Linux 5.17)
> +.IP \[bu]
> +.I xz
> +(since Linux 5.17)
> +.IP \[bu]
> +.I zstd
> +.\" commit 169a58ad824d896b9e291a27193342616e651b82
> +(since Linux 6.2)
> +.PD
> +.RE
> +.P
> +The kernel only implements a single decompression method.
> +This is selected during module generation accordingly to the compression=
 method
> +chosen in the kernel configuration.
>  .SH RETURN VALUE
>  On success, these system calls return 0.
>  On error, \-1 is returned and
> @@ -223,10 +260,23 @@ is too large.
>  .I flags
>  is invalid.
>  .TP
> +.B EINVAL
> +The decompressor sanity checks failed,
> +while loading a compressed module with flag
> +.B MODULE_INIT_COMPRESSED_FILE
> +set.
> +.TP
>  .B ENOEXEC
>  .I fd
>  does not refer to an open file.
>  .TP
> +.BR EOPNOTSUPP " (since Linux 5.17)"
> +The flag
> +.B MODULE_INIT_COMPRESSED_FILE
> +is set to load a compressed module,
> +and the kernel was built without
> +.BR CONFIG_MODULE_DECOMPRESS .
> +.TP
>  .BR ETXTBSY " (since Linux 4.7)"
>  .\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
>  The file referred to by
> --=20
> 2.39.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--4wsrpksdujem3ddu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYObHAACgkQnowa+77/
2zIPIQ//Rl7Mdg16SHlPtrcA06LqwWe+PVzr2eSWcfhQ8IpKgzon26QX1Hu6SKVt
x0K8YsWlLJF8BGSy5EOpgkZs3ArgZuUOrhwFZfCXOqlktv78aztnqT5aGGaySb54
QqSl63hm3CBM89ZAimXKaiqpVYzpcfp9vAUKE0Dh8oL0GEtmGUi64y9YlOBbVvaP
Vv58DHyg0TuuSg9rTj+HD/PFuBxmSo83BJo2N1IXV0w7scu4/HtcHc1ds8pG6vC5
atfOPE1NxoB2fVbLon1tFpKkQHzDw1WQpLqVQIfsE4th+Tjo5uJdDYC18ehWQFFv
6pkDLYm7IWPNqXADny1bZuR27gU0iElRnym4i3HJzbDPmTHHQ4OEb6CZRKdpClI5
nE94Fk5SD5v1Hr72F0Kc40qLZAqmmfkxgjF5DH89Wp1uaA9hvHuEEXy5CM+xdZBV
yq8bTBlZ4sBJEz1kGwj1zzOqYxk40/7o4irOpW0g4/IkdkctxK2qjiE0sft4jbVY
QtgqJOghEL0n3Qmrj99XdAV2EH44AKvfqNQQhtty6MbyiIYrXk//VILyrT9APGn/
fPeWvJV/2QRKqevdRQlGuYP3uZ8I8mOVvP1zRzo+//CkAR+iKmsfBJGFaxv3dpj0
qFqDsgvb26nB6dzGSMI7S6dVDPseMlHHjb9j0mKrkf4zUyodGx4=
=2xZP
-----END PGP SIGNATURE-----

--4wsrpksdujem3ddu--

