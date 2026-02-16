Return-Path: <linux-man+bounces-5139-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TboJL6RlkmnstgEAu9opvQ
	(envelope-from <linux-man+bounces-5139-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 01:32:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F3821140758
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 01:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4566F300B106
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 00:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 885C1218AC4;
	Mon, 16 Feb 2026 00:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wv/+Sxi8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA5161FFE
	for <linux-man@vger.kernel.org>; Mon, 16 Feb 2026 00:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771201953; cv=none; b=ezDtQoPn+hEkY3yseQ9+kPG2OUs11Bv8uro+UjUOBQTWxf7QHHzjfSIHjLzE7zzdDcrrJuQda1c1fVeB7OBQ8JJIvsS/S9RDNDvHYuQBjkQB+4RNXDnou66DpMnSwkNN6J4nMMgccyD9rWuszuh8mP9FRaSLMVPidFFUg1zBeLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771201953; c=relaxed/simple;
	bh=DGu+b7Q2iTbg0b6sdWVtdyTuHllZZBXJatL4bxzNYjA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fJtx1JUDBNV/mcfHBVRhsQPQpRIr6ktN3Gik+YLUTkoiSXupKenrMy/btv/3MIQYsnGpsmUjzJuF8ELecSMTyrogoGp3NGmmgHYG9HbX0YyqDwgzIUT58gc8Zc2y9EQ0+OK+AX8N65/2mTxh21rdB5qnEePKLc6uLGyDiwwboNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv/+Sxi8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33CC6C4CEF7;
	Mon, 16 Feb 2026 00:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771201952;
	bh=DGu+b7Q2iTbg0b6sdWVtdyTuHllZZBXJatL4bxzNYjA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wv/+Sxi8Yd0mrmS5zYcWFZh+4yzkve8xDzCXKcjglGPwcujp43UeUeQ/b+GbXJ3cj
	 sqbmXq7qQyyoE41DlE0wVA/5FdzzJu0eikd+ilGo6OUzsgWAOUU1UDxSAUUOgn/0q/
	 zlKhITm1eFrtsA+cS2vPsVmbyKrAvLHJwXbD0WicCS2MME2ePb/0PP8oE1sAButVks
	 Kf0/HIym2zURZTtdn39yHFPX3JuY2sefVVnQJgJZsRBHPSZxNyhat1SIX2RUFzcer9
	 mnL7ffGn9cJKukri76ihYQxamvzd3kC4L30oGFln+gysyV6FoKx7Z5QgbK/x6eV8BZ
	 lzyL3QRQGMPlg==
Date: Mon, 16 Feb 2026 01:32:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v10] futex_waitv.2: new page
Message-ID: <aZJfEf6Pq6dYCHVr@devuan>
References: <aZILB86QfGuXJng4@devuan>
 <xxvaao4cg7v45kkkprdkg5qeaqqpjxfkmyk5lufqidv5vsvyxi@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eifdrfpdcu33tjsr"
Content-Disposition: inline
In-Reply-To: <xxvaao4cg7v45kkkprdkg5qeaqqpjxfkmyk5lufqidv5vsvyxi@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5139-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: F3821140758
X-Rspamd-Action: no action


--eifdrfpdcu33tjsr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v10] futex_waitv.2: new page
Message-ID: <aZJfEf6Pq6dYCHVr@devuan>
References: <aZILB86QfGuXJng4@devuan>
 <xxvaao4cg7v45kkkprdkg5qeaqqpjxfkmyk5lufqidv5vsvyxi@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <xxvaao4cg7v45kkkprdkg5qeaqqpjxfkmyk5lufqidv5vsvyxi@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

(I think we're close to merging.)

On 2026-02-15T20:00:50+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
[...]
> --- /dev/null
> +++ p/man/man2/futex_waitv.2
> @@ -0,0 +1,420 @@
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
> +.BR "#include <linux/futex.h>" "  /* Definition of " FUTEX* " constants =
*/"
> +.BR "#include <sys/syscall.h>" "  /* Definition of " SYS_* " constants *=
/"
> +.B #include <unistd.h>
> +.B #include <time.h>
> +.P
> +.BR "long syscall(" "unsigned int n;"
> +.BI "             SYS_futex_waitv, struct futex_waitv " waiters [ n ],
> +.BI "             unsigned int " n ", unsigned int " flags ,
> +.BI "             const struct timespec *_Nullable " timeout ", clockid_=
t " clockid ");"
> +.fi
> +.P
> +.EX
> +.B "#include <linux/futex.h>"
> +.P
> +struct futex_waitv {
> +    u64 val;        /* Expected value at \f[I]uaddr\f[] */

Should we say at .uaddr[0] to be more precise?

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

Should we maybe say?:

	futex words
	.IR waiters []. uaddr [0]

I'm fine with either; as you prefer.  But this is more specific, which
might help readers a bit.

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
> +is NULL,
> +the call blocks indefinitely.

I would reorder the sentences in this paragraph, to simplify:

	If
	.I timeout
	is NULL,
	the call blocks indefinitely.
	Otherwise,
	.I *timeout
	specifies a deadline measured against clock
	.IR clockid .
	This interval ...

This reduces the number of occurences of NULL, which helps find its
meaning.

> +.P
> +Futex words to monitor are given by
> +.IR "struct futex_waitv" ,
> +whose fields are analogous to
> +.BR FUTEX_WAIT (2const)
> +parameters, except
> +.I .__reserved
> +must be 0
> +and
> +.I .flags
> +must contain one of
> +.BI FUTEX2_SIZE_ *
> +ORed with some of the flags below.
> +.TP
> +.B FUTEX2_SIZE_U32
> +.I .val
> +and
> +.I .uaddr[]
> +are 32-bit unsigned integers.
> +.TP
> +.B FUTEX2_NUMA
> +The futex word is followed by another word of the same size
> +.RI ( .uaddr
> +points to
> +.IR uint N _t[2]
> +rather than
> +.IR uint N _t .
> +The word is given by
> +.IR .uaddr[1] ),
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

Maybe 'Except that' would be easier to read?

> +.B EINVAL
> +or
> +.B EFAULT
> +condition, this happens to all waiters whose
> +.I .flags
> +have
> +.B FUTEX2_NUMA
> +set.)
> +.IP
> +Futexes are placed on the NUMA node given by the NUMA word.
> +Futexes without this flag are placed on a random node.
> +.\" commit cec199c5e39bde7191a08087cc3d002ccfab31ff

Please refer to kernel commits in a single line:

	.\" linux.git cec199c5e39b (2025-05-03; "futex: Implement FUTEX2_NUMA")

The format is documented in
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/trailer#n16>
and there's a git alias to produce them documented in
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/git#n46>

Unless for some reason the commit message is really relevant.

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

'(like' is not part of an identifier, nor punctuation; thus, it's better
to have it in a separate line ...

> +and can be accessed by multiple processes;
> +this flag waits on a private futex word,
> +where all users must use the same virtual memory map
> +(like

=2E.. like here.

> +.BR FUTEX_WAIT_PRIVATE ;
> +this most often means they are part of the same process).
> +Private futexes are faster than shared ones.
> +.P
> +Programs should assign to
> +.I .uaddr
> +by casting a pointer to
> +.BR uintptr_t .

Types should go in italics, not bold.

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
> +is not NULL and points outside the accessible address space.
> +.TP
> +.B EFAULT
> +Any
> +.IR waiters []. uaddr
> +field points outside the accessible address space.
> +.TP
> +.B EINVAL
> +Any
> +.IR waiters []. uaddr
> +field does not point to a valid object\[em]that is,
> +the address is not aligned appropriately for the specified
> +.BI FUTEX2_SIZE_ * .
> +.TP
> +.B EINVAL
> +.I flags
> +was not 0.
> +.TP
> +.B EINVAL
> +.I n
> +was not in the range
> +.RB [ 1 ,
> +.IR FUTEX_WAITV_MAX ].

This is not an expression anymore, but just an macro, so it should be in
bold.

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
> +more than 999\[aq]999\[aq]999).
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
> +.BI FUTEX2_SIZE_ *
> +flag or has a size flag different than
> +.B FUTEX2_SIZE_U32
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

Is biggest the best word here?  I don't have a better idea, but please
have a look at this, just in case.

> +(for example,
> +.B FUTEX2_SIZE_U8
> +and there are at least 255 possible NUMA domains).
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

I think this might be simpler and more readable as

	The timeout elapsed and no futex was woken.

If it elapsed, it's obvious that it wasn't NULL.
It could also be written as

	No futex was woken before the timeout elapsed.

I find it slightly more readable in the first form, but if you differ
feel free to pick the second form.

> +.TP
> +.BR EAGAIN " or " EWOULDBLOCK
> +The value pointed to by
> +.I .uaddr

Should we say directly 'The value in .uaddr[0]'?

> +was not equal to the expected value
> +.I .val
> +at the time of the call.
> +.TP
> +.B EINTR
> +The
> +operation was interrupted by a signal (see
> +.BR signal (7)).


Cheers,
Alex

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
> +.I .val
> +and
> +.I .uaddr[]
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
> +futex_waitv: my_futex_waitv: Connection timed out
> +.EE
> +.P
> +.\" SRC BEGIN (futex_waitv.c)
> +.EX
> +#include <err.h>
> +#include <errno.h>
> +#include <linux/futex.h>
> +#include <pthread.h>
> +#include <stdatomic.h>
> +#include <stdcountof.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <sys/syscall.h>
> +#include <time.h>
> +#include <unistd.h>
> +\&
> +static inline long
> +my_futex_wake_private(_Atomic uint32_t *uaddr, uint32_t val)
> +{
> +	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val);
> +}
> +\&
> +static inline long
> +my_futex_waitv(unsigned int n;
> +               struct futex_waitv waiters[n], unsigned int n,
> +               unsigned int flags, const struct timespec *timeout,
> +               clockid_t clockid)
> +{
> +	return syscall(SYS_futex_waitv, waiters, n, flags, timeout, clockid);
> +}
> +\&
> +void *
> +worker(void *arg)
> +{
> +	_Atomic uint32_t  *futex =3D arg;
> +\&
> +	usleep(*futex * 10000);
> +	*futex *=3D 2;
> +	my_futex_wait_private(futex, 1);
> +	return NULL;
> +}
> +\&
> +int
> +main(void)
> +{
> +	_Atomic uint32_t  futexes[10];
> +	uint8_t  init[countof(futexes)];
> +	struct futex_waitv waiters[countof(futexes)] =3D {};
> +	int  i;
> +\&
> +	if (getentropy(init, sizeof(init)))
> +		err(EXIT_FAILURE, "getentropy");
> +	init[0] =3D init[1] =3D init[2];
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		printf("%w8u\[rs]t", init[i]);
> +		atomic_init(&futexes[i], init[i]);
> +		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
> +	}
> +	putchar(\[aq]\[rs]n\[aq]);
> +\&
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		waiters[i].val   =3D futexes[i];
> +		waiters[i].uaddr =3D (uintptr_t) &futexes[i];
> +		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
> +	}
> +	for (;;) {
> +		struct timespec  timeout;
> +		int  woke;
> +\&
> +		clock_gettime(CLOCK_MONOTONIC, &timeout);
> +		timeout.tv_sec +=3D 1;
> +\&
> +		woke =3D my_futex_waitv(waiters, countof(futexes), 0, &timeout, CLOCK_=
MONOTONIC);
> +		if (woke =3D=3D \-1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
> +			err(EXIT_FAILURE, "my_futex_waitv");
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i) {
> +			if (futexes[i] !=3D waiters[i].val)
> +				printf("%w32u%s", futexes[i], i =3D=3D woke ? "!" : "");
> +			putchar(\[aq]\[rs]t\[aq]);
> +		}
> +		putchar(\[aq]\[rs]n\[aq]);
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i)
> +			waiters[i].val =3D futexes[i];
> +	}
> +}
> +.EE
> +.\" SRC END
> +.SH SEE ALSO
> +.BR futex (2),
> +.BR FUTEX_WAIT (2const),
> +.BR FUTEX_WAKE (2const),
> +.BR futex (7)
> +.P
> +Kernel source file
> +.I Documentation/userspace-api/futex2.rst
> diff --git u/man/man7/futex.7 p/man/man7/futex.7
> index 51c5d5d9b..d271144ff 100644
> --- u/man/man7/futex.7
> +++ p/man/man7/futex.7
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

--eifdrfpdcu33tjsr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmSZZcACgkQ64mZXMKQ
wqnh7Q//dG5XBG/NrGW6s2tkEvBB9QHh6MELjx3JazuIXiWPLZG5uHQcyfeTf7In
b74SzeiFJypu8HxJkdEdLTpaOSEThG44tBF2VIQ5cumg/y4XzvaMDv/10rewJPKS
QJkvHvAMztqf7xvf2wv65EHoj6JQB6QTZ/ZRKKxc5KDkr/QJE7I0rrQq2wClXL5L
qr1Bwr7KhIEy42/V57vFczMghyLKLYC69Fcebl3Gw8BjvBrUQxiafDbtdnbxMZNA
DhnZTIop7wfdDnIox2b4lAjsDYH0Lkz6Ak2mlfQy63xKDKSyWYizfmD2X666N7pJ
LpnkxdzFZ4/BcK1n7SMAUpfg2EQmXAGY5Qkk/z730LSPnp0Ss7Hz/gmsrqZ91YOq
KL3UQnMi8sz87LDn7drVfEg+eGjDk1KE2RSktDU51UKjFZoW477yNCSwsRQ1S9VW
8cL+62Q2+DKQWGSG64kzqNcWJBZLwzYWADZR+DbW6QkKMk5fCvb+03LYx1y6lGdM
xWoC1ieosaMCHChsfrOx9oeoRVRl4LWaOjShT3lWpEesVjEUPA/wWki8Gk9eCCI7
SFxnGuWKmq4OvhqWDMb2B1QFpQyz1vb961PkOs1A31XeUY9+onlqIYyUweVmfVQJ
u27PtSH4hjm6Ry2dfoMn2xiyQv9Q1epLhAZS+AaHBhK53vNqa84=
=yOQ/
-----END PGP SIGNATURE-----

--eifdrfpdcu33tjsr--

