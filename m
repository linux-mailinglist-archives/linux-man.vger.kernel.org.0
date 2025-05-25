Return-Path: <linux-man+bounces-3014-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 344C1AC3761
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 01:30:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A43237A924C
	for <lists+linux-man@lfdr.de>; Sun, 25 May 2025 23:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 680731A5B95;
	Sun, 25 May 2025 23:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4RMEFoV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A19E1991D2
	for <linux-man@vger.kernel.org>; Sun, 25 May 2025 23:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748215847; cv=none; b=ubHngtX7NjJuj+xFiIDu5oZXNd3f5AG+r/rKVEJZvYL9PpC9GGV38fsEzRWjgLU+CWldKODoDY/F3kKBTn5zH7D1/zmNLi6QzsI7647CA+FT6OgRRkhLf7cVDghCBopYTQwStpTcu6sRjmJbbf57D8VmQg2/mVMZCGn/tqLwK0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748215847; c=relaxed/simple;
	bh=iQew38bdgEVdxif1DAHaW2gQR5K6F6UeUfL+bU/j3/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ig1+/JtiRqjimhhVoqBaAeYQC0pn1k+JL0GcOAWPbGN2WE/6ZFtABWortOdFjmqPDhdRft0FHg9XnklkK0ANe1R8/u4w5GXssAg8eLxOdvQYptufbHv/ibf86b71ogZiwYz8vLpCN2L+O18q9R75F4xUG7CuwubtJ/FfIHn6WEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4RMEFoV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8A23C4CEEA;
	Sun, 25 May 2025 23:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748215846;
	bh=iQew38bdgEVdxif1DAHaW2gQR5K6F6UeUfL+bU/j3/g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o4RMEFoV+MAoxFpAagZjnTBfa0ArUUv7T35H9jquTLn3gxSWTHk/YkUrB72vdmmAd
	 G4/npQeZF0upv4/s3YJ9EGM1k8Y+a4LAUACkwd8Z1XL6+oFNP93DzoCXLGaiBIb925
	 ztc29D3zhezAa8W7PDrsf2GfQjm9UmB6JDFtRCONmUKrowh0+TXaNwz4dR1Fdgelh0
	 D639SPkUA/36SpFcAku1OT5IihueB9ziwoY9e+mHjPbWiohIMNj3NViF4HLQd5lIzq
	 K+uu6xmJ+UpKAhGjR1kfgZ+XAIensHXA+AmR/16hjMd5jjog1u4Xfm8dKqk3dhDNyT
	 O4OJPTIWj/JDg==
Date: Mon, 26 May 2025 01:30:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Improving inode number documentation
Message-ID: <juxbjjsnt5mvtyctd72fcnc4o2u5wamqz7yd5occuor4clzkhx@zvob6krj6sq3>
References: <20250525103344.fe27ugiytfyoadz5@pali>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dsn5gaafn5o6i3kq"
Content-Disposition: inline
In-Reply-To: <20250525103344.fe27ugiytfyoadz5@pali>


--dsn5gaafn5o6i3kq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Improving inode number documentation
References: <20250525103344.fe27ugiytfyoadz5@pali>
MIME-Version: 1.0
In-Reply-To: <20250525103344.fe27ugiytfyoadz5@pali>

Hi Pali!

On Sun, May 25, 2025 at 12:33:44PM +0200, Pali Roh=C3=A1r wrote:
> Hello Alex,
>=20
> I would like to ask you, could you improve documentation about inode
> numbers returned by readdir()/getdents() and stat()/statx() functions?

I'd love to do that.  I do not feel experienced enough in this matter to
write the text myself, but I could try to learn about it.  On the other
hand, if you want to send patches yourself, we can go much faster.
Would you mind sending some patches?


Have a lovely night!
Alex

> https://man7.org/linux/man-pages/man3/readdir.3.html
> https://man7.org/linux/man-pages/man2/readdir.2.html
> https://man7.org/linux/man-pages/man2/getdents.2.html
> https://man7.org/linux/man-pages/man2/stat.2.html
> https://man7.org/linux/man-pages/man2/statx.2.html
> https://man7.org/linux/man-pages/man3/stat.3type.html
> https://man7.org/linux/man-pages/man7/inode.7.html
>=20
> The missing information in those documentations is the fact that the
> dirent.d_ino does not have to be same as stat.st_ino/statx.stx_ino for
> the same file or dir.
>=20
> stat.st_ino number belongs to the stat.st_dev but dirent.d_ino belongs
> to the st_dev of the directory on which was called opendir().
>=20
> So for the mount points these two numbers are different. readdir()
> returns the inode number of the underlying directory (which belongs to
> the parent filesystem), but the stat() returns the inode number of the
> root directory of the upper/mounted filesystem.
>=20
> And I think same applies for mount-binded files, not just for mounted
> directories.
>=20
> Note that this Linux behavior (when readdir and stat returns different
> inode numbers) is in POSIX readdir() specification called "historical"
> and is described in RATIONALE section of POSIX readdir:
> https://pubs.opengroup.org/onlinepubs/9799919799/functions/readdir.html
>=20
> Therefore it would be nice to mention the fact in Linux readdir(3)
> documentation, that Linux conforms to POSIX "historical implementation".
>=20
> Pali

--=20
<https://www.alejandro-colomar.es/>

--dsn5gaafn5o6i3kq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgzqCMACgkQ64mZXMKQ
wqlecw/8CBtIVCA0rx751P+VyByxnOXsN16P6AfvV2UvMFX9RnrNc+cibFOo7NxF
k11n6B+220oUubN5rtZhJdb9EGObmIa/SOoZNMDIiTeZM0WEwGz9rNWYBcd/9TNe
O8XNi1P6w0vxV9rQMGie7fzUwTmCsv5mUiydFoGInnMZLNskX6ygqd2qraZg49M7
jzTkJbzvEd2lOgsh+e8mJaY4QsCYO7kVbNtaTXDquaM5sCb65Ka61IbqfaMoYJix
iXzF0M5aMekKlZCBCriGarmvAqwG2nrelnHge7yzBm/SUaLKa15ab07QDF2KLZiQ
NfEpRKyZBXsXZWsiKTSXChNEuhTx2c8Oxx5DO4G26fbM5io8KWmkvE9RwVQdihWl
wgFV1ThK3YRrKAsJTE2X3kxZKVfHwm03O1265/BX+l1ZijY98592SeHAA+BMeR7k
vm5MYA+mlG7JrqTezVEfl/82VBOd8FM6mn4+IfdbbQArfHnNvrG0MoXiYprt4gpw
2ZGeydV+Ktu/BahfhFc9D74Rl3V32JO/vd6gWuKuOxLNPbUqok9allAQHYpJpMXn
j+xWOgJfrvBgJPgvoSgXyKqPQZxHAf1z1/5NQhsJy1MbxX4g25QuMpNR0d8MYK8M
EJ21LvsQVX6f4ExNi6n4/rT3Zxw4RExM4FuClWsprXZHA/rypO4=
=TcG3
-----END PGP SIGNATURE-----

--dsn5gaafn5o6i3kq--

