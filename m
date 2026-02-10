Return-Path: <linux-man+bounces-5088-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPBoNrmPi2nYWAAAu9opvQ
	(envelope-from <linux-man+bounces-5088-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:06:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BF61011EE4E
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:06:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B15013015EC4
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 20:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A168C32FA12;
	Tue, 10 Feb 2026 20:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3TwixEB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647E432C33C
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 20:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770753938; cv=none; b=HRBZWIVvVhF6cS0Q+OYpYKcfg/Sx9B4nrF9WwX25AU01WQX0tA/ddRQ0KPsTnedn7ugov3FSqCj+JNS22DDKFP/Cu6xTyfr9Dy/sdN/DIL+Ef6APllCBYbVkr/VVgiSvFHAb30MGq/dGiIDu75u0JeeBoFB4dN7rE5li6N0LPAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770753938; c=relaxed/simple;
	bh=gJKMKwfQ0WzNvwRgALToMbzcgdx2EC96wlS+I+BHv3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NUCTdKU70JGLromgSmziC0pslUrxTvzJ8Wkz3Apl2pg5atNKcqd/nrE4v4ClGENTFIAtLlF6kuC4SN1n0f4BYuVMifVkiIYU+r1VmPsAWeCBqJaYymuqxzykX7qWp5FpaOkYPVaPBTbuTGchWYymRQAvINPYrX/ulBylqSPmIdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3TwixEB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 938E4C116C6;
	Tue, 10 Feb 2026 20:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770753938;
	bh=gJKMKwfQ0WzNvwRgALToMbzcgdx2EC96wlS+I+BHv3c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q3TwixEB5vlJu4fuaM7bcFvLNXim7Gn4zy8NWTrEuE7GgmMzAsIGNtA5fUAInm/87
	 MPAjDl5RCiGndqd6mhVjUDrkwlURwRBWAX6AfM5+G5Knr+54Ph9jQKo1Df18M2Bd3g
	 t0s2CFdNZBOTu7FXr7qDwYDgJSiXQ85jcXzdR6ahJSg8S5mmNDRERbEUSEFLTg5fDH
	 tC75T2E3qiCD0fJb1kBi8P9v+ufXrh6kAXPVlKeI6GyH1scUrfNQD22RRv+CypF+K4
	 LWa7SKS8GypJbMUOCNNAM6rp/2Fxon3T1qOTtCFwKoikBcA1fNyfO2KHCG6hFsReWZ
	 ionmvaKbQWmGg==
Date: Tue, 10 Feb 2026 21:05:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] futex_waitv.2: new page
Message-ID: <aYuPRo9lgl7frmym@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <se6hm5gnd7cyjsby5q6pctkrws5ecp5gpnfjuy3zh2shd2abyj@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y4t5ufp2dorsbley"
Content-Disposition: inline
In-Reply-To: <se6hm5gnd7cyjsby5q6pctkrws5ecp5gpnfjuy3zh2shd2abyj@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5088-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,alejandro-colomar.es:url,infradead.org:email]
X-Rspamd-Queue-Id: BF61011EE4E
X-Rspamd-Action: no action


--y4t5ufp2dorsbley
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] futex_waitv.2: new page
Message-ID: <aYuPRo9lgl7frmym@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <se6hm5gnd7cyjsby5q6pctkrws5ecp5gpnfjuy3zh2shd2abyj@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <se6hm5gnd7cyjsby5q6pctkrws5ecp5gpnfjuy3zh2shd2abyj@tarta.nabijaczleweli.xyz>

Hi,

On 2026-02-07T23:00:49+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man2/futex_waitv.2 | 407 +++++++++++++++++++++++++++++++++++++++++
>  man/man7/futex.7       |   9 +-
>  2 files changed, 414 insertions(+), 2 deletions(-)
>  create mode 100644 man/man2/futex_waitv.2
>=20
> diff --git man/man2/futex_waitv.2 man/man2/futex_waitv.2
> new file mode 100644
> index 000000000..2645f4147
> --- /dev/null
> +++ man/man2/futex_waitv.2
> @@ -0,0 +1,407 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: MIT
> +.\"
> +.TH futex_waitv 2 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +futex_waitv \- wait for FUTEX_WAKE operation on multiple futexes
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/futex.h>" "  /* Definition of " "struct futex_waitv=
" " */"
> +.BR "#include <sys/syscall.h>" "  /* Definition of " SYS_* " constants *=
/"
> +.B #include <unistd.h>
> +.B #include <time.h>
> +.P
> +.BR "long syscall(" "unsigned int nr_futexes;"
> +.BI "             SYS_futex_waitv, struct futex_waitv " waiters [ nr_fut=
exes ],
> +.BI "             unsigned int " nr_futexes ", unsigned int " flags ,
> +.BI "             const struct timespec *_Nullable " timeout ", clockid_=
t " clockid ");"
> +.fi
> +.P
> +.EX
> +struct futex_waitv {
> +    u64 val;        /* Expected value at \f[I]uaddr\f[] */
> +    u64 uaddr;      /* User address to wait on */
> +    u32 flags;      /* Flags for this waiter */
> +    u32 __reserved; /* Align to u64 */
> +};
> +.EE
> +.SH DESCRIPTION
> +.\" This name is used internally in the kernel
> +Implements the FUTEX_WAIT_MULTIPLE operation,
> +analogous to a synchronous atomic parallel
> +.BR FUTEX_WAIT (2const)
> +or
> +.B FUTEX_WAIT_PRIVATE
> +on up to
> +.B FUTEX_WAITV_MAX
> +futex words.
> +For an overview of futexes, see
> +.BR futex (7);
> +for a description of the general interface, see
> +.BR futex (2);
> +for general minutiae of futex waiting, see the page above.
> +.P
> +This operation tests that the values at the
> +futex words pointed to by the addresses
> +.IR waiters []. uaddr
> +still contain respective expected values
> +.IR waiters []. val ,
> +and if so, sleeps waiting for a
> +.BR FUTEX_WAKE (2const)
> +operation on any of the futex words,
> +and returns the index of
> +.I a
> +waiter whose futex was woken.
> +.P
> +If the thread starts to sleep,
> +it is considered a waiter on all given futex words.
> +If any of the futex values do not match their respective
> +.IR waiters []. val ,
> +the call fails immediately with the error
> +.BR EAGAIN .
> +.P
> +If
> +.I timeout
> +is not NULL,
> +.I *timeout
> +specifies a deadline measured against clock
> +.IR clockid .
> +This interval will be rounded up to the system clock granularity,
> +and is guaranteed not to expire early.
> +If
> +.I timeout
> +is NULL, the call blocks indefinitely.
> +.P
> +Futex words to monitor are given by
> +.IR "struct futex_waitv" ,
> +whose fields are analogous to
> +.BR FUTEX_WAIT (2const)
> +parameters, except
> +.I __reserved
> +must be 0
> +and
> +.I flags
> +must contain one of
> +.BR FUTEX2_SIZE_*
> +ORed with some of the flags below.
> +.P
> +C programs should assign to
> +.I uaddr
> +by casting a pointer to
> +.B uintptr_t
> +to ensure the top bits are cleared on 32-bit systems.
> +.TP
> +.BR FUTEX2_SIZE_U32
> +.I val
> +and
> +.I *uaddr
> +are 32-bit unsigned integers.
> +.TP
> +.B FUTEX2_NUMA
> +The futex word is followed by another word of the same size
> +.RI ( uaddr
> +points to
> +.IR uint N _t[2]
> +rather than
> +.IR uint N _t .
> +The word is given by
> +.IR uaddr[1] ),
> +which can be either
> +.B FUTEX_NO_NODE
> +(all bits set)
> +or a NUMA node number.
> +.IP
> +If the NUMA word is
> +.BR FUTEX_NO_NODE ,
> +the node number of the processor the syscall executes on is written to i=
t.
> +(Except in an
> +.B EINVAL
> +or
> +.B EFAULT
> +condition, this happens to all waiters whose
> +.I flags
> +have
> +.B FUTEX2_NUMA
> +set.)
> +.IP
> +Futexes are placed on the NUMA node given by the NUMA word.
> +Futexes without this flag are placed on a random node.
> +.\" commit cec199c5e39bde7191a08087cc3d002ccfab31ff
> +.\" Author: Peter Zijlstra <peterz@infradead.org>
> +.\" Date:   Wed Apr 16 18:29:16 2025 +0200
> +.\"
> +.\"     futex: Implement FUTEX2_NUMA
> +.\"
> +.\" FUTEX2_MPOL is not documented or used anywhere;
> +.\" it's unclear to me what it does
> +.\" (defined in commit c042c505210dc3453f378df432c10fff3d471bc5
> +.\"  "futex: Implement FUTEX2_MPOL")
> +.TP
> +.B FUTEX2_PRIVATE
> +By default, the futex is shared
> +.RB "(like " FUTEX_WAIT (2const)),
> +and can be accessed by multiple processes;
> +this flag waits on a private futex word,
> +where all users must use the same virtual memory map
> +(like
> +.BR FUTEX_WAIT_PRIVATE ;
> +this most often means they are part of the same process).
> +Private futexes are faster than shared ones.
> +.\"
> +.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
> +.\"
> +.SH RETURN VALUE
> +Returns an index to an arbitrary entry in
> +.I waiters
> +corresponding to some woken-up futex.
> +This implies no information about other waiters.
> +.P
> +On error,
> +\-1 is returned,
> +and
> +.I errno
> +is set to indicate the error.
> +.\"
> +.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
> +.\"
> +.SH ERRORS
> +.TP
> +.B EFAULT
> +.I waiters
> +points outside the accessible address space.
> +.TP
> +.B EFAULT
> +.I timeout
> +was not NULL and did not point to a valid user-space address.
> +.TP
> +.B EFAULT
> +Any
> +.IR waiters []. uaddr
> +field is not a valid user-space address.
> +.TP
> +.B EINVAL
> +Any
> +.IR waiters []. uaddr
> +field does not point to a valid object\[em]that is,
> +the address is not aligned appropriately for the specified
> +.BR FUTEX2_SIZE_* .
> +.TP
> +.B EINVAL
> +.I flags
> +was not 0.
> +.TP
> +.B EINVAL
> +.I nr_futexes
> +was not in
> +[1,
> +.B FUTEX_WAITV_MAX
> +(128)].
> +.TP
> +.B EINVAL
> +.I timeout
> +was not NULL and
> +.I clockid
> +was not a valid clock
> +.RB ( CLOCK_MONOTONIC
> +or
> +.BR CLOCK_REALTIME ).
> +.TP
> +.B EINVAL
> +.I *timeout
> +is denormal (before epoch or
> +.I tv_nsec
> +more than 999'999'999).
> +.TP
> +.B EINVAL
> +Any
> +.IR waiters []. flags
> +field contains an unknown flag.
> +.TP
> +.B EINVAL
> +Any
> +.IR waiters []. flags
> +field is missing a
> +.B FUTEX2_SIZE_*
> +flag or has a size flag different than
> +.BR FUTEX2_SIZE_U32
> +set.
> +.TP
> +.B EINVAL
> +Any
> +.IR waiters []. __reserved
> +field is not 0.
> +.TP
> +.B EINVAL
> +Any
> +.IR waiters []. value
> +field has more bits set than permitted than the size flags.
> +.TP
> +.B EINVAL
> +.B FUTEX2_NUMA
> +was set in
> +.IR waiters []. flags ,
> +and the NUMA word
> +(which is the same size as the futex word)
> +is too small to contain the index of the biggest NUMA domain
> +(for example,
> +.B FUTEX2_SIZE_U8
> +and there are more than 255 NUMA domains).
> +.TP
> +.B EINVAL
> +.B FUTEX2_NUMA
> +was set in
> +.IR waiters []. flags ,
> +and the NUMA word is larger than the maximum possible NUMA node and not
> +.BR FUTEX_NO_NODE .
> +.TP
> +.B ETIMEDOUT
> +.I timeout
> +was not NULL and no futex was woken before the timeout elapsed.
> +.TP
> +.BR EAGAIN " or " EWOULDBLOCK
> +The value pointed to by
> +.I uaddr
> +was not equal to the expected value
> +.I val
> +at the time of the call.
> +.TP
> +.B EINTR
> +The
> +operation was interrupted by a signal (see
> +.BR signal (7)).
> +.\"
> +.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
> +.\"
> +.SH STANDARDS
> +Linux.
> +.SH NOTES
> +.BR FUTEX2_SIZE_U8 ,
> +.BR FUTEX2_SIZE_U16 ,
> +and
> +.B FUTEX2_SIZE_U64
> +where
> +.I val
> +and
> +.I *uaddr
> +are 8, 16, or 64 bits are defined, but not implemented
> +.RB ( EINVAL ).
> +.SH HISTORY
> +.\" commit bf69bad38cf63d980e8a603f8d1bd1f85b5ed3d9
> +.\" Author: Andr=C3=A9 Almeida <andrealmeid@igalia.com>
> +.\" Date:   Thu Sep 23 14:11:05 2021 -0300
> +.\"
> +.\"     futex: Implement sys_futex_waitv()
> +Linux 5.16.
> +.SH EXAMPLES
> +The program below executes a linear-time operation on 10 threads,
> +displaying the results in real time,
> +waiting at most 1 second for each new result.
> +The first 3 threads operate on the same data (complete in the same time).
> +.B !\&
> +indicates the futex that woke up each
> +.BR futex_waitv ().
> +.in +4
> +.EX
> +.RB $\~ ./futex_waitv
> +153	153	153	237	100	245	177	127	215	61
> +									122!
> +				200!
> +							254!
> +306	306!
> +		306!
> +						354!
> +								430!
> +			474!
> +					490!
> +Connection timed out
> +.EE
> +.P
> +.EX
> +#include <errno.h>
> +#include <inttypes.h>
> +#include <linux/futex.h>
> +#include <pthread.h>
> +#include <stdatomic.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <sys/syscall.h>
> +#include <time.h>
> +#include <unistd.h>
> +\&
> +void *
> +worker(void *arg)
> +{
> +	_Atomic uint32_t *futex =3D arg;
> +\&
> +	usleep(*futex * 10000);
> +	*futex *=3D 2;
> +	syscall(SYS_futex, futex, FUTEX_WAKE_PRIVATE, 1);
> +	return NULL;
> +}
> +\&
> +int
> +main(void)
> +{
> +#define WORKERS 10
> +	_Atomic uint32_t futexes[WORKERS];
> +\&
> +	uint8_t init[WORKERS];
> +	getentropy(init, sizeof(init));
> +	init[0] =3D init[1] =3D init[2];
> +	for (int i =3D 0; i < WORKERS; ++i) {
> +		printf("%" PRIu8 "\\t", init[i]);
> +		atomic_init(&futexes[i], init[i]);
> +		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
> +	}
> +	putchar('\\n');

The escape character should be printed as \[rs].  rs is reverse solidus.

> +\&
> +	struct futex_waitv waiters[WORKERS] =3D {};
> +	for (int i =3D 0; i < WORKERS; ++i) {
> +		waiters[i].val   =3D futexes[i];
> +		waiters[i].uaddr =3D (uintptr_t)&futexes[i];
> +		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
> +	}
> +	for (;;) {
> +		struct timespec timeout

Expected ';' before clock_gettime.

Please make sure the example works fine.


Cheers,
Alex

> +		clock_gettime(CLOCK_MONOTONIC, &timeout);
> +		timeout.tv_sec +=3D 1;
> +\&
> +		int woke =3D syscall(SYS_futex_waitv, waiters, WORKERS, 0, &timeout, C=
LOCK_MONOTONIC);
> +		if (woke =3D=3D -1)
> +			break;
> +\&
> +		for (int i =3D 0; i < WORKERS; ++i) {
> +			if (futexes[i] !=3D waiters[i].val)
> +				printf("%" PRIu32 "%.*s", futexes[i], i =3D=3D woke, "!");
> +			putchar('\\t');
> +		}
> +		putchar('\\n');
> +\&
> +		for (int i =3D 0; i < WORKERS; ++i)
> +			waiters[i].val =3D futexes[i];
> +	}
> +	printf("%s\\n", strerror(errno));
> +}
> +.EE
> +.SH SEE ALSO
> +.ad l
> +.BR futex (2),
> +.BR FUTEX_WAIT (2const),
> +.BR FUTEX_WAKE (2const),
> +.BR futex (7)
> +.P
> +The following kernel source files:
> +.IP \[bu]
> +.I Documentation/userspace-api/futex2.rst
> +.IP \[bu]
> +.I kernel/futex/syscall.c
> +.IP \[bu]
> +.I kernel/futex/waitwake.c
> +.IP \[bu]
> +.I kernel/futex/futex.h
> diff --git man/man7/futex.7 man/man7/futex.7
> index 51c5d5d9b..d271144ff 100644
> --- man/man7/futex.7
> +++ man/man7/futex.7
> @@ -45,7 +45,9 @@ .SS Semantics
>  Any futex operation starts in user space,
>  but it may be necessary to communicate with the kernel using the
>  .BR futex (2)
> -system call.
> +or
> +.BR futex_waitv (2)
> +system calls.
>  .P
>  To "up" a futex, execute the proper assembler instructions that
>  will cause the host CPU to atomically increment the integer.
> @@ -72,7 +74,9 @@ .SS Semantics
>  .P
>  The
>  .BR futex (2)
> -system call can optionally be passed a timeout specifying how long
> +and
> +.BR futex_waitv (2)
> +system calls can optionally be passed a timeout specifying how long
>  the kernel should
>  wait for the futex to be upped.
>  In this case, semantics are more complex and the programmer is referred
> @@ -107,6 +111,7 @@ .SH NOTES
>  .SH SEE ALSO
>  .BR clone (2),
>  .BR futex (2),
> +.BR futex_waitv (2),
>  .BR get_robust_list (2),
>  .BR set_robust_list (2),
>  .BR set_tid_address (2),
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es>

--y4t5ufp2dorsbley
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLj48ACgkQ64mZXMKQ
wqmiJA//U0Uh4i9SR2kIitRkdLC6LTceA719ysAXWXJzZBF+sP80IVKGJwdTZlWC
J1rMUrVPiL7aQBVjzm7zO1pmnp9nNTNo6hsih5/kLFRy/jcLHN0XdadP7cdbmpbW
tc0pMgL1axD0xL+zbhNlDYVziGbx286pJnRNukX/lZO4G9SZUK/Vp9gsHugdR+Bi
PUL3lW8EEj9NU8jG+QhTBzffuXsruIYN8Zn/fQP77KqnX/lkUZJMaLbi4grlLa8z
rVZeyhdublJgG2JFJrUuaYdTsqe8WruCjf8PMfdlb2FyBdeXUbI6R9FyIO7O0MRq
P6BWjfz087yH3pt9QaL/7md/7spsiTQsXe8TKRP92r8juUHEvvyL8T0u29xWurnI
QPxyUXqU5DZXBbrg0d4n4CnkAKaCDGOJl/CCidRK0R1U/df6LYKZyMp2CgnqdNcs
bHCIu+SvfQkhIAWeeBwqxTAl5gB38gHrotS6zb4LvctRwWHZshxhLqRbq/gxe2jX
h8vWpWB4DI+lz4QWOqaAp1EzPC24B5qGBo2oyWo68H3scLOsWTHuOEXNrOD+bI5h
hVS009DiGbJLWiG/sumktw8htGq4jCgglHQIwY4NZqYfjgp8vzsjDnepC/7K5PjE
iWyLydMKrhWv+eWkfijNwXvX+kQ3yfsetU/m13t09qDyOsUfN3M=
=EYfk
-----END PGP SIGNATURE-----

--y4t5ufp2dorsbley--

