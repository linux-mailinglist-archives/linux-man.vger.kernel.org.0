Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76F78129963
	for <lists+linux-man@lfdr.de>; Mon, 23 Dec 2019 18:31:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726860AbfLWRbs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Dec 2019 12:31:48 -0500
Received: from l2mail1.panix.com ([166.84.1.75]:54315 "EHLO l2mail1.panix.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726754AbfLWRbr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 23 Dec 2019 12:31:47 -0500
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
        by l2mail1.panix.com (Postfix) with ESMTPS id 47hRH72L5YzDSg
        for <linux-man@vger.kernel.org>; Mon, 23 Dec 2019 12:31:47 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
        by mailbackend.panix.com (Postfix) with ESMTP id 47hRH656mqz1bZS;
        Mon, 23 Dec 2019 12:31:46 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 18676)
        id 47hRH63r1dzcbc; Mon, 23 Dec 2019 12:31:46 -0500 (EST)
From:   Zack Weinberg <zackw@panix.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] Document kernel bugs in delivery of signals from CPU exceptions
Date:   Mon, 23 Dec 2019 12:31:46 -0500
Message-Id: <20191223173146.6924-1-zackw@panix.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

signal.7: Which signal is delivered in response to a CPU exception is
under-documented and does not always make sense.  See
<https://bugzilla.kernel.org/show_bug.cgi?id=205831> for an example
where it doesn’t make sense; per the discussion there, this cannot be
changed because of backward compatibility concerns, so let’s instead
document the problem.

sigaction.2: For related reasons, the kernel doesn’t always fill in
all of the fields of the siginfo_t when delivering signals from CPU
exceptions.  Document this as well.  I imagine this one _could_ be
fixed, but the problem would still be relevant to anyone using an
older kernel.
---
 man2/sigaction.2 |  8 ++++++++
 man7/signal.7    | 40 ++++++++++++++++++++++++++++++----------
 2 files changed, 38 insertions(+), 10 deletions(-)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 8ee878672..10d1c4882 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -1020,6 +1020,14 @@ handler.
 See the relevant Linux kernel sources for details.
 This use is obsolete now.
 .SH BUGS
+When delivering a signal with a
+.B SA_SIGINFO
+handler,
+the kernel does not always provide meaningful values
+for all of the fields of the
+.I siginfo_t
+that are relevant for that signal.
+.PP
 In kernels up to and including 2.6.13, specifying
 .B SA_NODEFER
 in
diff --git a/man7/signal.7 b/man7/signal.7
index d34e536f1..a9fe076fd 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -796,16 +796,36 @@ Linux 2.4 and earlier:
 .BR nanosleep (2).
 .SH CONFORMING TO
 POSIX.1, except as noted.
-.\" It must be a *very* long time since this was true:
-.\" .SH BUGS
-.\" .B SIGIO
-.\" and
-.\" .B SIGLOST
-.\" have the same value.
-.\" The latter is commented out in the kernel source, but
-.\" the build process of some software still thinks that
-.\" signal 29 is
-.\" .BR SIGLOST .
+.SH BUGS
+There are six signals that can be delivered
+as a consequence of a hardware exception:
+.BR SIGBUS ,
+.BR SIGEMT ,
+.BR SIGFPE ,
+.BR SIGILL ,
+.BR SIGSEGV ,
+and
+.BR SIGTRAP .
+Which of these signals is delivered,
+for any given hardware exception,
+is not documented and does not always make sense.
+.PP
+For example, an invalid memory access that causes delivery of
+.B SIGSEGV
+on one CPU architecture may cause delivery of
+.B SIGBUS
+on another architecture, or vice versa.
+.PP
+For another example, using the x86
+.I int
+instruction with a forbidden argument
+(any number other than 3 or 128)
+causes delivery of
+.BR SIGSEGV ,
+even though
+.B SIGILL
+would make more sense,
+because of how the CPU reports the forbidden operation to the kernel.
 .SH NOTES
 For a discussion of async-signal-safe functions, see
 .BR signal-safety (7).
-- 
2.24.1

