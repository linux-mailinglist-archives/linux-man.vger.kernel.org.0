Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C288E19BDD2
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 10:47:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387783AbgDBIrI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 04:47:08 -0400
Received: from mga12.intel.com ([192.55.52.136]:8925 "EHLO mga12.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728612AbgDBIrI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 2 Apr 2020 04:47:08 -0400
IronPort-SDR: 4vbGSjMO6dritYfBjM6LxmYRM7yOgdqyNJ7RkBJvNE+xdTkVriYs2L9Vwkoug80Jgcfy/2AB6l
 19nmj9Isq4rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 01:47:07 -0700
IronPort-SDR: 7tJLumpdWYlkcHYhVh+R3ZpZwhs962ucUkWwav961GZbQ6z8behCfxQAdYKbhRUR6299u21Aok
 UYT0iKhJujpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; 
   d="scan'208";a="242465231"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga008.fm.intel.com with ESMTP; 02 Apr 2020 01:47:07 -0700
Received: from [10.249.226.252] (abudanko-mobl.ccr.corp.intel.com [10.249.226.252])
        by linux.intel.com (Postfix) with ESMTP id 75565580544;
        Thu,  2 Apr 2020 01:47:02 -0700 (PDT)
Subject: [PATCH v8 03/12] perf/core: open access to probes for CAP_PERFMON
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
Message-ID: <3c129d9a-ba8a-3483-ecc5-ad6c8e7c203f@linux.intel.com>
Date:   Thu, 2 Apr 2020 11:47:01 +0300
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


Open access to monitoring via kprobes and uprobes and eBPF tracing for
CAP_PERFMON privileged process. Providing the access under CAP_PERFMON
capability singly, without the rest of CAP_SYS_ADMIN credentials, excludes
chances to misuse the credentials and makes operation more secure.

perf kprobes and uprobes are used by ftrace and eBPF. perf probe uses
ftrace to define new kprobe events, and those events are treated as
tracepoint events. eBPF defines new probes via perf_event_open interface
and then the probes are used in eBPF tracing.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle
of least privilege: A security design principle that states that a process or
program be granted only those privileges (e.g., capabilities) necessary to
accomplish its legitimate function, and only for the time that such privileges
are actually required)

For backward compatibility reasons access to perf_events subsystem remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
secure perf_events monitoring is discouraged with respect to CAP_PERFMON
capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Acked-by: James Morris <jamorris@linux.microsoft.com>
Reviewed-by: James Morris <jamorris@linux.microsoft.com>
---
 kernel/events/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 2af0f4557b63..364c233c3f25 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -9259,7 +9259,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
 	if (event->attr.type != perf_kprobe.type)
 		return -ENOENT;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EACCES;
 
 	/*
@@ -9319,7 +9319,7 @@ static int perf_uprobe_event_init(struct perf_event *event)
 	if (event->attr.type != perf_uprobe.type)
 		return -ENOENT;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EACCES;
 
 	/*
-- 
2.24.1


