Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EF621B0842
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 13:54:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726802AbgDTLyr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 07:54:47 -0400
Received: from mail.kernel.org ([198.145.29.99]:38504 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725886AbgDTLyq (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 20 Apr 2020 07:54:46 -0400
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id EA3F820857;
        Mon, 20 Apr 2020 11:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1587383685;
        bh=svwfgxzDf5lHzQLtGzuG7pZIp4RfU3t8qP+aoqULD/c=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=pfF5W/f+AIIshpsrYdWaj7TwM4eC+WR38wEyS0e0GloJFBv7kAL3vQvdbenjSRfK4
         +AnfHq0ElD0cxdfvkZUP9uqMQcP6D2k5bk05gXOd2S+4pt1Y7MWdhK3LSiTLQb8CKH
         Z+2DDh5Xl7Ya2iAZ3CNi+Fu9lQucv2Nn+GlCHpSc=
From:   Arnaldo Carvalho de Melo <acme@kernel.org>
To:     Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
        Clark Williams <williams@redhat.com>,
        linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
        Alexey Budankov <alexey.budankov@linux.intel.com>,
        Arnaldo Carvalho de Melo <acme@redhat.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Andi Kleen <ak@linux.intel.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        James Morris <jmorris@namei.org>, Jiri Olsa <jolsa@redhat.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Serge Hallyn <serge@hallyn.com>,
        Song Liu <songliubraving@fb.com>,
        Stephane Eranian <eranian@google.com>,
        intel-gfx@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        selinux@vger.kernel.org
Subject: [PATCH 15/60] doc/admin-guide: Update perf-security.rst with CAP_PERFMON information
Date:   Mon, 20 Apr 2020 08:52:31 -0300
Message-Id: <20200420115316.18781-16-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200420115316.18781-1-acme@kernel.org>
References: <20200420115316.18781-1-acme@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Alexey Budankov <alexey.budankov@linux.intel.com>

Update perf-security.rst documentation file with the information
related to usage of CAP_PERFMON capability to secure performance
monitoring and observability operations in system.

Committer notes:

While testing 'perf top' under cap_perfmon I noticed that it needs
some more capability and Alexey pointed out cap_ipc_lock, as needed by
this kernel chunk:

  kernel/events/core.c: 6101
       if ((locked > lock_limit) && perf_is_paranoid() &&
               !capable(CAP_IPC_LOCK)) {
               ret = -EPERM;
               goto unlock;
       }

So I added it to the documentation, and also mentioned that if the
libcap version doesn't yet supports 'cap_perfmon', its numeric value can
be used instead, i.e. if:

	# setcap "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf

Fails, try:

	# setcap "38,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf

I also added a paragraph stating that using an unpatched libcap will
fail the check for CAP_PERFMON, as it checks the cap number against a
maximum to see if it is valid, which makes it use as the default the
'cycles:u' event, even tho a cap_perfmon capable perf binary can get
kernel samples, to workaround that just use, e.g.:

  # perf top -e cycles
  # perf record -e cycles

And it will sample kernel and user modes.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
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
Link: http://lore.kernel.org/lkml/17278551-9399-9ebe-d665-8827016a217d@linux.intel.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 Documentation/admin-guide/perf-security.rst | 86 +++++++++++++++------
 1 file changed, 61 insertions(+), 25 deletions(-)

diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
index 72effa7c23b9..1307b5274a0f 100644
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
+So, perf_events performance monitoring and observability operations are
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
+checks in the kernel. CAP_PERFMON implements the principle of least
+privilege [13]_ (POSIX 1003.1e: 2.2.2.39) for performance monitoring and
+observability operations in the kernel and provides a secure approach to
+perfomance monitoring and observability in the system.
+
+For backward compatibility reasons the access to perf_events monitoring and
+observability operations is also open for CAP_SYS_ADMIN privileged
+processes but CAP_SYS_ADMIN usage for secure monitoring and observability
+use cases is discouraged with respect to the CAP_PERFMON capability.
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
@@ -108,30 +122,51 @@ taken to create such a group of privileged Perf users.
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
+
+If the libcap installed doesn't yet support "cap_perfmon", use "38" instead,
+i.e.:
+
+::
+
+   # setcap "38,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
+
+Note that you may need to have 'cap_ipc_lock' in the mix for tools such as
+'perf top', alternatively use 'perf top -m N', to reduce the memory that
+it uses for the perf ring buffer, see the memory allocation section below.
+
+Using a libcap without support for CAP_PERFMON will make cap_get_flag(caps, 38,
+CAP_EFFECTIVE, &val) fail, which will lead the default event to be 'cycles:u',
+so as a workaround explicitly ask for the 'cycles' event, i.e.:
+
+::
+
+  # perf top -e cycles
+
+To get kernel and user samples with a perf binary with just CAP_PERFMON.
 
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
@@ -166,7 +201,7 @@ is governed by perf_event_paranoid [2]_ setting:
      perf_event_mlock_kb locking limit is imposed but ignored for
      unprivileged processes with CAP_IPC_LOCK capability.
 
-perf_events/Perf resource control
+Resource control
 ---------------------------------
 
 Open file descriptors
@@ -227,4 +262,5 @@ Bibliography
 .. [10] `<http://man7.org/linux/man-pages/man5/acl.5.html>`_
 .. [11] `<http://man7.org/linux/man-pages/man2/getrlimit.2.html>`_
 .. [12] `<http://man7.org/linux/man-pages/man5/limits.conf.5.html>`_
-
+.. [13] `<https://sites.google.com/site/fullycapable>`_
+.. [14] `<http://man7.org/linux/man-pages/man8/auditd.8.html>`_
-- 
2.21.1

