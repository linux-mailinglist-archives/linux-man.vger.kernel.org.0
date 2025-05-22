Return-Path: <linux-man+bounces-2997-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 452D7AC0B85
	for <lists+linux-man@lfdr.de>; Thu, 22 May 2025 14:22:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88D237A439A
	for <lists+linux-man@lfdr.de>; Thu, 22 May 2025 12:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C368328A700;
	Thu, 22 May 2025 12:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZHM0pX4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE0A7D098;
	Thu, 22 May 2025 12:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747916541; cv=none; b=nkxTrwxf4HLFE+h+yutX0f+ZGwWcRxUuO2SsHQ07jaoAyBQ2LR7s2nipshTbGkydb/v4DklxT+TLuxOpiAWBLGSFuS9U9h8Sp+zJ6D4mhxukSplurE9UfFo7DPiHDKFmv/kDX/HPCFEweDei1N7RrZCGQ3H18J/bAU/rKUVip1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747916541; c=relaxed/simple;
	bh=iATMrhc8uML8iFmo3r7kCEfXMqwJ/jNxgzc+x0D+VCI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UovInsls4brjFz05agP1GD5s4GGVElAGv6uKFW9jACW+kqxVfBmYNTbBdf3GpWwPnDmmILsr9uFpmj3+PjeyzEo+gaHhVwcAEKw6POLEGC4F9VdDVQfKoV0YAXJ7g2/vZiXxJEC4hoN3XRIFwnpTwUd+d1w2PPJy/NaTi3D0ccs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZHM0pX4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8760FC4CEEF;
	Thu, 22 May 2025 12:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747916540;
	bh=iATMrhc8uML8iFmo3r7kCEfXMqwJ/jNxgzc+x0D+VCI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eZHM0pX4XUh0lobno0eYHDnjWLmBRPJQ95e1i92vSCo2448cXca3eAYmsSFBq+xhO
	 sVvnVZQ0Lei5/pSHchRwEsSbTzWZK419fndvR3REEtMcRx2SDwMNZ0J4CgoGZob6y2
	 RA2WGirRIBJ8q7Y/N6XChke8ozQhSjG3j2J71u0Yh1ZezBrSOm3Y3m+sfEiJcILRap
	 XBeg5lvPmC3XWBg4Cxcpt+duRksAK5JwSfeXH8D6iMPZjmNQQYGrWBAKGBrm5zV1Ae
	 bakv7zF6+YPTp3UX1YsYrFYUqQ4/c6EXZDSeYGqXH7lLssW5kySipI0rBRokUsrNfu
	 258ArzAA9YB9g==
Date: Thu, 22 May 2025 14:22:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2] prctl: Add documentation for PR_FUTEX_HASH
Message-ID: <fzoy24xjr4w3kxt6suya5dfici6uxk6d3gzrjwruujlkca3zwh@3dqnmbah3bxg>
References: <20250516161422.BqmdlxlF@linutronix.de>
 <fuudjpar7kv7liwj4aucekktkzuhkalzkhsz5gv3mxzletlstk@tzokaret52cv>
 <20250520104247.S-gVcgxM@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a7jco3q3koj2aoko"
Content-Disposition: inline
In-Reply-To: <20250520104247.S-gVcgxM@linutronix.de>


--a7jco3q3koj2aoko
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2] prctl: Add documentation for PR_FUTEX_HASH
References: <20250516161422.BqmdlxlF@linutronix.de>
 <fuudjpar7kv7liwj4aucekktkzuhkalzkhsz5gv3mxzletlstk@tzokaret52cv>
 <20250520104247.S-gVcgxM@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250520104247.S-gVcgxM@linutronix.de>

Hi Sebastian,

> Subject: Re: [PATCH v2] prctl: Add documentation for PR_FUTEX_HASH

Please change the subject to

man/man2/prctl.2, man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH

On Tue, May 20, 2025 at 12:42:47PM +0200, Sebastian Andrzej Siewior wrote:
> The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
> Add some documentation of the interface.
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
> v1=E2=80=A6v2: https://lore.kernel.org/all/20250516161422.BqmdlxlF@linutr=
onix.de/
>   - Partly reword
>   - Use "semantic newlines"
>=20
>  man/man2/prctl.2                   |   3 +
>  man/man2const/PR_FUTEX_HASH.2const | 122 +++++++++++++++++++++++++++++
>  2 files changed, 125 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH.2const
>=20
> diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
> index f29b745b12578..a884064a40b7d 100644
> --- a/man/man2/prctl.2
> +++ b/man/man2/prctl.2
> @@ -150,6 +150,8 @@ with a significance depending on the first one.
>  .B PR_GET_MDWE
>  .TQ
>  .B PR_RISCV_SET_ICACHE_FLUSH_CTX
> +.TQ
> +.B PR_FUTEX_HASH
>  .SH RETURN VALUE
>  On success,
>  a nonnegative value is returned.
> @@ -262,4 +264,5 @@ so these operations should be used with care.
>  .BR PR_SET_MDWE (2const),
>  .BR PR_GET_MDWE (2const),
>  .BR PR_RISCV_SET_ICACHE_FLUSH_CTX (2const),
> +.BR PR_FUTEX_HASH (2const),
>  .BR core (5)
> diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTEX_=
HASH.2const
> new file mode 100644
> index 0000000000000..c7aa36064b79e
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH.2const
> @@ -0,0 +1,122 @@
> +.\" Copyright, The authors of the Linux man-pages project

Please use lowercase 'the'.

> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_FUTEX_HASH 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +PR_FUTEX_HASH
> +\-
> +configure the private futex hash
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
> +.B #include <sys/prctl.h>
> +.P
> +.BI "int prctl(PR_FUTEX_HASH, unsigned long " op ", ...);"
> +.fi
> +.SH DESCRIPTION
> +Configure the attributes for the underlying hash used by the
> +.BR futex (2)
> +family of operations.
> +The Linux kernel uses a hash to distributes the

s/distributes/distribute/

> +.BR futex (2)
> +users on different data structures.
> +The data structure holds the in-kernel representation of the operation a=
nd
> +keeps track of the current users which are enqueued and wait for a wake =
up.
> +It also provides synchronisation with users who perform a wake up.
> +The size of the global hash is determined at boot time and is based on t=
he

Please don't break the line at a random point; I'd break after 'time'.

> +number of CPUs in the system.
> +Since the mapping from the provided
> +.I uaddr

This is the only reference in the entire page, and is also not mentioned
in prctl(2).  I guess it refers to the one passed to futex(2), but I
think that should be mentioned.

> +value to the in-kernel representation is based on a hash, two unrelated =
tasks

Please break after ','.  (Semantic newlines)

> +in the system can share the same hash bucket.
> +This in turn can lead to delays of the
> +.BR futex (2)
> +operation due to lock contention of the data structure.
> +These delays can be problematic on a real-time system since random tasks=
 can

Break before 'since'.

> +share in-kernel locks and it is not deterministic which tasks will be in=
volved.

Break before 'and'.

> +.P
> +Linux v6.16 implements a process wide private hash which is used by all

s/v6.16/6.16/

$ grep -rho 'Linux v\?6\.[0-9]*' man/ | sort | uniq -c
      1 Linux 6.
      2 Linux 6.0
      6 Linux 6.1
      7 Linux 6.10
     10 Linux 6.11
      1 Linux 6.12
      8 Linux 6.13
      6 Linux 6.14
      2 Linux 6.15
      5 Linux 6.2
      6 Linux 6.3
      3 Linux 6.4
      3 Linux 6.5
      3 Linux 6.6
      9 Linux 6.7
      6 Linux 6.8
      7 Linux 6.9
      1 Linux v6.14

s/process wide/process-wide/

> +.BR futex (2)
> +operations which specify the
> +.B FUTEX_PRIVATE_FLAG
> +as part of the operation.
> +Without any configuration the kernel will allocate 16 hash slots once th=
e first

s/configuration/&\n/

s/slots/&\n/

> +thread has been created.
> +If the process continues to create threads, the kernel will try to resiz=
e the

s/,/&\n/

> +private hash based on the number of threads and available CPUs in the sy=
stem.

s/hash/&\n/

> +The kernel will only increase the size and will make sure it does not ex=
ceed

s/size/&\n/

> +the size of the global hash.
> +.P
> +The user can configure the size of the private hash which will also disa=
ble the

s/hash/&\n/

> +automatic resize provided by the kernel.
> +.P
> +The following values for
> +.I op
> +can be specified:
> +.TP
> +.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS, unsigned long " h=
ash_size ", unsigned long " hash_flags ");

I prefer if the suboperations get their own manual page:

	PR_FUTEX_HASH_SET_SLOTS(2const)
	PR_FUTEX_HASH_GET_SLOTS(2const)
	PR_FUTEX_HASH_GET_IMMUTABLE(2const)

You can use a single page for all the suboperations, or separate them in
two or three pages, as you see fit, but I'd like this page to only
document the main operation, and the things that are common to all of
them.

See for example:

	PR_SET_MM(2const)

and its suboperations, which include PR_SET_MM_ARG_START(2const) among
others.  You can base these pages on those.

Please use one patch for each of the pages.  The first one should
document the main operation, and then you can send one patch per page
that you write for the subops.

> +Set the number of slots to use for the private hash.
> +.P
> +.RS
> +.TP
> +.I hash_size
> +Specifies the size of private hash to allocate. Possible values are:
> +.RS
> +.TP
> +.I 0
> +Use the global hash.
> +This is the behaviour used before v6.16.
> +The operation can not be undone.
> +.TP
> +.I >0
> +Specifies the number of slots to allocate.
> +The value must be power of two and the lowest possible value is 2.
> +The upper limit depends on the available memory in the system.
> +Each slot requires 64bytes of memory.
> +Kernels compiled with
> +.I CONFIG_PROVE_LOCKING
> +will consume more than that.
> +.RE
> +.TP
> +.I hash_flags
> +.RS
> +The following flags can be specified:
> +.TP
> +.I FH_FLAG_IMMUTABLE
> +The private hash can no longer be changed.
> +By using an immutable privat hash the kernel can avoid some accounting f=
or the

s/privat/private/

s/hash/&\n/  (semantic newlines)


Have a lovely day!
Alex

> +data structure.
> +This accounting is visible in benchmarks if many
> +.BR futex (2)
> +operations are invoked in parallel on different CPUs.
> +.RE
> +.RE
> +.TP
> +.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_SLOTS);
> +Returns the current size of the the private hash.
> +A value of 0 means that a private hash has not been allocated and the gl=
obal
> +hash is in use.
> +A value >0 specifies the size of the private hash.
> +.TP
> +.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_IMMUTABLE);
> +Return 1 if the hash has been made immutable and not be changed.
> +Otherwise 0.
> +.\"
> +.SH RETURN VALUE
> +On success,
> +these calls return a nonnegative value.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.16.
> +.SH SEE ALSO
> +.BR prctl (2) ,
> +.BR futex (2) ,
> +.BR futex (7)
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--a7jco3q3koj2aoko
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgvFvEACgkQ64mZXMKQ
wqmRixAAoCpK6tdb7UfqrI+Dss6HRebgG9sV7sFtr1pH0ZFQ4JlK+ZoPGO7EZiCs
tVw1z2x4hfNBGSJR3xkmP7iopUsBWsA3K+mm5Jw4I5MjbOPB845R2Mj806In7/hg
jS7JpkAWcRtJLWqFbK/D4+2MUE4GGca8aDrHDIDBfqfpNOFIER3bTofmKJjk9xw9
zKTOiNWqZnya9tqeYbWjMP4j9JE7yW53hDwS++8MJaYfhsb7UABgcXN17d5obZA9
cl/gCZuwJ6uCoYA9rf6K4cATwK6HqJM7P/VZO1EzXco+LJhtRUL4WCfA/lAmjZQY
5terUYLPf9l7W1UZsYA56vzh2yisaHfeIMbSv18a2JWhh/N+fOTsm9kuaRmF+rwR
aQuJ0jsovOf+RoPuGPTDOb80Ix3HXFLdDcuT9qPr+jQxZeDOwqanTY8aYWoHNiO4
bNqBZPiVT7ok3IKqodJz3NetBB9eViNMwwq3xwK5+Eu/b+woIz0NrQMZQ0Ukcu1B
STYwDwTP22ip7nRUS2ZSPuw65GeInvd1R31PM2WkzhAP14De+Dtz9yjr9CM8FUSH
YhplwavcUfnooRmW0MBrhLa8zirj+qgpUEv87pU3frbv2uUsW0BEmalu9F9otWYz
OFNSpl2PejvxPNXdSgdRDgTIv8YFfa05T2i0EXW9C1vh8QZvR8Q=
=VTmn
-----END PGP SIGNATURE-----

--a7jco3q3koj2aoko--

