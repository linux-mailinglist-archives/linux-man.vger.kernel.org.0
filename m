Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C5CE6160C90
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2020 09:12:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727362AbgBQIMS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Feb 2020 03:12:18 -0500
Received: from mga11.intel.com ([192.55.52.93]:17774 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726414AbgBQIMS (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 17 Feb 2020 03:12:18 -0500
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2020 00:12:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,451,1574150400"; 
   d="scan'208";a="258193483"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga004.fm.intel.com with ESMTP; 17 Feb 2020 00:12:17 -0800
Received: from [10.125.252.180] (abudanko-mobl.ccr.corp.intel.com [10.125.252.180])
        by linux.intel.com (Postfix) with ESMTP id 11B485804A2;
        Mon, 17 Feb 2020 00:12:10 -0800 (PST)
Subject: [PATCH v7 10/12] drivers/oprofile: open access for CAP_PERFMON
 privileged process
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
To:     James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
        Stephen Smalley <sds@tycho.nsa.gov>,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Ingo Molnar <mingo@kernel.org>,
        "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Will Deacon <will@kernel.org>,
        Paul Mackerras <paulus@samba.org>,
        Helge Deller <deller@gmx.de>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Andi Kleen <ak@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        Jiri Olsa <jolsa@redhat.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
        "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
        oprofile-list@lists.sf.net,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Organization: Intel Corp.
Message-ID: <046beedf-e074-58e2-579d-df535799169c@linux.intel.com>
Date:   Mon, 17 Feb 2020 11:12:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
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
---
 drivers/oprofile/event_buffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/oprofile/event_buffer.c b/drivers/oprofile/event_buffer.c
index 12ea4a4ad607..6c9edc8bbc95 100644
--- a/drivers/oprofile/event_buffer.c
+++ b/drivers/oprofile/event_buffer.c
@@ -113,7 +113,7 @@ static int event_buffer_open(struct inode *inode, struct file *file)
 {
 	int err = -EPERM;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EPERM;
 
 	if (test_and_set_bit_lock(0, &buffer_opened))
-- 
2.20.1


