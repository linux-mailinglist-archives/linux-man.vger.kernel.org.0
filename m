Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D6E629C015
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 18:12:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1760630AbgJ0RKq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 13:10:46 -0400
Received: from mga11.intel.com ([192.55.52.93]:57654 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1816920AbgJ0RKc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 27 Oct 2020 13:10:32 -0400
IronPort-SDR: TVc4yl5lY2D4BR4vZfkM9wZjOofIU9WDvFC+ZzHXlc/2CjSThfv32hW5okeT3Bw3d6NX9xzxXW
 4F9ZCt1P1csw==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="164624505"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; 
   d="scan'208";a="164624505"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2020 10:10:30 -0700
IronPort-SDR: LKjGwKt+44iy+RU2amux+SXOprNH2dEvuFuxb8NqM6t2cDRU+rnT28BO0ufX3ySMCk8Jvwal8H
 TQfnVSS5Gyxg==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; 
   d="scan'208";a="535877644"
Received: from abudanko-mobl.ccr.corp.intel.com (HELO [10.249.227.94]) ([10.249.227.94])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2020 10:10:26 -0700
Subject: Re: [PATCH v2] perf_event_open.2: update the man page with
 CAP_PERFMON related information
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@redhat.com>,
        Namhyung Kim <namhyung@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Ingo Molnar <mingo@redhat.com>,
        Andi Kleen <ak@linux.intel.com>,
        linux-man <linux-man@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <33c10554-c0ee-9e46-2946-67a9deac6752@linux.intel.com>
 <190971ba-31f1-ca41-60a9-38989fe82a64@gmail.com>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <bd17b7fa-288d-2023-a068-41e5d1327e65@linux.intel.com>
Date:   Tue, 27 Oct 2020 20:10:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <190971ba-31f1-ca41-60a9-38989fe82a64@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 27.10.2020 19:57, Michael Kerrisk (man-pages) wrote:
> Hello Alexey,
> 
> On 10/27/20 5:48 PM, Alexey Budankov wrote:
>>
>> Extend perf_event_open 2 man page with the information about
>> CAP_PERFMON capability designed to secure performance monitoring
>> and observability operation in a system according to the principle
>> of least privilege [1] (POSIX IEEE 1003.1e, 2.2.2.39).
>>
>> [1] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
>>
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> 
> Thanks for this. I've applied. I have a few questions/comments below.
> 
>> ---
>>  man2/perf_event_open.2 | 32 ++++++++++++++++++++++++++++++--
>>  1 file changed, 30 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
>> index 4827a359d..9810bc554 100644
>> --- a/man2/perf_event_open.2
>> +++ b/man2/perf_event_open.2
>> @@ -97,6 +97,8 @@ when running on the specified CPU.
>>  .BR "pid == \-1" " and " "cpu >= 0"
>>  This measures all processes/threads on the specified CPU.
>>  This requires
>> +.B CAP_PERFMON
>> +(since Linux 5.8) or
>>  .B CAP_SYS_ADMIN
>>  capability or a
>>  .I /proc/sys/kernel/perf_event_paranoid
>> @@ -108,9 +110,11 @@ This setting is invalid and will return an error.
>>  When
>>  .I pid
>>  is greater than zero, permission to perform this system call
>> -is governed by a ptrace access mode
>> +is governed by
>> +.B CAP_PERFMON
>> +(since Linux 5.9) and a ptrace access mode
> 
> I want to check: did you really mean 5.9 here? (Everywhere else,
> 5.8 is mentioned, but perhaps this change came in the next kernel 
> version.)

Yes, it is not a typo. This thing was merged into v5.9.

Thanks,
Alexei

> 
>>  .B PTRACE_MODE_READ_REALCREDS
>> -check; see
>> +check on older Linux versions; see
>>  .BR ptrace (2).
>>  .PP
>>  The
>> @@ -2925,6 +2929,8 @@ to hold the result.
>>  This allows attaching a Berkeley Packet Filter (BPF)
>>  program to an existing kprobe tracepoint event.
>>  You need
>> +.B CAP_PERFMON
>> +(since Linux 5.8) or
>>  .B CAP_SYS_ADMIN
>>  privileges to use this ioctl.
>>  .IP
>> @@ -2967,6 +2973,8 @@ have multiple events attached to a tracepoint.
>>  Querying this value on one tracepoint event returns the id
>>  of all BPF programs in all events attached to the tracepoint.
>>  You need
>> +.B CAP_PERFMON
>> +(since Linux 5.8) or
>>  .B CAP_SYS_ADMIN
>>  privileges to use this ioctl.
>>  .IP
>> @@ -3175,6 +3183,8 @@ it was expecting.
>>  .TP
>>  .B EACCES
>>  Returned when the requested event requires
>> +.B CAP_PERFMON
>> +(since Linux 5.8) or
>>  .B CAP_SYS_ADMIN
>>  permissions (or a more permissive perf_event paranoid setting).
>>  Some common cases where an unprivileged process
>> @@ -3296,6 +3306,8 @@ setting is specified.
>>  It can also happen, as with
>>  .BR EACCES ,
>>  when the requested event requires
>> +.B CAP_PERFMON
>> +(since Linux 5.8) or
>>  .B CAP_SYS_ADMIN
>>  permissions (or a more permissive perf_event paranoid setting).
>>  This includes setting a breakpoint on a kernel address,
>> @@ -3326,6 +3338,22 @@ The official way of knowing if
>>  support is enabled is checking
>>  for the existence of the file
>>  .IR /proc/sys/kernel/perf_event_paranoid .
>> +.PP
>> +.B CAP_PERFMON
>> +capability (since Linux 5.8) provides secure approach to
>> +performance monitoring and observability operations in a system
>> +according to the principal of least privilege (POSIX IEEE 1003.1e).
>> +Accessing system performance monitoring and observability operations
>> +using
>> +.B CAP_PERFMON
>> +rather than the much more powerful
>> +.B CAP_SYS_ADMIN
>> +excludes chances to misuse credentials and makes operations more secure.
>> +.B CAP_SYS_ADMIN
>> +usage for secure system performance monitoring and observability
>> +is discouraged with respect to
>> +.B CAP_PERFMON
>> +capability.
> 
> Thank you for adding the above piece. That point of course
> really needs to be emphasized!
> 
> Thanks,
> 
> Michael
> 
> 
