Return-Path: <linux-man+bounces-2514-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B522A4647B
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 16:23:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE8C93B3388
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 15:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03090221F39;
	Wed, 26 Feb 2025 15:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7ajeEzF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D6322157A
	for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 15:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740583393; cv=none; b=N8keV9DcNbfB+pYF25RLEtRfKNDNHOLo3nw4ZCOzdTsBtxQrVCBw1E2m9kBLlcMg2o8hgnIKHJE6nTe0BTzlVfsSEQOA7WgEP7uMd75Aa75qdxc0jMqd4Jm5OeWvfhUDf9ADK6LILweEmODZpHLf2xqMkjpGZp1G1uqAi4j7opU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740583393; c=relaxed/simple;
	bh=nd73+3pRApPoAu4qOVh0gdmN6icfcSox5E/qd2VVrnM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UcyfQHLuEQ9hzeqowS7bpaU+rQ+Gx3I5HZZzaSqoUGOUhzsVFPjhFFX5utyfwCw5TC08b1RH1mIvVpFpWbqfR1uphr42/+h2wv/mMH1DCH/VgkhdOep/zAxgiXNe9136KCi20R//v92f4oDNAOMOwkQU2hTanPgWXX1geMcNNpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7ajeEzF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3918CC4CED6;
	Wed, 26 Feb 2025 15:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740583393;
	bh=nd73+3pRApPoAu4qOVh0gdmN6icfcSox5E/qd2VVrnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V7ajeEzFwI3KXgvtjzgCrIJ1D92saMioTD/2d+ZrNirTzWc9nInR9K5NNxLCqnbOK
	 TyCLTqyQRFfioV5NjdzTcJI48MX1ctnw06g3rZ5tzkTK9e+iMLt9V7Crd5aw0TlL43
	 nYijoyqgxDuLg6CtPSvPpFCW0epaHw52uc0bmQgNyHYAIxgBkfKgkntWCBuchjMuPJ
	 gN7N4A+jtyIH//VmDDlxVo3oQL9PP7Ds3st3/wBQ3790BZxD7eOC0b6ZBW35+BTJfo
	 hQsg9em1zaX37LYcJDx8qIMpdIe+c2F2KiHgSOsjbkZUZFpUkn0zkBszIiAaaYd+xw
	 IyZh/l9APkfCg==
Date: Wed, 26 Feb 2025 16:23:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] add time64 copies of system calls
Message-ID: <spyqfjxpxqpg5uotsadzacxsxwret4topf6nrmzcfakpujabbv@k5n3cjbo74qm>
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <20241118225148.fgrvxxg2p6on4nl3@devuan>
 <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
 <fb5d9a20-9937-4cf7-b8e0-99710d88f4bc@redhat.com>
 <e2496012-6e25-4e85-ad27-0104dad7463a@juszkiewicz.com.pl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lynqgwvxcuj5waeg"
Content-Disposition: inline
In-Reply-To: <e2496012-6e25-4e85-ad27-0104dad7463a@juszkiewicz.com.pl>


--lynqgwvxcuj5waeg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] add time64 copies of system calls
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <20241118225148.fgrvxxg2p6on4nl3@devuan>
 <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
 <fb5d9a20-9937-4cf7-b8e0-99710d88f4bc@redhat.com>
 <e2496012-6e25-4e85-ad27-0104dad7463a@juszkiewicz.com.pl>
MIME-Version: 1.0
In-Reply-To: <e2496012-6e25-4e85-ad27-0104dad7463a@juszkiewicz.com.pl>

Hi Marcin,

On Wed, Feb 26, 2025 at 03:48:19PM +0100, Marcin Juszkiewicz wrote:
> > We absolutely can and should add documentation for the kernel syscalls =
since they are
> > unique syscalls that take 64-bit time_t variants for a 32-bit userspace.
> >=20
> > These syscalls are the 64-bit time_t variants to allow userspace to bui=
ld 32-bit targets
> > that have 64-bit time_t e.g. alternate ABI i686 with 64-bit time_t.
> >=20
> > The userspace interfaces are hidden behind a 64-bit time_t though and s=
houldn't change
> > (though the ABI changes).
>=20
> I started looking at it - wondering how much info should be there. Simple
> like patch below or more complex one?
>=20
> troff is awful...

:-)

> diff --git a/man/man2/adjtimex.2 b/man/man2/adjtimex.2
> index 7a87ac654..6dde493aa 100644
> --- a/man/man2/adjtimex.2
> +++ b/man/man2/adjtimex.2
> @@ -10,7 +10,7 @@
>  .\"
>  .TH adjtimex 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -adjtimex, clock_adjtime, ntp_adjtime \- tune kernel clock
> +adjtimex, clock_adjtime, clock_adjtime64, ntp_adjtime \- tune kernel clo=
ck
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -22,6 +22,8 @@ .SH SYNOPSIS
>  .P
>  .BI "int clock_adjtime(clockid_t " clk_id, " struct timex *" "buf" );
>  .P
> +.BI "int clock_adjtime64(clockid_t " clk_id, " struct timex *" "buf" );
> +.P

I'd move it to the bottom of the SYNOPSYS, and add a comment above
saying it's only available on 32-bit systems (if there are exact macros
that define those platforms, it would be interesting to use that):

	// Only in 32-bit systems:
	...;

or

	#if (...)
	...;
	#endif

>  .BI "int ntp_adjtime(struct timex *" buf );
>  .fi
>  .SH DESCRIPTION
> @@ -557,6 +559,10 @@ .SH STANDARDS
>  .P
>  The preferred API for the NTP daemon is
>  .BR ntp_adjtime ().
> +.SH HISTORY
> +Linux 5.1 added
> +.BR clock_adjtime64()
> +call on 32-bit architectures as part of handling Y2038 problem.

For a start, this should be enough.  We can later add some more details
if needed.  I also don't want to waste much space in the manual pages
about these.  Maybe we could have a generic description for xxx64() APIs
elsewhere, which clarifies what all of these are.  Maybe a new Y2038(7)
manual page would be a good place for that.


Have a lovely day!
Alex

>  .SH NOTES
>  In struct
>  .IR timex ,

--=20
<https://www.alejandro-colomar.es/>

--lynqgwvxcuj5waeg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme/MdYACgkQ64mZXMKQ
wqlEzA/+LMr/WvJ6Puiq0TTyRSqDJb4rmqICcb5+YBcE4fUsRjfDOEY2Zk1tZ23R
yYeqLadhwJYiu7XZv6Op2GPDJ39CzlwZY/gvXO40ZbWT7urx6HiLFviGVkMTWloc
h3dhlKbbTVVhZZKwuyr6zskbP6W4PoLJTPlqStIZupAdDUJw6dVhgxSHxsvfTWPZ
Ex+wkPt/GdvfXNtAfirDYo66R4mHCajGJXcQRRalKwKKC5vH/IDyEIyT3BjJfseS
03/AJzCpsihVqIDnKRNsHsdW4xUBnJNLPJ/NdRWMEP+vElDoX3eHChMFII0HmEpl
MfDfOOngb8aIX3AwC1X7qDtfliFKox1wzDAxT6zcNrH70r5CgLR/w9ewIr4JMUlP
e1bZqp+Kdlsr77RbdNQ5vrLk0tbhCbY5euaNlA6DlXDEpat4SGmonoeR8jPUVAXF
VutGz6X3VuIdzXPWT83+m3h9e7IWwBBUBOfOtc+Wbq2jmln9UERTAUzxzcxInuoT
QpypfLwanwOqP//n80hnDXtx0IfK4oOsodz3C+VG5Y9wUlJN8mr9XkfsqqsSwOhy
S5OygiwjYTOyytA5ybwzIAOwKtt26aDoI3wdJlW8AAskm/+OC/0ldl8Wteq9QoUF
UHSSaB8fq0Nt+5zsSfnquIZf8DYjaEt0a/SHdr3hc/Pb+L5at60=
=s/LH
-----END PGP SIGNATURE-----

--lynqgwvxcuj5waeg--

