Return-Path: <linux-man+bounces-3131-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A1FAD4F66
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 11:09:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 712661886651
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 09:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52F1F253F07;
	Wed, 11 Jun 2025 09:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaGR7POr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B4925394C
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 09:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749632979; cv=none; b=gGqYQtckKSY9JM8c5XemekiyZC8o5Ch/f7TdNTo94R0LQmfpbfMvbEAadM7JHqa5i1pk3zgH8QTGT1r2mKyybSJGQtzTYXHiOeb+m6P/FytGcJ4b6hblODzcALkSML6C9yjZMSMKEV78cJPIGrXQPs4WrlI4LndYnBd5+J+vneI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749632979; c=relaxed/simple;
	bh=TdDBQiXWlvDfITfjRdpm5aAb58jdvNYQBT5GkBqGCM0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eG/6MnChlPcYcFbPiaBzIEXbWKtcgvNvox0EwhjI8GykMHHjotNEZ0enLekW22JcsHhzaBj7AoWUWehBmnn7OGZKus7Zk1P5nU1z5m+Z8vbASmmTWP30Zgmcs4vf8KNaBKz8egAZ0yNm7w1HjcZOY2bP7L0yaeKe8DsKi/mpJRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaGR7POr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71C69C4CEEE;
	Wed, 11 Jun 2025 09:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749632975;
	bh=TdDBQiXWlvDfITfjRdpm5aAb58jdvNYQBT5GkBqGCM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uaGR7POrd7uNfIj4HcxZQgpusM4cKUJ8ohi0um9fTnHoxIcrThEfxCajmDyVK+E98
	 fm+QHT/Zc4YRMp/PztoLjJpkHMRsIDCEmmT7Q8xvgsf9lLYgwaV3aINdB/dGQDFYjh
	 Dl9Ga09zBkY3j7Xhlfg++kcy+RtdqGVgfy6Au0l7kcrVYZnF3pcSvQukSqfaKvbawO
	 rD8XCw16ZYKf/EsTrEEYGP515c+dI9UNGgGqfKYBFcvSsXEa4NBmlh6hu92vj7AMyt
	 yW99pJlWBxzWiHr3iNxnGb61J9Jh+46TtyjQrgM8HEuS8Q7hydLHHawZdCu5dmOCZq
	 uwnNTblXU+5jA==
Date: Wed, 11 Jun 2025 11:09:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v3] man/man2/cachestat.2: add a man page for cachestat()
Message-ID: <4b6ceu47mb26wrxpbwlrhtduosvmbtu7uyw4urp6y2kw2bptey@zmi66ue4vsgl>
References: <20250530124829.214375-1-technoboy85@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dzfznii24sghb22h"
Content-Disposition: inline
In-Reply-To: <20250530124829.214375-1-technoboy85@gmail.com>


--dzfznii24sghb22h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v3] man/man2/cachestat.2: add a man page for cachestat()
References: <20250530124829.214375-1-technoboy85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250530124829.214375-1-technoboy85@gmail.com>

Hi Matteo,

On Fri, May 30, 2025 at 02:48:29PM +0200, Matteo Croce wrote:
> From: Matteo Croce <teknoraver@meta.com>
>=20
> Add a missing man page for cachestat().
> The text was converted from the commit message:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dcf264e1329fb0307e044f7675849f9f38b44c11a
>=20
> Signed-off-by: Nhat Pham <nphamcs@gmail.com>
> Signed-off-by: Matteo Croce <teknoraver@meta.com>

Thanks!  The patch looks good.  I was going to push it, when CI reported
some issues:

	MANDOC		.tmp/man/man2/cachestat.2.lint-man.mandoc.touch
	mandoc: .tmp/man/man2/cachestat.2:60:3: ERROR: skipping unknown macro:  If
	mandoc: .tmp/man/man2/cachestat.2:27:2: STYLE: fill mode already disabled,=
 skipping: nf

See comments about that below.

> ---
>  man/man2/cachestat.2 | 111 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 111 insertions(+)
>  create mode 100644 man/man2/cachestat.2
>=20
> diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
> new file mode 100644
> index 000000000..12dbd900d
> --- /dev/null
> +++ b/man/man2/cachestat.2
> @@ -0,0 +1,111 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH cachestat 2 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +cachestat \- query the page cache statistics of a file
> +.SH SYNOPSIS
> +.nf
> +.B #include <sys/mman.h>
> +.P
> +.B struct cachestat_range {
> +.B "    __u64 off;"
> +.B "    __u64 len;"
> +.B };
> +.P
> +.B struct cachestat {
> +.B "    __u64 nr_cache;"
> +.B "    __u64 nr_dirty;"
> +.B "    __u64 nr_writeback;"
> +.B "    __u64 nr_evicted;"
> +.B "    __u64 nr_recently_evicted;"
> +.B };
> +.P
> +.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_=
range ","
> +.BI "              struct cachestat *" cstat ", unsigned int " flags ");"
> +.nf

This should be .fi  (.nf is no-fill mode, while .fi ends that --it
starts fill mode again--)

> +.SH DESCRIPTION
> +.B cachestat()
> +queries the number of cached pages, dirty pages,
> +pages marked for writeback, evicted pages,
> +and recently evicted pages in the byte range specified by
> +.I .off
> +and
> +.I .len
> +in the
> +.B cachestat_range
> +structure.
> +.P
> +An evicted page is one that was previously in the page cache
> +but has since been evicted.
> +A page is considered recently evicted if its reentry into the cache
> +would indicate active usage under memory pressure.
> +.P
> +The results are returned in a
> +.B cachestat
> +structure, pointed to by the
> +.I cstat
> +argument.
> +.P
> +The
> +.I .off
> +and
> +.I .len
> +fields must be non-negative.
> +If
> +.IR .len\~>\~0 ,
> +the queried range is
> +.RI [ .off ,\~ .off+.len ]
> +. If

The '.' should go in the previous line.


Have a lovely day!
Alex

> +.IR len\~=3D=3D\~0 ,
> +the range is from
> +.I .off
> +to the end of the file.
> +.P
> +The
> +.I flags
> +argument is reserved for future use and must be set to
> +.BR 0 .
> +.
> +.P
> +Currently,
> +.B hugetlbfs
> +files are not supported.
> +.SH RETURN VALUE
> +On success,
> +.B cachestat()
> +returns 0.
> +On error, \-1 is returned,
> +and
> +.I errno
> +is set appropriately.
> +.SH ERRORS
> +.TP
> +.B EFAULT
> +.I cstat
> +or
> +.I cstat_range
> +point to an invalid address.
> +.TP
> +.B EINVAL
> +Invalid
> +.I flags
> +value.
> +.TP
> +.B EBADF
> +Invalid file descriptor.
> +.TP
> +.B EOPNOTSUPP
> +The file descriptor refers to a
> +.B hugetlbfs
> +file, which is unsupported.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.5.
> +.SH CAVEATS
> +Note that the status of a page may change after
> +.B cachestat()
> +retrieves it but before the values are returned to the application;
> +thus, the values may be slightly outdated.
> --=20
> 2.49.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--dzfznii24sghb22h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJR8wACgkQ64mZXMKQ
wqmpZQ//cP20mZEegcE4kG86sqww7gZTR3byIxRf6m6f5WJE57p058Kf7iZBcwve
FoaVmUAFYJmJy0TxLyx+RY0O0YkCd1BxbwogahTY5My39kqXcDNnGgA7AlaNJj58
J3beMV9nqgiuRxVnAG5ZTxlIfSq2jZnwL2+JsxwLuCHEklBVra8JRw2K4xd3KS/1
oetNHs8v0CF2bCLo4d5cqnYjmduGpvLWcV8GAGbUqVmTuWw7/7cg2LXzfcYRemQD
/x6C3yAD01JXW5DVMoMaHO0LSz1dGe4t8wq/Ikyqy6xOAkmUaIqWAswgqfNKHZxd
YkjK0AfK/8n6ag74pWARBKo501/x/YMqhohAKrqdXEJ9W/MCZkvOweq4osUk8zOf
O8WFAW4cOuNJENfvh+vzhpd8xXdA/VYGlBAHIwuT9Xs6Hsz8UzrhdyNm3YR9A8S7
2qS56GF1THqiG2W2a/1xLHh49wDhWsEk5HyVQQmqYmmXLzDDrZKPdYikdL4oT8zf
dwWHn10AYXD2T82/BF3cKJ0LSc1TaPWVU4fSSAOHlVu+u6SpMi+91enzC5Ff263l
hQK9hF8xZfXRffoJ6E0tarrPSJ8KxxpSSPeLflhKRSsEqBmU+G9OZ5jWNNC1EjSf
K+m3sN4gtrOADYIyXnUtd/0DhVVGKDbBez4DS/HRHuCvanaZE74=
=NAxN
-----END PGP SIGNATURE-----

--dzfznii24sghb22h--

