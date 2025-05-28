Return-Path: <linux-man+bounces-3046-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86338AC7143
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 21:03:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E8001702FC
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 19:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B14E21A931;
	Wed, 28 May 2025 19:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUgU6jDJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABC51CD2C
	for <linux-man@vger.kernel.org>; Wed, 28 May 2025 19:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748458988; cv=none; b=Jixqme+yHixHnQxdlQeOn6VYuAnqzvzWnxL9Xh60RJ77dKAaOmr34VNRW6YbTBFRlA0hLO1rFLySuRa9TmWYQVo83eJ2fcenl7HKUfTi0UVUm4edaG3mLv7N9hdHS2fGmUtrKP148x7vN1PSnW2CH/u9ZKEkuuGFwFgEt5Y7Ydk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748458988; c=relaxed/simple;
	bh=rVHnmjljagCcxuhQT5VWwYgKocFP1L/kdKfcJLI00ws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y+yDKNsx9h4a66WyIDvhUJXdMljpZo9SiMatfbnjszlpeAw9nAljJ84ret6gZFKtc+OyZXpIRGBsWGXuFB9ZAqJEqP/SqyfUdpVNZ/xegV9VDDT6/js/AnDn3UpFdCv1cYBuP+FzUMq/sFr1CSP+r3EVy1knSddPLJ2kQyJD4ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUgU6jDJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E652BC4CEE3;
	Wed, 28 May 2025 19:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748458987;
	bh=rVHnmjljagCcxuhQT5VWwYgKocFP1L/kdKfcJLI00ws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IUgU6jDJWpod61pbJPBk9185CwkEexwCiX6E8XhiJgTcSchozBcmV3KhgZ8P6NR5+
	 0/ep/3BijFlwZWg4vP2sAIyR2qV+3Pus/DQHhEkf1IsGIObHd2QjFp/d+IR6woDCTe
	 y2FhIhIivHq1rwfzTLu96/hrUd7eSXlc05wqY9y6tTFORA6s/mPURyEe9kbKfvXqJh
	 qfL2i/yAVmcaOAnZeAvukG+cD3mFYRpfUJFhCAuyWuC0QAcUrisqSCZu8JgF1yYSaX
	 7u9oDORBFnCj3X2zHgbxfyyIyE7kAimxulVjDwAkT9zVepMSHHGYz3Hz353t1ChGCP
	 VmxAGwRzWi0qw==
Date: Wed, 28 May 2025 21:03:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Improving inode number documentation
Message-ID: <m5drckhk4mkw3l6fzfqyelobscbrmx6jefpjik4nj4j5ala7ff@mrm6ds7a4lk2>
References: <20250525103344.fe27ugiytfyoadz5@pali>
 <juxbjjsnt5mvtyctd72fcnc4o2u5wamqz7yd5occuor4clzkhx@zvob6krj6sq3>
 <20250528182519.l6kyy5ebiivev2u5@pali>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="toljwowr243yq63d"
Content-Disposition: inline
In-Reply-To: <20250528182519.l6kyy5ebiivev2u5@pali>


--toljwowr243yq63d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Improving inode number documentation
References: <20250525103344.fe27ugiytfyoadz5@pali>
 <juxbjjsnt5mvtyctd72fcnc4o2u5wamqz7yd5occuor4clzkhx@zvob6krj6sq3>
 <20250528182519.l6kyy5ebiivev2u5@pali>
MIME-Version: 1.0
In-Reply-To: <20250528182519.l6kyy5ebiivev2u5@pali>

Hi Pali!

On Wed, May 28, 2025 at 08:25:19PM +0200, Pali Roh=C3=A1r wrote:
> > > I would like to ask you, could you improve documentation about inode
> > > numbers returned by readdir()/getdents() and stat()/statx() functions?
> >=20
> > I'd love to do that.  I do not feel experienced enough in this matter to
> > write the text myself, but I could try to learn about it.  On the other
> > hand, if you want to send patches yourself, we can go much faster.
> > Would you mind sending some patches?
>=20
> Well, as it affects at least 7 man pages, I do not know how such
> information should be ideally structured. Whether to be described just
> in the readdir(3) and referenced from all others. Or split across all of
> them. So I do not think that I'm the one who can prepare patches.
>=20
> But I will try at least to propose how the changes could look like:
>=20
> readdir(3) change:
>=20
>   d_ino - This is the inode number of the directory entry, which belongs
>   to the filesystem st_dev of the directory on which was readdir() called.
>   If the directory entry is the mount point then the d_ino differs from
>   the stat's st_ino. d_ino is the inode number of the underlying mount
>   point, rather than of the inode number of mounted file system.

I guess the last sentence applies only as a clarification of the
previous one, right?  If so, I'd separate the sentences with ':' instead
of '.'.

> According
>   to POSIX this Linux behavior is considered to be a bug but conforms as
>   "historical implementations".
>=20
> stat(3type) change:
>=20
>   st_ino - This field contains the file's inode number, which belongs to
>   the st_dev. If the stat() was called on the mount point then st_ino
>   differs from the readdir's d_ino. st_ino contains the inode number of
>   mounted file system, whether readdir's d_ino contains the inode number
>   of the underlying mount point.

These two paragraphs in two pages sound reasonable.  I've prepared a
patch, and pushed a new branch to the git repo where we can continue
working on it.

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dino>


>=20
> So I suggest if somebody else look at it and prepare improvements
> including how should be this information structured.

Here's the change I propose based on your suggestions:

	commit c27a2d7f80c7824918abe5958be6b5eb2dbe8278 (HEAD -> ino, korg/ino)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed May 28 20:59:11 2025 +0200

	    man/man3/readdir.3, man/man3type/stat.3type: Improve documentation abo=
ut .d_ino and .st_ino
	   =20
	    Suggested-by: Pali Roh=C3=A1r <pali@kernel.org>
	    Co-authored-by: Pali Roh=C3=A1r <pali@kernel.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/readdir.3 b/man/man3/readdir.3
	index b9150160b..ad9c76595 100644
	--- a/man/man3/readdir.3
	+++ b/man/man3/readdir.3
	@@ -58,7 +58,27 @@ .SH DESCRIPTION
	 structure are as follows:
	 .TP
	 .I .d_ino
	-This is the inode number of the file.
	+This is the inode number of the file,
	+which belongs to the filesystem
	+.I .st_dev
	+(see
	+.BR stat (3type))
	+of the directory on which
	+.BR readdir ()
	+was called.
	+If the directory entry is the mount point,
	+then
	+.I .d_ino
	+differs from
	+.IR .st_ino :
	+.I .d_ino
	+is the inode number of the underlying mount point,
	+while
	+.I .st_ino
	+is the inode number of the mounted file system.
	+According to POSIX,
	+this Linux behavior is considered to be a bug,
	+but is nevertheless conforming.
	 .TP
	 .I .d_off
	 The value returned in
	diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
	index ee801bcec..835626775 100644
	--- a/man/man3type/stat.3type
	+++ b/man/man3type/stat.3type
	@@ -66,7 +66,21 @@ .SH DESCRIPTION
	 macros may be useful to decompose the device ID in this field.)
	 .TP
	 .I .st_ino
	-This field contains the file's inode number.
	+This field contains the file's inode number,
	+which belongs to the
	+.IR .st_dev .
	+If
	+.BR stat (2)
	+was called on the mount point,
	+then
	+.I .d_ino
	+differs from
	+.IR .st_ino :
	+.I .d_ino
	+is the inode number of the underlying mount point,
	+while
	+.I .st_ino
	+is the inode number of the mounted file system.
	 .TP
	 .I .st_mode
	 This field contains the file type and mode.

Does it look good to you?  Would you do anything else?  Please sign the
patch if it looks good to you.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--toljwowr243yq63d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg3XegACgkQ64mZXMKQ
wqkK/xAAslINwCxvnUdSQgXQ/yfg5UsBd83e9yQXYByfHkXz2FxXA2bhdY3LNjYg
8CVbVTIoDqS+HaK+bFqLQDDAs9RXJRvVz390r7FBHwN/9niAGiXAFIxXbHNt4zkC
5uQlxjHTQX7L65Mlze5OEbtMz9HwWseem6DpaMV7YrcUvF8zOC03wnXnkNdjA3my
0MRulmIwJjsHQD9fvYZ/CYNw3z1RZ8sgA/rrTA2Q+1NoeificUncibcUm0UlVDHT
GtdKd7WJsMEe1Lk2CgZDA5fAwJ4SKERjpLPp6QeCGMnv5ypIx4FCbC34v0kqatIJ
t088465B8MRjZvcfXWIFJ3w8dy92vyCQHLPrjWhfeCYQfmBTEf99A4xOXqvEJJRb
3MZ+LfEoLm1v7AOChS7d8PQPQSgludzvzJn9N03vkROamqH0y3YgqzspiiMjlAd/
TbCnXF5zdDyhXPQelM9C0VVARSYIpomuAw6IGKJ2OxMpctZWrRsof8g1lchh2LGh
fkfaaei6o7zh99IqDUjMphdbRMQkNpQX17Y9ndy7oYDRgMAzykgHBQNSq7ID+0UL
q+XqDAs4ardRDiHc6EA1iRrhmcHlzmsjI0LuTqaFr4U/GpbAI7cvQS+GEds9iVZg
XblGWca2LwQn9gZXUhwQ0oP8lQ7p87Zef5OGUy9HXmACOQa99Qw=
=l1Zq
-----END PGP SIGNATURE-----

--toljwowr243yq63d--

