Return-Path: <linux-man+bounces-5090-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aysoOtyVi2m+WQAAu9opvQ
	(envelope-from <linux-man+bounces-5090-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:32:28 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB9411F08C
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:32:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A724E303C606
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 20:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4F5830FC12;
	Tue, 10 Feb 2026 20:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Y9+4tjLA"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0827C32E750
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 20:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770755545; cv=none; b=CqcFe0Y2TgvQsnkCJm5n+fY+am/dECM2m37nPIXmAr/3BhBxO70XeM874u3lWI9ceA78+6r1EIzNF9HYOYWWyeaL1R4EheCOFr/us4kcW2sgmT3pu+SkT/qOIYVPdPaNfWit50KKewReJXqSy9NMYZ5mrEM1HrsaPKMgjCeQ8dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770755545; c=relaxed/simple;
	bh=voGMwdNdrwrR6m0SwVJTvscPKZphUf3AfoyMo0mjqHs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=Gxupm0ER+3K6leP7xE1UUKjCcGMpp6LA5ksUAgaH5MCjQk2BZaD3QpBONhRl3X1xN+FzNrACwFqioxuoomsIsedtw/hDhs51WhOCTGECv+rbgBF7uh5EPMwODlUy0P/x6TnSDKXRK5DAhzNXXSDVsIYBrsZh3g/KT/pUKcm3LHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Y9+4tjLA; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1770755539;
	bh=voGMwdNdrwrR6m0SwVJTvscPKZphUf3AfoyMo0mjqHs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=Y9+4tjLAqtvonHlJlj4OlF9bpnKMSyaaDyBZO71wT2c5GIRT+KAg5iLywlRu5HYv9
	 17ZcqR/QxVnya8KTC7LVLWpX9F43nTNTsEq9Tctvx8CXw5U6XAN1nojxy0dxe3PFVW
	 LviyJpK49nFIzD+t5/o82wf2E76DSkPvTFpuq/hgBqFwubmxXvpJO83EkMM7YkKmEp
	 5ltoX7Wyp192K5XLhp0pgMbdmnITZbTa8+3HQNIt+HwQzJQlaTsolX1i1SMp/8BTaV
	 1oq7fWPgldLhsvuLjXGIv6UN/gpPxnHwtTWdlEcPnTdmilf8BafcKXVNMnKtHO2MMo
	 EKXvJLcJIaezg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2E6A51DD0;
	Tue, 10 Feb 2026 21:32:19 +0100 (CET)
Date: Tue, 10 Feb 2026 21:32:18 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3] futex_waitv.2: new page
Message-ID: <gfajadj3fxuf44m3wy3xwponaon4mnzavd7fnukv34pvt43hqu@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oj2ghndkv5sltig5"
Content-Disposition: inline
In-Reply-To: <aYuPRo9lgl7frmym@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5090-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,igalia.com:email,nabijaczleweli.xyz:email,nabijaczleweli.xyz:dkim]
X-Rspamd-Queue-Id: 3AB9411F08C
X-Rspamd-Action: no action


--oj2ghndkv5sltig5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/futex_waitv.2 | 407 +++++++++++++++++++++++++++++++++++++++++
 man/man7/futex.7       |   9 +-
 2 files changed, 414 insertions(+), 2 deletions(-)
 create mode 100644 man/man2/futex_waitv.2

diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
new file mode 100644
index 000000000..2ec6e4b50
--- /dev/null
+++ p/man/man2/futex_waitv.2
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
+		printf("%" PRIu8 "\[rs]t", init[i]);
+		atomic_init(&futexes[i], init[i]);
+		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
+	}
+	putchar('\[rs]n');
+\&
+	struct futex_waitv waiters[WORKERS] =3D {};
+	for (int i =3D 0; i < WORKERS; ++i) {
+		waiters[i].val   =3D futexes[i];
+		waiters[i].uaddr =3D (uintptr_t)&futexes[i];
+		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
+	}
+	for (;;) {
+		struct timespec timeout;
+		clock_gettime(CLOCK_MONOTONIC, &timeout);
+		timeout.tv_sec +=3D 1;
+\&
+		int woke =3D syscall(SYS_futex_waitv, waiters, WORKERS, 0, &timeout, CLO=
CK_MONOTONIC);
+		if (woke =3D=3D -1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
+			break;
+\&
+		for (int i =3D 0; i < WORKERS; ++i) {
+			if (futexes[i] !=3D waiters[i].val)
+				printf("%" PRIu32 "%.*s", futexes[i], i =3D=3D woke, "!");
+			putchar('\[rs]t');
+		}
+		putchar('\[rs]n');
+\&
+		for (int i =3D 0; i < WORKERS; ++i)
+			waiters[i].val =3D futexes[i];
+	}
+	printf("%s\[rs]n", strerror(errno));
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

--oj2ghndkv5sltig5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmLldIACgkQvP0LAY0m
WPFFIg/4y9h0/Cr7oLWyr4L3HWalVsBS0h01cNAGY7Cf18L1FuXmKe50VGcSwRvV
pjLnVlwfZMWnHlZl+2ljexmV2KcMrbw07szF7CqN0pzvf3ZPXgFGYrSNx+J3O1M/
BrhA+g9ZREJjg8Uk73V50VAVjVK9WtjBqK+8Zn/yxAhWxHWPhUCL1bPP3GCtXZct
vLL3Ys4VwPbxFfT6R4eGp3DeFjz0ZyPtZ1zJaToSrwyvg8fnPubt3Qx4mcUaFzOI
Cv/vZSQ2Nk26KRAtsi5zhklYtWjR0cuU6wl7j0TtXstSMt7eVqtDX39RhA3ZTG18
ACK+T1xkR6TCBI/pi1A/hjGHV/T7HR5XWSFoK4tAvLfJXZ9FmQezWoROLKr66ghy
GjiXhx4ro+ctvtxlc0klBpKfbdCQTbOlGy3QxGBbl0HDZIIZFPtUK9HDM2Veb/pL
MBc1jd2Jv8oo+DFrRLl4b9o/MnnmTv02dfdhXZEivGFJ/SJHd0+s0paBNB0pU5t0
Dyv+N1Ns+sjgJiFuQKTobfAKhElsPN25fApj95q234IQouizugwi8W6C/j+EPxpE
lm+E6Rs3CUs2VM6S4XCg2g+IU4wU4VDnvHScVnvfUEKMDCAplqquAsvkhtAQc/Iv
+vaVwYKIqzSEgTgB7rfCDRIgvr01C9V3m1PDb2oH0lyIg7O1RQ==
=KLjY
-----END PGP SIGNATURE-----

--oj2ghndkv5sltig5--

