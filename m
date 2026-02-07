Return-Path: <linux-man+bounces-5049-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHIgMRiLh2lgZgQAu9opvQ
	(envelope-from <linux-man+bounces-5049-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 19:57:28 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA93106E98
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 19:57:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C1543011F18
	for <lists+linux-man@lfdr.de>; Sat,  7 Feb 2026 18:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C3313382D6;
	Sat,  7 Feb 2026 18:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRERIDGa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36FD23EAB7
	for <linux-man@vger.kernel.org>; Sat,  7 Feb 2026 18:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770490627; cv=none; b=ZGZlTeLnHIrkRmMwLiCHAKuc+DlCBwyUonX3e0mIHhiNgmBP9kPtNYiICnSU20GFVxcFYQkkazNvZHSLy3psihNzn5g393obQ4JxMa/ok/EzkPZsvpEjrZzJvgbvraIk0yQTGtwmsij7UxdzaIuQhjVbfm9uLmXDIMjjuojfGrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770490627; c=relaxed/simple;
	bh=F0mOyk2dqcJmnktDovHN/MN5K40qUHezO6wrSOMxGGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I7KEBEu/oE+5R2D539whVLBEb8fKm9+OL3lTzwnEWqURNAYUZuH+824kjWGYu4vI2FXto5yPkZ7cUGQpvt8HWc4Qkwbr3nurRkSTV1POtuTDCGqRUt5jBhyX35DZTVsArp21c53pl+4HRcDXmLpQ8bU/KkFypymUcu27DynG6m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRERIDGa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1017C116D0;
	Sat,  7 Feb 2026 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770490626;
	bh=F0mOyk2dqcJmnktDovHN/MN5K40qUHezO6wrSOMxGGE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rRERIDGaQd6gB0XAGBDwOMsp1Id1g/3Kj5TxTK7FTJ7nnIZxzDM/CKPiRrmi6dslD
	 jiW+hnb5PDwko1KmE2kk4zPraP/QEdCgA6mIFZWPjoD7jzw4XNMLzFDY2QdbTkb8FB
	 mnlXMddSxRafCm66xx1sKLM1WH93l1DthiimtRoPUqvif+z9gwf2frSgsQnoQlaLl8
	 /cl46wyIYvzfA4P9yhM53yq3NAhSKWoMQC4w5Cx1LzJ4npiE37B4CTBWVj0joHNwsW
	 oZ67XYA3bBl7Ihmd7+u6nkPmvVRqtHKkwcLw74QlKgeffVUZX/rNA9yRfb5W+Gul4C
	 QTEUiewqBvt1w==
Date: Sat, 7 Feb 2026 19:57:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] futex_waitv.2: new page
Message-ID: <aYeDkRWB2ZxYutG1@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zv7uqjie3dqpbcl7"
Content-Disposition: inline
In-Reply-To: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5049-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,igalia.com:email,infradead.org:email,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 1BA93106E98
X-Rspamd-Action: no action


--zv7uqjie3dqpbcl7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] futex_waitv.2: new page
Message-ID: <aYeDkRWB2ZxYutG1@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On 2026-02-07T13:49:12+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man2/futex_waitv.2 | 406 +++++++++++++++++++++++++++++++++++++++++
>  man/man7/futex.7       |   9 +-
>  2 files changed, 413 insertions(+), 2 deletions(-)
>  create mode 100644 man/man2/futex_waitv.2
>=20
> diff --git man/man2/futex_waitv.2 man/man2/futex_waitv.2
> new file mode 100644
> index 000000000..2f83f098d
> --- /dev/null
> +++ man/man2/futex_waitv.2
> @@ -0,0 +1,406 @@
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
> +.SH DESCRIPTION
> +.\" This name is used internally in the kernel
> +Implements the FUTEX_WAIT_MULTIPLE operation,
> +analogous to a synchronous atomic parallel
> +.BR FUTEX_WAIT (2const)/ FUTEX_WAIT_PRIVATE

Please split this into two lines (the rule would be to never have two
identifiers on the same source line).

Also, I'd prefer English wording instead of '/'.

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
> +(This interval will be rounded up to the system clock granularity,
> +and is guaranteed not to expire early.)

I would remove the parentheses here.  It reads fine without them.

> +If
> +.I timeout
> +is NULL, the call blocks indefinitely.
> +.P
> +.P

uniq(1)  :)

> +Futex words to monitor are given by
> +.P
> +.in +4n
> +.EX
> +struct futex_waitv {
> +    u64 val;        /* Expected value at \f[I]uaddr\f[] */
> +    u64 uaddr;      /* User address to wait on */
> +    u32 flags;      /* Flags for this waiter */
> +    u32 __reserved; /* align to u64 */

Inconsistent upper-/lower-case.

Also, I'd move this to the SYNOPSIS.

> +};
> +.EE
> +.in
> +.P
> +The fields are analogous to
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
> +.BR uint N _t[2]

Types go in italics.

> +rather than
> +.BR uint N _t ,

=2E

> +the word is given by
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
> +.\" FUTEX2_MPOL is not documented or used anywhere; it's unclear to me w=
hat it does
> +.\" (defined in commit c042c505210dc3453f378df432c10fff3d471bc5 "futex: =
Implement FUTEX2_MPOL")
> +.TP
> +.B FUTEX2_PRIVATE
> +By default, the futex is shared
> +.RB "(like " FUTEX_WAIT (2const)),
> +and can be accessed by multiple processes;
> +this flag waits on a private futex word, where all users must use the sa=
me virtual memory map

80-col right margin.  Please use semantic newlines (break at the comma).

> +.RB "(like " FUTEX_WAIT_PRIVATE ;

Please move non-formatted words to the preceeding line.

	(like
	.BR FUTEX_WAIT_PRIVATE ;

> +this most often means they are part of the same process).
> +Private futexes are faster than shared ones.
> +.\"
> +.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
> +.\"
> +.SH RETURN VALUE
> +Returns an index to an
> +.I arbitrary

I'd say we don't need formatting in arbitrary.  The word is already an
unusual one that would put people under warning.

> +entry in
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
> +is not NULL and part of the range
> +.RI [ waiters ", " waiters + nr_futexes )

I'd format the range as

	.RI [ waiters ,
	.IR "waiters + nr_futexes" )

But I think I'd simplify as

	.I waiters
	points outside the accessible address space.

NULL is an invalid pointer, and as such, is not a valid address, so
less text to say the same.  And no need to be very specific about the
range, since the more vague wording is widely understood.

> +is not a valid user-space address.
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
> +was not between 1 and
> +.B FUTEX_WAITV_MAX
> +(128).

In this case I would like to see a range.  "Between" doesn't make it
clear whether the bounds are inclusive or exclusive or combined.

> +.TP
> +.B EINVAL
> +.I timeout
> +was not NULL and
> +.I clockid
> +was not a valid clock
> +.RB ( CLOCK_MONOTONIC " or " CLOCK_REALTIME ).

Two lines.

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
> +.B EAGAIN
> +The value pointed to by
> +.I uaddr
> +was not equal to the expected value
> +.I val
> +at the time of the call.
> +.IP
> +.BR Note :
> +on Linux, the symbolic names
> +.B EAGAIN
> +and
> +.B EWOULDBLOCK
> +(both of which appear in different parts of the kernel futex code)
> +have the same value.

Should we use wording like in read(2)?  It uses

	.TP
	.BR EAGAIN " or " EWOULDBLOCK

Or do you have reasons to prefer your wording?

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

Maybe CAVEATS?

> +.BR FUTEX2_SIZE_U8 ", " FUTEX2_SIZE_U16 ", and " FUTEX2_SIZE_U64

One per line.

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
> +.RB "$ " ./futex_waitv

Please use $\~ to avoid the quotes.

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
> +#include <linux/futex.h>
> +#include <sys/syscall.h>
> +#include <time.h>
> +#include <unistd.h>
> +\&

What's the distinction between the two include groups?

> +#include <errno.h>
> +#include <inttypes.h>
> +#include <pthread.h>
> +#include <stdatomic.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +\&
> +void *worker(void *arg) {

Please format function definitions as

	T
	func(...)
	{

> +	_Atomic uint32_t *futex =3D arg;
> +\&
> +	usleep(*futex * 10000);
> +	*futex *=3D 2;
> +	syscall(SYS_futex, futex, FUTEX_WAKE_PRIVATE, 1);
> +	return NULL;
> +}
> +\&
> +int main() {

Please use the explicit void.

> +#define WORKERS 10
> +	_Atomic uint32_t futexes[WORKERS];
> +\&
> +	uint8_t init[WORKERS];
> +	getentropy(init, sizeof(init));
> +	init[0] =3D init[1] =3D init[2];
> +	for(int i =3D 0; i < WORKERS; ++i) {

Please use spaces after if/for/which/switch.
> +		printf("%" PRIu8 "\\t", init[i]);
> +		atomic_init(&futexes[i], init[i]);
> +		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
> +	}
> +	putchar('\\n');
> +\&
> +	struct futex_waitv waiters[WORKERS] =3D {};
> +	for(int i =3D 0; i < WORKERS; ++i) {
> +		waiters[i].val   =3D futexes[i];
> +		waiters[i].uaddr =3D (uintptr_t)&futexes[i];
> +		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
> +	}
> +	for(struct timespec timeout;;) {

Please declare within the loop:

	for (;;) {
		struct timespec  tout;


> +		clock_gettime(CLOCK_MONOTONIC, &timeout);
> +		timeout.tv_sec +=3D 1;
> +\&
> +		int woke =3D syscall(SYS_futex_waitv, waiters, WORKERS, 0, &timeout, C=
LOCK_MONOTONIC);
> +		if(woke =3D=3D -1)
> +			break;
> +\&
> +		for(int i =3D 0; i < WORKERS; ++i) {
> +			if(futexes[i] !=3D waiters[i].val)
> +				printf("%" PRIu32 "%.*s", futexes[i], i =3D=3D woke, "!");
> +			putchar('\\t');
> +		}
> +		putchar('\\n');
> +\&
> +		for(int i =3D 0; i < WORKERS; ++i)
> +			waiters[i].val =3D futexes[i];
> +	}
> +	printf("%s\\n", strerror(errno));
> +}
> +.EE
> +.SH SEE ALSO
> +.ad l

Unterminated .ad.  Also, do we need it?


Have a lovely night!
Alex

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

--zv7uqjie3dqpbcl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmHivkACgkQ64mZXMKQ
wqnCWw//YdEHUW4hys2Ep9c6xIPv3s4XPaDvOl6/z8oBVzHfEDqVWymnZ+7DTCCB
Xr+yWvUbA2qpoTWJAnvrXS5AASNLtAqjECFEa3sQIGKMswJ47Cs0gLSsXkYw5wSM
WVpS0WEeAYAEQWhNgSP98uJnGHVr8mWDRZSPx/VdBqWzLuJdWYOTbOZDXDdHkW98
ZUjlPiEq0LifYWFWlGVaDvS4g6nlJI5bhAGo+Z9s9atweXs7nDBJgE0xLLZgd8I8
4SdxMexPkuyQX3KUNpMv9kTBlJ1DrGknAC3mRsxEPfH/Wd7jIprT91ZMGbhurHL7
xIcygx54NMIrL1KsDgj49P+psmE41o/b5ef9PuoovdD65PqP70s9RfKtL+yHNsdD
0+MXa59G2//Xx6YLzZMI91WIsdd3I3dqdMB37jdn/fxzIhbkkN+WBWg3lz6P+Bok
7vMJYAXiKghuAG3eSD9+IkCvqF4KpX6X6C6ReolrSfApUpkiQsgVT6AOf6ac3gf2
Mrqa8nsK0BjCUu15jc5x7sLPHNswW5OzC+tSYzos1nmPix0etqkiQhe4SYLPs98/
GjL0TBQjlR8ruazpw/4cxKo56d2ac8W55WeTZ70HARj8llzQRCqMrS8w4GdYj9F7
bc29zXYeIAD0uZwi5WkKjURq2Fp2a9aTiaHzVr6GpJkRRgo0CPs=
=HDIh
-----END PGP SIGNATURE-----

--zv7uqjie3dqpbcl7--

