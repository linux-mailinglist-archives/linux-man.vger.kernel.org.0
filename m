Return-Path: <linux-man+bounces-5115-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHOGCGqJjGmHqgAAu9opvQ
	(envelope-from <linux-man+bounces-5115-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:51:38 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3B9124F44
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81D443014C50
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 13:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B16E03148A8;
	Wed, 11 Feb 2026 13:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="WNl+MPnG"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4C630C60D
	for <linux-man@vger.kernel.org>; Wed, 11 Feb 2026 13:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770817893; cv=none; b=Szq+C6c2xOz22kafDhCdxQl+YhR2f1iaaRkU7aQ4SKhAL2xaga1tRuHHjgKf45PMZDP2NRVbvMsR0HlOS8h/3o0Zt7MDl83IeQCthk8+WbosYLZQejn2qfQhngC2IW1O63M/ProKuL+czM9lA6k3zEvItRxgWvmArctHxGbM2Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770817893; c=relaxed/simple;
	bh=SOT+K/x2+ecYBvVFX5NFHmGE9PQSM0fuYcWmoDXjk8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HJPaBDNFmfeC868sPgLhWbLqeQt7NsqyDNcaWPG77b5l/aRIED5H4EkW7HD8k0/vvBnIXhc0NbhWlRw+C1z4GSg2RoRVgjgSSd9dWpWiToZu1/XXHcuoxY0T34DhgP558kuoL97cSKdmFQ7GRaz3kNPne22ycjYWrE0yen5yOrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=WNl+MPnG; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1770817888;
	bh=SOT+K/x2+ecYBvVFX5NFHmGE9PQSM0fuYcWmoDXjk8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WNl+MPnGHcacu7rdUYHs0JJ/USCE2jjgAQBG+CXmLOj8UiAz+Qdam7D5UJh1H/qhA
	 rd+jUSWMDcvJTLVRxuCEUlMWqWoFtG/6hFVojK868lKlHh2QB9c6q/DmjtS/pZKadO
	 HU7F2+y69boyoXPwHQI32ndlBxS1bdhWIE1ucsZdZelVtprWiSaTJB3dxtSsOpaBen
	 dSe57PWtEY3ksPxwSFfjgrd9O8uXPixiaRWKPXALejXtZYB0YbFslYHnwJHmMLtU53
	 6MbrtJ51EM6fBWbZK3ZlkT7bJBaf2onrK6Gs6j9VaT2WVi3WFPFm/kxkca9fEpw0jt
	 JXKhpPwDAZObw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 352D22608;
	Wed, 11 Feb 2026 14:51:28 +0100 (CET)
Date: Wed, 11 Feb 2026 14:51:27 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v5] futex_waitv.2: new page
Message-ID: <u7iv57v7palhlpu5vllrxzvjo2iz4rgxjjeqksqnsgb3t6gm6w@tarta.nabijaczleweli.xyz>
References: <aYuXZUwh09hVHm3R@devuan>
 <mlooycjkz6pfdvket6f2gwet76aar3zsihtvpm7klt2wl2z3y4@tarta.nabijaczleweli.xyz>
 <aYx8Ghyq8E76xx9c@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ihs4jsinz3hzrr4"
Content-Disposition: inline
In-Reply-To: <aYx8Ghyq8E76xx9c@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5115-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,igalia.com:email,nabijaczleweli.xyz:email,nabijaczleweli.xyz:dkim]
X-Rspamd-Queue-Id: 8A3B9124F44
X-Rspamd-Action: no action


--7ihs4jsinz3hzrr4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 11, 2026 at 02:23:13PM +0100, Alejandro Colomar wrote:
> On 2026-02-11T05:00:26+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > +.P
> > +C programs should assign to
> > +.I uaddr
> > +by casting a pointer to
> > +.B uintptr_t
> > +to ensure the top bits are cleared on 32-bit systems.
>=20
> I'm not sure the paragraph above is correct.
> What code are you worried about exactly?  Could you show an example?

I couldn't because I repeat this kernel recommendation verbatim here.
I don't think this is an issue, I don't think there's an ILP32 universe
where a pointer-to-u64 assignment fails as described.
I'll just cut it off at _t.
=20
> > +static inline long
> > +my_futex_wait_private(_Atomic uint32_t  *uaddr, uint32_t  val,
>=20
> Should this be atomic?  If so, should we document futex(2) as taking
> a pointer to atomic element?
It needs to be _Atomic-tagged to match the caller type
(compare passing a const uint32_t to a uint32_t *).
futexes are u32s accessed atomically, which we document everywhere.

Scissor-patch below.

Best,
-- >8 --
=46rom d221a28a34645cf1d3aab7a962de1c755d500841 Mon Sep 17 00:00:00 2001
=46rom: =3D?UTF-8?q?=3DD0=3DBD=3DD0=3DB0=3DD0=3DB1?=3D <nabijaczleweli@nabi=
jaczleweli.xyz>
Date: Tue, 10 Feb 2026 21:32:19 +0100
Subject: [PATCH v5] futex_waitv.2: new page
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit
X-Mutt-PGP: OS
To: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/futex_waitv.2 | 419 +++++++++++++++++++++++++++++++++++++++++
 man/man7/futex.7       |   9 +-
 2 files changed, 426 insertions(+), 2 deletions(-)
 create mode 100644 man/man2/futex_waitv.2

diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
new file mode 100644
index 000000000..261cb010c
--- /dev/null
+++ p/man/man2/futex_waitv.2
@@ -0,0 +1,419 @@
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
+futex words pointed to by the addresses
+.IR waiters []. uaddr
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
+is not NULL,
+.I *timeout
+specifies a deadline measured against clock
+.IR clockid .
+This interval will be rounded up to the system clock granularity,
+and is guaranteed not to expire early.
+If
+.I timeout
+is NULL, the call blocks indefinitely.
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
+.BR FUTEX2_SIZE_*
+ORed with some of the flags below.
+.TP
+.BR FUTEX2_SIZE_U32
+.I .val
+and
+.I *.uaddr
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
+(Except in an
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
+.\" commit cec199c5e39bde7191a08087cc3d002ccfab31ff
+.\" Author: Peter Zijlstra <peterz@infradead.org>
+.\" Date:   Wed Apr 16 18:29:16 2025 +0200
+.\"
+.\"     futex: Implement FUTEX2_NUMA
+.\"
+.\" FUTEX2_MPOL is not documented or used anywhere;
+.\" it's unclear to me what it does
+.\" (defined in commit c042c505210dc3453f378df432c10fff3d471bc5
+.\"  "futex: Implement FUTEX2_MPOL")
+.TP
+.B FUTEX2_PRIVATE
+By default, the futex is shared
+.RB "(like " FUTEX_WAIT (2const)),
+and can be accessed by multiple processes;
+this flag waits on a private futex word,
+where all users must use the same virtual memory map
+(like
+.BR FUTEX_WAIT_PRIVATE ;
+this most often means they are part of the same process).
+Private futexes are faster than shared ones.
+.P
+C programs should assign to
+.I .uaddr
+by casting a pointer to
+.BR uintptr_t .
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
+.BR FUTEX2_SIZE_* .
+.TP
+.B EINVAL
+.I flags
+was not 0.
+.TP
+.B EINVAL
+.I n
+was not in
+[1,
+.B FUTEX_WAITV_MAX
+(128)].
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
+more than 999\[aq]999\[aq]999).
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
+.B FUTEX2_SIZE_*
+flag or has a size flag different than
+.BR FUTEX2_SIZE_U32
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
+is too small to contain the index of the biggest NUMA domain
+(for example,
+.B FUTEX2_SIZE_U8
+and there are more than 255 NUMA domains).
+.TP
+.B EINVAL
+.B FUTEX2_NUMA
+was set in
+.IR waiters []. flags ,
+and the NUMA word is larger than the maximum possible NUMA node and not
+.BR FUTEX_NO_NODE .
+.TP
+.B ETIMEDOUT
+.I timeout
+was not NULL and no futex was woken before the timeout elapsed.
+.TP
+.BR EAGAIN " or " EWOULDBLOCK
+The value pointed to by
+.I .uaddr
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
+.I *.uaddr
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
+Connection timed out
+.EE
+.P
+.\" SRC BEGIN (futex_waitv.c)
+.EX
+#include <errno.h>
+#include <inttypes.h>
+#include <linux/futex.h>
+#include <pthread.h>
+#include <stdatomic.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/syscall.h>
+#include <time.h>
+#include <unistd.h>
+\&
+static inline long
+my_futex_wait_private(_Atomic uint32_t *uaddr, uint32_t val,
+                      const struct timespec *timeout)
+{
+	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val, timeout);
+}
+\&
+static inline long
+my_futex_waitv(struct futex_waitv *waiters, unsigned int n,
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
+	my_futex_wait_private(futex, 1, NULL);
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
+	getentropy(init, sizeof(init));
+	init[0] =3D init[1] =3D init[2];
+	for (i =3D 0; i < countof(futexes); ++i) {
+		printf("%" PRIu8 "\[rs]t", init[i]);
+		atomic_init(&futexes[i], init[i]);
+		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
+	}
+	putchar('\[rs]n');
+\&
+	for (i =3D 0; i < countof(futexes); ++i) {
+		waiters[i].val   =3D futexes[i];
+		waiters[i].uaddr =3D (uintptr_t)&futexes[i];
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
+		if (woke =3D=3D -1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
+			break;
+\&
+		for (i =3D 0; i < countof(futexes); ++i) {
+			if (futexes[i] !=3D waiters[i].val)
+				printf("%" PRIu32 "%s", futexes[i], i =3D=3D woke ? "!" : "");
+			putchar('\[rs]t');
+		}
+		putchar('\[rs]n');
+\&
+		for (i =3D 0; i < countof(futexes); ++i)
+			waiters[i].val =3D futexes[i];
+	}
+	fprintf(stderr, "%s\[rs]n", strerror(errno));
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


--7ihs4jsinz3hzrr4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmMiV8ACgkQvP0LAY0m
WPFdcw/9EKSbpSnjkXiVF+693kC7SA6P3zPRa2WjF0KR897Y7cCD6BlToKmy8cLr
jTK2Id4RcGMr+tneTYHLAL6P4PqXN2rln1gA0JyxeMv2YCYk8dXUq8JtixEU6FgN
6dO/nWxcEraKV1LZbEbxr/+p7KNyIqlUbH/6vf2fgvos7KVFvW04r8t5h/ta/xvf
nDTWJol1bI5yXqflTBKHNxMESX4R5DFx8DEf1AAUFe9FACa3YWfDD6JfCzRIrOBu
5Dihw6Ms2DqDYpbhkMyKOtOzZSNnhNzeDZB7si1TsEYNHFPzlwQb7m7BBWzLgaN5
ZoqhEGkELostgxla3YZmeyNx0SM/d4YIgNZF29uVBncFLDziHglXycvtlp/3bacx
m9W5x7vJEmju5Dmgui+NehDX5XWVYneKgafimpEzqd9wXB0a+KZEjohCmuHIfcdp
Ho/o1g+hAMpT/itorbRc7KHH5K3VUqx4IX24RzsvI5ti9C9dc5KHIXCJgWH/ral+
nR8rCtxhLA00e2rrz5u2e5IyZKtjb7XnddmEJ0LZwZbVlGRFV1iregXHdeJTzAQJ
34rNDlYfEInqtYcDm8WVIQD1RAF138ClGYsc+cczZJJ0Vk+TEy9xa3gPQdFDEBM7
bqJN6KmHhAZy2QkvMP41SRlMwfVNsGu/UFVOsEkq3pISu470g+w=
=DdXe
-----END PGP SIGNATURE-----

--7ihs4jsinz3hzrr4--

