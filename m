Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7B8C719BE02
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 10:50:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387845AbgDBIuW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 04:50:22 -0400
Received: from mga14.intel.com ([192.55.52.115]:59539 "EHLO mga14.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387749AbgDBIuW (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 2 Apr 2020 04:50:22 -0400
IronPort-SDR: zZd4+zcQV+XZdwQDHnZWRqw0fL0R/HtL94e2hoMagjJWazNaXlGdHB7oaVZMvmgm5PHqTPAvKU
 dTAB2O1J9qew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 01:50:21 -0700
IronPort-SDR: 6MSYiMJuOhiU2alUiULY1LKtfNUB4QznrFYyxc4RsdjpqkzNomV/7NVksmCz9DVzexJUSPYkL5
 yPfeIfDIo4cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; 
   d="scan'208";a="252926535"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga006.jf.intel.com with ESMTP; 02 Apr 2020 01:50:21 -0700
Received: from [10.249.226.252] (abudanko-mobl.ccr.corp.intel.com [10.249.226.252])
        by linux.intel.com (Postfix) with ESMTP id 7AD7C580781;
        Thu,  2 Apr 2020 01:50:16 -0700 (PDT)
Subject: [PATCH v8 08/12] parisc/perf: open access for CAP_PERFMON privileged
 process
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
Message-ID: <8cc98809-d35b-de0f-de02-4cf554f3cf62@linux.intel.com>
Date:   Thu, 2 Apr 2020 11:50:15 +0300
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


Open access to monitoring for CAP_PERFMON privileged process.
Providing the access under CAP_PERFMON capability singly, without
the rest of CAP_SYS_ADMIN credentials, excludes chances to misuse
the credentials and makes operation more secure.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states
that a process or program be granted only those privileges (e.g.,
capabilities) necessary to accomplish its legitimate function, and only
for the time that such privileges are actually required)

For backward compatibility reasons access to the monitoring remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage
for secure monitoring is discouraged with respect to CAP_PERFMON
capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Acked-by: Helge Deller <deller@gmx.de>
Acked-by: James Morris <jamorris@linux.microsoft.com>
Reviewed-by: James Morris <jamorris@linux.microsoft.com>
---
 arch/parisc/kernel/perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/parisc/kernel/perf.c b/arch/parisc/kernel/perf.c
index e1a8fee3ad49..d46b6709ec56 100644
--- a/arch/parisc/kernel/perf.c
+++ b/arch/parisc/kernel/perf.c
@@ -300,7 +300,7 @@ static ssize_t perf_write(struct file *file, const char __user *buf,
 	else
 		return -EFAULT;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EACCES;
 
 	if (count != sizeof(uint32_t))
-- 
2.24.1

