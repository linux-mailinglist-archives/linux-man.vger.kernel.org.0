Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DF372DE7D6
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 18:09:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726705AbgLRRI4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 12:08:56 -0500
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]:46205 "EHLO
        3.mo2.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725797AbgLRRI4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 12:08:56 -0500
X-Greylist: delayed 577 seconds by postgrey-1.27 at vger.kernel.org; Fri, 18 Dec 2020 12:08:52 EST
Received: from player750.ha.ovh.net (unknown [10.108.57.44])
        by mo2.mail-out.ovh.net (Postfix) with ESMTP id 0C3EA1ED768
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 17:58:32 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player750.ha.ovh.net (Postfix) with ESMTPSA id CE5CF19415177;
        Fri, 18 Dec 2020 16:58:25 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-103G0054b343490-c268-4508-8761-696a483cf1bc,
                    10A6859A360A65EA48DD728C0EA8E51A84F067FE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH v3] close_range.2: new page documenting close_range(2)
Date:   Fri, 18 Dec 2020 17:58:15 +0100
Message-Id: <20201218165815.6963-1-steve@sk2.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 16120634867417435410
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudeliedgleehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefuthgvphhhvghnucfmihhtthcuoehsthgvvhgvsehskhdvrdhorhhgqeenucggtffrrghtthgvrhhnpeetgedugfelkeeikeetgeegteevfeeufeetuefgudeiiedthfehtdeffeekvdeffeenucfkpheptddrtddrtddrtddpkedvrdeihedrvdehrddvtddunecuufhprghmkfhppfgvthifohhrkhepkedvrdeihedrvdehrddvtddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehtddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This documents close_range(2) based on information in
278a5fbaed89dacd04e9d052f4594ffd0e0585de,
60997c3d45d9a67daf01c56d805ae4fec37e0bd8, and
582f1fb6b721facf04848d2ca57f34468da1813e.

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
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

 man2/close_range.2 | 266 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 266 insertions(+)
 create mode 100644 man2/close_range.2

diff --git a/man2/close_range.2 b/man2/close_range.2
new file mode 100644
index 000000000..f8f2053ac
--- /dev/null
+++ b/man2/close_range.2
@@ -0,0 +1,266 @@
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
+.B CLOSE_RANGE_UNSHARE
+unshares the range of file descriptors from any other processes,
+before closing them,
+avoiding races with other threads sharing the file descriptor table.
+.TP
+.BR CLOSE_RANGE_CLOEXEC " (since Linux 5.10)"
+sets the close-on-exec bit instead of immediately closing the file
+descriptors.
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
+.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
+.SS Closing all open file descriptors
+To avoid blindly closing file descriptors in the range of possible
+file descriptors,
+this is sometimes implemented (on Linux) by listing open file
+descriptors in
+.I /proc/self/fd/
+and calling
+.BR close (2)
+on each one.
+.BR close_range ()
+can take care of this without requiring
+.I /proc
+and with a single system call,
+which provides significant performance benefits.
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
+if the unshared range extends past the current maximum number of file
+descriptors allocated in the caller's file descriptor table
+(the common case when
+.I last
+is
+.BR ~0U ),
+the kernel will unshare a new file descriptor table for the caller up
+to
+.IR first .
+This avoids subsequent close calls entirely;
+the whole operation is complete once the table is unshared.
+.\" 582f1fb6b721facf04848d2ca57f34468da1813e
+.SS Closing files on \fBexec\fP
+This is particularly useful in cases where multiple
+.RB pre- exec
+setup steps risk conflicting with each other.
+For example, setting up a
+.BR seccomp (2)
+profile can conflict with a
+.B close_range
+call:
+if the file descriptors are closed before the seccomp profile is set
+up,
+the profile setup can't use them control their closure;
+if the file descriptors are closed afterwards,
+the seccomp profile can't block the
+.B close_range
+call or any fallbacks.
+Using
+.B CLOSE_RANGE_CLOEXEC
+avoids this:
+the descriptors can be marked before the seccomp profile is set up,
+and the profile can control access to
+.B close_range
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
+    int i;
+    struct stat buf;
+
+    for (i = 0; i < 100; i++) {
+        if (!fstat(i, &buf))
+            printf("FD %d is open.\n", i);
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
+.B close_range
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
+    int i;
+
+    if (argc < 3) {
+        fprintf(stderr, "Usage: %s <command-to-run> <files-to-open>\n", argv[0]);
+        exit(EXIT_FAILURE);
+    }
+
+    for (i = 2; i < argc; i++) {
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
+.B close_range
+will show different output, with the file descriptors for the named
+files still open.
+.SH SEE ALSO
+.BR close (2)

base-commit: b5dae3959625f5ff378e9edf9139057d1c06bb55
-- 
2.20.1

