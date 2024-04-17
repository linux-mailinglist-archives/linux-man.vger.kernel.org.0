Return-Path: <linux-man+bounces-778-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F7A8A82B9
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 14:02:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23847287AC8
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 12:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0BF13CFBC;
	Wed, 17 Apr 2024 12:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2ybMiAz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD7613CAAE
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 12:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713355365; cv=none; b=uFDvVAjNsXc3ugtBiQF0tAZtxg6iKcKeLuOzt2s9pZomtM80uqD5r4C4AkbLv+xKZM3X5ydUmaSMgSs7fq342+OKKvUrSr8XrqlauHDZRDmxy9YeULynWPIXZYDU68xaOHu8E6ttnOZ6SdP+750gZc6Vp44yWfhju+MBmfHDMfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713355365; c=relaxed/simple;
	bh=t3Dx2A2fw5WFe18367zY8PzB/5zSwUEXg2p6Nbv92s4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FWsOQWkf+WVdpq9AO8+HGh5jbKkZ2hIeVeuz9TF4tA/6DKrImcE+Evbmch3bvMvpYyJnCU+k+jbp3ZJ2+3jNNwJP0tz9P0WEUccQ8jDTsEr7pUQervtIKAm4FDmSE0dGLI31I+guqyAiyO711dpk2jISuQbU0wdgb1LCXuKPDkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2ybMiAz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FDAAC072AA;
	Wed, 17 Apr 2024 12:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713355364;
	bh=t3Dx2A2fw5WFe18367zY8PzB/5zSwUEXg2p6Nbv92s4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T2ybMiAz8upziekK1eStSgGhNkT41Cf6X/VGtFQ59j5xe3B6eFfnJgSexlwx+SkHB
	 oqoJf4rxa/mrgz8uw81zqmms1mlnctqOUMnv7rSJrFxcV4mbQzGbX0jzI5hSZALThi
	 +X3Pnc3F3QsYN4HJ473wyEbhwVA04SO6IZmnmExiv1udeeNnkp4AExaEh1ZphUZ8dT
	 7d7vf0NPZOepq92bO30Qa7R+s9L6UTpYiyZNfXDYP2wrGXvCO0cjg+2yasRUNgElOF
	 ApgB5ENNwH+AZNWNFRimeaJrn58FSj4R61czAAdujk3THSKg7UOwey24dVM3AaKY12
	 ZsztXLv5P3dJA==
Date: Wed, 17 Apr 2024 14:02:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
Message-ID: <Zh-6YjDhSBUNKmqP@debian>
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oSHnL6Mktjg672EQ"
Content-Disposition: inline
In-Reply-To: <20240409141046.124979-1-rodrigo@sdfg.com.ar>


--oSHnL6Mktjg672EQ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Apr 2024 14:02:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems

Hi Rodrigo,

On Tue, Apr 09, 2024 at 03:10:46PM +0100, Rodrigo Campos wrote:
> Let's update the list with the last file-systems that added support.
>=20
> You can easily verify this by "git grep FS_ALLOW_IDMAP" on the given Linux
> version to see that the fs is listed and then checkout the previous Linux
> version to see that it is not listed, therefore it was added in that vers=
ion.

You could add the following to the commit message:

$ diff -w -U0 \
	<(git grep FS_ALLOW_IDMAP v6.8 | sed 's/^v6.8://') \
	<(git grep FS_ALLOW_IDMAP v6.9-rc4 | sed 's/^v6.9-rc4://') \
| tail -n+4;
+fs/hugetlbfs/inode.c:	.fs_flags               =3D FS_ALLOW_IDMAP,

$ diff -w -U0 \
	<(git grep FS_ALLOW_IDMAP v6.6 | sed 's/^v6.6://') \
	<(git grep FS_ALLOW_IDMAP v6.7 | sed 's/^v6.7://') \
| tail -n+4;
+fs/ceph/super.c:	.fs_flags	=3D FS_RENAME_DOES_D_MOVE | FS_ALLOW_IDMAP,
$ diff -w -U0 \
	<(git grep FS_ALLOW_IDMAP v6.2 | sed 's/^v6.2://') \
	<(git grep FS_ALLOW_IDMAP v6.3 | sed 's/^v6.3://') \
| tail -n+4;
+mm/shmem.c:	.fs_flags	=3D FS_USERNS_MOUNT | FS_ALLOW_IDMAP,
$ diff -w -U0 \
	<(git grep FS_ALLOW_IDMAP v6.1 | sed 's/^v6.1://') \
	<(git grep FS_ALLOW_IDMAP v6.2 | sed 's/^v6.2://') \
| tail -n+4;
+fs/squashfs/super.c:	.fs_flags =3D FS_REQUIRES_DEV | FS_ALLOW_IDMAP,


>=20
> Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
> ---
>=20
> I've took the liberty of adding hugetlbfs that was merged in Linux 6.9-rc=
1 but there is still no
> final release of 6.9. Please feel free to drop that if you prefer to wait=
 for the final release to
> include it.

Are you confident that it will be in 6.9?  If so, I don't mind having it
already in the manual.

>=20
>=20
> Best,
> Rodrigo
>=20
> ---
>  man2/mount_setattr.2 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
> index 3b70dcd97..f4bbc088b 100644
> --- a/man2/mount_setattr.2
> +++ b/man2/mount_setattr.2
> @@ -667,6 +667,18 @@ Currently, the following filesystems support ID-mapp=
ed mounts:
>  .IP \[bu]
>  .B overlayfs
>  (ID-mapped lower and upper layers supported since Linux 5.19)
> +.IP \[bu]
> +.B squashfs
> +(since Linux 6.2)
> +.IP \[bu]
> +.B tmpfs
> +(since Linux 6.3)
> +.IP \[bu]
> +.B cephfs
> +(since Linux 6.7)
> +.IP \[bu]
> +.B hugetlbfs
> +(since Linux 6.9)

I checked that all of them seem to be correct.  Thanks!

Have a lovely day!
Alex

>  .PD
>  .RE
>  .IP \[bu]
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--oSHnL6Mktjg672EQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYfulwACgkQnowa+77/
2zIZSRAAntr2BAJe62QiCC76SwIiJbECBkAHewnVTFqc9yDlAPdcq3pdWLE6/G57
KT+mZUNREVhsS7EIF5a9iO13NmkjfsWHLO4XgWs8xjfw87ZuZ1rqxspvLm5xryi4
GxyTWYZG2atj1b31QNPaSjP0uhrUT/N01jXqUictaIsmlTMjqP3EoW/wLdtoU11B
tEHsbKU347zOKBM05qbOldqgTLCGiJ4WKIPB+8SZjYxi04TFxgFiU/CXvCqKc9fO
U6attkRTB2xRRAJWhbO3SG07IQ5gStxWhUtPR4derdsx9x3eP7jIuQ6SJ3BFjuUx
SCo+FB7WYloGMBwrBAVjP/3N8Y+QptSjPKkN5rWWdpcQ3LKVAf824vZWP6LnLESt
JkXkXtqVgBZ7U0QwCwatjPTZVajZ9eGJP/sKcLO4ge+YGEIwLEuWhqSfdBstV+b5
xWtJ7sFypE6AehnqEos0AW88fda1IMWTgd1aNp3ZdXgvhlzFA+p8UcCRO8gXwuJE
W+skwrtAFS/V4efcpXgMb2GMhcSmiz0i5X0XFc0ER9Ptwg9OY/QmH2E+Ohi4cHno
UlytWmRz4OL+7UzXYNd2bpf/RWi2Pg8GYjN+Zg0Eol3E/2T+uFC0cWfVZfQtCeac
2hPPw5hS7N5AHU1Pm8J1gIsPnYMnKhrXYrkUIWwn8bCQaxi66lM=
=fk2g
-----END PGP SIGNATURE-----

--oSHnL6Mktjg672EQ--

