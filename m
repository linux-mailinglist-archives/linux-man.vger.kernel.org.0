Return-Path: <linux-man+bounces-840-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC36C8B5560
	for <lists+linux-man@lfdr.de>; Mon, 29 Apr 2024 12:31:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87EEE282E6D
	for <lists+linux-man@lfdr.de>; Mon, 29 Apr 2024 10:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B133BA2E;
	Mon, 29 Apr 2024 10:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpAQa9Ww"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE26175BF
	for <linux-man@vger.kernel.org>; Mon, 29 Apr 2024 10:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714386707; cv=none; b=H3LkeR5NERfJKV4n3lQZVIitHooUsNEcXOlDIK5Lj+fURPy1FTDv8TOSKTEjkAEqQ9ud+Bn0898VSF36bimUkQze6QIzzGaDWeCDUGGRfU+Hw1r3eZogSwEVzempUokGWOw5nsJBokgf59LV0dpks/g0mDmSJnKzLFitXmAGVsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714386707; c=relaxed/simple;
	bh=rK5Kk0pMqN0sutiWjTzLNZlwPxX3BwF6n1Nj6i9huHk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=slRKNRTOQvRvjCZV9anBSct8PMKgm3IxgxuhjzhtgZYk6sxnnOCNHrloxnXR53v7UI0b7hGTkFLpkQGKMnS6cDeKUVjtqLYWzGAw2gUr7AzzpXyjVfoQ4SjGwnykH2N7yXgHJ9VvKLyvmq265NeM+Qgs6XeX9pLNDXknHg8mUzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpAQa9Ww; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 462C3C4AF19;
	Mon, 29 Apr 2024 10:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714386706;
	bh=rK5Kk0pMqN0sutiWjTzLNZlwPxX3BwF6n1Nj6i9huHk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QpAQa9Wwf6xIVXJbcDDTd6hk3frRvEyx08Rj23L3dlcdtZSZIaJa2/1ObAK+ZfeCv
	 qs16EbCfB0nWKXabY6yF04bA0L4dBdOSotP20+MuZnantMeMZj0NBlv9wVEU8fGGhU
	 jJmJGBQtX5WiPQv31D5ToZTSJntymhZNWVvjplcEBD/eodp1PVnlNiebPx5jnotCRK
	 5H1tSVpZQY15LlUqzzcoMu+gunli59qZQEv/NsWBnz7LN18PtMnpcVjBNs/5Cry6ru
	 Y+2KnFs3MeV6JQqtDdZmq/0HAcTLzlXyIhDLmS16N/9uVvHr5aBYk3K4gCTcYCtUZd
	 wUgR07Vmj+pkQ==
Date: Mon, 29 Apr 2024 12:31:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
Message-ID: <Zi93EAyeU4byltGB@debian>
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XU69o6+JclO2Kwdb"
Content-Disposition: inline
In-Reply-To: <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>


--XU69o6+JclO2Kwdb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Apr 2024 12:31:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems

Hi Rodrigo,

On Mon, Apr 29, 2024 at 11:19:36AM +0100, Rodrigo Campos wrote:
> On 4/17/24 1:02 PM, Alejandro Colomar wrote:
> > Hi Rodrigo,
> >=20
> > On Tue, Apr 09, 2024 at 03:10:46PM +0100, Rodrigo Campos wrote:
> > > Let's update the list with the last file-systems that added support.

I've amended this: s/last/latest/

> > > You can easily verify this by "git grep FS_ALLOW_IDMAP" on the given =
Linux
> > > version to see that the fs is listed and then checkout the previous L=
inux
> > > version to see that it is not listed, therefore it was added in that =
version.
> >=20
> > You could add the following to the commit message:
> >=20
> > $ diff -w -U0 \
> > 	<(git grep FS_ALLOW_IDMAP v6.8 | sed 's/^v6.8://') \
> > 	<(git grep FS_ALLOW_IDMAP v6.9-rc4 | sed 's/^v6.9-rc4://') \
> > | tail -n+4;
> > +fs/hugetlbfs/inode.c:	.fs_flags               =3D FS_ALLOW_IDMAP,
> >=20
> > $ diff -w -U0 \
> > 	<(git grep FS_ALLOW_IDMAP v6.6 | sed 's/^v6.6://') \
> > 	<(git grep FS_ALLOW_IDMAP v6.7 | sed 's/^v6.7://') \
> > | tail -n+4;
> > +fs/ceph/super.c:	.fs_flags	=3D FS_RENAME_DOES_D_MOVE | FS_ALLOW_IDMAP,
> > $ diff -w -U0 \
> > 	<(git grep FS_ALLOW_IDMAP v6.2 | sed 's/^v6.2://') \
> > 	<(git grep FS_ALLOW_IDMAP v6.3 | sed 's/^v6.3://') \
> > | tail -n+4;
> > +mm/shmem.c:	.fs_flags	=3D FS_USERNS_MOUNT | FS_ALLOW_IDMAP,
> > $ diff -w -U0 \
> > 	<(git grep FS_ALLOW_IDMAP v6.1 | sed 's/^v6.1://') \
> > 	<(git grep FS_ALLOW_IDMAP v6.2 | sed 's/^v6.2://') \
> > | tail -n+4;
> > +fs/squashfs/super.c:	.fs_flags =3D FS_REQUIRES_DEV | FS_ALLOW_IDMAP,
>=20
>=20
> Heh, nice trick. Do I need to resend for this or can you add it while you
> apply it?

I can.  :-)

> > > Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
> > > ---
> > >=20
> > > I've took the liberty of adding hugetlbfs that was merged in Linux 6.=
9-rc1 but there is still no
> > > final release of 6.9. Please feel free to drop that if you prefer to =
wait for the final release to
> > > include it.
> >=20
> > Are you confident that it will be in 6.9?  If so, I don't mind having it
> > already in the manual.
>=20
> Yes. It's already rc6 and there was no issue reported for this, the patch=
 is
> quite trivial too and was in linux-next before without issues either.

Okay.  I've applied the patch.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D8ea186128f96d6f8912e05c95544734004618827>

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--XU69o6+JclO2Kwdb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYvdw8ACgkQnowa+77/
2zK9AA/+KDZ6U3ptJw+k2T8ZhtrMY4dCarwKaOfgrqrcewHLqEFgq2K2hjmQNLtF
Y5TkEiY1lkvbjdenhtkEzPaKTjzbnSyYYRHRDXT6qwGmZG+m0itodpCqI9e44z0o
gKyAeCF2tB76Dl4c+6gzRROBi/gUBz6niT38s48qInICt+E8GYJDDRzBNiElRNt4
rEWw3DoHdJb91kM+c+7f3jwzesDWPHr5IjholUsoRsfK/WEkuXthUs1n2IrT7pnb
pXI52NAPCx6sP6HJhBzzplFKmc+bCh9XWa5/JlKR0JXy+6GVPWBTkXwSaNzkPAkd
/zcMTkhfqed/MN5FFctfruAlsL8oAfCSESJYc8LAFR7hNwMnCSg2JIR51I78d6/U
8f9MOHtOx7JqKxLoLo/4gbzMIpta1kGPScI1/N3icotdPt4HI7xWJaji10nIxE1r
wzhKL+1vONf7t0JTweefUrrgwgO83BLfcEKpVw9u3YU3N28xa+9tBN/mY/DaVZUK
lPI2HExp6qRcBa6twYefLY2U3xYTexe0dL/izi4ln+UcgjodjkYjJQGdruULyEQU
cARRZjJ0gVWdsXKqVX7WeQDzQ/UZU6jNkrBuuMRZBo6bGLYCRTVdP+DKkcEhPnPE
Nz2tq8tkyXd5gJj8yOcA/6oC4VkiEPsGdUwPVxZ3vY9Ut+1mCHc=
=trTJ
-----END PGP SIGNATURE-----

--XU69o6+JclO2Kwdb--

