Return-Path: <linux-man+bounces-2209-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE37A07855
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 14:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 327B37A292E
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 13:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3518219A8F;
	Thu,  9 Jan 2025 13:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbNnM6ai"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70259219A7E
	for <linux-man@vger.kernel.org>; Thu,  9 Jan 2025 13:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736431143; cv=none; b=M5Rl4+svW9x1oGm8xy+P1Y2t0rre80aTRFZdg+oIpjFpfqfve3qSfZHYjcRUHG1ntf+QoMqRBm9Toq93zCcTIqqiznUapVfdzsuLFPCD17W9ZVWSc0y44igYHQ8mOBub+R11E9+p0FYTplCBMxMt4Pf0losO5UgT8H7TB/uiSe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736431143; c=relaxed/simple;
	bh=o5LXSvYx/07R3wTbyoEzVjmBfQ291eHYTfrXycdYrno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AFyMtWZm52XLH/yL8aZKk8LPjlMmzI12vJOjLSd9E11LF+ovGbFMc2juaMGtwnSWJ3KcxoOD+YAQgarVm7QiMDngigrlB0nHyF1FPQAlvXoE4NfU2YFBWnmyerH1PTkLYQVEZqRkCQBWs44OrnsghugsXux0R+/f3VDwV7T1ap8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbNnM6ai; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F26DC4CED2;
	Thu,  9 Jan 2025 13:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736431143;
	bh=o5LXSvYx/07R3wTbyoEzVjmBfQ291eHYTfrXycdYrno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XbNnM6aiVdp1vo7hH2OAL7G4DPBDs5wY1VBDLbPTkTbFcKmXlGcf8AmfO1YUX+E/u
	 U5C8AmILT9XmHenFWJgtKgB8RvJTN2xy9yj0Kj4dJQyBPtigAkLf3jSECXObFYGEL7
	 NXLqVqjWotrY4sCsW0+jrWfgO3cLBQ4K0DhMJzJlZLm/7xAeR2fMG2BJZeRI8HSjQk
	 QHXlSTEyyz+X6JaXRCYxf8pc8oYzCgQpBwLt1AbtTX00jGBZTdlu5A1e6nh8xbsUpG
	 pxqZhk2bcNGycxi8UQyWFJtNZebtJ/HStGq91LNhFLt062VcdxeEP8nguwNEdVq9f3
	 YULHpjr0aBAzQ==
Date: Thu, 9 Jan 2025 14:59:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, groff@gnu.org
Cc: onf <onf@disroot.org>
Subject: duffman(1) (was: diffman(1))
Message-ID: <64nwglzgyqvdpkruvwnp53gd35nzib7xjbluvph7mqg75cjtn6@fm4ckauriwfi>
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
 <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>
 <20241125163421.f37ftfuxq33bax2v@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ctzmvvyo5kovs35v"
Content-Disposition: inline
In-Reply-To: <20241125163421.f37ftfuxq33bax2v@devuan>


--ctzmvvyo5kovs35v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, groff@gnu.org
Cc: onf <onf@disroot.org>
Subject: duffman(1) (was: diffman(1))
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
 <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>
 <20241125163421.f37ftfuxq33bax2v@devuan>
MIME-Version: 1.0
In-Reply-To: <20241125163421.f37ftfuxq33bax2v@devuan>

Hi!

I have added a duffman(1) program (script) to the Linux man-pages repo.
It is similar to diffman(1), but it diffs the git working directory (or
a commit, if specified).

Here are a couple of examples.

A change in the working directory:

	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ git diff
	diff --git i/man/man3/printf.3 w/man/man3/printf.3
	index 2129e26dc..a379ae609 100644
	--- i/man/man3/printf.3
	+++ w/man/man3/printf.3
	@@ -24,7 +24,7 @@ .SH SYNOPSIS
	 .nf
	 .B #include <stdio.h>
	 .P
	-.BI "int printf(const char *restrict " format ", ...);"
	+.BI "int foo(const char *restrict " format ", ...);"
	 .BI "int fprintf(FILE *restrict " stream ,
	 .BI "            const char *restrict " format ", ...);"
	 .BI "int dprintf(int " fd ,
	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ duffman=20
	--- HEAD:man/man3/printf.3
	+++ man/man3/printf.3
	@@ -10,7 +10,7 @@
	 SYNOPSIS
	      #include <stdio.h>
	=20
	-     int printf(const char *restrict format, ...);
	+     int foo(const char *restrict format, ...);
	      int fprintf(FILE *restrict stream,
			  const char *restrict format, ...);
	      int dprintf(int fd,

(The actual output includes bold and italics.)

And with an old commit:

	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ git show 437e4afec6ca
	commit 437e4afec6cae16ba75587f835acee1e251f2e75
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Jan 5 13:44:32 2025 +0100

	    man/man3/sem_open.3: SYNOPSIS: This is a variadic function
	   =20
	    Specify the prototype consistently with open(2).
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/sem_open.3 b/man/man3/sem_open.3
	index 6a2aceb50..35275a024 100644
	--- a/man/man3/sem_open.3
	+++ b/man/man3/sem_open.3
	@@ -15,9 +15,8 @@ .SH SYNOPSIS
	 .BR "#include <sys/stat.h>" "        /* For mode constants */"
	 .B #include <semaphore.h>
	 .P
	-.BI "sem_t *sem_open(const char *" name ", int " oflag );
	-.BI "sem_t *sem_open(const char *" name ", int " oflag ,
	-.BI "                mode_t " mode ", unsigned int " value );
	+.BI "sem_t *sem_open(const char *" name ", int " oflag ", ..."
	+.BI "                \fR/*\fP mode_t " mode ", unsigned int " value " \fR=
*/\fP );"
	 .fi
	 .SH DESCRIPTION
	 .BR sem_open ()
	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ duffman 437e4afec6ca
	--- 437e4afec6ca^:man/man3/sem_open.3
	+++ 437e4afec6ca:man/man3/sem_open.3
	@@ -11,9 +11,8 @@
	      #include <sys/stat.h>        /* For mode constants */
	      #include <semaphore.h>
	=20
	-     sem_t *sem_open(const char *name, int oflag);
	-     sem_t *sem_open(const char *name, int oflag,
	-                     mode_t mode, unsigned int value);
	+     sem_t *sem_open(const char *name, int oflag, ...
	+                     /* mode_t mode, unsigned int value */ );
	=20
	 DESCRIPTION
	      sem_open()  creates  a new POSIX semaphore or opens an existing sema=
phore.


I found this very useful for reviewing changes.  Maybe you do too.  :)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ctzmvvyo5kovs35v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmd/1iMACgkQnowa+77/
2zJVCxAApolzo/rC7h0X19mbdAYqazcOMu4HgKz3BtjHWOdDBrbBlB9hZqWaB5Lr
ubUXraa+lggS9uy0IJxfVQ+xBY40E1aKM6BtXlIite5/tuMcEQYcIGBnY+7c0nzk
OULo5xf9R873U/myJyoIZ3zGKjeNsYxNkD0KHZYbvXv5W0KmG0TeT6k0gLEWkn7F
3qBRpDqanmuD/evjpq6qlqpvGg/zQPwDG3bHq/+frQGaaa7PyHcC3BnWLQ6dznwy
Qp90K2inPoatBUvkmEspvsPSkmoByyls/r7r8V3TH+j32sluulIvfx8CKIWv8cGq
whr8WbPsSh5FxkRugz8c7mF8nKilDulPlPRhSLPdMjl8TcWYBtY0tdBePGstHRli
PHooOjVLRgABGzlLRXL5VqOjyMa7lqdpJtag65h9AQjmzwNikme9dLwoFO+0Dtk4
OvHh8Z7qzlnZMqJw2Uuzql2Dwr5cX5foi8UP/hyXmhBnlTwxw2Y3Aeasu6h6tkkl
6d/pXtOlpFYgk59zCDKjlPsWLwY+hSlBaOzHBqMxAjzswxuVG1+b1FiJuRGrM2Ew
7oSs+17rkA1t6N/85w+pNUlZO7/gOqseEq7LgPAgnZbcu2CTarliibTvzK3yMyfi
itKFOLcKcXy2PpV90nYY9eeRBTvwaE3MLWOiQiJDOiNykm4PssQ=
=c2Gb
-----END PGP SIGNATURE-----

--ctzmvvyo5kovs35v--

