Return-Path: <linux-man+bounces-2975-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4EBABB21E
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 00:13:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E608E1895C39
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 22:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 099961F463E;
	Sun, 18 May 2025 22:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbvxPs1o"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D4582866
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 22:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747606416; cv=none; b=c1eJXu0lPO+UylNrB45EU+o+rf/z4/WobqnA+FflVMj2CsYUWSz8TOOQaHaibLapxoEbubywcZG89pt5kyUXDvH+fkaeQyBGK30CdngdKmkU+I+hp7/tfKV8N6xPi2MwTxJ0P8axj9O9BXoJBzVXLBdHkTIuB/5JHi/eHoLB8kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747606416; c=relaxed/simple;
	bh=9VA9yZsOhLgjzh/eI447sP0sIZZ/WIPMacM7fwoyrAc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Utn7rJp+NNSTdJpWrMF3vKsQjpvaA92NwTWR9YkKN6j7UoRMHX86ExwzCc8lQ0HCYcQIX3QGJhmrMPlDeMTlC4hmObIta+fPUX2Z3Zu3OUR1rNaYdDmbedOjy5Lr2vNGKeN2/BMvi1DDixraf8nQQQkTdbOnFv37ztbSHI1ytiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbvxPs1o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33216C4CEE7;
	Sun, 18 May 2025 22:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747606416;
	bh=9VA9yZsOhLgjzh/eI447sP0sIZZ/WIPMacM7fwoyrAc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IbvxPs1oHBaBvmGIoS1n/I0yEVrwgxnfo2azver/FEdq69yYfID8e8afJRu4zk8Eo
	 iGhaUARU0iGyyXbyCLyFu/g1cHIR3SMVDxord5kj5kQ4Vt5SEn9gF3GpjCQNweSj4T
	 jNi2Sr03sgru+HMu5z6VBWnK0IOXpncvK3okgrR+tyOmUKWq84yP+i7WMv2S4emwYg
	 XSu3zKABPLu6Erf3mOcLEtQVoHKaXFrCn7i4sGE6AlSxM5IjoQ+CwIHW9AbjZsoVcP
	 INMP/j4MvJ+Y2nUxIQmayvQdx1hBB5O1TX5ptoYA1MyKeyM2C4EAI152RcXE2bF5pJ
	 frUXOFd/EJf0A==
Date: Mon, 19 May 2025 00:13:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: POSIX.1-2024 requires 64-bit time_t
Message-ID: <yjoqs5ewvkw73ahznuai5oytla5lfwbrlix46nt5oq5d57pyev@n5gnlojewevo>
References: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
 <87plg5hnb4.fsf@gmail.com>
 <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
 <6ipmw5huiygdt3yhcsahlufnsnm7xfifxlrmlqj5fpjtzi7fvl@bq4ikhcvyqde>
 <CAMdZqKEgXzBKQ6hgHC0Qip1a+h4BthVJ2W_78-TdnnUzbzQO2g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zebc65lxrak5j3xl"
Content-Disposition: inline
In-Reply-To: <CAMdZqKEgXzBKQ6hgHC0Qip1a+h4BthVJ2W_78-TdnnUzbzQO2g@mail.gmail.com>


--zebc65lxrak5j3xl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: POSIX.1-2024 requires 64-bit time_t
References: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
 <87plg5hnb4.fsf@gmail.com>
 <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
 <6ipmw5huiygdt3yhcsahlufnsnm7xfifxlrmlqj5fpjtzi7fvl@bq4ikhcvyqde>
 <CAMdZqKEgXzBKQ6hgHC0Qip1a+h4BthVJ2W_78-TdnnUzbzQO2g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKEgXzBKQ6hgHC0Qip1a+h4BthVJ2W_78-TdnnUzbzQO2g@mail.gmail.com>

On Sun, May 18, 2025 at 03:09:07PM -0700, Mark Harris wrote:
> On Sun, May 18, 2025 at 3:06=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Mark,
> >
> > On Sun, May 18, 2025 at 02:52:30PM -0700, Mark Harris wrote:
> > > For glibc, all 64-bit platforms, and the most recently added 32-bit
> > > platforms (arc, riscv32, or1k), use 64-bit time_t.  All older but
> > > still-supported 32-bit platforms (arm, csky, hppa, m68k, microblaze,
> > > mips, powerpc, s390, sh, sparc, x86) currently use 32-bit time_t by
> > > default but can use 64-bit time_t with -D_TIME_BITS=3D64.  For musl, =
all
> > > platforms use 64-bit time_t.
> >
> > Thanks!
> >
> > > POSIX.1-2024 requires that an implementation offer a conforming
> > > environment that supports 64-bit time_t, but it is also free to offer
> > > other non-conforming environments that use 32-bit time_t.
> >
> > Are you sure?  That's not what I read from the standard.
> >
> > POSIX.1-2024 says something like that for other types; for example:
> >
> >         The implementation shall support one or more programming
> >         environments in which the widths of blksize_t, pid_t, size_t,
> >         ssize_t, and suseconds_t are no greater than the width of type
> >         long.
> >
> > But for time_t it is very strict:
> >
> >         time_t shall be an integer type with a width (see <stdint.h>) of
> >         at least 64 bits.
> >
> > It doesn't seem to support such alternate environments for time_t.  Of
> > course, an implementation is free to not conform, but then it's a non-
> > conforming implementation.
> >
> >
> > Have a lovely night!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>
>=20
> https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/unistd.h.html
>=20
> "Implementations may support multiple programming environments with
> some of them conforming to this standard and some not conforming. The
> _POSIX_Vn_ILP* and _POSIX_Vn_LP* constants, and corresponding
> sysconf() and getconf calls, only indicate whether each programming
> environment is supported; they do not indicate anything about
> conformance of the environments that are supported. For example, an
> implementation may support the ILP32_OFF32 environment for legacy
> reasons with a 32-bit time_t, whereas in a conforming environment
> time_t is required to have a width of at least 64 bits. Application
> writers should consult an implementation's POSIX Conformance Document
> for information about the conformance of each supported programming
> environment."

Thanks!  Makes sense.


Cheers,
Alex

>=20
>  - Mark

--=20
<https://www.alejandro-colomar.es/>

--zebc65lxrak5j3xl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgqW4wACgkQ64mZXMKQ
wqmZzw/+NRI0gqZs6qKEE0CCOsDVIdZHlGtuek76sKwnUUnW8eD0D3bouMdM/tWc
2vWarViMooC/a3fNqQAi/GXR35/Kj+rCnGVt2h0MheguhRfzM0yqCv5ZUuEad7MT
z3wnSeZQzlx6QAMRtbfCL173tR0vHy4HU2m1VTqzxDZWnoiJIMCpD3aVf3w2i+iM
TtIm2klUhg9o4NBH9Iob+oQn0VAAdXy0Aeg7KmT5UBzf7AghaeaNznk46DNmOHRP
WEs0o6FOM9GwTo8wWEc+kHJalqDnBvxPtIYTCb/ox3+cqCpwUo7cfaa0+493M8ZE
6JpqyCNjz0bsUIOHu95TGg+icOIF18mLSZBYU7NrXtvdYvcHy3qnQIQlC8yyYdMh
XSygatyqeRsIKpyxmsuQG0vvjUEw6gfMPqEcNr3K6LP9/KlfW/l+wbHhpB26kKSU
MmMxOxhidV9dL4E0QRnDqxrgP4k4IYowyerRpfGVN+Ew/QCwgNG+xryoNtSo4XyD
hUBrXwlA39EBynstpxQ0kGzl4xjnT5499gTNw0g1ZJzNZP/CSYUUip0cam61JfrU
a/lHHAp4el/ltDry5PVD2MVDvL+LfJGjujg8MlRF+NV4W4v6YMaS5aJwZsfjpm9E
Ct/Rx5fP+RdzAokb3BMN0C7zisLtaPBnUM4AnLpiZenP+WDdax4=
=qg2d
-----END PGP SIGNATURE-----

--zebc65lxrak5j3xl--

