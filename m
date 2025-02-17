Return-Path: <linux-man+bounces-2465-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9694AA38511
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 14:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DEB93B4D09
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 13:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3566821D584;
	Mon, 17 Feb 2025 13:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHy/Qrul"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E707721D586
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 13:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739799778; cv=none; b=P3jtaEoXtrKccKeAp+GqRaF4Op4svVOJ7zBDi2fNv55JgwKPATfmV3q5hMHFpPA2/BfaRlyZky+cOO2B/5uxPnBdk8IE0lqLvwXa5Wvxc5l39S1bhE7S8wJgMyEdyOw3xQdV1sfjx+POwJ3ezFXyZXlf00uzEMRBsg+URCOX0dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739799778; c=relaxed/simple;
	bh=aKUQ4rv0a61lFmU5m5/+hD0cfRnUhIP6emuz7kvAHx8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YlxURRaqF83AhiJHrfonnNtIqyErVqE/tKLzBvlJr88E3nxzVRC7MOXtNR6jSl3rgq3fcWuBPChxlqNto5OcsRkeR8JSCE4u7B1IDYVbV6zOiq+h41DKYNMW5mSr9i1isPutwW87h6rpV+ozEfUNuQWuM6gs3J8mA4VaE56jkwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHy/Qrul; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7400BC4CED1;
	Mon, 17 Feb 2025 13:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739799777;
	bh=aKUQ4rv0a61lFmU5m5/+hD0cfRnUhIP6emuz7kvAHx8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jHy/QrulPCWmelVeljGRlByH3JZnbFbAfpzHp/h+EL86uN78mPw+Vel/zq99T864m
	 CUmc5KgtSnaLkm/488pJ5kFhCs6If/XqQZDNtf/5bm8XspS0ZkrOvn4JtmR0xckGOn
	 yKWw2Q5pI1t5eo/ywOUhAbLofsUq5MlR2VHYz85Jh7JpaUprzW3yFWSnmwsWws/iqY
	 8L0sejyfKjEP4aSCOv6srOk1aCOkMX9sl+TJy7JSRPVO1hhptS/WL23qx9aqKjDaAE
	 hMFM70y0IId0q21ekfJT0/aggEij30z4HpA5cIiXj2MVhu0emhXIXGjLFON6Kg/Cap
	 I91x8ua+qdy1w==
Date: Mon, 17 Feb 2025 14:43:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Karlson2k <k2k@narod.ru>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org, 
	Tobias Stoeckmann <tobias@stoeckmann.org>, Serge Hallyn <serge@hallyn.com>, 
	Iker Pedrosa <ipedrosa@redhat.com>, shadow-utils <~hallyn/shadow@lists.sr.ht>, 
	Rich Felker <dalias@libc.org>, musl@lists.openwall.com
Subject: Re: [shadow-maint/shadow] Add cheap defense mechanisms (PR #1171)
Message-ID: <5oy5qyky5nwrgptkagm3nageam4btklbhgd3dupxzmcmlerd4w@bagvved6hrym>
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
 <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o3ha2bljwwdceeiq"
Content-Disposition: inline
In-Reply-To: <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>


--o3ha2bljwwdceeiq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Karlson2k <k2k@narod.ru>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org, 
	Tobias Stoeckmann <tobias@stoeckmann.org>, Serge Hallyn <serge@hallyn.com>, 
	Iker Pedrosa <ipedrosa@redhat.com>, shadow-utils <~hallyn/shadow@lists.sr.ht>, 
	Rich Felker <dalias@libc.org>, musl@lists.openwall.com
Subject: Re: [shadow-maint/shadow] Add cheap defense mechanisms (PR #1171)
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
 <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
MIME-Version: 1.0
In-Reply-To: <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>

Hi,

On Mon, Feb 17, 2025 at 10:42:11AM +0100, Alejandro Colomar wrote:
> On Sun, Feb 16, 2025 at 06:15:18PM -0800, Karlson2k wrote:
> > Karlson2k left a comment (shadow-maint/shadow#1171)
> >=20
> > Doesn't use of glibc extensions break functioning with non-glibc, like =
musl?

After reading musl's source code, it does support 'e'.  And it does so
since 2012.  Which libc are you using?  And which version?

	alx@devuan:~/src/musl/libc/master$ grepc fopen .
	./include/stdio.h:FILE *fopen(const char *__restrict, const char *__restri=
ct);
	./src/stdio/fopen.c:FILE *fopen(const char *restrict filename, const char =
*restrict mode)
	{
		FILE *f;
		int fd;
		int flags;

		/* Check for valid initial mode character */
		if (!strchr("rwa", *mode)) {
			errno =3D EINVAL;
			return 0;
		}

		/* Compute the flags to pass to open() */
		flags =3D __fmodeflags(mode);

		fd =3D sys_open(filename, flags, 0666);
		if (fd < 0) return 0;
		if (flags & O_CLOEXEC)
			__syscall(SYS_fcntl, fd, F_SETFD, FD_CLOEXEC);

		f =3D __fdopen(fd, mode);
		if (f) return f;

		__syscall(SYS_close, fd);
		return 0;
	}
	alx@devuan:~/src/musl/libc/master$ grepc __fmodeflags .
	./src/stdio/__fmodeflags.c:int __fmodeflags(const char *mode)
	{
		int flags;
		if (strchr(mode, '+')) flags =3D O_RDWR;
		else if (*mode =3D=3D 'r') flags =3D O_RDONLY;
		else flags =3D O_WRONLY;
		if (strchr(mode, 'x')) flags |=3D O_EXCL;
		if (strchr(mode, 'e')) flags |=3D O_CLOEXEC;
		if (*mode !=3D 'r') flags |=3D O_CREAT;
		if (*mode =3D=3D 'w') flags |=3D O_TRUNC;
		if (*mode =3D=3D 'a') flags |=3D O_APPEND;
		return flags;
	}
	./src/internal/stdio_impl.h:hidden int __fmodeflags(const char *);
	alx@devuan:~/src/musl/libc/master$ git blame -- src/stdio/__fmodeflags.c |=
 grep CLOEXEC
	892cafff6 (Rich Felker 2012-10-24 21:16:06 -0400 11) 	if (strchr(mode, 'e'=
)) flags |=3D O_CLOEXEC;
	alx@devuan:~/src/musl/libc/master$ git show 892cafff6 | grep -e CLOEXEC -e=
 ^diff | head -n5
	diff --git a/src/internal/stdio_impl.h b/src/internal/stdio_impl.h
	diff --git a/src/stdio/__fmodeflags.c b/src/stdio/__fmodeflags.c
	+	if (strchr(mode, 'e')) flags |=3D O_CLOEXEC;
	diff --git a/src/stdio/fopen.c b/src/stdio/fopen.c
	-	if (strchr(mode, 'e')) flags |=3D O_CLOEXEC;
	alx@devuan:~/src/musl/libc/master$ git blame 892cafff6^ -- src/stdio/fopen=
=2Ec | grep CLOEXEC
	8582a6e9f (Rich Felker 2012-09-29 18:09:34 -0400 20) 	if (strchr(mode, 'e'=
)) flags |=3D O_CLOEXEC;
	alx@devuan:~/src/musl/libc/master$ git log -1 8582a6e9f
	commit 8582a6e9f25dd7b87d72961f58008052a4cac473
	Author: Rich Felker <dalias@aerifal.cx>
	Date:   Sat Sep 29 18:09:34 2012 -0400

	    add 'e' modifier (close-on-exec) to fopen and fdopen
	   =20
	    this feature will be in the next version of POSIX, and can be used
	    internally immediately. there are many internal uses of fopen where
	    close-on-exec is needed to fix bugs.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--o3ha2bljwwdceeiq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmezPQIACgkQ64mZXMKQ
wqnE5A//Qasw0S1PyTs6RZWcmwStvroeWK3B2heTWJPDfl7oZxQI6LcF8D+P5y7S
XATOmYMMTHWRuO8QoOi2dOAr0arRqHViOcTIM9OWa8VFduClDL7J240d2BxFp+NW
/0Ijw6C9gB2MqoiwkXtiUSOgGpsCLqzrVS3CU7jzFTbRSiLGLQ4trZ32uLPE6j8Y
D2jjXZRcjnTxrFTeEfc/vO4e96CEvpLg68O9Jo9W6KqgOzg21bYt4e70pMILqKU/
mH+PdARW7/YutpXZWQJ3l31Gm8tN4+KP4tcQcwHMQHfcWSbnkYnOADh5aGDfmPGY
OZRmZdAZEPKvzQ9a/yU6R9yQbGFsEpagORnxyhiquG7PgUwbD/FQFdvL9QYxT2G8
5x+e3a8QR9AIV/nAHvvuii4GcNdyMfozV/mbfZ8DrrihPQBjYMz/+tAVVyUXTMK4
Rx9tx7tfdZ/P3X4G/69KlQ8Lw/rrcnsuRuAmirLcKHRn9grfMJ3L46D64F52J+0G
v3mX9oqM7avP5jgFljFK52xgYnkVQcaV5nVVcBfCy9iL4VJqi13YTNO0iL5/dnka
hRIHUKp7qlothNue57lWVl+2XZt6/9YcceEQh/Iv8bGTjyxRAa6IluV2GPBvxjvh
4DOYwgdhmvYf/aC0v/oHfGl0WZtiSL+9tK3jIPP6UgCrVKPD4qc=
=Nozv
-----END PGP SIGNATURE-----

--o3ha2bljwwdceeiq--

