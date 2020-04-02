Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 002F319BE36
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 10:54:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387843AbgDBIyr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 04:54:47 -0400
Received: from mga11.intel.com ([192.55.52.93]:58575 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387749AbgDBIyq (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 2 Apr 2020 04:54:46 -0400
IronPort-SDR: 9BniBOi08GuztXs5LKVQkquolCZVCzIUknvp59r9zdkFE2HvLNBR+tUu1xz5kpwTJ1KIbybMBV
 J7BcvbSQx3Zw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 01:54:46 -0700
IronPort-SDR: lWWDpjbJ8ako7fuY2uAUqBQixFmLUhXwmqEfSoWqQrm2CqU0NUhFFVsPF2bcI0MZ7mpRxB1Fa5
 NaMqQCJarI0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; 
   d="scan'208";a="267959741"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga002.jf.intel.com with ESMTP; 02 Apr 2020 01:54:45 -0700
Received: from [10.249.226.252] (abudanko-mobl.ccr.corp.intel.com [10.249.226.252])
        by linux.intel.com (Postfix) with ESMTP id CE205580544;
        Thu,  2 Apr 2020 01:54:40 -0700 (PDT)
Subject: [PATCH v8 12/12] doc/admin-guide: update kernel.rst with CAP_PERFMON
 information
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
Message-ID: <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
Date:   Thu, 2 Apr 2020 11:54:39 +0300
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


Update kernel.rst documentation file with the information
related to usage of CAP_PERFMON capability to secure performance
monitoring and observability operations in system.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
index def074807cee..b06ae9389809 100644
--- a/Documentation/admin-guide/sysctl/kernel.rst
+++ b/Documentation/admin-guide/sysctl/kernel.rst
@@ -720,20 +720,26 @@ perf_event_paranoid:
 ====================
 
 Controls use of the performance events system by unprivileged
-users (without CAP_SYS_ADMIN).  The default value is 2.
+users (without CAP_PERFMON). The default value is 2.
+
+For backward compatibility reasons access to system performance
+monitoring and observability remains open for CAP_SYS_ADMIN
+privileged processes but CAP_SYS_ADMIN usage for secure system
+performance monitoring and observability operations is discouraged
+with respect to CAP_PERFMON use cases.
 
 ===  ==================================================================
  -1  Allow use of (almost) all events by all users
 
      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
 
->=0  Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN
+>=0  Disallow ftrace function tracepoint by users without CAP_PERFMON
 
-     Disallow raw tracepoint access by users without CAP_SYS_ADMIN
+     Disallow raw tracepoint access by users without CAP_PERFMON
 
->=1  Disallow CPU event access by users without CAP_SYS_ADMIN
+>=1  Disallow CPU event access by users without CAP_PERFMON
 
->=2  Disallow kernel profiling by users without CAP_SYS_ADMIN
+>=2  Disallow kernel profiling by users without CAP_PERFMON
 ===  ==================================================================
 
 
-- 
2.24.1

