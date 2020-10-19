Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B5E9292C82
	for <lists+linux-man@lfdr.de>; Mon, 19 Oct 2020 19:18:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730732AbgJSRST (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Oct 2020 13:18:19 -0400
Received: from mga04.intel.com ([192.55.52.120]:17145 "EHLO mga04.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729916AbgJSRST (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 19 Oct 2020 13:18:19 -0400
IronPort-SDR: L8wNw8c3HPslVFpV8BiHrbBUvmK5JP4ehpAfnCQvgGq1jHHpq4SoalOryRXmeqHnaNRg1yf6fX
 ZfxT3RHk4Cnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="164453863"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; 
   d="scan'208";a="164453863"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2020 10:18:16 -0700
IronPort-SDR: uURWCD8DH4znlXXNZiR90hDAbHypj8LXyyVXfkclV9hisa5mTBTLY6JiWG8P1PJ3vpT185JDkV
 gbiuprYQlSow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; 
   d="scan'208";a="320348640"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga006.jf.intel.com with ESMTP; 19 Oct 2020 10:18:16 -0700
Received: from [10.249.225.38] (abudanko-mobl.ccr.corp.intel.com [10.249.225.38])
        by linux.intel.com (Postfix) with ESMTP id 9CC27580127;
        Mon, 19 Oct 2020 10:18:13 -0700 (PDT)
Subject: [PATCH v1 2/2] doc/admin-guide: document creation of CAP_PERFMON
 privileged shell
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
To:     Arnaldo Carvalho de Melo <acme@kernel.org>
Cc:     Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Ingo Molnar <mingo@redhat.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
References: <161a51d3-7cdf-f9ee-c438-42bb7404693e@linux.intel.com>
Organization: Intel Corp.
Message-ID: <0abda956-de6c-95b1-61e8-49e146501079@linux.intel.com>
Date:   Mon, 19 Oct 2020 20:18:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <161a51d3-7cdf-f9ee-c438-42bb7404693e@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Document steps to create CAP_PERFMON privileged shell to unblock
Perf tool usage in cases when capabilities can't be assigned to
an executable due to limitations of used file system.

Suggested-by: Andi Kleen <ak@linux.intel.com>
Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 Documentation/admin-guide/perf-security.rst | 68 +++++++++++++++++++--
 1 file changed, 62 insertions(+), 6 deletions(-)

diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
index 57a65e27eeb9..904e4eb37f99 100644
--- a/Documentation/admin-guide/perf-security.rst
+++ b/Documentation/admin-guide/perf-security.rst
@@ -102,11 +102,11 @@ CAP_SYSLOG capability permits reading kernel space memory addresses from
 Privileged Perf users groups
 ---------------------------------
 
-Mechanisms of capabilities, privileged capability-dumb files [6]_ and
-file system ACLs [10]_ can be used to create dedicated groups of
-privileged Perf users who are permitted to execute performance monitoring
-and observability without scope limits. The following steps can be
-taken to create such groups of privileged Perf users.
+Mechanisms of capabilities, privileged capability-dumb files [6]_,
+file system ACLs [10]_ and sudo [15]_ utility can be used to create
+dedicated groups of privileged Perf users who are permitted to execute
+performance monitoring and observability without limits. The following
+steps can be taken to create such groups of privileged Perf users.
 
 1. Create perf_users group of privileged Perf users, assign perf_users
    group to Perf tool executable and limit access to the executable for
@@ -136,7 +136,7 @@ taken to create such groups of privileged Perf users.
    # getcap perf
    perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
 
-If the libcap installed doesn't yet support "cap_perfmon", use "38" instead,
+If the libcap [16]_ installed doesn't yet support "cap_perfmon", use "38" instead,
 i.e.:
 
 ::
@@ -162,6 +162,60 @@ performance monitoring and observability by using functionality of the
 configured Perf tool executable that, when executes, passes perf_events
 subsystem scope checks.
 
+In case Perf tool executable can't be assigned required capabilities (e.g.
+file system is mounted with nosuid option or extended attributes are
+not supported by the file system) then creation of the capabilities
+privileged environment, naturally shell, is possible. The shell provides
+inherent processes with CAP_PERFMON and other required capabilities so that
+performance monitoring and observability operations are available in the
+environment without limits. Access to the environment can be open via sudo
+utility for members of perf_users group only. In order to create such
+environment:
+
+1. Create shell script that uses capsh utility [16]_ to assign CAP_PERFMON
+   and other required capabilities into ambient capability set of the shell
+   process, lock the process security bits after enabling SECBIT_NO_SETUID_FIXUP,
+   SECBIT_NOROOT and SECBIT_NO_CAP_AMBIENT_RAISE bits and then change
+   the process identity to sudo caller of the script who should essentially
+   be a member of perf_users group:
+
+::
+
+   # ls -alh /usr/local/bin/perf.shell
+   -rwxr-xr-x. 1 root root 83 Oct 13 23:57 /usr/local/bin/perf.shell
+   # cat /usr/local/bin/perf.shell
+   exec /usr/sbin/capsh --iab=^cap_perfmon --secbits=239 --user=$SUDO_USER -- -l
+
+2. Extend sudo policy at /etc/sudoers file with a rule for perf_users group:
+
+::
+
+   # grep perf_users /etc/sudoers
+   %perf_users    ALL=/usr/local/bin/perf.shell
+
+3. Check that members of perf_users group have access to the privileged
+   shell and have CAP_PERFMON and other required capabilities enabled
+   in permitted, effective and ambient capability sets of an inherent process:
+
+::
+
+  $ id
+  uid=1003(capsh_test) gid=1004(capsh_test) groups=1004(capsh_test),1000(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
+  $ sudo perf.shell
+  [sudo] password for capsh_test:
+  $ grep Cap /proc/self/status
+  CapInh:        0000004000000000
+  CapPrm:        0000004000000000
+  CapEff:        0000004000000000
+  CapBnd:        000000ffffffffff
+  CapAmb:        0000004000000000
+  $ capsh --decode=0000004000000000
+  0x0000004000000000=cap_perfmon
+
+As a result, members of perf_users group have access to the privileged
+environment where they can use tools employing performance monitoring APIs
+governed by CAP_PERFMON Linux capability.
+
 This specific access control management is only available to superuser
 or root running processes with CAP_SETPCAP, CAP_SETFCAP [6]_
 capabilities.
@@ -267,3 +321,5 @@ Bibliography
 .. [12] `<http://man7.org/linux/man-pages/man5/limits.conf.5.html>`_
 .. [13] `<https://sites.google.com/site/fullycapable>`_
 .. [14] `<http://man7.org/linux/man-pages/man8/auditd.8.html>`_
+.. [15] `<https://man7.org/linux/man-pages/man8/sudo.8.html>`_
+.. [16] `<https://git.kernel.org/pub/scm/libs/libcap/libcap.git/>`_
-- 
2.24.1

