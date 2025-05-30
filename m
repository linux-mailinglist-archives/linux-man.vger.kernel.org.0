Return-Path: <linux-man+bounces-3057-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 356B8AC8B7A
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 11:52:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 115007A871C
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 09:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F90A21E082;
	Fri, 30 May 2025 09:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZR0fvwE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE56621C182;
	Fri, 30 May 2025 09:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748598724; cv=none; b=WMyfGYdZVCBhZ5vFljihthcHWG/azDn09VtY3TIBEU/RBoap1Fv8vNs4H56cgrf9vfNjyoVXCvfqORWikJxQiVsKd7gGCEdfHbMTrp5UhocP1cbs8Y666O4lbpefpdlGs1D0e7HHnAI6cjlI/m48y2ZpqzHZSrVRFG+pfK1k4Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748598724; c=relaxed/simple;
	bh=XegyYKVR+9tGAhONqolJOM9plmL4iXP2Db2nVgyv+Bw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ntdFyk699v/qiBQOCgjYFOVIGvwToVv+ktTjAFnjjmEolNIrW3Xz+KOXF6hPTvLiogoFVl9RSH+fGiiy0ZQsS7lmBWUJeqfymlwjJDWgA9RUShE5AQufhOwabSlULc+8zyZQU9GXdpSqOe3MYvE4bmvI8mmyz0mkdMhF3fTmd3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZR0fvwE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 053FFC4CEE9;
	Fri, 30 May 2025 09:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748598723;
	bh=XegyYKVR+9tGAhONqolJOM9plmL4iXP2Db2nVgyv+Bw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OZR0fvwErBs+oQNyzFG/FLo7Y5vREPQWeKiODxE/a5DByWC34rvC7ZVgpwCZnyhk5
	 KBF/KEHNbfAU8vpcaEp3eKz2GggCVVjMekEA+9YA1o7TsAXqWJFTH1MjQB7fQ+uG7x
	 hlumhFuSiN4U94XZTyvwPgGcCpdnz6X1tHmoC5gAPaYQNjgqj8ZlyKBf6vsL8jlTvj
	 0+Dsn/cZLXijWgpltKR6AL0halK120tEqtsMkx7yF9BbjezkfWhVV1loscv0HXb4Hh
	 angSGd6VMRCnOv6AWhfPfjhRfK5icY4ElkwjcalpjNdyhobkOhp1yCqcr77j2vN2Q8
	 59+TX99CyQpJQ==
Date: Fri, 30 May 2025 11:51:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [[PATCH v3] 1/4] man/man2/prctl.2,
 man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
Message-ID: <fs57mucg3z5ay5ga7gqr6kdhlddydtmspwfkbm3rjtpjp57b6y@opvhf34v5xq4>
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-2-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m6ivffr4o7phbinl"
Content-Disposition: inline
In-Reply-To: <20250526155523.1382465-2-bigeasy@linutronix.de>


--m6ivffr4o7phbinl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [[PATCH v3] 1/4] man/man2/prctl.2,
 man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
References: <20250526155523.1382465-1-bigeasy@linutronix.de>
 <20250526155523.1382465-2-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250526155523.1382465-2-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, May 26, 2025 at 05:55:20PM +0200, Sebastian Andrzej Siewior wrote:
> The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
> Add some documentation of the interface.
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  man/man2/prctl.2                   |  3 +
>  man/man2const/PR_FUTEX_HASH.2const | 92 ++++++++++++++++++++++++++++++
>  2 files changed, 95 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH.2const
>=20
> diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
> index cb5e75bf79ab2..ddfd1d1f5b940 100644
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
> index 0000000000000..c27adcb73d079
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH.2const
> @@ -0,0 +1,92 @@
> +.\" Copyright, the authors of the Linux man-pages project
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
> +The Linux kernel uses a hash to distribute the unrelated
> +.BR futex (2)
> +requests to different data structures
> +in order to reduce the lock contention.
> +Unrelated requests are requests which are not related to one another
> +because they use a different
> +.I uaddr
> +value of the syscall or the requests are issued by different processes

I think 'use a different uaddr value of the syscall' is technically
incorrect, because two processes may have a different address for the
same futex word, as their address space is different, right?

See futex(2):

$ MANWIDTH=3D72 man futex | grep -B7 -A5 different.v

     A futex is a 32=E2=80=90bit value=E2=80=94=E2=80=94referred to below  =
as  a  futex  word=E2=80=94=E2=80=94
     whose  address  is  supplied to the futex() system call.  (Futexes
     are 32 bits in size on all platforms, including  64=E2=80=90bit  syste=
ms.)
     All  futex  operations  are  governed  by this value.  In order to
     share a futex between processes, the futex is placed in  a  region
     of shared memory, created using (for example) mmap(2) or shmat(2).
     (Thus, the futex word may have different virtual addresses in dif=E2=
=80=90
     ferent  processes, but these addresses all refer to the same loca=E2=
=80=90
     tion in physical memory.)  In a multithreaded program, it is  suf=E2=
=80=90
     ficient to place the futex word in a global variable shared by all
     threads.

Maybe say 'use a different futex word'?

> +and the
> +.B FUTEX_PRIVATE_FLAG
> +option is set.

By referring to a different futex word, this is already implied, so we
can drop it.

> +The data structure holds the in-kernel representation of the operation a=
nd
> +keeps track of the current users which are enqueued and wait for a wake =
up.
> +It also provides synchronisation of waiters against wakers.
> +The size of the global hash is determined at boot time
> +and is based on the number of CPUs in the system.
> +Due to hash collision two unrelated

s/ two/, two/

> +.BR futex (2)
> +requests can share the same hash bucket.
> +This in turn can lead to delays of the
> +.BR futex (2)
> +operation due to lock contention while accessing the data structure.
> +These delays can be problematic on a real-time system
> +since random processes can
> +share in-kernel locks
> +and it is not deterministic which process will be involved.
> +.P
> +Linux 6.16 implements a process-wide private hash which is used by all
> +.BR futex (2)
> +operations that specify the
> +.B FUTEX_PRIVATE_FLAG
> +option as part of the operation.
> +Without any configuration
> +the kernel will allocate 16 hash slots
> +once the first thread has been created.
> +If the process continues to create threads,
> +the kernel will try to resize the private hash based on the number of th=
reads
> +and available CPUs in the system.
> +The kernel will only increase the size and will make sure it does not ex=
ceed
> +the size of the global hash.
> +.P
> +The user can configure the size of the private hash which will also disa=
ble the

s/hash/\nhash/

> +automatic resize provided by the kernel.
> +.P
> +The value in
> +.I op
> +is one of the options below.
> +.TP
> +.B PR_FUTEX_HASH_GET_IMMUTABLE
> +.TQ
> +.B PR_FUTEX_HASH_GET_SLOTS
> +.TQ
> +.B PR_FUTEX_HASH_SET_SLOTS
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
> +.BR prctl (2),
> +.BR futex (2),
> +.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
> +.BR PR_FUTEX_HASH_GET_SLOTS (2const),
> +.BR PR_FUTEX_HASH_SET_SLOTS (2const)
> --=20
> 2.49.0

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--m6ivffr4o7phbinl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg5f7UACgkQ64mZXMKQ
wqnBJw//QJG448JNfN1ruE9FGWndKN5hpE8pD6XIgma2YXXCYSQtHeyrh+9nE8wF
MoHnlVezpS3euWj4I3/9k8NyKACDRuwvaXyFyALyEKbfnnDbbJBtXMXTcSSBXUeP
I2Je6ElezAOeIPboG4YDj9X7bCRVzcLx3YP7CbOk74itJD2d04LMZ1e2K90zTYWe
K+ItkvWROmufgpE+UCa6dPOQ+Ma3WWfEEtx1M2xzHDJkKqBNBFvSohQU876iLsgU
ClezSu3ZURx0T11vEK4iDITYcsCgH80QvEfDnElVa2Cc02pbjgIWxTC3dUOjJBMq
aRg7l2ugrZaMHj6jVx9babrn8EuQZFKwcAH+ZlCF7j1nhnwZTefPSv9xydrOopAj
0TWpVlH4DHnnKnFKnvqTEJNvSu2xhSBwnN9/iUboIzoSWPXv8Y+i5IxesfuD1TwR
mUvgAFpmHnmFKfPoz7vUcxiRIltYOAwZYBVpQN5L+tdQYSTomVmQxaApnPhEBJHr
FCMoMNyatKO9rj0OBKDX4ZMGw4pcSdZNCZ8ieRGT+8UHP1zjo8jx8ldlaFsYEeKl
epcPbp8cyAlbLXrTlPc5h6HDmLpN+FTasanJIMxxHpuoaLvNQ+ta72YLEAxfN/12
QJvHN3wwLzHr5wqhKqNv5YfqClZEYWQZa/Ry9H02HFnmH8/lHhs=
=mUyr
-----END PGP SIGNATURE-----

--m6ivffr4o7phbinl--

