Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7E626160CBF
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2020 09:19:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727332AbgBQITA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Feb 2020 03:19:00 -0500
Received: from mga14.intel.com ([192.55.52.115]:33550 "EHLO mga14.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726932AbgBQITA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 17 Feb 2020 03:19:00 -0500
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2020 00:18:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,451,1574150400"; 
   d="scan'208";a="314711143"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga001.jf.intel.com with ESMTP; 17 Feb 2020 00:18:59 -0800
Received: from [10.125.252.180] (abudanko-mobl.ccr.corp.intel.com [10.125.252.180])
        by linux.intel.com (Postfix) with ESMTP id 0359858052E;
        Mon, 17 Feb 2020 00:18:56 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, James Morris <jmorris@namei.org>,
        Serge Hallyn <serge@hallyn.com>,
        Stephen Smalley <sds@tycho.nsa.gov>,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andi Kleen <ak@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: [PATCH v1] perf_event_open.2: update the man page with CAP_PERFMON
 related information
Organization: Intel Corp.
Message-ID: <18d1083d-efe5-f5f8-c531-d142c0e5c1a8@linux.intel.com>
Date:   Mon, 17 Feb 2020 11:18:55 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Extend perf_event_open 2 man page with the information about
CAP_PERFMON capability designed to secure performance monitoring
and observability operation in a system according to the principle
of least privilege [1] (POSIX IEEE 1003.1e, 2.2.2.39).

[1] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 man2/perf_event_open.2 | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 89d267c02..e9aab2ca1 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -98,6 +98,8 @@ when running on the specified CPU.
 .BR "pid == \-1" " and " "cpu >= 0"
 This measures all processes/threads on the specified CPU.
 This requires
+.B CAP_PERFMON
+or
 .B CAP_SYS_ADMIN
 capability or a
 .I /proc/sys/kernel/perf_event_paranoid
@@ -2920,6 +2922,8 @@ to hold the result.
 This allows attaching a Berkeley Packet Filter (BPF)
 program to an existing kprobe tracepoint event.
 You need
+.B CAP_PERFMON
+or
 .B CAP_SYS_ADMIN
 privileges to use this ioctl.
 .IP
@@ -2962,6 +2966,8 @@ have multiple events attached to a tracepoint.
 Querying this value on one tracepoint event returns the id
 of all BPF programs in all events attached to the tracepoint.
 You need
+.B CAP_PERFMON
+or
 .B CAP_SYS_ADMIN
 privileges to use this ioctl.
 .IP
@@ -3170,6 +3176,8 @@ it was expecting.
 .TP
 .B EACCES
 Returned when the requested event requires
+.B CAP_PERFMON
+or
 .B CAP_SYS_ADMIN
 permissions (or a more permissive perf_event paranoid setting).
 Some common cases where an unprivileged process
@@ -3291,6 +3299,8 @@ setting is specified.
 It can also happen, as with
 .BR EACCES ,
 when the requested event requires
+.B CAP_PERFMON
+or
 .B CAP_SYS_ADMIN
 permissions (or a more permissive perf_event paranoid setting).
 This includes setting a breakpoint on a kernel address,
@@ -3321,6 +3331,23 @@ The official way of knowing if
 support is enabled is checking
 for the existence of the file
 .IR /proc/sys/kernel/perf_event_paranoid .
+.PP
+.B CAP_PERFMON
+capability (since Linux X.Y) provides secure approach to
+performance monitoring and observability operations in a system
+according to the principal of least privilege (POSIX IEEE 1003.1e).
+Accessing system performance monitoring and observability operations
+using
+.B CAP_PERFMON
+capability singly, without the rest of
+.B CAP_SYS_ADMIN
+credentials, excludes chances to misuse the credentials and makes
+the operations more secure.
+.B CAP_SYS_ADMIN
+usage for secure system performance monitoring and observability
+is discouraged with respect to
+.B CAP_PERFMON
+capability.
 .SH BUGS
 The
 .B F_SETOWN_EX
-- 
2.20.1

