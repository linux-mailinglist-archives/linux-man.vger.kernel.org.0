Return-Path: <linux-man+bounces-5053-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eN6JGju2h2k6cQQAu9opvQ
	(envelope-from <linux-man+bounces-5053-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 23:01:31 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3B7107423
	for <lists+linux-man@lfdr.de>; Sat, 07 Feb 2026 23:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A35A43017266
	for <lists+linux-man@lfdr.de>; Sat,  7 Feb 2026 22:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A8121773D;
	Sat,  7 Feb 2026 22:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="igcfzXgu"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB7446BF
	for <linux-man@vger.kernel.org>; Sat,  7 Feb 2026 22:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770501653; cv=none; b=ueEWtjEYZI1cwgN6DbzJzLIbJQpnbXSyZx86yzDuER5b4MXWYelawLTl6uIv+emynQmgr+vlGzJiDUcCiokkvVtI+1pOrbYu2gw+WMgzJoS1xanZfdPLC5RlmAVwwAiyO/GKtNt4S72AkDLGMwd938fFY9cZlrygNAchogpJB14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770501653; c=relaxed/simple;
	bh=1p/mEBMZ5Gq3Rdd3pV5eH8/a+/4a7Z0JbV0nQUUYWys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oT00aqolaAk9qbh71dEHpD765oBdRO3HyD+mu3kotaM4jPIWnX5wys3I3tvVIXDMwuNSTW8QMCle3rcWFMao8dXYD5cNxG8hfdoQCM/2dIISEN9PD2+wH1opJbTp9zqTWQrojuPJsZNRVzyKw/NcBeM5zP3wa2dWpDy6GTtYjVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=igcfzXgu; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1770501649;
	bh=1p/mEBMZ5Gq3Rdd3pV5eH8/a+/4a7Z0JbV0nQUUYWys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=igcfzXgu5L8DXWdyjvXe29L2m2ro+WbafDm6pHZV6I1SwoCvO57na4wzoUoFmOBwX
	 OfVOmWWxlOziEUYAwrUikg0FPi7S/vQvIO/ij9e30Q6sBGqb0Xl0L/0pLWT82VsIZJ
	 doTG8vkdrmMgK51edMKnvb7MdouQZMJbBHKljC3Yzxt9GT/gfWuFjdhHNhitrF17u8
	 Xt7HLuVNVuodVWn74sWajBUtV4HYkAtX+cbZBT/BdoKkAcDo5mistOfkMPsolQedU1
	 IuZaMF0CHoAt1IEkV3YboSg3tDlWa0w0WnjdA2NYz3G/1rqV8k/2Dni+AD/WpAhIAy
	 Vrmr2B8JkVj8g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 833A4211C;
	Sat,  7 Feb 2026 23:00:49 +0100 (CET)
Date: Sat, 7 Feb 2026 23:00:49 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] futex_waitv.2: new page
Message-ID: <se6hm5gnd7cyjsby5q6pctkrws5ecp5gpnfjuy3zh2shd2abyj@tarta.nabijaczleweli.xyz>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b4yotfwalvan6i6p"
Content-Disposition: inline
In-Reply-To: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5053-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabijaczleweli.xyz:email,nabijaczleweli.xyz:dkim]
X-Rspamd-Queue-Id: 8D3B7107423
X-Rspamd-Action: no action


--b4yotfwalvan6i6p
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/futex_waitv.2 | 407 +++++++++++++++++++++++++++++++++++++++++
 man/man7/futex.7       |   9 +-
 2 files changed, 414 insertions(+), 2 deletions(-)
 create mode 100644 man/man2/futex_waitv.2

diff --git man/man2/futex_waitv.2 man/man2/futex_waitv.2
new file mode 100644
index 000000000..2645f4147
--- /dev/null
+++ man/man2/futex_waitv.2
@@ -0,0 +1,407 @@
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
+.BR "#include <linux/futex.h>" "  /* Definition of " "struct futex_waitv" =
" */"
+.BR "#include <sys/syscall.h>" "  /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.B #include <time.h>
+.P
+.BR "long syscall(" "unsigned int nr_futexes;"
+.BI "             SYS_futex_waitv, struct futex_waitv " waiters [ nr_futex=
es ],
+.BI "             unsigned int " nr_futexes ", unsigned int " flags ,
+.BI "             const struct timespec *_Nullable " timeout ", clockid_t =
" clockid ");"
+.fi
+.P
+.EX
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
+.I __reserved
+must be 0
+and
+.I flags
+must contain one of
+.BR FUTEX2_SIZE_*
+ORed with some of the flags below.
+.P
+C programs should assign to
+.I uaddr
+by casting a pointer to
+.B uintptr_t
+to ensure the top bits are cleared on 32-bit systems.
+.TP
+.BR FUTEX2_SIZE_U32
+.I val
+and
+.I *uaddr
+are 32-bit unsigned integers.
+.TP
+.B FUTEX2_NUMA
+The futex word is followed by another word of the same size
+.RI ( uaddr
+points to
+.IR uint N _t[2]
+rather than
+.IR uint N _t .
+The word is given by
+.IR uaddr[1] ),
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
+.I flags
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
+was not NULL and did not point to a valid user-space address.
+.TP
+.B EFAULT
+Any
+.IR waiters []. uaddr
+field is not a valid user-space address.
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
+.I nr_futexes
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
+more than 999'999'999).
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
+.I uaddr
+was not equal to the expected value
+.I val
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
+.I val
+and
+.I *uaddr
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
+void *
+worker(void *arg)
+{
+	_Atomic uint32_t *futex =3D arg;
+\&
+	usleep(*futex * 10000);
+	*futex *=3D 2;
+	syscall(SYS_futex, futex, FUTEX_WAKE_PRIVATE, 1);
+	return NULL;
+}
+\&
+int
+main(void)
+{
+#define WORKERS 10
+	_Atomic uint32_t futexes[WORKERS];
+\&
+	uint8_t init[WORKERS];
+	getentropy(init, sizeof(init));
+	init[0] =3D init[1] =3D init[2];
+	for (int i =3D 0; i < WORKERS; ++i) {
+		printf("%" PRIu8 "\\t", init[i]);
+		atomic_init(&futexes[i], init[i]);
+		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
+	}
+	putchar('\\n');
+\&
+	struct futex_waitv waiters[WORKERS] =3D {};
+	for (int i =3D 0; i < WORKERS; ++i) {
+		waiters[i].val   =3D futexes[i];
+		waiters[i].uaddr =3D (uintptr_t)&futexes[i];
+		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
+	}
+	for (;;) {
+		struct timespec timeout
+		clock_gettime(CLOCK_MONOTONIC, &timeout);
+		timeout.tv_sec +=3D 1;
+\&
+		int woke =3D syscall(SYS_futex_waitv, waiters, WORKERS, 0, &timeout, CLO=
CK_MONOTONIC);
+		if (woke =3D=3D -1)
+			break;
+\&
+		for (int i =3D 0; i < WORKERS; ++i) {
+			if (futexes[i] !=3D waiters[i].val)
+				printf("%" PRIu32 "%.*s", futexes[i], i =3D=3D woke, "!");
+			putchar('\\t');
+		}
+		putchar('\\n');
+\&
+		for (int i =3D 0; i < WORKERS; ++i)
+			waiters[i].val =3D futexes[i];
+	}
+	printf("%s\\n", strerror(errno));
+}
+.EE
+.SH SEE ALSO
+.ad l
+.BR futex (2),
+.BR FUTEX_WAIT (2const),
+.BR FUTEX_WAKE (2const),
+.BR futex (7)
+.P
+The following kernel source files:
+.IP \[bu]
+.I Documentation/userspace-api/futex2.rst
+.IP \[bu]
+.I kernel/futex/syscall.c
+.IP \[bu]
+.I kernel/futex/waitwake.c
+.IP \[bu]
+.I kernel/futex/futex.h
diff --git man/man7/futex.7 man/man7/futex.7
index 51c5d5d9b..d271144ff 100644
--- man/man7/futex.7
+++ man/man7/futex.7
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

--b4yotfwalvan6i6p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmHthAACgkQvP0LAY0m
WPGQHA/8CxoqzCy9+9ZMOA/vOBE8gn32wq4lEoBkSgAkJmTK+x7UVJ4F2A2e/bwI
kF8KbG2tvVi2LgSDEU5r3NT91zhPXAxJIF1RfBfyHfrn51hTiNAgiAyrzypfCWyj
BeerYUMyeGAZTppRlpV5REfU8dTC4wC9P+nRgJjRjR6QVdBvs5reY2ytKUM5JK/h
Hw0PYGOdJyMOAyEt/zerw/7yikV6k14tuY02tIFauXhB7n5VYBsm9NxGReTKzRxF
0Je1uw0Rn5P5+GxaWJBEBqZ5fPlC9fdMQeZUI6VJ4tfscyjCTMZ0Y1bK9KExdHo7
+TPVdQCiFsUuHMkdJjzeM8fOVHe/juKbzFPdBa5hgwZ1JceTFQ00lDr9QQvfDQM8
TXMANUFfvMkTLrlJXlaOI02t4kuL45fJwmgq8Xf4vKYQOBKRBSKdLVAEUXHwPUGK
FLc8xMP1jceBjTJO7d5asqeZQNcASoqNQ8EHmSBfr4BXS9CRkmuBFbiJ3zPAcY2F
tBE1/FV/7IHE7fdgQlT2EK64sfetcAnQX72q3IYlL3oS9ygvDIdJQljhVVptbEP2
AyN2ZUXWkb9TAF93c66b1Wq5YtUf+age01miYvnGtLjqLgW64K2mVZw93KmG8GBo
am8tWStb/QxZoivz2+vzcq9yNUgBXH1YhlxEBWgXHWQmObsQNlo=
=lmXi
-----END PGP SIGNATURE-----

--b4yotfwalvan6i6p--

