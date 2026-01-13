Return-Path: <linux-man+bounces-4805-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95506D1BBAD
	for <lists+linux-man@lfdr.de>; Wed, 14 Jan 2026 00:35:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8B1D830060FA
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 23:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0EB355036;
	Tue, 13 Jan 2026 23:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGcdIxk5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220C5350A2F
	for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 23:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768347308; cv=none; b=pTxI7mvkR8+dC0GVLIqjpcCHOw4JQNJ53lyG8qrthVNdTcJdaa0/per/KxaaN79S5bfh75nFLb1UejNx49lzLUZbuHnuhWz8abXaLSMIpEiwnM90sqQLf7CD8+E1D3xT9cLUnNbn64Vr3fBGsgZyxE+5P3cdhWx/EGMMiAp/7ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768347308; c=relaxed/simple;
	bh=9GLcaIK8dakX1K37xCtPdxfJuANWaeXFFcEB5c5lmj8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NbADpTDOJ3fcVkiWta74nJL2YMe269SRjGkXSN+sEyKat7ZpiH1pK1lcCFpWbWCtg2VrzNhfn9vhN3NoXGd80s2iZlzNKqHScI3astYx5U/3Eu0IoMPg1HevxUH6o3qfQD1taTISViDoLukUEpFNbOtLDZP1fnOFMSmSF3rLh64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGcdIxk5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD52CC116C6;
	Tue, 13 Jan 2026 23:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768347307;
	bh=9GLcaIK8dakX1K37xCtPdxfJuANWaeXFFcEB5c5lmj8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mGcdIxk5XHN3BWixJ8EevdWexuil/5CT0dCgwkfFPt1BXPUwPECn5jw6BQ5qG30ru
	 YYyLeVD4qaF7gHfYZQDp+9jxIb1OMJbRsw8uFZhgH30cxufRsScG5SzNjh5styigwP
	 9uFs5jb0RbcrupyMDoQtmS9L5gKCyCIm5JV6JPBJyuTd+2TaElm7W9XOIOxo7qaHEu
	 j3qLQEQGoHWzEggE4Njt1pCXYCZ4WmyMCVOuqh56cVv/O3ALMWPh7s5BoX14+dFHgd
	 HMcMa4WWXHrxfiUVXZzFI5b5Lb+n17wwyenWKEabRbdKPK7iWZMSGyg5MiC5GcaQ5M
	 BG/RWFoW8JOCg==
Date: Wed, 14 Jan 2026 00:35:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH man v2] man/man7/landlock.7: Re-group description of
 IOCTL access right
Message-ID: <aWbWiK9ReypIhrj3@devuan>
References: <20260113192052.4703-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="czxv3juq5b4lqivl"
Content-Disposition: inline
In-Reply-To: <20260113192052.4703-2-gnoack3000@gmail.com>


--czxv3juq5b4lqivl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH man v2] man/man7/landlock.7: Re-group description of
 IOCTL access right
Message-ID: <aWbWiK9ReypIhrj3@devuan>
References: <20260113192052.4703-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260113192052.4703-2-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On Tue, Jan 13, 2026 at 08:20:53PM +0100, G=C3=BCnther Noack wrote:
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
>=20
> The same change was also done in kernel documentation, linked below.
>=20
> Fixes: 893db5f60c73 (2024-08-21; "landlock.7: Document Landlock ABI versi=
on 5 (IOCTL)")
> Link: https://lore.kernel.org/all/20260111175203.6545-2-gnoack3000@gmail.=
com/
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

Thanks!  Patch applied.


Have a lovely night!
Alex

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
>=20

--=20
<https://www.alejandro-colomar.es>

--czxv3juq5b4lqivl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlm1qgACgkQ64mZXMKQ
wqluXxAApjt6vVhe3LUP/pOpV72ojWTsqU6Rxa0w+3Mk9DLCNWed3Nrr2/xOIEd2
nstA+V1XecIcRXI2/scsybyNVNxDWJwiqjSsVPcfkDGqABbufdwinKUAPPIleD5G
bJyNHc6Ozvk6OHBl+5BtKySPOii91+2IGPvHyWnZMvvUMgNcZzNwO+A5pQ/a14uq
MBg2Zf16s7RB+vi6Kee9EbmcJwCyB2ddmZu5giSv5KOuDWQJC89+lN0v6dlWDNm3
xGhVq1z0xzn4gzVSQvVmHGTledTupZRpx+8KkfsoINkhlKNCi57LrAXc6BQ2dIka
+0R0nVqfRmkBOz5lEfnAEglpPPvVdkPEKR3tNgvMS2MUd3KKqpVv6FtW/n7KQOuY
+ES6BTX+JCmU0519M4j+vFarSmfXdJ5kJaPVqufzO3QEFrGWs6+uE2Ic9zwFpOpX
3GmJEdtEQGSWEzY3Aoc9U33VfcUyVytUJPwUPTvXyMSOlt+aFDVVaQwsmvoanahH
yt2GZYSq+JPaHjqmbRRBFPre/86vSDBnjnEqSzgbDdTJqOblXJIJ8y1K0T0s5xPU
uE9UGdyC6LEIcF1Xum/7bR1QRxbdF4efwGYoBfMeMAwZk28znUg/arjV56tQ0bU6
RCz8X+Utf6aGkBYGky0BBdAuDJ+3xfhP+RnHg8zR4AqQV26uk+Y=
=iqrL
-----END PGP SIGNATURE-----

--czxv3juq5b4lqivl--

