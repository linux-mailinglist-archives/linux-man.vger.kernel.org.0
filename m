Return-Path: <linux-man+bounces-2188-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D26FCA00233
	for <lists+linux-man@lfdr.de>; Fri,  3 Jan 2025 02:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96C7316319D
	for <lists+linux-man@lfdr.de>; Fri,  3 Jan 2025 01:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 376F6224F0;
	Fri,  3 Jan 2025 01:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bh8zW7gE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E855E8F64
	for <linux-man@vger.kernel.org>; Fri,  3 Jan 2025 01:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735866538; cv=none; b=mx31If7qNa0MbEhmOgidKejlfh3HyFduKGq0P/k6mnD4Z9lVykv6Tm5lwm/6cACovwJXW8NXP7Yub0yiS+uVVb825bSy7+v1lNhQsRarYiyzROX8IctJapExxFlRkG+atPDVFKaxHZmAMRGHrKjQsRc4zpcjRV926QrEnaMbmPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735866538; c=relaxed/simple;
	bh=GHiDuTDk7oKPURBAp/dP5m/ND4Ftg40LXCeaCmmXnz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fGGDQn+wLAuer6jxDZIAfqYiS56hnH2JvCiR+tGsn2PRM9eqi83xLCwVsvPaE3ZVoezZyuMPmiXosif0rNaHeOvu/W337hBdgnSoooE1F4VF++ioYsA8ZXgS7aPMQ8+tYjZdcOHxxkHcyCy7wPfTJmxha4GiYOO2WNFq7ng0qhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bh8zW7gE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51744C4CED0;
	Fri,  3 Jan 2025 01:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735866537;
	bh=GHiDuTDk7oKPURBAp/dP5m/ND4Ftg40LXCeaCmmXnz4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bh8zW7gEPjpKWrxIrbOmraHkY1Ufj8Kt3Ex3EjWS4faEIISvU1Ht+H8RLgGU2SwSf
	 viCQTkApAwkxWnn4/yygiLya0SRBmiPIpOpBDmqfepZ0X8lSYukqzuEO1bzvFbaUTQ
	 1BOf7FH3aFOnyYqKtyIyccUSSNcldrHJKTijZnhfc7ogrR/hp1kbbrOjPm6NlvMha3
	 ZWeoPK5C6jLSXdFMrVKnUC0y7Tur7JNySbtA6UDzmfmMnLxs+dim2xACO4qa473UVb
	 iRlD+cfdnaMDoSVxYK8Ezqpu3weLpaw5jfmDUZqpeYQruYWOIob3nG5px+aiEUS7Fx
	 8HbLsGxchrM6Q==
Date: Fri, 3 Jan 2025 02:08:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: Florian Weimer <fweimer@redhat.com>, mtk.manpages@gmail.com, 
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
Message-ID: <72vgn5gg3vmishpnt2ldliupw4ri6f3ghy3ng7zgneii5xijwf@5eebjda3joi3>
References: <Z3W_qgawqyEB-QrA@comp..>
 <ltdxctn6eghheiagtjfqwji22xdapzi63nvuxttgvvmh4v2236@6enzyka7yaks>
 <87ikqxee2y.fsf@oldenburg.str.redhat.com>
 <akntzhpuou75xnct7ymvajyqerfd5vpumzpjjqw3wbqyz67nri@grdc4nyaspkw>
 <Z3bt-bQIIdWPEHgl@comp..>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lh4cvmatcvhcotld"
Content-Disposition: inline
In-Reply-To: <Z3bt-bQIIdWPEHgl@comp..>


--lh4cvmatcvhcotld
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: Florian Weimer <fweimer@redhat.com>, mtk.manpages@gmail.com, 
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
References: <Z3W_qgawqyEB-QrA@comp..>
 <ltdxctn6eghheiagtjfqwji22xdapzi63nvuxttgvvmh4v2236@6enzyka7yaks>
 <87ikqxee2y.fsf@oldenburg.str.redhat.com>
 <akntzhpuou75xnct7ymvajyqerfd5vpumzpjjqw3wbqyz67nri@grdc4nyaspkw>
 <Z3bt-bQIIdWPEHgl@comp..>
MIME-Version: 1.0
In-Reply-To: <Z3bt-bQIIdWPEHgl@comp..>

Hi,

On Thu, Jan 02, 2025 at 08:50:17PM +0100, Arkadiusz Drabczyk wrote:
> Here is the minimal example for pthread_mutex_lock() with all checks:

[...]

Thanks!

> > Arkadiusz, would you do the honours writing a patch?  Should I?
>=20
> I could do that but there is one more problem here - most pthread
> manpages mention EINTR only to say that they don't return it except
> pthread_cond_init.3:
>=20
> $ find . -name "*pthread*" -print0 | xargs -0 grep EINTR

In this repo, we respect POSIX recommendations.  You can safely pass
filenames to xargs(1) without needing -print0 or -0.  :-)

	$ find man/ -type f | grep pthread | xargs grep EINTR;

> ./man/man3/pthread_atfork.3:.BR EINTR .
> ./man/man3/pthread_tryjoin_np.3:.BR EINTR .
> ./man/man3/pthread_cond_init.3:\fBEINTR\fP
> ./man/man7/pthreads.7:.BR EINTR .
>=20
> that says:
>=20
> > EINTR  pthread_cond_timedwait was interrupted by a signal.
>=20
> It's hard to say if it ever really worked like that because in
> man/man7/pthreads.7 it says that no EINTR has been the requirement
> since 2001:
>=20
> > Most pthreads functions return 0 on success, and an error number on
> > failure.  The error numbers that can be returned have the same meaning
> > as the error numbers returned in errno by conventional system calls
> > and C library functions.  Note that the pthreads functions do not set
> > errno.  For each of the pthreads functions that can return an error,
> > POSIX.1-2001 specifies that the function can never fail with the error
> > EINTR.
>=20
> Today POSIX still says that pthread_cond_timedwait() cannot return
> EINTR
> https://pubs.opengroup.org/onlinepubs/9799919799/functions/pthread_cond_c=
lockwait.html
> and in my experiments it really doesn't, both with glibc and musl.
>=20
> pthread_cond_init.3 has been added in 1998 under linuxthread/
> directory, maybe the behavior specified by POSIX was different than
> the initial design but OTOH it's quite surprising that no one noticed
> the bug for so many years, I wonder how many people still check for
> EINTR in pthread_cond_timedwait even though it's not necessary (but
> harmless).

The history of that manual page is quite complex.

	$ git log --oneline --graph --abbrev --date=3Dshort --format=3D'%h (%ad, %=
cd; "%s")' --follow -- man/man3/pthread_cond_init.3 | cat
	...
	* ec557d3c5 (2024-11-13, 2024-11-13; "pthread_cond_init.3: tfix")
	...
	* d88513fd7 (2024-06-16, 2024-06-16; "man/, share/mk/: srcfix, and remove =
corresponding XFAIL exceptions")
	...
	* b841c4f3c (2024-05-19, 2024-05-19; "pthread_*.3: ffix")
	...
	* dcde2f703 (2024-04-26, 2024-05-02; "man/, share/mk/: Move man*/ to man/")
	...
	* ee7b1c770 (2024-02-26, 2024-02-26; "man3/: Say cancelation instead of ca=
ncellation")
	...
	* c6d039a3a (2023-10-31, 2023-10-31; "man*/: srcfix (Use .P instead of .PP=
 or .LP)")
	...
	* 8a00cac75 (2023-10-04, 2023-10-04; "pthread_*.3: ffix (semantic newlines=
)")
	* 74235f157 (2023-10-03, 2023-10-04; "pthread_*.3: ffix (paragraphing)")
	* 13151ec52 (2023-10-03, 2023-10-04; "pthread_*.3: Remove AUTHOR section; =
add copyright; adapt TH")
	* c1c253d0e (2023-10-04, 2023-10-04; "pthread_cond_init.3, pthread_condatt=
r_init.3, pthread_key_create.3, pthread_mutex_init.3, pthread_mutexattr_set=
kind_np.3, pthread_once.3: Update the glibc pages with the debian/glibc ver=
sion of them")
	...
	* a254db8b3 (2023-10-03, 2023-10-04; "pthread_cond_init.3, pthread_condatt=
r_init.3, pthread_key_create.3, pthread_mutex_init.3, pthread_mutexattr_set=
kind_np.3, pthread_once.3: Import pages from glibc")
	* 87d09778d (2023-10-03, 2023-10-04; "Revert "linuxthreads, linuxthreads_d=
b: Directories removed (preserved in ports repository)."")
	...=20
	| * a3db24d46 (2005-07-03, 2023-10-03; "linuxthreads, linuxthreads_db: Dir=
ectories removed (preserved in ports repository).")
	| * 2988d2724 (2004-12-22, 2023-10-03; "(CFLAGS-tst-align.c): Add -mprefer=
red-stack-boundary=3D4.")
	| * f7f73b1ca (2007-07-12, 2023-10-03; "2.5-18.1")
	...=20
	| * 869af9b6a (1999-05-23, 2023-10-03; "Correct example.")
	| * 31b1e42d5 (1998-03-11, 2023-10-03; "LinuxThreads library.")
	|/ =20

(There are a few commits that don't show up there, and I don't know how
 to show them.)

Notice the difference between author dates and commit dates in the
bottom 5 commits.

Those pages were removed in the glibc repository as obsolete in 2005.
Debian imported them into a package, but they weren't maintained for a
long time.  At some point, I realized about their existence, and decided
to import them, with all of their git gistory, into the Linux man-pages
project, to start maintaining them, and eventually de-obsolete them
(which as you can see, hasn't happened yet; I need people like you
 reporting their problems).  I imported them last year.

> So I was thinking that "pthread_mutex_lock(3), pthread_cond_wait(3),
> and related APIs." line could be completely removed from signal.7
> because there is no pthread API that would return EINTR and EINTR
> should be removed from the list of valid error codes in
> pthread_cond_init.3. Does it sound good?

Sounds good.  Please CC Florian and libc-help@ if you send a patch, so
they can review.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--lh4cvmatcvhcotld
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmd3OKEACgkQnowa+77/
2zLzEBAAnQdHwGLvqkrU2jPF76xTuCMNg2c0Allwp/RiJBn1Wcbbn2hfJthmDh6s
FpmHdbaQwiq4cMvloJ1mhKFc7C5A56Axhxc7WNqjGhRt9pDXMDlb73i6A1qNLsQb
V980u7e5bdAgbepilddfsLEtvLJ0Q5+7v/cNkUIGEtKirVCcNOPMnUWAa7dxEd/Z
Lop1J1MCEmx6HUZkIU1QfIuu5gtt0sxMiSy+F1AXypO0pyi63RPgTjh9dE7GnzwC
aFUOWA2YViFGhEZO1MYRbISpzcSNyMcqyrq0Gn2f4JqMonXRXupaaXi3dePqRX5t
AvXCY4D8RHfjHfwiiGRHg8H8rk+qKDu7dqq9qrdXxeSOsYe+gEsrdzoPuBIsxqAn
HtdeCwBKj7K+66T4u050mEhzNKp9OJE1Nzy5AjtZlzerl8s1DSyob6Wgf9UJwJZo
oLOxpZU/wGbzVeLO4lpDtl3ux+JLIr8ZPqKTMEN0KNVXNSq5q+eeVBF5ZrJaO8GR
LCkknIH8lfglYCIa0gg9yMD3T0pXXCtGtOLlbX47FgAJ+GKxr+YX8ED7YrSoAfdH
C/smx1BpxSi3g2ZTqT8qXKcirmdpHGi1/LnuSD6Q1vKe+/tHWS1CtZxGS5djwWbc
HniL5/t6h/zg6t+xqhQCnfn/1EggQ+rT/qjyKE4vsxFdnXZqjUk=
=o78K
-----END PGP SIGNATURE-----

--lh4cvmatcvhcotld--

