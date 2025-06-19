Return-Path: <linux-man+bounces-3159-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A92ADFA9E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 03:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 556AA3BB580
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 01:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF4941CD3F;
	Thu, 19 Jun 2025 01:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIDuuKf+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8B417E0
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 01:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750295762; cv=none; b=XeuTWljjpcsoPDB3/x1GT0pO18zmWI+4Ouxg7K45UApDhbeoqB/YxORTj/dNhjdHtt8MxOwPe5nYGRpPzHYxuRbzmDxg+N5kxs0won6h2fyohsUD42Q8MxOFBnOMejtRq2DTALcurS7y35cekDKkPp/MrT3s13nAnPbvYDJgQHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750295762; c=relaxed/simple;
	bh=qwnIy4JssGneHnKDEcUnaNYWfb1/L1qKoTjKkwp+rvQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aQTmeQOThWJTEb/RYWaDdK8h5aYYISWTb180kYSKJJNbxjG331m+iXzJlgHy6aPRNMSl6sZjgpTk9O2DmfB4xqwckhJNfgIoCShLqYJqJi4GXnpIQDM7QG5L7WQwaF/JwF7B3WoPSJGR2o24hduqF5kHAEQtY7Lj1ldSy/B+nXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIDuuKf+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D27DC4CEE7;
	Thu, 19 Jun 2025 01:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750295761;
	bh=qwnIy4JssGneHnKDEcUnaNYWfb1/L1qKoTjKkwp+rvQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nIDuuKf+FVRRmILBD0JQljqy/Ls8KMQx0J57o6OV2igax2dt4w8EAN75JyvSeFJhV
	 bczp0uS+RcrXcE6eW78Yc/wcdK81Q4kDrI7EQ68ANBULlhOo9lMAzRUr4M4XjxpxMj
	 plzzf2n0mowg4Ac9FRqbPf1I9UXBkYPG9HAQEAG/XVbmGsabxyvkz04DWrl91UHDxr
	 HPjetKwC8tzSwzzvkXTC4dT2s14h32SG5xmJ/JUEA+Zyhd7RuGU88p/JcGf+HOeMJ0
	 8egM7HtFwHrGEbF1Z68Yyhc5u7AzpBZd3518EOKhwhny9b4wFykiETrp++r1iW6Ou+
	 Z/SU36i9nQfmA==
Date: Thu, 19 Jun 2025 03:15:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v4] man/man2/cachestat.2: add a man page for cachestat()
Message-ID: <wb5evdrlgzsdlkm2kloclljwtwfxdsg24ioctnoduqej3ryero@5rvgose3mdis>
References: <20250611141350.1829-1-technoboy85@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3aiggarlsfsugm5h"
Content-Disposition: inline
In-Reply-To: <20250611141350.1829-1-technoboy85@gmail.com>


--3aiggarlsfsugm5h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v4] man/man2/cachestat.2: add a man page for cachestat()
References: <20250611141350.1829-1-technoboy85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250611141350.1829-1-technoboy85@gmail.com>

Hi Matteo,

On Wed, Jun 11, 2025 at 04:13:50PM +0200, Matteo Croce wrote:
> From: Matteo Croce <teknoraver@meta.com>
>=20
> Add a missing man page for cachestat().
> The text was converted from the commit message:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dcf264e1329fb0307e044f7675849f9f38b44c11a
>=20
> Signed-off-by: Nhat Pham <nphamcs@gmail.com>
> Signed-off-by: Matteo Croce <teknoraver@meta.com>

Thanks!  I've applied the patch with a few amendments.  I've tweaked the
commit message too.  See below.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D797d642cc47ff6f1b9199e5e1d28c528409e0c14>

> ---
>  man/man2/cachestat.2 | 111 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 111 insertions(+)
>  create mode 100644 man/man2/cachestat.2
>=20
> diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
> new file mode 100644
> index 000000000..084d5cd04
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

I've wrapped the structures in EX/EE, as is done in other pages.

I've also moved them after the function prototype, to have the function
stand out more.

> +.P
> +.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_=
range ","
> +.BI "              struct cachestat *" cstat ", unsigned int " flags ");"
> +.fi
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
> +.RI [ .off ,\~ .off+.len ].
> +If
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

I've removed the line above, since it doesn't do anything.

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

I've changed this sentence to be consistent with all other pages, which
say "is set to indicate the error".


Have a lovely day!
Alex

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

--3aiggarlsfsugm5h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhTZMcACgkQ64mZXMKQ
wqmbxw/9HYwVwvyt5GnfvEPXPbGsTHNdnJ1ikBp5kF/ydOB8a0v0eVD/X0eWOTA6
Zo3WzndYxLdQALYWKx5Alt1bpCgcQm9b4cKWtPqeEWa545TdpQInSXWk5RK29HEm
4eSNJK9kEdY319cVSSWwaBEEpOk0Nyjx04r5BLynJ7CkyjiyhwGdAKRcNjU/un4p
tjSXJ9TW+RvKHi1cQA9LfOiUyxAU0X3drJAsnjsQgrRvN8iq89VyYoIVUzZ9XH3D
QwvZOK1rEgWpLBJyAImVAYuSB7OX6oES8sw4kIWjDdK4TOtqv0HbgVdHsv8CzsBP
nJd1FbMDL3tW2It6UWwe3Z4pX6ys9tLmWLKatKXBbBCTKB8eaAofyk3jtoHDvg+s
ySo44FPe4hA9ZmGysk+FevS3Y5qkSFh8JcI76lLDC8Jq7LUKmVwrl1uCFEM2KILx
/rdiFqaOmxvHXip3wY0qtNWsuIxr+AmhV4AvxBXphVN31OVTBEu1ia+Pl/q+1Z1G
7gt/GM8je9Zq9MjJZLwy2aEe/Jel54pZ2FjSboBbJJn0Pg5o8Ao1+5LwYu3njHH/
C0HMJquYotzt1Zva02VolOaX+3L/fyipuKyv3QSlZjA5ThESkSVmth40YfzpAdBp
JIetq7Vsl5DzFBH8iQpbXpdvjnb8UQ55XUQxod46SFfHr9tgNl4=
=nxlU
-----END PGP SIGNATURE-----

--3aiggarlsfsugm5h--

