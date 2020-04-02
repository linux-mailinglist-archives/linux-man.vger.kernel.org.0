Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 594F619BDCB
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 10:46:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728803AbgDBIqc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 04:46:32 -0400
Received: from mga17.intel.com ([192.55.52.151]:5160 "EHLO mga17.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728455AbgDBIqc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 2 Apr 2020 04:46:32 -0400
IronPort-SDR: RDUcwbzLDO9PIaINgIDxCYLE1K5816ekKDiCVuxSTTPKFQnvhuZy7+ni+qQ41qfviyKsZOyKAD
 Cs1fZngoHpHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 01:46:31 -0700
IronPort-SDR: PnCyKB6N8YjXhD8j8LwoSEgT5UQ8Rg9gL9SGQKbQgwfWEak+Z0kC2azdR7bRQo/dFlOfAj+WV9
 Y4ZHcR9Rh7yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; 
   d="scan'208";a="242465046"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga008.fm.intel.com with ESMTP; 02 Apr 2020 01:46:30 -0700
Received: from [10.249.226.252] (abudanko-mobl.ccr.corp.intel.com [10.249.226.252])
        by linux.intel.com (Postfix) with ESMTP id 44315580544;
        Thu,  2 Apr 2020 01:46:25 -0700 (PDT)
Subject: [PATCH v8 02/12] perf/core: open access to the core for CAP_PERFMON
 privileged process
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
Message-ID: <471acaef-bb8a-5ce2-923f-90606b78eef9@linux.intel.com>
Date:   Thu, 2 Apr 2020 11:46:24 +0300
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


Open access to monitoring of kernel code, cpus, tracepoints and namespaces
data for a CAP_PERFMON privileged process. Providing the access under
CAP_PERFMON capability singly, without the rest of CAP_SYS_ADMIN credentials,
excludes chances to misuse the credentials and makes operation more secure.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle
of least privilege: A security design principle that states that a process or
program be granted only those privileges (e.g., capabilities) necessary to
accomplish its legitimate function, and only for the time that such privileges
are actually required)

For backward compatibility reasons access to perf_events subsystem remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for secure
perf_events monitoring is discouraged with respect to CAP_PERFMON capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Reviewed-by: James Morris <jamorris@linux.microsoft.com>
---
 include/linux/perf_event.h | 6 +++---
 kernel/events/core.c       | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
index 8768a39b5258..9adf62ebb202 100644
--- a/include/linux/perf_event.h
+++ b/include/linux/perf_event.h
@@ -1304,7 +1304,7 @@ static inline int perf_is_paranoid(void)
 
 static inline int perf_allow_kernel(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > 1 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > 1 && !perfmon_capable())
 		return -EACCES;
 
 	return security_perf_event_open(attr, PERF_SECURITY_KERNEL);
@@ -1312,7 +1312,7 @@ static inline int perf_allow_kernel(struct perf_event_attr *attr)
 
 static inline int perf_allow_cpu(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > 0 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > 0 && !perfmon_capable())
 		return -EACCES;
 
 	return security_perf_event_open(attr, PERF_SECURITY_CPU);
@@ -1320,7 +1320,7 @@ static inline int perf_allow_cpu(struct perf_event_attr *attr)
 
 static inline int perf_allow_tracepoint(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > -1 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > -1 && !perfmon_capable())
 		return -EPERM;
 
 	return security_perf_event_open(attr, PERF_SECURITY_TRACEPOINT);
diff --git a/kernel/events/core.c b/kernel/events/core.c
index d22e4ba59dfa..2af0f4557b63 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -11360,7 +11360,7 @@ SYSCALL_DEFINE5(perf_event_open,
 	}
 
 	if (attr.namespaces) {
-		if (!capable(CAP_SYS_ADMIN))
+		if (!perfmon_capable())
 			return -EACCES;
 	}
 
-- 
2.24.1

