Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08013292C73
	for <lists+linux-man@lfdr.de>; Mon, 19 Oct 2020 19:16:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730498AbgJSRQx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Oct 2020 13:16:53 -0400
Received: from mga14.intel.com ([192.55.52.115]:8454 "EHLO mga14.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729916AbgJSRQx (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 19 Oct 2020 13:16:53 -0400
IronPort-SDR: EpxahJH0l/WkMo5vwlSjdufRMSwRZIPGMoN4qWf4GWt3p9vuCsD7sdOwpBFu1R4b4jIiryH6Td
 K8KQdyt1P1dA==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="166292262"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; 
   d="scan'208";a="166292262"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2020 10:16:52 -0700
IronPort-SDR: bDp1p7SGYdaawZ5eDiABL+vAf89c1vOk/gdxqZ52VSsP6zTzTl8d5FG6oRXiOpd4glEGA17JSi
 H4SwuwhP/iXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; 
   d="scan'208";a="392091231"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga001.jf.intel.com with ESMTP; 19 Oct 2020 10:16:52 -0700
Received: from [10.249.225.38] (abudanko-mobl.ccr.corp.intel.com [10.249.225.38])
        by linux.intel.com (Postfix) with ESMTP id 158C8580127;
        Mon, 19 Oct 2020 10:16:49 -0700 (PDT)
Subject: [PATCH v1 1/2] doc/admin-guide: note credentials consolidation under
 CAP_PERFMON
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
Message-ID: <2b1a92a1-84ce-5c70-837d-8ffe96849588@linux.intel.com>
Date:   Mon, 19 Oct 2020 20:16:49 +0300
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


Add note that starting from Linux v5.9 CAP_PERFMON Linux capability
is enough to conduct performance monitoring and observability using
perf_events API.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 Documentation/admin-guide/perf-security.rst | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
index 1307b5274a0f..57a65e27eeb9 100644
--- a/Documentation/admin-guide/perf-security.rst
+++ b/Documentation/admin-guide/perf-security.rst
@@ -84,11 +84,14 @@ capabilities then providing the process with CAP_PERFMON capability singly
 is recommended as the preferred secure approach to resolve double access
 denial logging related to usage of performance monitoring and observability.
 
-Unprivileged processes using perf_events system call are also subject
-for PTRACE_MODE_READ_REALCREDS ptrace access mode check [7]_ , whose
-outcome determines whether monitoring is permitted. So unprivileged
-processes provided with CAP_SYS_PTRACE capability are effectively
-permitted to pass the check.
+Prior Linux v5.9 unprivileged processes using perf_events system call
+are also subject for PTRACE_MODE_READ_REALCREDS ptrace access mode check
+[7]_ , whose outcome determines whether monitoring is permitted.
+So unprivileged processes provided with CAP_SYS_PTRACE capability are
+effectively permitted to pass the check. Starting from Linux v5.9
+CAP_SYS_PTRACE capability is not required and CAP_PERFMON is enough to
+be provided for processes to make performance monitoring and observability
+operations.
 
 Other capabilities being granted to unprivileged processes can
 effectively enable capturing of additional data required for later
-- 
2.24.1

