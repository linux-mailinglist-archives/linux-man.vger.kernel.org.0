Return-Path: <linux-man+bounces-5119-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNwdACiSjGlQrAAAu9opvQ
	(envelope-from <linux-man+bounces-5119-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 15:28:56 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AC412539C
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 15:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B8493014550
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED0FA1DF748;
	Wed, 11 Feb 2026 14:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egz1CCYY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B5814A8E
	for <linux-man@vger.kernel.org>; Wed, 11 Feb 2026 14:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770820131; cv=none; b=HI0sqjTNE54JF8q21SY94BkVYvTgA9X24kgDw0rWZsCGrRrkVMonpUWIFXVxGAuomG5Pyqjhqv8uyVB/KROj6fcLcx9WcBJZdWJPFZ7jdo0Fc8qMxftcQO7cQ4gbU6oDTkzlgFtwDO9jkNRoNzV6Gdy0kC5YGuWZJV6E0E3Mz50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770820131; c=relaxed/simple;
	bh=ntpT2uzH7lWURSWert95e1SmVSCBTLXyjBF1KC0M0B4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QjPfi4I5dXkxmksXV2O+YPSDoHzx+PwrS9riEeev7RmrQ19+9STgUPT8egWJKE+VrTKVh3f7gL6cSQXou+fRshyVmWhvj/hQwQ1o4k2niR893HH9wbXz37fkyqoNtnhJXgVgXdUH+c7+ZMLEjusGsCQteV7lhyobOQXjFIJarLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egz1CCYY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4426C4CEF7;
	Wed, 11 Feb 2026 14:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770820131;
	bh=ntpT2uzH7lWURSWert95e1SmVSCBTLXyjBF1KC0M0B4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Egz1CCYYgczkf0wYqQ8VlsZdIzDQkbnZSXcsBmEPJRO2kXB/dXARcV1MpkxQz/hBC
	 iI5oldW38CUYPlEB2HR/Dch0eQ3w9Ksz8G2hLx2OzRyGrWL9YZlAPIUV9UcCh5v2y9
	 gs2ZAk/bX0Y5nrWAAGu+ONRdg0+/lh9Sq43b5+F9qN8f64bNrZF2+lzxyKMhXmwL+j
	 r+Zn+qoFUy19Sj9bDSO2yWUcagee0xMQ+nNVhCQVySoxB29ywNbs+SBeQ343oUj4re
	 6MXSDPPFxsCbBxBsF1EEVSu+9h5zCofRuCcwAzv2300vzC0s4KJWcqam/J86+YAn0J
	 ZRWvKsjYf8RTg==
Date: Wed, 11 Feb 2026 15:28:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v5] futex_waitv.2: new page
Message-ID: <aYyQlJmhDY4nHGU5@devuan>
References: <aYuXZUwh09hVHm3R@devuan>
 <mlooycjkz6pfdvket6f2gwet76aar3zsihtvpm7klt2wl2z3y4@tarta.nabijaczleweli.xyz>
 <aYx8Ghyq8E76xx9c@devuan>
 <u7iv57v7palhlpu5vllrxzvjo2iz4rgxjjeqksqnsgb3t6gm6w@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bzcbaptg4gpxzseq"
Content-Disposition: inline
In-Reply-To: <u7iv57v7palhlpu5vllrxzvjo2iz4rgxjjeqksqnsgb3t6gm6w@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5119-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email,igalia.com:email,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 42AC412539C
X-Rspamd-Action: no action


--bzcbaptg4gpxzseq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v5] futex_waitv.2: new page
Message-ID: <aYyQlJmhDY4nHGU5@devuan>
References: <aYuXZUwh09hVHm3R@devuan>
 <mlooycjkz6pfdvket6f2gwet76aar3zsihtvpm7klt2wl2z3y4@tarta.nabijaczleweli.xyz>
 <aYx8Ghyq8E76xx9c@devuan>
 <u7iv57v7palhlpu5vllrxzvjo2iz4rgxjjeqksqnsgb3t6gm6w@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <u7iv57v7palhlpu5vllrxzvjo2iz4rgxjjeqksqnsgb3t6gm6w@tarta.nabijaczleweli.xyz>

Hi,

On 2026-02-11T14:51:27+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Wed, Feb 11, 2026 at 02:23:13PM +0100, Alejandro Colomar wrote:
> > On 2026-02-11T05:00:26+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > +.P
> > > +C programs should assign to
> > > +.I uaddr
> > > +by casting a pointer to
> > > +.B uintptr_t
> > > +to ensure the top bits are cleared on 32-bit systems.
> >=20
> > I'm not sure the paragraph above is correct.
> > What code are you worried about exactly?  Could you show an example?
>=20
> I couldn't because I repeat this kernel recommendation verbatim here.

Heh.  Kernel people are funny sometimes.  :)

> I don't think this is an issue, I don't think there's an ILP32 universe
> where a pointer-to-u64 assignment fails as described.
> I'll just cut it off at _t.

Agree.

> =20
> > > +static inline long
> > > +my_futex_wait_private(_Atomic uint32_t  *uaddr, uint32_t  val,
> >=20
> > Should this be atomic?  If so, should we document futex(2) as taking
> > a pointer to atomic element?
> It needs to be _Atomic-tagged to match the caller type
> (compare passing a const uint32_t to a uint32_t *).

Makes sense.

> futexes are u32s accessed atomically, which we document everywhere.

Okay.

>=20
> Scissor-patch below.

I found a few things I'd improve.  Please apply these changes.  I'd like
to look at it again before merging, so please send a revision.

	diff --git i/man/man2/futex_waitv.2 w/man/man2/futex_waitv.2
	index d2997a94bf92..555dd42c6598 100644
	--- i/man/man2/futex_waitv.2
	+++ w/man/man2/futex_waitv.2
	@@ -76,25 +76,27 @@ .SH DESCRIPTION
	 and is guaranteed not to expire early.
	 If
	 .I timeout
	-is NULL, the call blocks indefinitely.
	+is NULL,
	+the call may block indefinitely.
	 .P

(semantic newlines)

	 Futex words to monitor are given by
	 .IR "struct futex_waitv" ,
	 whose fields are analogous to
	 .BR FUTEX_WAIT (2const)
	-parameters, except
	+parameters,
	+except
	 .I .__reserved
	 must be 0
	 and
	 .I .flags
	 must contain one of
	-.BR FUTEX2_SIZE_*
	+.BI FUTEX2_SIZE_ *
	 ORed with some of the flags below.

* is variable part, so it should be in italics.

	 .TP
	 .BR FUTEX2_SIZE_U32
	 .I .val
	 and
	-.I *.uaddr
	+.I .uaddr[]
	 are 32-bit unsigned integers.

[] better represents that it's an array.

	 .TP
	 .B FUTEX2_NUMA
	@@ -139,7 +141,8 @@ .SH DESCRIPTION
	 .TP
	 .B FUTEX2_PRIVATE
	 By default, the futex is shared
	-.RB "(like " FUTEX_WAIT (2const)),
	+(like
	+.BR FUTEX_WAIT (2const)),
	 and can be accessed by multiple processes;
	 this flag waits on a private futex word,
	 where all users must use the same virtual memory map
	@@ -148,7 +151,7 @@ .SH DESCRIPTION
	 this most often means they are part of the same process).
	 Private futexes are faster than shared ones.
	 .P
	-C programs should assign to
	+Programs should assign to
	 .I .uaddr
	 by casting a pointer to
	 .BR uintptr_t .

We assume all programs are C programs, or similar enough.

	@@ -189,7 +192,7 @@ .SH ERRORS
	 .IR waiters []. uaddr
	 field does not point to a valid object\[em]that is,
	 the address is not aligned appropriately for the specified
	-.BR FUTEX2_SIZE_* .
	+.BR FUTEX2_SIZE_\f[I]*\f[] .
	 .TP
	 .B EINVAL
	 .I flags
	@@ -197,10 +200,9 @@ .SH ERRORS
	 .TP
	 .B EINVAL
	 .I n
	-was not in
	-[1,
	-.B FUTEX_WAITV_MAX
	-(128)].
	+was not in the range
	+.RB [ 1 ,
	+.IR FUTEX_WAITV_MAX(128) ].

This is an expression, so it should be in italics.  1 is a constant, so
bold.

	 .TP
	 .B EINVAL
	 .I timeout
	@@ -226,7 +228,7 @@ .SH ERRORS
	 Any
	 .IR waiters []. flags
	 field is missing a
	-.B FUTEX2_SIZE_*
	+.BI FUTEX2_SIZE_ *
	 flag or has a size flag different than
	 .BR FUTEX2_SIZE_U32
	 set.
	@@ -287,7 +289,7 @@ .SH NOTES
	 where
	 .I .val
	 and
	-.I *.uaddr
	+.I .uaddr[]
	 are 8, 16, or 64 bits are defined, but not implemented
	 .RB ( EINVAL ).
	 .SH HISTORY
	@@ -328,6 +330,7 @@ .SH EXAMPLES
	 #include <linux/futex.h>
	 #include <pthread.h>
	 #include <stdatomic.h>
	+#include <stdcountof.h>
	 #include <stdint.h>
	 #include <stdio.h>
	 #include <stdlib.h>

<stdcountof.h> provides countof(3).

	@@ -344,7 +347,8 @@ .SH EXAMPLES
	 }
	 \&
	 static inline long
	-my_futex_waitv(struct futex_waitv *waiters, unsigned int n,
	+my_futex_waitv(unsigned int n;
	+               struct futex_waitv waiters[n], unsigned int n,
			unsigned int flags, const struct timespec *timeout,
			clockid_t clockid)

Let's use actual array notation, as GCC supports it.  Clang is too bad,
and either it should improve, or people should stop considering Clang
a serious C compiler.


Have a lovely day!
Alex

	 {

>=20
> Best,
> -- >8 --
> From d221a28a34645cf1d3aab7a962de1c755d500841 Mon Sep 17 00:00:00 2001
> From: =3D?UTF-8?q?=3DD0=3DBD=3DD0=3DB0=3DD0=3DB1?=3D <nabijaczleweli@nabi=
jaczleweli.xyz>
> Date: Tue, 10 Feb 2026 21:32:19 +0100
> Subject: [PATCH v5] futex_waitv.2: new page
> MIME-Version: 1.0
> Content-Type: text/plain; charset=3DUTF-8
> Content-Transfer-Encoding: 8bit
> X-Mutt-PGP: OS
> To: Alejandro Colomar <alx@kernel.org>
> Cc: <linux-man@vger.kernel.org>
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man2/futex_waitv.2 | 419 +++++++++++++++++++++++++++++++++++++++++
>  man/man7/futex.7       |   9 +-
>  2 files changed, 426 insertions(+), 2 deletions(-)
>  create mode 100644 man/man2/futex_waitv.2
>=20
> diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
> new file mode 100644
> index 000000000..261cb010c
> --- /dev/null
> +++ p/man/man2/futex_waitv.2
> @@ -0,0 +1,419 @@
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
> +.I .__reserved
> +must be 0
> +and
> +.I .flags
> +must contain one of
> +.BR FUTEX2_SIZE_*
> +ORed with some of the flags below.
> +.TP
> +.BR FUTEX2_SIZE_U32
> +.I .val
> +and
> +.I *.uaddr
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
> +.P
> +C programs should assign to
> +.I .uaddr
> +by casting a pointer to
> +.BR uintptr_t .
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
> +.BR FUTEX2_SIZE_* .
> +.TP
> +.B EINVAL
> +.I flags
> +was not 0.
> +.TP
> +.B EINVAL
> +.I n
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
> +.I .uaddr
> +was not equal to the expected value
> +.I .val
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
> +.I .val
> +and
> +.I *.uaddr
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
> +.\" SRC BEGIN (futex_waitv.c)
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
> +static inline long
> +my_futex_wait_private(_Atomic uint32_t *uaddr, uint32_t val,
> +                      const struct timespec *timeout)
> +{
> +	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val, timeout);
> +}
> +\&
> +static inline long
> +my_futex_waitv(struct futex_waitv *waiters, unsigned int n,
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
> +	my_futex_wait_private(futex, 1, NULL);
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
> +	getentropy(init, sizeof(init));
> +	init[0] =3D init[1] =3D init[2];
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		printf("%" PRIu8 "\[rs]t", init[i]);
> +		atomic_init(&futexes[i], init[i]);
> +		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
> +	}
> +	putchar('\[rs]n');
> +\&
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		waiters[i].val   =3D futexes[i];
> +		waiters[i].uaddr =3D (uintptr_t)&futexes[i];
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
> +		if (woke =3D=3D -1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
> +			break;
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i) {
> +			if (futexes[i] !=3D waiters[i].val)
> +				printf("%" PRIu32 "%s", futexes[i], i =3D=3D woke ? "!" : "");
> +			putchar('\[rs]t');
> +		}
> +		putchar('\[rs]n');
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i)
> +			waiters[i].val =3D futexes[i];
> +	}
> +	fprintf(stderr, "%s\[rs]n", strerror(errno));
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
>=20



--=20
<https://www.alejandro-colomar.es>

--bzcbaptg4gpxzseq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMkhoACgkQ64mZXMKQ
wqn+JQ/9HFldZWu4ukQ9w6p2WXDdEIb/DWrh00vHqME7JxEZjPOoZgHFiwKs9RCK
gwO9wKJlcLxja+02sCDkRv38ap+Jz8dilZK9Y65fHWinjIlTad0LOVcnoNhEwEmJ
C2/9rs9545xZU8SLiYe/DTA6w6Qn13yOiZpGNUN5ebcm7251oO4PSy1Uym/iltde
cMXAdz320/OJl823tv+7bM4tIXiujJeiTYqewwu3eA80/L5o/pHGTYaXvaSTJOq0
oq2/FAZK/SDYzwquPscvmzjpqJykRtqwHSHIlFKYuZZAhl0IFjSrDj01SdLv/XBi
DX205qW8lieQ4E/kQOqD6PkNl41YNY1QWM9hpnIz+TkywBdeJQzkvOxK2iyTFFEh
sgRXNmjeRt9ouowdav92g2y3MLecs4rpVduZvYrBxQ3cfE+IQ7dfFubnWBUYkC2s
aZYXi1THBIXmiR86c6WCYDMv4YD7JkypnV3AfSlzUhaYXhBkCvWE4gWk2C2Fy22L
yGDsVUvbtUzb3BuPHew+Y3RHloiKoYZouOSxdEdSnZp/fhyYRnlRjT0sYzEEEyuA
CQuL01UVqBFnFIFId58lbxnu30IMUClVx+5mr4GmMAF7ux3ZGPIeadmcUlUtJS2Q
fEnwGirMli39qj3YDXAwgWyx8TrTHcHpTtN9Wbw5idkeTtiqWSM=
=YucZ
-----END PGP SIGNATURE-----

--bzcbaptg4gpxzseq--

