Return-Path: <linux-man+bounces-423-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B9E850AF0
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 19:56:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D78861F20F57
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 18:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E6B3DBBB;
	Sun, 11 Feb 2024 18:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJFH2smH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B25C1DFCE
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 18:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707677803; cv=none; b=CW2ZGNJ1i2Omubvq+JIbcoOOtXN3CH/bWXCSejjRxd3uTBvV1OPTDSl4iGCYGQY/N4e1cidXBv1+XFMqIxx6BbolhY/j4A8umICQQdTsjFlSHm9C0NG/wzXY7oLe7yZqR7zj+Y6173lBs8SKhOG6Jyz0EHaMku9iusFsQNsodD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707677803; c=relaxed/simple;
	bh=E4r5wnaIPjmck0ED0OBUuLeqkpq/tzDkdYBoiph/mvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s9/xF0/LctaVGAqSrLmK3L39KAda5lTjMuHEu9A7aaITgKkWVUi60yEcxkkNkQC0Feu/08yN+WXvWH0Ci3FtWzGwfG1gbY47+91SLSirhayJmIBPibJ3Phfnij6zUq+cnCSN+opxaG0d0PW9WgtP7F8CRonxEjZQ7AnnoZa4vMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJFH2smH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3793BC433C7;
	Sun, 11 Feb 2024 18:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707677802;
	bh=E4r5wnaIPjmck0ED0OBUuLeqkpq/tzDkdYBoiph/mvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qJFH2smHE/fNrFNyrVsoNf4/SMW+OaHdSfL5SHPdBYgKyy/hqGxxzrkqO+eD4R19r
	 IOBV1A+l1trKnWEgTwXmXyIYid5SPDopLJNPHFwB2Mms6rUGNk300iholtXoA+EHnY
	 g36CDE3WmM9f91unc9/kT7u3aUSy95cSPl6TIhUswO3vU7UcOoY6RAWUGUdRH8Zb5a
	 FA7T1S1FYQMIS80IIt9uHNdKb6P4pjgkzE+xCQqnkeIgHU0HnqDFoZV/bwTNdDuo4Y
	 Y+GN3RqkjhQ5tK6nfjzykr3kQ5JGRniKDCbHrmPStrMhLrTuzUBRK7y7KXRn9f5Bzb
	 Mh4PR3SLo7nKg==
Date: Sun, 11 Feb 2024 19:56:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_create.3: re-do the architecture/default stack
 size mapping
Message-ID: <ZckYZ2q0PQIWFqrq@debian>
References: <4wwe76cvuczjn57bzw7wd4derfaufcgrxr5skvlu25wvwecmmh@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5X9OH0YX/vmqotUU"
Content-Disposition: inline
In-Reply-To: <4wwe76cvuczjn57bzw7wd4derfaufcgrxr5skvlu25wvwecmmh@tarta.nabijaczleweli.xyz>


--5X9OH0YX/vmqotUU
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Feb 2024 19:56:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_create.3: re-do the architecture/default stack
 size mapping

Hi =D0=BD=D0=B0=D0=B1,

On Thu, Feb 08, 2024 at 09:43:21PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Currently, the page lists 2 of the 3 x86 architectures, no ARM(!),
> old PowerPC only, and most egregiously itanium,
> which linux doesn't target.
>=20
> Per glibc 2.38:
>   $ git grep ARCH_STACK_DEFAULT_SIZE
>   aarch64     #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   arc         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   arm         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   csky        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   loongarch   #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   m68k        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   microblaze  #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   mips        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   nios2       #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   or1k        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   riscv       #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   s390        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   sh          #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   sparc32     #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   x86         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>=20
>   alpha       #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)
>   powerpc     #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)
>   sparc64     #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)
>=20
>   hppa        #define ARCH_STACK_DEFAULT_SIZE  (8 * 1024 * 1024)
>=20
>   ia64        #define ARCH_STACK_DEFAULT_SIZE (32 * 1024 * 1024)
>=20
> I cut PA-RISC and the Alpha. They have 10 and 6 popcon entries,
> respectively, and AFAICT they haven't seen a processor released
> in over a decade =E2=80=92 they aren't relevant to any modern reader.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man3/pthread_create.3 | 19 ++-----------------
>  1 file changed, 2 insertions(+), 17 deletions(-)
>=20
> diff --git a/man3/pthread_create.3 b/man3/pthread_create.3
> index 66c67a6ff..fd6253bf4 100644
> --- a/man3/pthread_create.3
> +++ b/man3/pthread_create.3
> @@ -200,23 +200,8 @@ .SH NOTES
>  If the
>  .B RLIMIT_STACK
>  resource limit is set to "unlimited",
> -a per-architecture value is used for the stack size.
> -Here is the value for a few architectures:
> -.RS
> -.TS
> -allbox;
> -lb lb
> -l r.
> -Architecture	Default stack size
> -i386	2 MB
> -IA-64	32 MB
> -PowerPC	4 MB
> -S/390	2 MB
> -Sparc-32	2 MB
> -Sparc-64	4 MB
> -x86_64	2 MB
> -.TE
> -.RE
> +a per-architecture value is used for the stack size:
> +2 MB on most architectures; 4 MB on POWER and Sparc-64.

Why capitalize POWER and omit PC?  Other than that, LGTM.

Thanks for the patch.

Have a lovely day!
Alex

>  .SH BUGS
>  In the obsolete LinuxThreads implementation,
>  each of the threads in a process has a different process ID.
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--5X9OH0YX/vmqotUU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJGGcACgkQnowa+77/
2zJ/nxAAmzxwHGBYe5A3mFH+dpG+/1vtam9N2TxyKw45UQ1IsV9bPSdgQoa+3rmo
oyDJU7gUii5mUNOYg5mlU5pBRAwD4jdel1BCaLKY6NlXoWLqxJyd3m+7W2Y7wiwR
tgAyy9oDqhxWfJxmNY8PPeGuU8hvWQ7GyaI5zNyjNQh9t6Rk1AGpHmvZvLGjzBOV
ZZJANVVyfLQhv2Tbc3/LNJ55Fxuqt3njcbk9V9ZLgfjgi4rUzt3LqLOzeFzkrRWN
1IRUQ/3lQIbEqdsRXUtEsnu0iCJ+M8SYjGzPTXhv6V00d4Z+L1RJadrUA9qLvKYV
gItVq8AG29+ZJ/M6BxZxtRmDfCukjyqmpPwYRnwkr3H7tmL7tIsXjdXRlz0D95j+
e0jpjhnY7dmCLCZRZ3f+USRTrUqawIjttEa+NMHSk8kbBeNSALZ0DDsdqkzQ9zDm
dfkD6oqX1TuRx2edb+1p5jiJ2BKyN/C2NfL3sv4Mt2ANuox5oO1JlW7xy3NzrFSn
7Tsh8MkRNa06uXljO+VhAXEiJe5ZQUPQEr8kTj68tp3+gmtM5pLV23Toz7yPpDZ2
RdLJBf+Jx1/phPXvSvNkgm8biuapJWkftMKBog7n225qvdLtBAWi3ZXyV7L9Wn7T
nxR/h6N8kuGy5xrYPNYRG/TLtBguQxeGGBAFXrlcJTygMRvfMB0=
=dYxO
-----END PGP SIGNATURE-----

--5X9OH0YX/vmqotUU--

