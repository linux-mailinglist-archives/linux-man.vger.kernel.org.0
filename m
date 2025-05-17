Return-Path: <linux-man+bounces-2940-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9945FABAA71
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 15:41:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 222184A3716
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 13:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15BFC1FCFDB;
	Sat, 17 May 2025 13:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXRzmWLl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C550D3398A;
	Sat, 17 May 2025 13:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747489294; cv=none; b=AoadZtuiKLlNHpktsRk2/YEjIqTmXi4/tqmVV6cEKLokyUmSFB7876S1zcqp1Uq1nOIdgrJeS4VCz0Ad3XJ+zo+FptfG8CVcrG2eKnGFgQO0Sv4t/oMNMQd00DrHdZHLxI8VRFlM4eZjebSz4e2P25nM/+BpaJK7q+ZaNJ5aKpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747489294; c=relaxed/simple;
	bh=xieZlnlQaJlA/bWzGqZMj4kxj2yayL+/NLMdCZmMFbw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SNYNdXb7X1tH0qY6Dca/ZDcnbEapogCRenvln2Kw2JO5vbf9Fl12KszjJyUbi3MJ6WTRowclBGAfshwRSJpoAdBknS3eiOm8q0xJ3akek1WsVHTNytFLYVNQHWv4i7Mgl6RkuoGOwJwvWTPT5xB6FbtDziPEP1w6bjyowOd4TMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXRzmWLl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0EDAC4CEE3;
	Sat, 17 May 2025 13:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747489294;
	bh=xieZlnlQaJlA/bWzGqZMj4kxj2yayL+/NLMdCZmMFbw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hXRzmWLlAtKveZKk4HrMrxFl/84TFhzbA+wxGPekq0zMOnylF79wcRbhqnLPw+NGb
	 7foxEuILdJ3HzvFk+tdn+3xa7n/pbmNhIWKdL4U5RwSqwCvkON1ZLH9TjZBjcK/hUX
	 oY0c5pf/A3TeqTO92ktXV5VYq6C/SW+ZDMipwS91R/YZr3t1S8CRgdKKg4FwH4Fh7S
	 M34oiNk8f4+5JTBQyfQzAm3EPvqGLjYF9pnoZu2kO2dMQ7IB2J+S8HkQhWN4BbOo89
	 Ri+8v4noPLbRwnGYADgGcipyVIzBeh9z4GQ2LFMxTI7LmLggunLEX9O8idN4M1ZjBw
	 E9U6E8mUHseOQ==
Date: Sat, 17 May 2025 15:41:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH] prctl: Add documentation for PR_FUTEX_HASH
Message-ID: <fuudjpar7kv7liwj4aucekktkzuhkalzkhsz5gv3mxzletlstk@tzokaret52cv>
References: <20250516161422.BqmdlxlF@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ks4geibwlgofqrbb"
Content-Disposition: inline
In-Reply-To: <20250516161422.BqmdlxlF@linutronix.de>


--ks4geibwlgofqrbb
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
Subject: Re: [PATCH] prctl: Add documentation for PR_FUTEX_HASH
References: <20250516161422.BqmdlxlF@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250516161422.BqmdlxlF@linutronix.de>

Hi Sebastian,

On Fri, May 16, 2025 at 06:14:22PM +0200, Sebastian Andrzej Siewior wrote:
> The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
> Add some documentation of the interface.
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  man/man2/prctl.2                   |   3 +
>  man/man2const/PR_FUTEX_HASH.2const | 112 +++++++++++++++++++++++++++++
>  2 files changed, 115 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH.2const
>=20
> diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
> index 7a6b73e25e7a8..30c868d051a0c 100644
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
> index 0000000000000..c6a6396729770
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH.2const
> @@ -0,0 +1,112 @@
> +.\" Copyright, The contributors to the Linux man-pages project

I've slightly changed the copyright notices this week.  Please do

	s/The contributors to/the authors of/

You can check any page for the extact current text.  Sorry!  :)

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
> +.BI "int prctl(PR_FUTEX_HASH, long " op ", ...);"
> +.fi
> +.SH DESCRIPTION
> +Configure the attributes for the underlying hash used by the
> +.BR futex (2)
> +family of operations. The Linux kernel uses a hash to distributes the

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be  started
       on  new  lines,  long  sentences  should  be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and  long
       clauses  should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier  to  see
       the effect of patches, which often operate at the level of indi=E2=
=80=90
       vidual sentences, clauses, or phrases.


Also, thanks to semantic newlines, we don't need to think about the
amount of spaces after a '.'.  However, for *roff, you need to use two
spaces in the source code after a period that ends a sentence; else it
is interpreted as not ending a sentence, and the resulting document is
clearly bad.  I recommend reading this:

$ cat CONTRIBUTING.d/patches/description | sed -n '/inter-sentence/,/^$/p'
	The correct inter-sentence space amount is two.  See some
	history about this:
	<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.co=
m/?p=3D324>

> +.BR futex (2)
> +users on different data structures. The data structure holds the in-kern=
el
> +representation of the operation and keeps track of the current users whi=
ch are
> +enqueued and wait for a wake up and those who perform a wake up. The siz=
e of
> +the global hash is determined at boot time and is based on the number of=
 CPUs
> +in the system. Since the mapping from the provided
> +.I uaddr
> +value to the in-kernel representation is based on a hash, two unrelated =
tasks
> +in the system can share the same hash bucket. This in turn can lead to d=
elays
> +of the due
> +.BR futex (2)
> +operation due to to lock contention of the data structure. These delays =
can be

The sentence above has some typos; please check.

> +problematic on a PREEMPT_RT system since random tasks can share in-kerne=
l locks

References to PREEMPT_RT in existing pages use CONFIG_PREEMPT_RT.
Should we do the same?

	$ grep -rn PREEMPT_RT man/
	man/man7/sched.7:969:.B CONFIG_PREEMPT_RT
	man/man2/futex.2:1326:.\" PREEMPT_RT-enabled Linux systems.

> +and it is not deterministic which tasks will be involved.
> +.P
> +Linux v6.16 implements a process wide private hash which is used by all
> +.BR futex (2)
> +operations which specify the
> +.B FUTEX_PRIVATE_FLAG
> +as part of the operation.
> +Without any configuration the kernel will allocate 16 hash slots once th=
e first
> +thread has been created. If the process continues to create threads, the=
 kernel
> +will try to resize the private hash based on the number of threads and
> +available CPUs in the system. The kernel will only increase the size and=
 will
> +make sure it does not exceed the size of the global hash.
> +.P
> +The user can configure the size of the private hash which will also disa=
ble the
> +automatic resize provided by the kernel.
> +.P
> +The following values for
> +.I op
> +can be specified:
> +.TP
> +.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS, " hash_size ", " =
hash_flags ");

What's the type of hash_size and hash_flags?

> +Set the number of slots to use for the private hash.
> +.P
> +.RS
> +.TP
> +.I hash_size
> +Specifies the size of private hash to allocate. Possible values are:
> +.RS
> +.TP
> +.I 0
> +Use the global hash. This is the behaviour used before v6.16. The operat=
ion can
> +not be undone.
> +.TP
> +.I >0
> +Specifies the number of slots to allocate. The value must be power of tw=
o and
> +lowest possible value is 2. The upper limit depends on available memory =
in
> +the system. Each slot requires 64bytes of memory. Kernels compiled with
> +.I CONFIG_PROVE_LOCKING
> +will consume more than that.
> +.RE
> +.TP
> +.I hash_flags
> +.RS
> +The following flags can be specified:
> +.TP
> +.I FH_FLAG_IMMUTABLE
> +The private hash can no longer be changed. By using an immutable privat =
hash
> +the kernel can avoid some accounting for the data structure. This accoun=
ting
> +is visible in benchmarks if many
> +.BR futex (2)
> +operations are invoked in parallel on different CPUs.
> +.RE
> +.RE
> +.TP
> +.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_SLOTS);
> +Returns the current size of the the private hash. A value of 0 means tha=
t a
> +private has not been allocated or the global hash is used. A value >0 sp=
ecifies
> +the size of the private hash.
> +.TP
> +.BI "int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_IMMUTABLE);
> +Return 1 if the hash has been made immutable and not be changed. Otherwi=
se 0.
> +

Blank lines in man(7) input cause diagnostics.  If you want to separate
the source without affecting output, you can use a comment line with an
empty comment:

	.\"

> +.SH RETURN VALUE
> +On success,
> +these calls return a value >=3D0.

Let's say "a nonnegative value", for consistency with other pages.

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


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ks4geibwlgofqrbb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgokfgACgkQ64mZXMKQ
wqnUWxAAhcku2Z/Cwiv4l/Yn/RaNT8RoO2DWP7yTRgqPxm1JCVVGCZWoHdXI1cb1
g0pMvSz9PWe4Bm3wsrrVkusqej+HwCBU68+X0xcPwpbg5n0y1elp9K3k7qk9Tx4v
RsaA36niwGbR5p0r6H/2fJy1G3N3x0RRVLIXScBqxcUYHmKIjyLAO1GLzG7ohTeZ
S3+U6V/GGU+dZGM3AVyK0k2ZXeVIH0727xmFGEmI0RYoirXteeugvUpQVVim4gpN
KNk/dHdJTH/jwBy0qsGVx4jz0ihnlzIUIsuCyqByyuZdlX2yXwiR87xj6JoKLiYo
BMs+mECZgq/oNtR3OH16WdYSCEbB3Bi9+3ouun64ZRX6UYgQKJqfWR69QfJUEyx+
9xorqecvxC7ovXlcRZE7Kpjx0f4rtSRt0UafpBvmSahCGW6XeIQ9U0m8R/HZvxSB
tP7iyZQsXBBESlAA3gT7b3q9QN5z6BhaU1OE2YCLGD4aXckmmNM8XoEjE5E0V3Bh
s5HCEs1+xU5F567R4Jw5QYJJr8VVhkvXGCnLV2+pq8ZRjsKmbxgTxf22SvvJNOWJ
TeLVbNFfF1SCbcWDYtqeDHoAIsYpOWy6irq4ar3ajEYiwCBW10q8MTi1ArTLlq8Q
8vW7TdYA+jjo0vsuQyh0IuppvMOZzDjEf/jTTOqV04mA7wGrcu8=
=edVe
-----END PGP SIGNATURE-----

--ks4geibwlgofqrbb--

