Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6B5B51A1221
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 18:53:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726428AbgDGQxD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 12:53:03 -0400
Received: from mga09.intel.com ([134.134.136.24]:6001 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726436AbgDGQxD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 7 Apr 2020 12:53:03 -0400
IronPort-SDR: CuS4v0Y+xbbknfRKtN28cpW5xNYZ+Ki8pptzoyyc4xQdta+egG7/cPAXkWgj58H0YXRoTwsVU/
 SQA/CvVks7Ow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2020 09:53:01 -0700
IronPort-SDR: YXf1V+J/VliznbGc08loh66QyLvheHQFSbu9+bteupA3mN7roHw+e0gq2GcDy4FhoIWM/Nmck3
 XlxqhQC1o2Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; 
   d="scan'208";a="269485171"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga002.jf.intel.com with ESMTP; 07 Apr 2020 09:53:01 -0700
Received: from [10.249.224.62] (abudanko-mobl.ccr.corp.intel.com [10.249.224.62])
        by linux.intel.com (Postfix) with ESMTP id 64FCC58048A;
        Tue,  7 Apr 2020 09:52:57 -0700 (PDT)
Subject: Re: [PATCH v8 00/12] Introduce CAP_PERFMON to secure system
 performance monitoring and observability
To:     Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc:     Peter Zijlstra <peterz@infradead.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        James Morris <jmorris@namei.org>,
        Namhyung Kim <namhyung@kernel.org>,
        Serge Hallyn <serge@hallyn.com>, Jiri Olsa <jolsa@redhat.com>,
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
 <20200407143014.GD11186@kernel.org> <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
 <20200407163654.GB12003@kernel.org>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <85da1e42-2cf2-98ca-1e0c-2cf3469b7d30@linux.intel.com>
Date:   Tue, 7 Apr 2020 19:52:56 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407163654.GB12003@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 07.04.2020 19:36, Arnaldo Carvalho de Melo wrote:
> Em Tue, Apr 07, 2020 at 05:54:27PM +0300, Alexey Budankov escreveu:
>> On 07.04.2020 17:35, Arnaldo Carvalho de Melo wrote:
>>> Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
>>>> [perf@five ~]$ type perf
<SNIP>
>>>> perf is hashed (/home/perf/bin/perf)
>>>> [perf@five ~]$
>>>
>>> Humm, perf record falls back to cycles:u after initially trying cycles
>>> (i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
>>> lemme test, humm not really:
>>>
>>> [perf@five ~]$ perf top --stdio -e cycles:u
>>> Error:
>>> Failed to mmap with 1 (Operation not permitted)
>>> [perf@five ~]$ perf record -e cycles:u -a sleep 1
>>> [ perf record: Woken up 1 times to write data ]
>>> [ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
>>> [perf@five ~]$
>>>
>>> Back to debugging this.
>>
>> Could makes sense adding cap_ipc_lock to the binary to isolate from this:
>>
>> kernel/events/core.c: 6101
>> 	if ((locked > lock_limit) && perf_is_paranoid() &&
>> 		!capable(CAP_IPC_LOCK)) {
>> 		ret = -EPERM;
>> 		goto unlock;
>> 	}
> 
> 
> That did the trick, I'll update the documentation and include in my
> "Committer testing" section:

Looks like top mode somehow reaches perf mmap limit described here [1].
Using -m option solves the issue avoiding cap_ipc_lock on my 8 cores machine:
perf top -e cycles -m 1

~Alexey

[1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html#memory-allocation
