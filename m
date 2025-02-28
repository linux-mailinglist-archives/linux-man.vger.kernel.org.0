Return-Path: <linux-man+bounces-2541-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B03E8A49B44
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 15:06:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F7501897909
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 14:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04A0625F98E;
	Fri, 28 Feb 2025 14:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xxtaf5I0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA51A276D02
	for <linux-man@vger.kernel.org>; Fri, 28 Feb 2025 14:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740751598; cv=none; b=s5cv0mKj6V7jXE3YxP4coI/i5DU8SZRwo4BQBy51HxEBhDM4KD+suoh7+wMZZJU0Y5F7N6dJ47zy9U3KfRgkrKTGhz+bw/wlmjoXL3m03XYuhIAEYfYz4FZ6d2+1r9FAqAAfFh7l/rO7fCJhl9aIPe29/opu44z8Ztq/OFPl8Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740751598; c=relaxed/simple;
	bh=JPOiBPZFPLJ0AarB2zKN9I/L3h9rYW4ki62do80eY6Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cZH50oaQCG/J6dNM6Hm3aHf8dadmUh0cEz00jALyh8P/CEpTiIEwwhjpoIpypBJc4e9eiZbXvNRB7jTmp86Ab7terZv4lr1daZR38c5YTQDwGYffa8jemZ+sgKo1bfL0AGYGzcwB+z8AnWQ0IY12Mx4SnJlCdHB1zW/fStpe+CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xxtaf5I0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94CC8C4CED6;
	Fri, 28 Feb 2025 14:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740751598;
	bh=JPOiBPZFPLJ0AarB2zKN9I/L3h9rYW4ki62do80eY6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xxtaf5I0bTN2GpaRukvH5Br6w8jXBifwwTbNj4TGkYYM1Oe7WUPI8JY8cg6JDTJ2A
	 pp1xl/07iGCnJCH+ntakmIrqrHR2uakAgUQQag4PlMzIJgdYO4cQWE1rwdiS8T7kjR
	 HYWkzZemhiWKzicyJLbgKIKJhV5R7tRgOHluO6ki+nGoZ4LUPnQbmGRiQWZx+1+Ynu
	 EQsnFRvXz24pgkG0C73f8rYkn1nV+eaXiJSkXTnMiLwPhMGkQ3S5KXRG7pNWbGA1hW
	 FCIwc2itjdieN/SjBN0f+PaltMDhMLFOWPOdo6mSw/K9nlPS+9cpg0zUftEgNrkF0a
	 JDRThiYOz8c9A==
Date: Fri, 28 Feb 2025 15:06:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>, Florian Weimer <fweimer@redhat.com>
Subject: Re: mismatch of type of ut_tv.tv_sec between glibc-2.41 and utmp(5)
Message-ID: <o7qulyh2a6x5o7g3lehxpgnt63ptbfxn5mdjozxxjsyhz5ljeg@vb4fx5a6ex5b>
References: <20250228103610.6c908004@plasteblaster>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kdnfy552ljnuhu6v"
Content-Disposition: inline
In-Reply-To: <20250228103610.6c908004@plasteblaster>


--kdnfy552ljnuhu6v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>, Florian Weimer <fweimer@redhat.com>
Subject: Re: mismatch of type of ut_tv.tv_sec between glibc-2.41 and utmp(5)
References: <20250228103610.6c908004@plasteblaster>
MIME-Version: 1.0
In-Reply-To: <20250228103610.6c908004@plasteblaster>

Hi Thomas,

On Fri, Feb 28, 2025 at 10:36:10AM +0100, Dr. Thomas Orgis wrote:
> Dear man-pages,
>=20
> while investigating some old bad usage of time(&ut,ut_time) I noticed
> that my glibc-2.41 headers define that part of the utmp struct like this:
>=20
> #if __WORDSIZE_TIME64_COMPAT32
>   int32_t ut_session;           /* Session ID, used for windowing.  */
>   struct
>   {
>     __uint32_t tv_sec;          /* Seconds.  */
>     int32_t tv_usec;            /* Microseconds.  */
>   } ut_tv;                      /* Time entry was made.  */
> #else
>   long int ut_session;          /* Session ID, used for windowing.  */
>   struct timeval ut_tv;         /* Time entry was made.  */
> #endif
>=20
> The man page claims this:
>=20
>            #if __WORDSIZE =3D=3D 64 && defined __WORDSIZE_COMPAT32
>                int32_t ut_session;           /* Session ID (getsid(2)),
>                                                 used for windowing */
>                struct {
>                    int32_t tv_sec;           /* Seconds */
>                    int32_t tv_usec;          /* Microseconds */
>                } ut_tv;                      /* Time entry was made */
>            #else
>                 long   ut_session;           /* Session ID */
>                 struct timeval ut_tv;        /* Time entry was made */
>            #endif

It seems your suspicion was right.  Someone decided to borrow some time,
according to the commit message that changed that code in glibc:

	alx@debian:~/src/gnu/glibc/master$ grep -rn '__uint32_t tv_sec;' -l \
		| xargs -L1 git blame -- \
		| grep '__uint32_t tv_sec;';
	5361ad3910c bits/utmp.h                (Florian Weimer 2024-04-19 14:38:17=
 +0200  79)     __uint32_t tv_sec;		/* Seconds.  */
	5361ad3910c (Florian Weimer 2024-04-19 14:38:17 +0200  77)     __uint32_t =
tv_sec;		/* Seconds.  */
	alx@debian:~/src/gnu/glibc/master$ git log -1 5361ad3910c --stat;
	commit 5361ad3910c257bc327567be76fde532ed238e42
	Author: Florian Weimer <fweimer@redhat.com>
	Date:   Fri Apr 19 14:38:17 2024 +0200

	    login: Use unsigned 32-bit types for seconds-since-epoch
	   =20
	    These fields store timestamps when the system was running.  No Linux
	    systems existed before 1970, so these values are unused.  Switching
	    to unsigned types allows continued use of the existing struct layouts
	    beyond the year 2038.
	   =20
	    The intent is to give distributions more time to switch to improved
	    interfaces that also avoid locking/data corruption issues.
	   =20
	    Reviewed-by: Adhemerval Zanella  <adhemerval.zanella@linaro.org>

	 NEWS                         |  9 ++++++++-
	 bits/utmp.h                  |  4 ++--
	 login/Makefile               |  4 +++-
	 login/tst-utmp-unsigned-64.c |  1 +
	 login/tst-utmp-unsigned.c    | 40 ++++++++++++++++++++++++++++++++++++++++
	 sysdeps/gnu/bits/utmpx.h     |  2 +-
	 6 files changed, 55 insertions(+), 5 deletions(-)


>=20
> I don't know the history =E2=80=A6 did it use to be a signed integer and
> someone decided to buy some time by making it unsigned? This is a minor
> detail for the bad time() usage, where 32 bit vs. 64 bit time_t might
> be more serious. Also the macros being checked for this compatibility
> mode differ, but I am not sure how closely the man page want to follow
> glibc here.

We should document the change.  If anyone wants to send a patch, I'll
review it.  I won't write it myself, because I'm not an expert in
compatibility code between 32 and 64 bits, so I prefer if someone more
expert makes sure the documentation is correct.

> At least the type of tv_sec should match, I guess.

Yes.  And we should probably document the old type in the HISTORY
section.

> Now I have to think how elaborately I want to handle possible overflow
> from time_t assigning to uint32_t with the recommended way of using
> gettimeofday() for utmp =E2=80=A6

If you show some code, we can have a look at it.  :)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--kdnfy552ljnuhu6v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfBwtsACgkQ64mZXMKQ
wqmRjQ/5Achwvexwf2UOe9gPH9p6aH8+xl5asb22xb2dF7Ffw4JENtjcGboo8MjM
myCe23yc+gKXOFhWDfyCg4yi4s8Q1sWMKo8OlUg1o8pKXNY+bIKXds86KZD8pSqi
nwiLWQ5SJJeC38UzCiTAhFjMMnjHumrPXKgKUHGins2DbobITsvgbhqzUiHgikJA
C24ooDcCwvJgNDiS2h/3H0isHRyIc6ht0NuuoM/1kb7du6eDNbTQR4PMB3I1o0/N
DwJENzlNa4A0yk6v+wMqMwmlKlPqz9V6UvKKAxav/q2YXgzsOVjk/1muZaZGWmm9
uvMJnE/WylTnZjIToCOpYtiBjUM0EetE/OWO23o9dUMSNS8Wy6a6eLhV7Sx4xRFY
seRLlYRBCvF4rQ/sOBNBamWWkGXaLpjSgJWkw292FvWacqs7xKoD9oNZ5DQd3sga
UJ8zzIJBI4mD6hiIe7WXgmwl0M7KvU0NIOU9DSCz6NyFLD8giW5PKgRA9pynECf8
g7r1sk4v0VQSmAcFtI9YntAGViRV+zs2a2TTI86G66aFs8930kQ9XPwcjbnrJOyu
+egMRJf1/VFwPW546kf7ywq2nusgpumXao0uR2FNmSUXLLZGR+I2wv+DoXXI2Nqs
ygUpCzlGXFV17/6ssPL66Qioyg54s1BcCimnY3ruVbvxlpG+GCE=
=a30o
-----END PGP SIGNATURE-----

--kdnfy552ljnuhu6v--

