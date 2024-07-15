Return-Path: <linux-man+bounces-1471-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 044E4931865
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 18:21:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27F0E1C20A2F
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 16:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19401C687;
	Mon, 15 Jul 2024 16:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX3meaBp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903541A29A
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 16:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721060456; cv=none; b=TsTM9HwDXAdMvNSmFZonHvxR7/2MSFAVb4DmuPfo/+fHjWmQjM2uMOrnOyNpY08NHp6fKYb5MVZ+hobGkH/KKPti7CWl6l5qr6hOqabbSbf3sUbN/3RS+nyUk1MIG3sQ+N2GSXAg553bOgVH60PZ+u7FAUCPSShKLWxrLN4Xg4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721060456; c=relaxed/simple;
	bh=cllGKt1HIsXS8ppd+qQCjOcI0jONAxiUDM3Z6e/qYI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ST47MCW2uTLL6nPOgt/oeDUsw/jgmwg17EEk/3jqOSQghYF0iGFL5n6rBgvcosHvOBoyYuGNizagMs7wz10pwxsVLrwVbOm5oSi2fJ3NPKZvfq9DYMZmO6ZZWp/K378pQxpPk2Y0ZwHDKtgTroHIYaPfEifi8WZlhqPv5i5r2I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX3meaBp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BDB1C32782;
	Mon, 15 Jul 2024 16:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721060456;
	bh=cllGKt1HIsXS8ppd+qQCjOcI0jONAxiUDM3Z6e/qYI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MX3meaBphRVd9pxguDl4muO4LjWoj4v25VqhmcPYU47dTKngeqtbdZetiMuWlXDAW
	 L4hZTeE2pg1T8ulwlSenwyL69MFWlDiKJmUBLIu4LCs4UU9pWWZRQAGjBUZ6SzogfT
	 xBCO+q0EwRigjoHZWCJz37VC7yjPzKlkMTPB8D1Xyv3brJ/OX+JTgvsFMWQpgvK+35
	 8OwYUYdDxiV4UNY5fMeapku9MXltybnTUHRhhpqRfl1BwU+I6SZs1p5b4d8IB8rVu2
	 J35G9hf9wcNLMhNkkPve1XqVJaj68otLD2hvkuiBeIjSgD+MJWKaTeV8IJgmIMbYze
	 r9SNeOG91ZLhw==
Date: Mon, 15 Jul 2024 18:20:53 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH 5/5] landlock.7: Document Landlock ABI version 5 (IOCTL)
Message-ID: <pbgazmvujum7sitkwgquqzy6fe5caks3vm75zelwcuzxerwdfh@5gagcpv3cv5f>
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-6-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t5q7byaty5mqx3kf"
Content-Disposition: inline
In-Reply-To: <20240715155554.2791018-6-gnoack@google.com>


--t5q7byaty5mqx3kf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH 5/5] landlock.7: Document Landlock ABI version 5 (IOCTL)
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-6-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20240715155554.2791018-6-gnoack@google.com>

Hi G=C3=BCnther,

On Mon, Jul 15, 2024 at 03:55:54PM GMT, G=C3=BCnther Noack wrote:
> Landlock ABI 5 restricts ioctl(2) on device files.
>=20
> Link: https://github.com/landlock-lsm/linux/issues/39
> Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---
>  man/man7/landlock.7 | 51 +++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 49 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index d452b93b2..044f57208 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -92,6 +92,8 @@ This access right is available since the third version =
of the Landlock ABI.
>  .P
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

Maybe s/IOCTL/ioctl(2)/ ?

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
> +        LANDLOCK_ACCESS_FS_TRUNCATE |;

s/;//

right?

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
> 2.45.2.993.g49e7a77208-goog
>=20
>=20

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--t5q7byaty5mqx3kf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaVTGQACgkQnowa+77/
2zLpyg/+NlksquhNc+z1h2Q6D8POj/NDPlujX3pKjigI458dIqf0jRt2n8TYNops
+j1JM2dtTMcdue3r4nBnts7BBOArWeU+aPtLlhMGKjuEYseBUr25LnHrkxXveRVb
ePKM9oRaDQfkKmaVU91edHAbkI6F3nIJ2Sefsx/ltSKTmXFBv71syT0dY+YbrMGb
EJEWzLIv7YXHxuLiG4mt/pGPw9M20QbuM12k/49pWixtkvTkaH1iqP3qPfK6+J4c
XVnfL1zCp5kQ0XWKKgRElevAGfKvn4V77iyNI9Fp5B8JQzSjZd6L7PuVBpsblqJm
TwIsPjg8R5C35Kml6Di6QqFI8CcSMHOCzBaWv37E8mJ18zle59bUlt5Lbo3s/IRL
mT1nVxZ203t536QmobV3OPIbINfnXFQ6Artjpcg/QhlNODiQudKO+X04pcsKDCYk
63RLUPnYmOLlSmZQQcZfRXTdNWGtfKCEl9btH95dxQ49qtMufxgx2uq7fgTY+X8c
AcpJa2aKmzLmBo4K3CLeAkmMO8R4hGTnElgOngOZDzAfELztRQsR578DeRjk7t9C
81R3NtXR1W58IpmLAmj+c1p6+Yu5sVvMw0vnx53rsdEyhNiBGOz8UAZ7LGyzykpc
kuaztVAyD4xWzf+oESNcVB7otiNvJ1HOEF/ncOf3OC7p16LKhgc=
=JR0c
-----END PGP SIGNATURE-----

--t5q7byaty5mqx3kf--

