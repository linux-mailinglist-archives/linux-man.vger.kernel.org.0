Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56DE72509E5
	for <lists+linux-man@lfdr.de>; Mon, 24 Aug 2020 22:17:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726090AbgHXURv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 16:17:51 -0400
Received: from mga17.intel.com ([192.55.52.151]:60144 "EHLO mga17.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725904AbgHXURv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 24 Aug 2020 16:17:51 -0400
IronPort-SDR: GjA9Z3K8yeQOd1vVVwjguWMfxheIeLx3QdEcDUp8phhxqCuaUyaQ1kGXFSrpXx7CJnxUoCr+ao
 FPH2sALB1pAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="136046843"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; 
   d="scan'208";a="136046843"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2020 13:17:50 -0700
IronPort-SDR: Nwz8vCjMFKCoaqkMNet8SYnLrh4iSaSjsJz2L+/k7Pch+nY070XVTCBBiwLNHr8H7IQKr0KHF/
 zbvv+42vh8qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; 
   d="scan'208";a="499046477"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2020 13:17:50 -0700
Received: from [10.249.225.234] (abudanko-mobl.ccr.corp.intel.com [10.249.225.234])
        by linux.intel.com (Postfix) with ESMTP id 80FE85805EB;
        Mon, 24 Aug 2020 13:17:47 -0700 (PDT)
Subject: Re: [PATCH v1] perf_event_open.2: update the man page with
 CAP_PERFMON related information
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, James Morris <jmorris@namei.org>,
        Serge Hallyn <serge@hallyn.com>,
        Stephen Smalley <sds@tycho.nsa.gov>,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andi Kleen <ak@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <18d1083d-efe5-f5f8-c531-d142c0e5c1a8@linux.intel.com>
 <ed6f63bd-5dcb-425d-60ee-311a68756bfe@gmail.com>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <e3ff6ff2-8fa5-de27-3bc4-f578b6957de8@linux.intel.com>
Date:   Mon, 24 Aug 2020 23:17:46 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <ed6f63bd-5dcb-425d-60ee-311a68756bfe@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 23.08.2020 20:28, Michael Kerrisk (man-pages) wrote:
> Hello Alexey,
> 
> Could you look at the question below and update the patch.
> 
> On 2/17/20 9:18 AM, Alexey Budankov wrote:
>>
>> Extend perf_event_open 2 man page with the information about
>> CAP_PERFMON capability designed to secure performance monitoring
>> and observability operation in a system according to the principle
>> of least privilege [1] (POSIX IEEE 1003.1e, 2.2.2.39).
>>
>> [1] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
>>
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> ---
>>   man2/perf_event_open.2 | 27 +++++++++++++++++++++++++++
>>   1 file changed, 27 insertions(+)
>>
>> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
>> index 89d267c02..e9aab2ca1 100644
>> --- a/man2/perf_event_open.2
>> +++ b/man2/perf_event_open.2
>> @@ -98,6 +98,8 @@ when running on the specified CPU.
>>   .BR "pid == \-1" " and " "cpu >= 0"
>>   This measures all processes/threads on the specified CPU.
>>   This requires
>> +.B CAP_PERFMON
>> +or
>>   .B CAP_SYS_ADMIN
>>   capability or a
>>   .I /proc/sys/kernel/perf_event_paranoid
>> @@ -2920,6 +2922,8 @@ to hold the result.
>>   This allows attaching a Berkeley Packet Filter (BPF)
>>   program to an existing kprobe tracepoint event.
>>   You need
>> +.B CAP_PERFMON
>> +or
>>   .B CAP_SYS_ADMIN
>>   privileges to use this ioctl.
>>   .IP
>> @@ -2962,6 +2966,8 @@ have multiple events attached to a tracepoint.
>>   Querying this value on one tracepoint event returns the id
>>   of all BPF programs in all events attached to the tracepoint.
>>   You need
>> +.B CAP_PERFMON
>> +or
>>   .B CAP_SYS_ADMIN
>>   privileges to use this ioctl.
>>   .IP
>> @@ -3170,6 +3176,8 @@ it was expecting.
>>   .TP
>>   .B EACCES
>>   Returned when the requested event requires
>> +.B CAP_PERFMON
>> +or
>>   .B CAP_SYS_ADMIN
>>   permissions (or a more permissive perf_event paranoid setting).
>>   Some common cases where an unprivileged process
>> @@ -3291,6 +3299,8 @@ setting is specified.
>>   It can also happen, as with
>>   .BR EACCES ,
>>   when the requested event requires
>> +.B CAP_PERFMON
>> +or
>>   .B CAP_SYS_ADMIN
>>   permissions (or a more permissive perf_event paranoid setting).
>>   This includes setting a breakpoint on a kernel address,
>> @@ -3321,6 +3331,23 @@ The official way of knowing if
>>   support is enabled is checking
>>   for the existence of the file
>>   .IR /proc/sys/kernel/perf_event_paranoid .
>> +.PP
>> +.B CAP_PERFMON
>> +capability (since Linux X.Y) provides secure approach to
> 
> What's the version?

It's since Linux 5.8 .

> 
>> +performance monitoring and observability operations in a system
>> +according to the principal of least privilege (POSIX IEEE 1003.1e).
>> +Accessing system performance monitoring and observability operations
>> +using
>> +.B CAP_PERFMON
>> +capability singly, without the rest of
>> +.B CAP_SYS_ADMIN
>> +credentials, excludes chances to misuse the credentials and makes
> 
> I think that wording like "using CAP_PERFMON rather than the much
> more powerful CAP_SYS_ADMIN..."

Sounds good to me like this, or similar:

"Accessing system performance monitoring and observability operations
 using CAP_PERFMON rather than the much more powerful CAP_SYS_ADMIN
 excludes chances to misuse credentials and makes operations more
 secure."

> 
>> +the operations more secure.
>> +.B CAP_SYS_ADMIN
>> +usage for secure system performance monitoring and observability
>> +is discouraged with respect to
>> +.B CAP_PERFMON
>> +capability.
>>   .SH BUGS
>>   The
>>   .B F_SETOWN_EX
> 
> Thanks,
> 
> Michael
> 

Thanks,
Alexei

P.S.
I am on vacations till 08/31.
Please expect delay in response.

