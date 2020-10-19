Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6BB4292BB0
	for <lists+linux-man@lfdr.de>; Mon, 19 Oct 2020 18:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730367AbgJSQpL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Oct 2020 12:45:11 -0400
Received: from mga01.intel.com ([192.55.52.88]:47643 "EHLO mga01.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730025AbgJSQpK (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 19 Oct 2020 12:45:10 -0400
IronPort-SDR: 7OSZMk8+jCcMxpVdInmFo65l0vuhGzF156Eh7e+WKlK5ddSz7Y2JRlcK++k4aT9TZOeTbixvk/
 5N1hxnhkuoQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="184676365"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; 
   d="scan'208";a="184676365"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2020 09:45:09 -0700
IronPort-SDR: wj8CvrY57y34RZg+YoKd5VOTuCUrWy4AlNiJ7qhrcot1M9pxK+P6wyNU0iiOFl82OPx864Zwgx
 Yj4aGnR2qyGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; 
   d="scan'208";a="392083208"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga001.jf.intel.com with ESMTP; 19 Oct 2020 09:45:09 -0700
Received: from [10.249.225.38] (abudanko-mobl.ccr.corp.intel.com [10.249.225.38])
        by linux.intel.com (Postfix) with ESMTP id 10D00580127;
        Mon, 19 Oct 2020 09:45:06 -0700 (PDT)
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: [PATCH v1 0/2] doc/admin-guide: update perf-security.rst with
 CAP_PERFMON usage flows
To:     Arnaldo Carvalho de Melo <acme@kernel.org>
Cc:     Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Ingo Molnar <mingo@redhat.com>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
Organization: Intel Corp.
Message-ID: <ebc702ad-9991-625f-ef42-92ba99b20865@linux.intel.com>
Date:   Mon, 19 Oct 2020 19:45:05 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Assignment of CAP_PERFMON [1] Linux capability to an executable located
on a file system requires extended attributes (xattrs) [2] to be supported
by the file system. Even if the file system supports xattrs an fs device
should be mounted with permission to use xattrs for files located on the
device (e.g. without nosuid option [3]). No xattrs support and nosuid
mounts are quite common in HPC and Cloud multiuser environments thus
applicability of privileged Perf user groups based on file capabilities
[4] is limited in that environments. Alternative method to confer Linux
capabilities into a process does still exist and it is thru creation of
capabilities-enabled-semi-privileged shell environment. Usage of this
method to extend privileged Perf user groups approach is documented in
this patch set as an extension to perf-security.rst admin guide file.

[1] https://man7.org/linux/man-pages/man7/capabilities.7.html
[2] https://man7.org/linux/man-pages/man7/xattr.7.html
[3] https://man7.org/linux/man-pages/man8/mount.8.html
[4] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html#privileged-perf-users-groups

---
Alexey Budankov (2):
  doc/admin-guide: note credentials consolidation under CAP_PERFMON
  doc/admin-guide: document creation of CAP_PERFMON privileged shell

 Documentation/admin-guide/perf-security.rst | 81 ++++++++++++++++++---
 1 file changed, 70 insertions(+), 11 deletions(-)

-- 
2.24.1

