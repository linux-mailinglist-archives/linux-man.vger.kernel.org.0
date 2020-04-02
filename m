Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E26519BE31
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 10:54:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387812AbgDBIyJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 04:54:09 -0400
Received: from mga01.intel.com ([192.55.52.88]:59409 "EHLO mga01.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387749AbgDBIyI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 2 Apr 2020 04:54:08 -0400
IronPort-SDR: xv2YlL4rt8YRA/D29cdc+PqMrBbaJonPYvJ2+iE1dzioSSL86NM0VHUoOB4UDjA3YKNPA1RYPt
 UahDWSiP1ylA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 01:54:07 -0700
IronPort-SDR: o4Rqw6XltokYEuaPad31JYF1jOfYogYbQTwODLN/lB3k4XXq80UO2B3GbH+j+sTRPbUirWkNYJ
 PW1yLFF+s6Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; 
   d="scan'208";a="243005673"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga008.jf.intel.com with ESMTP; 02 Apr 2020 01:54:07 -0700
Received: from [10.249.226.252] (abudanko-mobl.ccr.corp.intel.com [10.249.226.252])
        by linux.intel.com (Postfix) with ESMTP id 40A04580781;
        Thu,  2 Apr 2020 01:54:02 -0700 (PDT)
Subject: [PATCH v8 11/12] doc/admin-guide: update perf-security.rst with
 CAP_PERFMON information
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
To:     Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        James Morris <jmorris@namei.org>,
        Namhyung Kim <namhyung@kernel.org>
Cc:     Serge Hallyn <serge@hallyn.com>, Jiri Olsa <jolsa@redhat.com>,
        Song Liu <songliubraving@fb.com>,
        Andi Kleen <ak@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
        "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Organization: Intel Corp.
Message-ID: <17278551-9399-9ebe-d665-8827016a217d@linux.intel.com>
Date:   Thu, 2 Apr 2020 11:54:01 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Update perf-security.rst documentation file with the information
related to usage of CAP_PERFMON capability to secure performance
monitoring and observability operations in system.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 Documentation/admin-guide/perf-security.rst | 65 +++++++++++++--------
 1 file changed, 40 insertions(+), 25 deletions(-)

diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
index 72effa7c23b9..81202d46a1ae 100644
--- a/Documentation/admin-guide/perf-security.rst
+++ b/Documentation/admin-guide/perf-security.rst
@@ -1,6 +1,6 @@
 .. _perf_security:
 
-Perf Events and tool security
+Perf events and tool security
 =============================
 
 Overview
@@ -42,11 +42,11 @@ categories:
 Data that belong to the fourth category can potentially contain
 sensitive process data. If PMUs in some monitoring modes capture values
 of execution context registers or data from process memory then access
-to such monitoring capabilities requires to be ordered and secured
-properly. So, perf_events/Perf performance monitoring is the subject for
-security access control management [5]_ .
+to such monitoring modes requires to be ordered and secured properly.
+So, perf_events performance monitoring and observability operations is
+the subject for security access control management [5]_ .
 
-perf_events/Perf access control
+perf_events access control
 -------------------------------
 
 To perform security checks, the Linux implementation splits processes
@@ -66,11 +66,25 @@ into distinct units, known as capabilities [6]_ , which can be
 independently enabled and disabled on per-thread basis for processes and
 files of unprivileged users.
 
-Unprivileged processes with enabled CAP_SYS_ADMIN capability are treated
+Unprivileged processes with enabled CAP_PERFMON capability are treated
 as privileged processes with respect to perf_events performance
-monitoring and bypass *scope* permissions checks in the kernel.
-
-Unprivileged processes using perf_events system call API is also subject
+monitoring and observability operations, thus, bypass *scope* permissions
+checks in the kernel. CAP_PERFMON implements the principal of least
+privilege [13]_ (POSIX 1003.1e: 2.2.2.39) for performance monitoring and
+observability operations in the kernel and provides secure approach to
+perfomance monitoring and observability in the system.
+
+For backward compatibility reasons access to perf_events monitoring and
+observability operations is also open for CAP_SYS_ADMIN privileged
+processes but CAP_SYS_ADMIN usage for secure monitoring and observability
+use cases is discouraged with respect to CAP_PERFMON capability.
+If system audit records [14]_ for a process using perf_events system call
+API contain denial records of acquiring both CAP_PERFMON and CAP_SYS_ADMIN
+capabilities then providing the process with CAP_PERFMON capability singly
+is recommended as the preferred secure approach to resolve double access
+denial logging related to usage of performance monitoring and observability.
+
+Unprivileged processes using perf_events system call are also subject
 for PTRACE_MODE_READ_REALCREDS ptrace access mode check [7]_ , whose
 outcome determines whether monitoring is permitted. So unprivileged
 processes provided with CAP_SYS_PTRACE capability are effectively
@@ -82,14 +96,14 @@ performance analysis of monitored processes or a system. For example,
 CAP_SYSLOG capability permits reading kernel space memory addresses from
 /proc/kallsyms file.
 
-perf_events/Perf privileged users
+Privileged Perf users groups
 ---------------------------------
 
 Mechanisms of capabilities, privileged capability-dumb files [6]_ and
-file system ACLs [10]_ can be used to create a dedicated group of
-perf_events/Perf privileged users who are permitted to execute
-performance monitoring without scope limits. The following steps can be
-taken to create such a group of privileged Perf users.
+file system ACLs [10]_ can be used to create dedicated groups of
+privileged Perf users who are permitted to execute performance monitoring
+and observability without scope limits. The following steps can be
+taken to create such groups of privileged Perf users.
 
 1. Create perf_users group of privileged Perf users, assign perf_users
    group to Perf tool executable and limit access to the executable for
@@ -108,30 +122,30 @@ taken to create such a group of privileged Perf users.
    -rwxr-x---  2 root perf_users  11M Oct 19 15:12 perf
 
 2. Assign the required capabilities to the Perf tool executable file and
-   enable members of perf_users group with performance monitoring
+   enable members of perf_users group with monitoring and observability
    privileges [6]_ :
 
 ::
 
-   # setcap "cap_sys_admin,cap_sys_ptrace,cap_syslog=ep" perf
-   # setcap -v "cap_sys_admin,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
    perf: OK
    # getcap perf
-   perf = cap_sys_ptrace,cap_sys_admin,cap_syslog+ep
+   perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
 
 As a result, members of perf_users group are capable of conducting
-performance monitoring by using functionality of the configured Perf
-tool executable that, when executes, passes perf_events subsystem scope
-checks.
+performance monitoring and observability by using functionality of the
+configured Perf tool executable that, when executes, passes perf_events
+subsystem scope checks.
 
 This specific access control management is only available to superuser
 or root running processes with CAP_SETPCAP, CAP_SETFCAP [6]_
 capabilities.
 
-perf_events/Perf unprivileged users
+Unprivileged users
 -----------------------------------
 
-perf_events/Perf *scope* and *access* control for unprivileged processes
+perf_events *scope* and *access* control for unprivileged processes
 is governed by perf_event_paranoid [2]_ setting:
 
 -1:
@@ -166,7 +180,7 @@ is governed by perf_event_paranoid [2]_ setting:
      perf_event_mlock_kb locking limit is imposed but ignored for
      unprivileged processes with CAP_IPC_LOCK capability.
 
-perf_events/Perf resource control
+Resource control
 ---------------------------------
 
 Open file descriptors
@@ -227,4 +241,5 @@ Bibliography
 .. [10] `<http://man7.org/linux/man-pages/man5/acl.5.html>`_
 .. [11] `<http://man7.org/linux/man-pages/man2/getrlimit.2.html>`_
 .. [12] `<http://man7.org/linux/man-pages/man5/limits.conf.5.html>`_
-
+.. [13] `<https://sites.google.com/site/fullycapable>`_
+.. [14] `<http://man7.org/linux/man-pages/man8/auditd.8.html>`_
-- 
2.24.1


