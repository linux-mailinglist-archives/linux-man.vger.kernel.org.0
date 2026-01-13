Return-Path: <linux-man+bounces-4797-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA90D15E88
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 01:01:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A297A30365B7
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 00:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B1718A6A7;
	Tue, 13 Jan 2026 00:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pR5S0pge"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B69710785
	for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 00:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768262486; cv=none; b=sTILn1Ha1ojVQHEFUdXS8bc/X4CfJeTWCB/OnOl75FkUb/MFKE2oAKPkv/kdWP7So5i6rfA6w6eWYNRHadTx942YsiqleX4WtnWl3RakmI/+BJ952z+AvSYN79y+fAEHzDCtWZrxChhc33i6VwjCfDOPQjuCQ039uyFlLU1tl5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768262486; c=relaxed/simple;
	bh=4QHAWP8iWhanC8+J84eUeP1+O/rYzTw9O18yEShaZnU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DUCePIhjhcvTcMfh8VX5rYsiTIQckd3k60BwiAenDUn7LwzeHF6eTH3OmJDAZ73X0DXs2/+17n+vUnTEByLTfsA5P1JOvirpwtQPuJJLSKMwxyFw9sCYpzNONCjgdOos1uvzmX4Ta5FBfs2/4hfotLheJboAKMWODjiYA3if4J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pR5S0pge; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F96AC116D0;
	Tue, 13 Jan 2026 00:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768262485;
	bh=4QHAWP8iWhanC8+J84eUeP1+O/rYzTw9O18yEShaZnU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pR5S0pgeI4P98T7mj/sISbzSKxOZna/BK/mMNYiQjb7VdJWrSwq9X4Fyl6zmulSJT
	 hXj7ZSiY0wO8nri9IiMC2uRDQYWHM1NPOUDlbA93sbrjmGgEMNIQRhgZtWYx5/4B7p
	 9RZ4MztSBk1vyFmBNtI4x7gS5x6rUIB91g5qq0zUAsXagNvYQPZEwTW0wafLg7sjU1
	 OpM3QrPfNva+8DXetvrSZ1Q5D+d+GQECCg9pFxVoagNhE3jqT6T6JIYobSmplQLpNB
	 OlKx7Ray8aE77MEeu0sADq0ooIwmdnI4uzOwjWJD2tkKcGbV/Haz9C0vzynbRmEv89
	 8HPrzfjM8y0bg==
Date: Tue, 13 Jan 2026 01:01:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH man] landlock.7: Re-group description of IOCTL access
 right
Message-ID: <aWWJ5VhPwvKCVwRk@devuan>
References: <20260112194520.5854-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="olbjwwga2udyn5ny"
Content-Disposition: inline
In-Reply-To: <20260112194520.5854-2-gnoack3000@gmail.com>


--olbjwwga2udyn5ny
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH man] landlock.7: Re-group description of IOCTL access
 right
Message-ID: <aWWJ5VhPwvKCVwRk@devuan>
References: <20260112194520.5854-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260112194520.5854-2-gnoack3000@gmail.com>

Hi G=C3=BCnther,

> Cc: Alejandro Colomar <alx.manpages@gmail.com>,=20

Please remember to use <alx@kernel.org>.  :)

> Subject: Re: [PATCH man] landlock.7: Re-group description of IOCTL access=
 right

Please use full path of the manual page (this can be done with the tab
key --autocompletion--).

On Mon, Jan 12, 2026 at 08:45:17PM +0100, G=C3=BCnther Noack wrote:
> Move the description of the LANDLOCK_ACCESS_FS_IOCTL_DEV access right
> together with the file access rights.
>=20
> This group of access rights applies to files (in this case device
> files), and they can be added to file or directory inodes using
> landlock_add_rule(2).  The check for that works the same for all file
> access rights, including LANDLOCK_ACCESS_FS_IOCTL_DEV.
>=20
> Invoking ioctl(2) on directory FDs can not currently be restricted
> with Landlock.  Having it grouped separately in the documentation is a
> remnant from earlier revisions of the LANDLOCK_ACCESS_FS_IOCTL_DEV
> patch set.

If I understand correctly, the behavior has never changed, and the
documentation was wrong.  Did I understand correctly?
>=20
> The same change was also done in kernel documentation, linked below.
>=20

Could you please add a Fixes: tag?

The format we use can be generated with these git(1) aliases:

	[alias]
		ref =3D show --no-patch --abbrev=3D12 --date=3Dshort \
			--format=3Dtformat:'%C(auto)%h%C(reset) %C(dim white)(%cd%x3B \"%C(reset=
)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'
		ref2 =3D show --no-patch --abbrev=3D12 --date=3Dshort \
			--format=3Dtformat:'%C(auto)%h%C(reset) %C(dim white)(%ad, %cd%x3B \"%C(=
reset)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'

The format is:

	12-char-hash (commit-date; "commit-subject")

Important note: it's the commit date, not the author date.

Example:

	$ git ref HEAD
	92fc3fad3490 (2026-01-13; "man/man7/landlock.7: Re-group description of IO=
CTL access right")

I checked that this is not documented.  I'll add it to CONTRIBUTING.d/.

> Link: https://lore.kernel.org/all/20260111175203.6545-2-gnoack3000@gmail.=
com/
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

The diff LGTM.  Thanks!

> ---
>  man/man7/landlock.7 | 81 ++++++++++++++++++++++-----------------------
>  1 file changed, 39 insertions(+), 42 deletions(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 5d4a24f79..c31d513d1 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -97,6 +97,45 @@ with
>  .BR O_TRUNC .
>  .IP
>  This access right is available since the third version of the Landlock A=
BI.
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
>  .P
>  Whether an opened file can be truncated with
>  .BR ftruncate (2)
> @@ -198,48 +237,6 @@ If multiple requirements are not met, the
>  .B EACCES
>  error code takes precedence over
>  .BR EXDEV .
> -.P
> -The following access right
> -applies to both files and directories:
> -.TP
> -.B LANDLOCK_ACCESS_FS_IOCTL_DEV
> -Invoke
> -.BR ioctl (2)
> -commands on an opened character or block device.
> -.IP
> -This access right applies to all
> -.BR ioctl (2)
> -commands implemented by device drivers.
> -However, the following common IOCTL commands continue to be invokable
> -independent of the
> -.B LANDLOCK_ACCESS_FS_IOCTL_DEV
> -right:
> -.RS
> -.IP \[bu] 3
> -IOCTL commands targeting file descriptors
> -.RB ( FIOCLEX ,
> -.BR FIONCLEX ),
> -.IP \[bu]
> -IOCTL commands targeting file descriptions
> -.RB ( FIONBIO ,
> -.BR FIOASYNC ),
> -.IP \[bu]
> -IOCTL commands targeting file systems
> -.RB ( FIFREEZE ,
> -.BR FITHAW ,
> -.BR FIGETBSZ ,
> -.BR FS_IOC_GETFSUUID ,
> -.BR FS_IOC_GETFSSYSFSPATH )
> -.IP \[bu]
> -Some IOCTL commands which do not make sense when used with devices, but
> -whose implementations are safe and return the right error codes
> -.RB ( FS_IOC_FIEMAP ,
> -.BR FICLONE ,
> -.BR FICLONERANGE ,
> -.BR FIDEDUPERANGE )
> -.RE
> -.IP
> -This access right is available since the fifth version of the Landlock A=
BI.
>  .\"
>  .SS Network flags
>  These flags enable to restrict a sandboxed process
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--olbjwwga2udyn5ny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlli1IACgkQ64mZXMKQ
wqk7dA/+Iz87QlIAnUTxvZzwO+MygnBvOA65IN8Ysxp4idCJznJg1Mea8JqY53dG
qq3ME0E9FANAdp7cHmBCQG87vkCGfxg8SBGMbFfPmt7D3hzJB8yfYThQmhkQ3dq4
I2OOtLtcpdylGXPM4ia1KmOvKR2FqlePODRI8ijdec3dDCi78eDKM1nP61ZhJEVt
OS4uReETzpM0YI0hSS2QBk0lMIAdgBZeSfUngkPJ888WrEWX0lLem0K0CUYHHtQ9
utCyEmSs4lQV9HRJzS5hZIKV1k3fPrHMP0vekT+54NAy9O+tEkcGmsbWiabO99am
m+Io+rcGFGyP49yRwi9Onx2UiJJfSXYsUKtRaWZnHUDTWKrU+4GkLtT1LMqeEo1d
rLr8JmrIAldsJkM5mSjK3qmT6vZObtpNgBQkQjvaf7sBp28bW05N6+ngdPR9LvuL
T/K2EcSh581ibgolGTxB5J4aSgQYt9PTT8HOhuxQYxBSrF6FHUrKlxtuobMEXbr3
dxs2Bcw/J4RgRwR6QdNDlHNMF9Fb/k8Ht4HiIloguM9tAcBPlsg781LkdXoPwJJx
qc1YxCgLVyjEwwiDS70Z4SdRB1C7jTvvM2HlO+uSNqGvaSRrGlMZpO4LGhl4B6NO
0rJ1fnn89n1uor10TpZSYZLpDlAiAX3tPyvORxwwx8ahSVtRFOw=
=Lis+
-----END PGP SIGNATURE-----

--olbjwwga2udyn5ny--

