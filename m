Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9477F2E0133
	for <lists+linux-man@lfdr.de>; Mon, 21 Dec 2020 20:42:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725852AbgLUTl2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Dec 2020 14:41:28 -0500
Received: from 10.mo179.mail-out.ovh.net ([46.105.79.46]:48690 "EHLO
        10.mo179.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726010AbgLUTl1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Dec 2020 14:41:27 -0500
X-Greylist: delayed 496 seconds by postgrey-1.27 at vger.kernel.org; Mon, 21 Dec 2020 14:41:23 EST
Received: from player729.ha.ovh.net (unknown [10.108.4.98])
        by mo179.mail-out.ovh.net (Postfix) with ESMTP id E65AF181EF7
        for <linux-man@vger.kernel.org>; Mon, 21 Dec 2020 20:32:25 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player729.ha.ovh.net (Postfix) with ESMTPSA id 76F8619874BCB;
        Mon, 21 Dec 2020 19:32:18 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-103G005bc82d505-1f31-4356-999d-3e08cfdd25a0,
                    A98814B0FADA3C5872731A5F91035151D8D30146) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH v4] close_range.2: new page documenting close_range(2)
Date:   Mon, 21 Dec 2020 20:32:14 +0100
Message-Id: <20201221193214.19875-1-steve@sk2.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 17890830995088362770
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddtvddguddvlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepteegudfgleekieekteeggeetveefueefteeugfduieeitdfhhedtfeefkedvfeefnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejvdelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This documents close_range(2) based on information in
278a5fbaed89dacd04e9d052f4594ffd0e0585de,
60997c3d45d9a67daf01c56d805ae4fec37e0bd8, and
582f1fb6b721facf04848d2ca57f34468da1813e.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
V4: sort flags alphabetically
    move commit references inside the corresponding section
    more semantic newlines
    unformat numeric constants
    more formatting for function references
    escape C backslashes
    C99 loop indices

V3: fix synopsis overflow
    copy notes from membarrier.2 re the lack of wrapper
    semantic newlines
    drop non-standard "USE CASES" section heading
    add code example

V2: unsigned int to match the kernel declarations
    groff and grammar tweaks
    CLOSE_RANGE_UNSHARE unshares *and* closes
    Explain that EMFILE and ENOMEM can occur with C_R_U
    "Conforming to" phrasing
    Detailed explanation of CLOSE_RANGE_UNSHARE
    Reading /proc isn't common

 man2/close_range.2 | 267 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 267 insertions(+)
 create mode 100644 man2/close_range.2

diff --git a/man2/close_range.2 b/man2/close_range.2
new file mode 100644
index 000000000..a8590902b
--- /dev/null
+++ b/man2/close_range.2
@@ -0,0 +1,267 @@
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
+.BI "int close_range(unsigned int " first ", unsigned int " last ,
+.BI "                unsigned int " flags );
+.fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
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
+can be 0 or set to one or both of the following:
+.TP
+.BR CLOSE_RANGE_CLOEXEC " (since Linux 5.10)"
+sets the close-on-exec bit instead of
+immediately closing the file descriptors.
+.TP
+.B CLOSE_RANGE_UNSHARE
+unshares the range of file descriptors from any other processes,
+before closing them,
+avoiding races with other threads sharing the file descriptor table.
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
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
+.SS Closing all open file descriptors
+.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
+To avoid blindly closing file descriptors
+in the range of possible file descriptors,
+this is sometimes implemented (on Linux)
+by listing open file descriptors in
+.I /proc/self/fd/
+and calling
+.BR close (2)
+on each one.
+.BR close_range ()
+can take care of this without requiring
+.I /proc
+and within a single system call,
+which provides significant performance benefits.
+.SS Closing file descriptors before exec
+.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
+File descriptors can be closed safely using
+.PP
+.in +4n
+.EX
+/* we don't want anything past stderr here */
+close_range(3, ~0U, CLOSE_RANGE_UNSHARE);
+execve(....);
+.EE
+.in
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
+but can be more efficient:
+if the unshared range extends past
+the current maximum number of file descriptors allocated
+in the caller's file descriptor table
+(the common case when
+.I last
+is ~0U),
+the kernel will unshare a new file descriptor table for the caller up to
+.IR first .
+This avoids subsequent close calls entirely;
+the whole operation is complete once the table is unshared.
+.SS Closing files on \fBexec\fP
+.\" 582f1fb6b721facf04848d2ca57f34468da1813e
+This is particularly useful in cases where multiple
+.RB pre- exec
+setup steps risk conflicting with each other.
+For example, setting up a
+.BR seccomp (2)
+profile can conflict with a
+.BR close_range ()
+call:
+if the file descriptors are closed before the
+.BR seccomp (2)
+profile is set up,
+the profile setup can't use them itself,
+or control their closure;
+if the file descriptors are closed afterwards,
+the seccomp profile can't block the
+.BR close_range ()
+call or any fallbacks.
+Using
+.B CLOSE_RANGE_CLOEXEC
+avoids this:
+the descriptors can be marked before the
+.BR seccomp (2)
+profile is set up,
+and the profile can control access to
+.BR close_range ()
+without affecting the calling process.
+.SH EXAMPLES
+The following program is designed to be execed by the second program
+below.
+It lists its open file descriptors:
+.PP
+.in +4n
+.EX
+/* listopen.c */
+
+#include <stdio.h>
+#include <sys/stat.h>
+
+int
+main(int argc, char *argv[])
+{
+    struct stat buf;
+
+    for (int i = 0; i < 100; i++) {
+        if (!fstat(i, &buf))
+            printf("FD %d is open.\en", i);
+    }
+
+    exit(EXIT_SUCCESS);
+)
+.EE
+.in
+.PP
+This program executes the command given on its command-line after
+opening the files listed after the command,
+and then using
+.BR close_range ()
+to close them:
+.PP
+.in +4n
+.EX
+/* close_range.c */
+
+#include <fcntl.h>
+#include <linux/close_range.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/stat.h>
+#include <sys/syscall.h>
+#include <sys/types.h>
+#include <unistd.h>
+
+int
+main(int argc, char *argv[])
+{
+    char *newargv[] = { NULL };
+    char *newenviron[] = { NULL };
+
+    if (argc < 3) {
+        fprintf(stderr, "Usage: %s <command-to-run> <files-to-open>\en", argv[0]);
+        exit(EXIT_FAILURE);
+    }
+
+    for (int i = 2; i < argc; i++) {
+        if (open(argv[i], O_RDONLY) == -1) {
+            perror(argv[i]);
+            exit(EXIT_FAILURE);
+        }
+    }
+
+    if (syscall(__NR_close_range, 3, ~0U, CLOSE_RANGE_UNSHARE) == -1) {
+        perror("close_range");
+        exit(EXIT_FAILURE);
+    }
+
+    execve(argv[1], newargv, newenviron);
+    perror("execve");
+    exit(EXIT_FAILURE);
+}
+.EE
+.in
+.PP
+We can use the second program to exec the first as follows:
+.PP
+.in +4n
+.EX
+.RB "$" " make listopen close_range"
+.RB "$" " ./close_range ./listopen /dev/null /dev/zero"
+FD 0 is open.
+FD 1 is open.
+FD 2 is open.
+.EE
+.in
+.PP
+Removing the call to
+.BR close_range ()
+will show different output,
+with the file descriptors for the named files still open.
+.SH SEE ALSO
+.BR close (2)

base-commit: b5dae3959625f5ff378e9edf9139057d1c06bb55
-- 
2.20.1

