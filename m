Return-Path: <linux-man+bounces-5150-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EfpLe57lGkfFAIAu9opvQ
	(envelope-from <linux-man+bounces-5150-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 15:32:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D79914D2DC
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 15:32:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5090F3019140
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 14:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A69F036BCCA;
	Tue, 17 Feb 2026 14:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="kOUBwLA/"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0762BB13
	for <linux-man@vger.kernel.org>; Tue, 17 Feb 2026 14:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771338702; cv=none; b=EXH3W/AU3AM3PqAsBExsPZvgj22YfCYWxx9VMc/JeYOPPnAfs/5n4V+MXjH7IlcN7quBqF3HxAPUMybg7yJ/449C3QhkIiO71wZTVdMbtA5hWDo41lmuH6i5i52qIVyWCdsD3f4vJUpjk2/eu/mBgl9/dZIXN0VCSUeQGzsufY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771338702; c=relaxed/simple;
	bh=c0yBhutjCholPGMysNgqrNzl4t00+3nn7ra5rkSnkTQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OvotDkXmpCNTYU8VdFdWAIjhNTdByKM3HYR/UUn74kOxlakybPFUMkb6Cc9GCNa11v6kPfyaf4+/7zwE7F2SZU96Pc/dR6gd2tFNn2p+PaI2fA5Grim9nKgbjqx+ez4P1lQMyPhBmMxPCEuBndgTdlVpGR6UJNYSx2xf3+tLqhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=kOUBwLA/; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1771338690;
	bh=c0yBhutjCholPGMysNgqrNzl4t00+3nn7ra5rkSnkTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kOUBwLA/xAu9zaMz50zCNI1XsxMbj1+StH+McbaBSIEjhYyiWoPr9APw7xECUWokM
	 d13EjZCTKthuf0Ht3e1jE5VL9LVB21VPDdHt0pkEXCufqCSLk+LT+K+EJgpB/w/tZd
	 scrCive1f04ucgCX+7EGtgd+psd9FCFcnHF7ER4QMbA0pKlaz7oFZQc7tyM5oCftaH
	 mP33hj2cJU8vwmiMi2L6AojIuKwTj4BG/5HhtIJpsrPbF/0d5Z8geo41jy5HuLvsoT
	 KzUwULMAG2lNj1UEcVExp+6KGXIfrk9FGVun/aawlxQ7L28Tj4PsZY1QEYujPxQ/Y3
	 Qf4F2Mk2dKAgg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 34AB729EC;
	Tue, 17 Feb 2026 15:31:30 +0100 (CET)
Date: Tue, 17 Feb 2026 15:31:29 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v13] futex_waitv.2: new page
Message-ID: <y2tytznhy5c6grvzvtw7px3a3qmj2u7evwaax4qzc2lf44sawd@tarta.nabijaczleweli.xyz>
References: <aZMtRBfvVxkvu9Nd@devuan>
 <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
 <aZRnXT1Zwmtt0eIr@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ag6zztj6vn2ephs3"
Content-Disposition: inline
In-Reply-To: <aZRnXT1Zwmtt0eIr@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5150-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,igalia.com:email,nabijaczleweli.xyz:email,nabijaczleweli.xyz:dkim]
X-Rspamd-Queue-Id: 2D79914D2DC
X-Rspamd-Action: no action


--ag6zztj6vn2ephs3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 17, 2026 at 02:07:42PM +0100, Alejandro Colomar wrote:
> On 2026-02-16T21:43:14+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > +.TP
> > +.B EINVAL
> > +.I *timeout
> > +is denormal (before epoch or
> > +.I tv_nsec
> > +more than 999\[aq]999\[aq]999).
> I suspect .tv_nsec < 0 is also denormal, and it being a long, that's
> certainly possible, right?  Should we specify a range?
Hm, yeah:
	SYSCALL_DEFINE5(futex_waitv, struct futex_waitv __user *, waiters,
			unsigned int, nr_futexes, unsigned int, flags,
			struct __kernel_timespec __user *, timeout, clockid_t, clockid)
	{
		// ...
		if (timeout && (ret =3D futex2_setup_timeout(timeout, clockid, &to)))
			return ret;

	static int futex2_setup_timeout(struct __kernel_timespec __user *timeout,
					clockid_t clockid, struct hrtimer_sleeper *to)
	{
		// ...
		if (get_timespec64(&ts, timeout))
			return -EFAULT;

		/*
		 * Since there's no opcode for futex_waitv, use
		 * FUTEX_WAIT_BITSET that uses absolute timeout as well
		 */
		ret =3D futex_init_timeout(FUTEX_WAIT_BITSET, flag_init, &ts, &time);
		if (ret)
			return ret;

	static __always_inline int
	futex_init_timeout(u32 cmd, u32 op, struct timespec64 *ts, ktime_t *t)
	{
		if (!timespec64_valid(ts))
			return -EINVAL;

	/*
	 * Returns true if the timespec64 is norm, false if denorm:
	 */
	static inline bool timespec64_valid(const struct timespec64 *ts)
	{
		/* Dates before 1970 are bogus */
		if (ts->tv_sec < 0)
			return false;
		/* Can't have more nanoseconds then a second */
		if ((unsigned long)ts->tv_nsec >=3D NSEC_PER_SEC)
			return false;
		return true;
	}
I hadn't considered the cast also checks for <0.

Scissor-patch below.

Best,
-- >8 --
Subject: [PATCH v13] futex_waitv.2: new page

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Range-diff against v12:
1:  ac211c922 ! 1:  c6fc6c4a7 futex_waitv.2: new page
    @@ man/man2/futex_waitv.2 (new)
     +.I *timeout
     +is denormal (before epoch or
     +.I tv_nsec
    -+more than 999\[aq]999\[aq]999).
    ++not in the range
    ++.RB [ 0 ,
    ++.BR 999\[aq]999\[aq]999 ]).
     +.TP
     +.B EINVAL
     +Any

 man/man2/futex_waitv.2 | 415 +++++++++++++++++++++++++++++++++++++++++
 man/man7/futex.7       |   9 +-
 2 files changed, 422 insertions(+), 2 deletions(-)
 create mode 100644 man/man2/futex_waitv.2

diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
new file mode 100644
index 000000000..f0553698e
--- /dev/null
+++ p/man/man2/futex_waitv.2
@@ -0,0 +1,415 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: MIT
+.\"
+.TH futex_waitv 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+futex_waitv \- wait for FUTEX_WAKE operation on multiple futexes
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/futex.h>" "  /* Definition of " FUTEX* " constants */"
+.BR "#include <sys/syscall.h>" "  /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.B #include <time.h>
+.P
+.BR "long syscall(" "unsigned int n;"
+.BI "             SYS_futex_waitv, struct futex_waitv " waiters [ n ],
+.BI "             unsigned int " n ", unsigned int " flags ,
+.BI "             const struct timespec *_Nullable " timeout ", clockid_t =
" clockid ");"
+.fi
+.P
+.EX
+.B "#include <linux/futex.h>"
+.P
+struct futex_waitv {
+    u64 val;        /* Expected value at \f[I]uaddr\f[] */
+    u64 uaddr;      /* User address to wait on */
+    u32 flags;      /* Flags for this waiter */
+    u32 __reserved; /* Align to u64 */
+};
+.EE
+.SH DESCRIPTION
+.\" This name is used internally in the kernel
+Implements the FUTEX_WAIT_MULTIPLE operation,
+analogous to a synchronous atomic parallel
+.BR FUTEX_WAIT (2const)
+or
+.B FUTEX_WAIT_PRIVATE
+on up to
+.B FUTEX_WAITV_MAX
+futex words.
+For an overview of futexes, see
+.BR futex (7);
+for a description of the general interface, see
+.BR futex (2);
+for general minutiae of futex waiting, see the page above.
+.P
+This operation tests that the values at the
+futex words
+.IR waiters []. uaddr[0]
+still contain respective expected values
+.IR waiters []. val ,
+and if so, sleeps waiting for a
+.BR FUTEX_WAKE (2const)
+operation on any of the futex words,
+and returns the index of
+.I a
+waiter whose futex was woken.
+.P
+If the thread starts to sleep,
+it is considered a waiter on all given futex words.
+If any of the futex values do not match their respective
+.IR waiters []. val ,
+the call fails immediately with the error
+.BR EAGAIN .
+.P
+If
+.I timeout
+is NULL,
+the call blocks indefinitely.
+Otherwise,
+.I *timeout
+specifies a deadline measured against clock
+.IR clockid .
+This interval will be rounded up to the system clock granularity,
+and is guaranteed not to expire early.
+.P
+Futex words to monitor are given by
+.IR "struct futex_waitv" ,
+whose fields are analogous to
+.BR FUTEX_WAIT (2const)
+parameters, except
+.I .__reserved
+must be 0
+and
+.I .flags
+must contain one of
+.BI FUTEX2_SIZE_ *
+ORed with some of the flags below.
+.TP
+.B FUTEX2_SIZE_U32
+.I .val
+and
+.I .uaddr[]
+are 32-bit unsigned integers.
+.TP
+.B FUTEX2_NUMA
+The futex word is followed by another word of the same size
+.RI ( .uaddr
+points to
+.IR uint N _t[2]
+rather than
+.IR uint N _t .
+The word is given by
+.IR .uaddr[1] ),
+which can be either
+.B FUTEX_NO_NODE
+(all bits set)
+or a NUMA node number.
+.IP
+If the NUMA word is
+.BR FUTEX_NO_NODE ,
+the node number of the processor the syscall executes on is written to it.
+(Except that in an
+.B EINVAL
+or
+.B EFAULT
+condition, this happens to all waiters whose
+.I .flags
+have
+.B FUTEX2_NUMA
+set.)
+.IP
+Futexes are placed on the NUMA node given by the NUMA word.
+Futexes without this flag are placed on a random node.
+.\" linux.git cec199c5e39b (2025-05-03; "futex: Implement FUTEX2_NUMA")
+.\"
+.\" FUTEX2_MPOL is not documented or used anywhere;
+.\" it's unclear to me what it does (defined in
+.\" linux.git c042c505210d (2025-05-03; "futex: Implement FUTEX2_MPOL"))
+.TP
+.B FUTEX2_PRIVATE
+By default, the futex is shared
+(like
+.BR FUTEX_WAIT (2const)),
+and can be accessed by multiple processes;
+this flag waits on a private futex word,
+where all users must use the same virtual memory map
+(like
+.BR FUTEX_WAIT_PRIVATE ;
+this most often means they are part of the same process).
+Private futexes are faster than shared ones.
+.P
+Programs should assign to
+.I .uaddr
+by casting a pointer to
+.IR uintptr_t .
+.\"
+.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
+.\"
+.SH RETURN VALUE
+Returns an index to an arbitrary entry in
+.I waiters
+corresponding to some woken-up futex.
+This implies no information about other waiters.
+.P
+On error,
+\-1 is returned,
+and
+.I errno
+is set to indicate the error.
+.\"
+.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
+.\"
+.SH ERRORS
+.TP
+.B EFAULT
+.I waiters
+points outside the accessible address space.
+.TP
+.B EFAULT
+.I timeout
+is not NULL and points outside the accessible address space.
+.TP
+.B EFAULT
+Any
+.IR waiters []. uaddr
+field points outside the accessible address space.
+.TP
+.B EINVAL
+Any
+.IR waiters []. uaddr
+field does not point to a valid object\[em]that is,
+the address is not aligned appropriately for the specified
+.BI FUTEX2_SIZE_ * .
+.TP
+.B EINVAL
+.I flags
+was not 0.
+.TP
+.B EINVAL
+.I n
+was not in the range
+.RB [ 1 ,
+.BR FUTEX_WAITV_MAX ].
+.TP
+.B EINVAL
+.I timeout
+was not NULL and
+.I clockid
+was not a valid clock
+.RB ( CLOCK_MONOTONIC
+or
+.BR CLOCK_REALTIME ).
+.TP
+.B EINVAL
+.I *timeout
+is denormal (before epoch or
+.I tv_nsec
+not in the range
+.RB [ 0 ,
+.BR 999\[aq]999\[aq]999 ]).
+.TP
+.B EINVAL
+Any
+.IR waiters []. flags
+field contains an unknown flag.
+.TP
+.B EINVAL
+Any
+.IR waiters []. flags
+field is missing a
+.BI FUTEX2_SIZE_ *
+flag or has a size flag different than
+.B FUTEX2_SIZE_U32
+set.
+.TP
+.B EINVAL
+Any
+.IR waiters []. __reserved
+field is not 0.
+.TP
+.B EINVAL
+Any
+.IR waiters []. value
+field has more bits set than permitted than the size flags.
+.TP
+.B EINVAL
+.B FUTEX2_NUMA
+was set in
+.IR waiters []. flags ,
+and the NUMA word
+(which is the same size as the futex word)
+is too small to contain the highest possible index of a NUMA domain
+(for example,
+.B FUTEX2_SIZE_U8
+and there are at least 255 possible NUMA domains).
+.TP
+.B EINVAL
+.B FUTEX2_NUMA
+was set in
+.IR waiters []. flags ,
+and the NUMA word is larger than the maximum possible NUMA node and not
+.BR FUTEX_NO_NODE .
+.TP
+.B ETIMEDOUT
+The timeout elapsed before any futex was woken.
+.TP
+.BR EAGAIN " or " EWOULDBLOCK
+The value in
+.I .uaddr[0]
+was not equal to the expected value
+.I .val
+at the time of the call.
+.TP
+.B EINTR
+The
+operation was interrupted by a signal (see
+.BR signal (7)).
+.\"
+.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
+.\"
+.SH STANDARDS
+Linux.
+.SH NOTES
+.BR FUTEX2_SIZE_U8 ,
+.BR FUTEX2_SIZE_U16 ,
+and
+.B FUTEX2_SIZE_U64
+where
+.I .val
+and
+.I .uaddr[]
+are 8, 16, or 64 bits are defined, but not implemented
+.RB ( EINVAL ).
+.SH HISTORY
+.\" commit bf69bad38cf63d980e8a603f8d1bd1f85b5ed3d9
+.\" Author: Andr=C3=A9 Almeida <andrealmeid@igalia.com>
+.\" Date:   Thu Sep 23 14:11:05 2021 -0300
+.\"
+.\"     futex: Implement sys_futex_waitv()
+Linux 5.16.
+.SH EXAMPLES
+The program below executes a linear-time operation on 10 threads,
+displaying the results in real time,
+waiting at most 1 second for each new result.
+The first 3 threads operate on the same data (complete in the same time).
+.B !\&
+indicates the futex that woke up each
+.BR futex_waitv ().
+.in +4
+.EX
+.RB $\~ ./futex_waitv
+153	153	153	237	100	245	177	127	215	61
+									122!
+				200!
+							254!
+306	306!
+		306!
+						354!
+								430!
+			474!
+					490!
+futex_waitv: my_futex_waitv: Connection timed out
+.EE
+.P
+.\" SRC BEGIN (futex_waitv.c)
+.EX
+#include <err.h>
+#include <errno.h>
+#include <linux/futex.h>
+#include <pthread.h>
+#include <stdatomic.h>
+#include <stdcountof.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/syscall.h>
+#include <time.h>
+#include <unistd.h>
+\&
+static inline long
+my_futex_wake_private(_Atomic uint32_t *uaddr, uint32_t val)
+{
+	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val);
+}
+\&
+static inline long
+my_futex_waitv(unsigned int n;
+               struct futex_waitv waiters[n], unsigned int n,
+               unsigned int flags, const struct timespec *timeout,
+               clockid_t clockid)
+{
+	return syscall(SYS_futex_waitv, waiters, n, flags, timeout, clockid);
+}
+\&
+void *
+worker(void *arg)
+{
+	_Atomic uint32_t  *futex =3D arg;
+\&
+	usleep(*futex * 10000);
+	*futex *=3D 2;
+	my_futex_wait_private(futex, 1);
+	return NULL;
+}
+\&
+int
+main(void)
+{
+	_Atomic uint32_t  futexes[10];
+	uint8_t  init[countof(futexes)];
+	struct futex_waitv waiters[countof(futexes)] =3D {};
+	int  i;
+\&
+	if (getentropy(init, sizeof(init)))
+		err(EXIT_FAILURE, "getentropy");
+	init[0] =3D init[1] =3D init[2];
+	for (i =3D 0; i < countof(futexes); ++i) {
+		printf("%w8u\[rs]t", init[i]);
+		atomic_init(&futexes[i], init[i]);
+		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
+	}
+	putchar(\[aq]\[rs]n\[aq]);
+\&
+	for (i =3D 0; i < countof(futexes); ++i) {
+		waiters[i].val   =3D futexes[i];
+		waiters[i].uaddr =3D (uintptr_t) &futexes[i];
+		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
+	}
+	for (;;) {
+		struct timespec  timeout;
+		int  woke;
+\&
+		clock_gettime(CLOCK_MONOTONIC, &timeout);
+		timeout.tv_sec +=3D 1;
+\&
+		woke =3D my_futex_waitv(waiters, countof(futexes), 0, &timeout, CLOCK_MO=
NOTONIC);
+		if (woke =3D=3D \-1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
+			err(EXIT_FAILURE, "my_futex_waitv");
+\&
+		for (i =3D 0; i < countof(futexes); ++i) {
+			if (futexes[i] !=3D waiters[i].val)
+				printf("%w32u%s", futexes[i], i =3D=3D woke ? "!" : "");
+			putchar(\[aq]\[rs]t\[aq]);
+		}
+		putchar(\[aq]\[rs]n\[aq]);
+\&
+		for (i =3D 0; i < countof(futexes); ++i)
+			waiters[i].val =3D futexes[i];
+	}
+}
+.EE
+.\" SRC END
+.SH SEE ALSO
+.BR futex (2),
+.BR FUTEX_WAIT (2const),
+.BR FUTEX_WAKE (2const),
+.BR futex (7)
+.P
+Kernel source file
+.I Documentation/userspace-api/futex2.rst
diff --git u/man/man7/futex.7 p/man/man7/futex.7
index 51c5d5d9b..d271144ff 100644
--- u/man/man7/futex.7
+++ p/man/man7/futex.7
@@ -45,7 +45,9 @@ .SS Semantics
 Any futex operation starts in user space,
 but it may be necessary to communicate with the kernel using the
 .BR futex (2)
-system call.
+or
+.BR futex_waitv (2)
+system calls.
 .P
 To "up" a futex, execute the proper assembler instructions that
 will cause the host CPU to atomically increment the integer.
@@ -72,7 +74,9 @@ .SS Semantics
 .P
 The
 .BR futex (2)
-system call can optionally be passed a timeout specifying how long
+and
+.BR futex_waitv (2)
+system calls can optionally be passed a timeout specifying how long
 the kernel should
 wait for the futex to be upped.
 In this case, semantics are more complex and the programmer is referred
@@ -107,6 +111,7 @@ .SH NOTES
 .SH SEE ALSO
 .BR clone (2),
 .BR futex (2),
+.BR futex_waitv (2),
 .BR get_robust_list (2),
 .BR set_robust_list (2),
 .BR set_tid_address (2),
--=20
2.39.5


--ag6zztj6vn2ephs3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmUe8EACgkQvP0LAY0m
WPGMphAAsA2270g1fiRut+9Z6Q7ZFmWaeMA1uq6CQj7D4J+MrBgwSsP8H1i45548
i/CV3+z9x8VaRGxA+i+4h3B0gesQwTB8h13DDH6+HNmrWju6dCIUkCVvQ1GQdAp8
6E7Yaxq3rHwNB7pOJ8OinXKpAWZHgfMlrCNajPtnw+BArUF+pzrMwOyKOyYunAIL
iu3iCAbtqMmfQkQoWLTUN9rdy2PBnQg6RIzirqC9LUpvieOTKI3Q59YDgRAURY5o
HjothvcaD/G/cwAmUBg1svgCY5CT4TnE7nQIjgCtfKKyT3ejjUk5r+GflqCeZAbK
Dm/8G3tp1TKlonONtMP/ayc0+t/XtA7VETt+2tuuVn9RkS6GgplTcnbW+LpMg5yU
k2//MFjIA9AWpRvyTVOqKEiww5J7QaJ6kmh53dzH+DK+t37LUYw87zeBryv3hSDR
irE5RlReBMSH4ZSC+K3ognYwM9deIF4KY46Wl4LwX2X7hchDeL+Yd0xotaOfeTye
AhOOWJkMC6cvoybFcovpLvZ+rg3lINySDV9V6PUg54BZ7YOxLxj+cv4ZzyLAiOX3
Z8Oid3mCAt70AYXocoyUc7UDuknfPXYvsrjZckDeq6+jVwc3hNHbvrlNEz03zzwP
NYjOQzlOVrV9kb7NchNWINBpB2Pvd016klXiNEVUx76riI2xLVk=
=Ltr1
-----END PGP SIGNATURE-----

--ag6zztj6vn2ephs3--

