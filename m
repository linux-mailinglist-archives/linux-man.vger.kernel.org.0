Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 519852D4F72
	for <lists+linux-man@lfdr.de>; Thu, 10 Dec 2020 01:28:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726855AbgLJA1l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 19:27:41 -0500
Received: from 4.mo7.mail-out.ovh.net ([178.32.122.254]:55055 "EHLO
        4.mo7.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726615AbgLJA1l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 19:27:41 -0500
X-Greylist: delayed 8398 seconds by postgrey-1.27 at vger.kernel.org; Wed, 09 Dec 2020 19:27:39 EST
Received: from player787.ha.ovh.net (unknown [10.108.54.97])
        by mo7.mail-out.ovh.net (Postfix) with ESMTP id D7EA41871BE
        for <linux-man@vger.kernel.org>; Wed,  9 Dec 2020 23:00:43 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player787.ha.ovh.net (Postfix) with ESMTPSA id C87E51931C761;
        Wed,  9 Dec 2020 22:00:37 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-96R0015a9f0d6f-a3f8-409a-918c-52812c8d5d66,
                    8622D3A4C020BD08BE34C4B7C738CCED01E4E747) smtp.auth=steve@sk2.org
From:   Stephen Kitt <steve@sk2.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Christian Brauner <christian.brauner@ubuntu.com>,
        linux-kernel@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH v2] close_range.2: new page documenting close_range(2)
Date:   Wed,  9 Dec 2020 23:00:23 +0100
Message-Id: <20201209220023.17912-1-steve@sk2.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 5263300591903526162
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudejkedgudehjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepteegudfgleekieekteeggeetveefueefteeugfduieeitdfhhedtfeefkedvfeefnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejkeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This documents close_range(2) based on information in
278a5fbaed89dacd04e9d052f4594ffd0e0585de and
60997c3d45d9a67daf01c56d805ae4fec37e0bd8.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
V2: unsigned int to match the kernel declarations
    groff and grammar tweaks
    CLOSE_RANGE_UNSHARE unshares *and* closes
    Explain that EMFILE and ENOMEM can occur with C_R_U
    "Conforming to" phrasing
    Detailed explanation of CLOSE_RANGE_UNSHARE
    Reading /proc isn't common

 man2/close_range.2 | 138 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 138 insertions(+)
 create mode 100644 man2/close_range.2

diff --git a/man2/close_range.2 b/man2/close_range.2
new file mode 100644
index 000000000..403142b33
--- /dev/null
+++ b/man2/close_range.2
@@ -0,0 +1,138 @@
+.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
+.\"
+.\" %%%LICENSE_START(VERBATIM)
+.\" Permission is granted to make and distribute verbatim copies of this
+.\" manual provided the copyright notice and this permission notice are
+.\" preserved on all copies.
+.\"
+.\" Permission is granted to copy and distribute modified versions of this
+.\" manual under the conditions for verbatim copying, provided that the
+.\" entire resulting derived work is distributed under the terms of a
+.\" permission notice identical to this one.
+.\"
+.\" Since the Linux kernel and libraries are constantly changing, this
+.\" manual page may be incorrect or out-of-date.  The author(s) assume no
+.\" responsibility for errors or omissions, or for damages resulting from
+.\" the use of the information contained herein.  The author(s) may not
+.\" have taken the same level of care in the production of this manual,
+.\" which is licensed free of charge, as they might when working
+.\" professionally.
+.\"
+.\" Formatted or processed versions of this manual, if unaccompanied by
+.\" the source, must acknowledge the copyright and authors of this work.
+.\" %%%LICENSE_END
+.\"
+.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
+.SH NAME
+close_range \- close all file descriptors in a given range
+.SH SYNOPSIS
+.nf
+.B #include <linux/close_range.h>
+.PP
+.BI "int close_range(unsigned int " first ", unsigned int " last ", unsigned int " flags );
+.fi
+.SH DESCRIPTION
+The
+.BR close_range ()
+system call closes all open file descriptors from
+.I first
+to
+.I last
+(included).
+.PP
+Errors closing a given file descriptor are currently ignored.
+.PP
+.I flags
+can be set to
+.B CLOSE_RANGE_UNSHARE
+to unshare the range of file descriptors from any other processes,
+before closing them, avoiding races with other threads sharing the
+file descriptor table.
+.SH RETURN VALUE
+On success,
+.BR close_range ()
+returns 0.
+On error, \-1 is returned and
+.I errno
+is set to indicate the cause of the error.
+.SH ERRORS
+.TP
+.B EINVAL
+.I flags
+is not valid, or
+.I first
+is greater than
+.IR last .
+.PP
+The following can occur with
+.B CLOSE_RANGE_UNSHARE
+(when constructing the new descriptor table):
+.TP
+.B EMFILE
+The per-process limit on the number of open file descriptors has been reached
+(see the description of
+.B RLIMIT_NOFILE
+in
+.BR getrlimit (2)).
+.TP
+.B ENOMEM
+Insufficient kernel memory was available.
+.SH VERSIONS
+.BR close_range ()
+first appeared in Linux 5.9.
+.SH CONFORMING TO
+.BR close_range ()
+is a nonstandard function that is also present on FreeBSD.
+.SH NOTES
+Currently, there is no glibc wrapper for this system call; call it using
+.BR syscall (2).
+.PP
+.B CLOSE_RANGE_UNSHARE
+is conceptually equivalent to
+.PP
+.in +4n
+.EX
+unshare(CLONE_FILES);
+close_range(first, last, 0);
+.EE
+.in
+.PP
+but can be more efficient: if the unshared range extends past the
+current maximum number of file descriptors allocated in the caller's
+file descriptor table (the common case when
+.I last
+is
+.BR ~0U ),
+the kernel will unshare a new file descriptor
+table for the caller up to
+.IR first .
+This avoids subsequent close calls entirely; the whole operation is
+complete once the table is unshared.
+.SH USE CASES
+.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
+.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
+.SS Closing file descriptors before exec
+File descriptors can be closed safely using
+.PP
+.in +4n
+.EX
+/* we don't want anything past stderr here */
+close_range(3, ~0U, CLOSE_RANGE_UNSHARE);
+execve(....);
+.EE
+.in
+.SS Closing all open file descriptors
+To avoid blindly closing file descriptors in the range of possible
+file descriptors, this is sometimes implemented (on Linux) by listing
+open file descriptors in
+.I /proc/self/fd/
+and calling
+.BR close (2)
+on each one.
+.BR close_range ()
+can take care of this without requiring
+.I /proc
+and with a single system call, which provides significant performance
+benefits.
+.SH SEE ALSO
+.BR close (2)

base-commit: b5dae3959625f5ff378e9edf9139057d1c06bb55
-- 
2.20.1

