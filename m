Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B87901B4490
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 14:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726917AbgDVMTs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 08:19:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728867AbgDVMRy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 08:17:54 -0400
Received: from Galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E7ACC03C1AA;
        Wed, 22 Apr 2020 05:17:54 -0700 (PDT)
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tip-bot2@linutronix.de>)
        id 1jREJu-000800-QX; Wed, 22 Apr 2020 14:17:39 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
        by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 071D21C081A;
        Wed, 22 Apr 2020 14:17:32 +0200 (CEST)
Date:   Wed, 22 Apr 2020 12:17:31 -0000
From:   "tip-bot2 for Alexey Budankov" <tip-bot2@linutronix.de>
Reply-to: linux-kernel@vger.kernel.org
To:     linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] doc/admin-guide: update kernel.rst with CAP_PERFMON
 information
Cc:     Alexey Budankov <alexey.budankov@linux.intel.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Andi Kleen <ak@linux.intel.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        James Morris <jmorris@namei.org>, Jiri Olsa <jolsa@redhat.com>,
        Namhyung Kim <namhyung@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Serge Hallyn <serge@hallyn.com>,
        Song Liu <songliubraving@fb.com>,
        Stephane Eranian <eranian@google.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        intel-gfx@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        selinux@vger.kernel.org,
        Arnaldo Carvalho de Melo <acme@redhat.com>,
        x86 <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
References: <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
MIME-Version: 1.0
Message-ID: <158755785160.28353.3846364615857444421.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     025b16f81dd7f51f29d0109399d669438c63b6ce
Gitweb:        https://git.kernel.org/tip/025b16f81dd7f51f29d0109399d669438c63b6ce
Author:        Alexey Budankov <alexey.budankov@linux.intel.com>
AuthorDate:    Thu, 02 Apr 2020 11:54:39 +03:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Thu, 16 Apr 2020 12:19:12 -03:00

doc/admin-guide: update kernel.rst with CAP_PERFMON information

Update the kernel.rst documentation file with the information related to
usage of CAP_PERFMON capability to secure performance monitoring and
observability operations in system.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Igor Lubashev <ilubashe@akamai.com>
Cc: James Morris <jmorris@namei.org>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Cc: linux-doc@vger.kernel.org
Cc: linux-man@vger.kernel.org
Cc: linux-security-module@vger.kernel.org
Cc: selinux@vger.kernel.org
Link: http://lore.kernel.org/lkml/84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
index 39c95c0..7e4c28d 100644
--- a/Documentation/admin-guide/sysctl/kernel.rst
+++ b/Documentation/admin-guide/sysctl/kernel.rst
@@ -730,7 +730,13 @@ perf_event_paranoid
 ===================
 
 Controls use of the performance events system by unprivileged
-users (without CAP_SYS_ADMIN).  The default value is 2.
+users (without CAP_PERFMON).  The default value is 2.
+
+For backward compatibility reasons access to system performance
+monitoring and observability remains open for CAP_SYS_ADMIN
+privileged processes but CAP_SYS_ADMIN usage for secure system
+performance monitoring and observability operations is discouraged
+with respect to CAP_PERFMON use cases.
 
 ===  ==================================================================
  -1  Allow use of (almost) all events by all users.
@@ -739,13 +745,13 @@ users (without CAP_SYS_ADMIN).  The default value is 2.
      ``CAP_IPC_LOCK``.
 
 >=0  Disallow ftrace function tracepoint by users without
-     ``CAP_SYS_ADMIN``.
+     ``CAP_PERFMON``.
 
-     Disallow raw tracepoint access by users without ``CAP_SYS_ADMIN``.
+     Disallow raw tracepoint access by users without ``CAP_PERFMON``.
 
->=1  Disallow CPU event access by users without ``CAP_SYS_ADMIN``.
+>=1  Disallow CPU event access by users without ``CAP_PERFMON``.
 
->=2  Disallow kernel profiling by users without ``CAP_SYS_ADMIN``.
+>=2  Disallow kernel profiling by users without ``CAP_PERFMON``.
 ===  ==================================================================
 
 
