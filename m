Return-Path: <linux-man+bounces-3056-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0027BAC8B17
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 11:39:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96D023BCA75
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 09:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D04231834;
	Fri, 30 May 2025 09:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It1cuzBB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E95022370F
	for <linux-man@vger.kernel.org>; Fri, 30 May 2025 09:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748597698; cv=none; b=VaNhy9Yn6jswp716WK2WMHO15/x7Ncw6jW6+7o67oHbg9OZm2bItzD25XeDswfMsIPaXegC56EcRoVVkCc2psfkVU9OOnFtDRi35XRIliACZlTHJymacapWfiCtWEI1N3AnHkHMNzLY+z0gJsNgifHk/YAMaeW5z7A83kPVs7pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748597698; c=relaxed/simple;
	bh=+ceO8GP5D5vzehRMAf9/dg+P2a7LafTuk/pJegEIyZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jC8qSZfDS0Dgn/SRJR7xj3aDK9xyJQgmbuL5s2NrttOs0P02lZiXGrMiiHYvOB8fn5KAtL49B/dElx+6PXvl5qZo3broYNdIjmHNpIbAuR79eBEmY/X0fhdT0S2P3cPsepY16IJC/bt2W3LXchgOkXVMzvqcfzstWmxDn+mtg78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It1cuzBB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7709BC4CEE9;
	Fri, 30 May 2025 09:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748597697;
	bh=+ceO8GP5D5vzehRMAf9/dg+P2a7LafTuk/pJegEIyZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=It1cuzBBDQL1Hm8B/7TFVTgHo35udXDnlPY4d3mMtJkNqG5NFQ9fZObXu5VRVEUpL
	 pWkVN4Nhi7BsVo0Xvldj3bPNmAS+9BZmArfi47yiNPx+k6BfO8mLhIFqoX0J9S2DnL
	 rhFWLQt133qNvKYMAx5UjHxn5hh9bW2B0Cft7hRe/AdmOAbkTgVKJYiGJNRrznxsa6
	 XNBu2DiNxOQ1r4YLQAZUOcbGNPVcvkm9ogYGTORhK/hatiHb0JnRWfeJKro874vb50
	 ZxuVr2Rs4PtOHyz8OSlvt5ec4WJoC7rxCz8cWddZu9zQQvFx3ZN/nM/rTYEm0RWCCa
	 HiAF1RFmlF3HQ==
Date: Fri, 30 May 2025 11:34:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v2] man/man2/cachestat.2: add a man page for cachestat()
Message-ID: <ygaj25mik5pi743cu2bhff3vb4j4lvj35azystnnwadch42qkv@ttvsmqt6nxpi>
References: <20250526174308.202071-1-technoboy85@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4r64r4pgrmyh2rji"
Content-Disposition: inline
In-Reply-To: <20250526174308.202071-1-technoboy85@gmail.com>


--4r64r4pgrmyh2rji
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v2] man/man2/cachestat.2: add a man page for cachestat()
References: <20250526174308.202071-1-technoboy85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250526174308.202071-1-technoboy85@gmail.com>

Hi Matteo,

On Mon, May 26, 2025 at 07:43:08PM +0200, Matteo Croce wrote:
> From: Matteo Croce <teknoraver@meta.com>
>=20
> Add a missing man page for cachestat().
> The text was converted from the commit message:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dcf264e1329fb0307e044f7675849f9f38b44c11a
>=20
> Signed-off-by: Nhat Pham <nphamcs@gmail.com>
> Signed-off-by: Matteo Croce <teknoraver@meta.com>
> ---
>  man/man2/cachestat.2 | 106 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 106 insertions(+)
>  create mode 100644 man/man2/cachestat.2
>=20
> diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
> new file mode 100644
> index 000000000..e7f60d935
> --- /dev/null
> +++ b/man/man2/cachestat.2
> @@ -0,0 +1,106 @@
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
> +.PP

s/PP/P/g

> +.B struct cachestat_range {
> +.BR "    __u64 off;"

Since these lines only have 1 argument, s/BR/B/g.

See groff_man(7):

     .B [text]
            Set text in bold.  If no argument is given, a one=E2=80=90line =
in=E2=80=90
            put trap is planted; text on the next line, which can be
            further formatted with a macro, is set in bold.

     .BR bold=E2=80=90text roman=E2=80=90text ...
            Set each argument in bold and roman, alternately.

> +.BR "    __u64 len;"
> +.RE

This RE is spurious.

> +.B };
> +.PP
> +.B struct cachestat {
> +.BR "    __u64 nr_cache;"
> +.BR "    __u64 nr_dirty;"
> +.BR "    __u64 nr_writeback;"
> +.BR "    __u64 nr_evicted;"
> +.BR "    __u64 nr_recently_evicted;"
> +.B };
> +.PP
> +.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_=
range ","
> +.br

This br is spurious.

> +.BI "              struct cachestat *" cstat ", unsigned int " flags ");"
> +.nf
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
> +.PP
> +The results are returned in a
> +.B cachestat
> +structure, pointed to by the
> +.I cstat
> +argument.
> +.PP
> +The
> +.I .off
> +and
> +.I .len
> +fields must be non-negative. If

s/\. /.\n/

> +.I .len > 0
> +, the queried range is

The comma should go in the previous line.  Otherwise, it creates a
spurious space.

	.IR .len\~>\~0 ,

> +.RI [ .off ,\~ .off+.len ]
> +. If
> +.IR len\~=3D=3D\~0 ,
> +the range is from
> +.I .off
> +to the end of the file.
> +.PP
> +The
> +.I flags
> +argument is reserved for future use and must be set to
> +.BR 0 .
> +.
> +.PP
> +Currently,
> +.B hugetlbfs
> +files are not supported.
> +.PP
> +Note that the status of a page may change after
> +.B cachestat()
> +retrieves it but before the values are returned to the application;
> +thus, the values may be slightly outdated.

I'd move the paragraph from above to a CAVEATS section (see
man-pages(7)).

> +.SH RETURN VALUE
> +On success,
> +.B cachestat()
> +returns 0. On error, \-1 is returned and

s/\. /.\n/

s/ and/,\nand/

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

Please add STANDARDS and HISTORY sections.  You can have a look at
membarrier(2) for this:

	$ man -w membarrier | xargs mansect '(STANDARDS|HISTORY)' | tail -n+3;
	.SH STANDARDS
	Linux.
	.SH HISTORY
	Linux 4.3.
	.P
	Before Linux 5.10, the prototype was:
	.P
	.in +4n
	.EX
	.BI "int membarrier(int " cmd ", int " flags );
	.EE
	.in

> --=20
> 2.49.0

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--4r64r4pgrmyh2rji
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg5e7cACgkQ64mZXMKQ
wqnvzhAAhYh/Hqe1cxKDHnKXu/qQecDNnMPFdEB7YX2eU9PWWZPS6q203zpkLeb5
4Yg6CZ/98EfgQTydJrFT/fHlbJvGVoEmnAyo2ebZroSrznFrT24kflL5gcstLpG8
psvdrTzoj9fiz7fhNL7TSj/UmXQ05lqBnJCJ2b+Apz+Q6xLD4yxlgQB5mbYtAxVK
0a2cHAdknNohYkDKR7YNsGzjbGT3JAxHukCpMbSEY2UANA2I8N1PfsIHbWMUtjjl
BDpYzo5BNPV1T6SaUGw22mAPWuhIva+Qx4/MsdwMbpj1ltqqPhA/SQPJoxA6kda2
mxoguFxGdT6EiPO4udRe1Z7iyb59lnwxLCDViOYC7ikdFCzkEiFihA5j/tMQKrkI
jJF2T0qX78Td8QzWoZccuqjq3FK9YkT+Kr2+JOSGoR2oKSHx9pnY6lOVlnE15ova
Zt+tblPu9J/PLbwJTQb5C6V8lHOC1MLhKIuFwZFaU0XLLV0ZoU5wrZQMfNPheM0c
nmsrkICuYLi6laKoyAwiavvwRo2HAdAl/SqcmetF4IEd0qWyArt/0d5/n+aVP8Dp
F5Gwzbgmi5ZQnctPkpafhlztLvUYaCgfo2Ex7X6yFj+iQvjdD42KQVJ61vE3ssjX
6bFbboioaPLMx+Y/lXWlNC/yN6Ca3fzEbOjFkzzQIOwE0Yw4Dt0=
=ZMmM
-----END PGP SIGNATURE-----

--4r64r4pgrmyh2rji--

