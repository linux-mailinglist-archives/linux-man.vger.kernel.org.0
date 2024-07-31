Return-Path: <linux-man+bounces-1560-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B935E942CA2
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 12:59:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 742E728590B
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 10:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B735E1AD402;
	Wed, 31 Jul 2024 10:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H35WAqta"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783281A8C0C
	for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 10:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722423534; cv=none; b=UYcocgsB4bbdKJR31yjqZllvJXDuPNVcX8AslwbbklaUENE3DekzAH1yrC0hHeX0enb/dh9FFF4bh00exKUCAKvbZC97TeNaXyPrr/vTX56HEN8UQv2n5ZCojf0jMdVfmGOj5n6B2/jZ7fSznXf+gUL+Exfdbi3Pnj1Nj2avObk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722423534; c=relaxed/simple;
	bh=j4yQWUroTDjaFz3o4AI6h62Jm6V7/KoidSAkOu57API=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l4dQZciPwI5YZIQNa+p8sDtlCL1mcO9hNXt1NKlkVYCTrcIhcEd/IPbMjW3rdw23wYd/xrbKgh5CBgtDp6L5yjunw9RTZ51Y/yp/libiBJC3AZeP9rEVUffmP9VFonhkAW0gZsV/pvq3cQKkbN+bzGpekJHmLwoaTJQ+X46J+eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H35WAqta; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23005C4AF09;
	Wed, 31 Jul 2024 10:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722423534;
	bh=j4yQWUroTDjaFz3o4AI6h62Jm6V7/KoidSAkOu57API=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H35WAqtaUjl2aQY2umcABflFt7AfdGFl+rniU8iYPdqKRzlNWqXpqbqA+Mvs5g9dj
	 MisWhWG1FQmJK4WwiS0TlcCZnJRKbj57ehUJRF+BfZYBMOwbUiga6Ill3F75a0oz2Y
	 TRCBGXYj/Rrz7wktJVltI8mETCrh0bOMb6WayoFYNk5Akd9H6cgqWqQRSfJIxJkEDg
	 c7TNr9aIrht5ZsmJhQSwfuw6UGXv/GmlxNxXxDhI2hA9eYLtmDVtvk80VFPV/hm1V1
	 2h/HlMfaawRi8q0krLH7Mjn2BoSz8R85c7mqcl4fBhjUyMgESSYGiRR9qOHHZIri9P
	 2clycQzw2jxaQ==
Date: Wed, 31 Jul 2024 12:58:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
Message-ID: <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5iquipuf7vkov67a"
Content-Disposition: inline
In-Reply-To: <20240723101917.90918-3-gnoack@google.com>


--5iquipuf7vkov67a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20240723101917.90918-3-gnoack@google.com>

Hi G=C3=BCnther,

On Tue, Jul 23, 2024 at 10:19:17AM GMT, G=C3=BCnther Noack wrote:
> Landlock ABI 5 restricts ioctl(2) on device files.
>=20
> Closes: <https://github.com/landlock-lsm/linux/issues/39>
> Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---

I've applied both patches; thanks!  For the moment, they're here:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log=
/?h=3Dcontrib>

Did you not add a CC tag for Konstantin on purpose on this patch, or did
you forget?  Should I add it?

Cheers,
Alex

>  man/man7/landlock.7 | 53 ++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 50 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 52876a3de..c6b7272ea 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -89,9 +89,11 @@ with
>  .BR O_TRUNC .
>  .IP
>  This access right is available since the third version of the Landlock A=
BI.
> -.IP
> +.P
>  Whether an opened file can be truncated with
>  .BR ftruncate (2)
> +or used with
> +.BR ioctl (2)
>  is determined during
>  .BR open (2),
>  in the same way as read and write permissions are checked during
> @@ -188,6 +190,48 @@ If multiple requirements are not met, the
>  .B EACCES
>  error code takes precedence over
>  .BR EXDEV .
> +.P
> +The following access right
> +applies to both files and directories:
> +.TP
> +.B LANDLOCK_ACCESS_FS_IOCTL_DEV
> +Invoke
> +.BR ioctl (2)
> +commands on an opened character or block device.
> +.IP
> +This access right applies to all
> +.BR ioctl (2)
> +commands implemented by device drivers.
> +However, the following common IOCTL commands continue to be invokable
> +independent of the
> +.B LANDLOCK_ACCESS_FS_IOCTL_DEV
> +right:
> +.RS
> +.IP \[bu] 3
> +IOCTL commands targeting file descriptors
> +.RB ( FIOCLEX ,
> +.BR FIONCLEX ),
> +.IP \[bu]
> +IOCTL commands targeting file descriptions
> +.RB ( FIONBIO ,
> +.BR FIOASYNC ),
> +.IP \[bu]
> +IOCTL commands targeting file systems
> +.RB ( FIFREEZE ,
> +.BR FITHAW ,
> +.BR FIGETBSZ ,
> +.BR FS_IOC_GETFSUUID ,
> +.BR FS_IOC_GETFSSYSFSPATH )
> +.IP \[bu]
> +Some IOCTL commands which do not make sense when used with devices, but
> +whose implementations are safe and return the right error codes
> +.RB ( FS_IOC_FIEMAP ,
> +.BR FICLONE ,
> +.BR FICLONERANGE ,
> +.BR FIDEDUPERANGE )
> +.RE
> +.IP
> +This access right is available since the fifth version of the Landlock A=
BI.
>  .\"
>  .SS Network flags
>  These flags enable to restrict a sandboxed process
> @@ -355,6 +399,8 @@ _	_	_
>  _	_	_
>  4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
>  \^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
> +_	_	_
> +5	6.10	LANDLOCK_ACCESS_FS_IOCTL_DEV
>  .TE
>  .P
>  Users should use the Landlock ABI version rather than the kernel version
> @@ -405,7 +451,6 @@ accessible through these system call families:
>  .BR chown (2),
>  .BR setxattr (2),
>  .BR utime (2),
> -.BR ioctl (2),
>  .BR fcntl (2),
>  .BR access (2).
>  Future Landlock evolutions will enable to restrict them.
> @@ -440,7 +485,8 @@ attr.handled_access_fs =3D
>          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>          LANDLOCK_ACCESS_FS_MAKE_SYM |
>          LANDLOCK_ACCESS_FS_REFER |
> -        LANDLOCK_ACCESS_FS_TRUNCATE;
> +        LANDLOCK_ACCESS_FS_TRUNCATE |
> +        LANDLOCK_ACCESS_FS_IOCTL_DEV;
>  .EE
>  .in
>  .P
> @@ -459,6 +505,7 @@ __u64 landlock_fs_access_rights[] =3D {
>      (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
>      (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
>      (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
>  };
>  \&
>  int abi =3D landlock_create_ruleset(NULL, 0,
> --=20
> 2.45.2.1089.g2a221341d9-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--5iquipuf7vkov67a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaqGOoACgkQnowa+77/
2zLfgQ/+IKHm7ATcH0QxIRBJFGlu5tjDvmGufxnnskZQpNrx0DSzWSZ5/MNObxjS
jm/PTl8ATJwzpnoNaq0MCLpmhS3qw+ZmZrQgFa7jbCMDameFs7s6OcFUWawtkXbE
QmJLbql5L/4x0h5V3KM0HE2AUOuU2n/gcu9XIrhykUcgRgQPfaFyd/86/gEND+4B
R2JDfLCxM2Me1emxESWDeh+8//BzFb5NJW8nU4Worv4Xw1+G7bwuCK85+Aw4WlH+
JVH2s1J5JgOQOCdYDWwYcpGsiTXVE0rV5ZgdEMV9r/KkNy1TwzQ4KD8sMiV2ydWf
OTp53EqAiEFGX9L0BeSMaDsZfmfqd50v4h+oE/RT0yXLfrXPb91UPjP83w7mv39s
J9o7paclDAvHrpNPtsstBDDNSCLk251hi4HICRZfKF3X37pyIEU7+vJTMqUHbJjJ
/kMIfKr/lDKzW3Isl79UPNKy3gsjqVdcVu2Rvm+e2oK8MWnQZLkDcUplEC/QIvbv
WWRZUZRNP+b/5E7B+lmLt2BEaeep+3ltYXUp6wl7HDNQ1AtXvH+P6RmSV4aKpT19
h1E3Qc2sPuPT9uH8uYVd133Y0UaEg28a+f6CUMGaZEDUhy+vgczfWwU36EiXVWK0
pCZmYE7yxaDIM5fgjVd9eGYLRI6W3TGBQabLjez7EJKCmYT4dac=
=6k5Z
-----END PGP SIGNATURE-----

--5iquipuf7vkov67a--

