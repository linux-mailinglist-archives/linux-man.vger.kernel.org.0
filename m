Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E72D719EC15
	for <lists+linux-man@lfdr.de>; Sun,  5 Apr 2020 16:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726830AbgDEOlz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Apr 2020 10:41:55 -0400
Received: from mga09.intel.com ([134.134.136.24]:24011 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726598AbgDEOlz (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 5 Apr 2020 10:41:55 -0400
IronPort-SDR: S4cGvXSxi2/klGoN29F4rMj4gO96mp8JnGa2AxfhgzemCc3rLlzIfxE3o6fAi+dURw9letqoSl
 5Z0TxiznpJgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Apr 2020 07:41:53 -0700
IronPort-SDR: V9TTnqMqeP8/mt/DnG2oD1FLvKhWCmWRQBS8RDGukSKATPDRkrkgsVQd86I7vpAYDNMB3ztthq
 YPmkBeqaY/pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,348,1580803200"; 
   d="scan'208";a="243901790"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga008.jf.intel.com with ESMTP; 05 Apr 2020 07:41:53 -0700
Received: from [10.249.231.111] (abudanko-mobl.ccr.corp.intel.com [10.249.231.111])
        by linux.intel.com (Postfix) with ESMTP id 653B058033E;
        Sun,  5 Apr 2020 07:41:49 -0700 (PDT)
Subject: Re: [PATCH v8 12/12] doc/admin-guide: update kernel.rst with
 CAP_PERFMON information
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
 <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
 <20200405141029.GA16896@kernel.org>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <eb7fd0bd-4043-b51c-9b19-ee0a1d1849e9@linux.intel.com>
Date:   Sun, 5 Apr 2020 17:41:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405141029.GA16896@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 05.04.2020 17:10, Arnaldo Carvalho de Melo wrote:
> Em Thu, Apr 02, 2020 at 11:54:39AM +0300, Alexey Budankov escreveu:
>>
>> Update kernel.rst documentation file with the information
>> related to usage of CAP_PERFMON capability to secure performance
>> monitoring and observability operations in system.
> 
> This one is failing in my perf/core branch, please take a look. I'm

Trying to reproduce right now. What kind of failure do you see?
Please share some specifics so I could follow up properly.

Thanks,
Alexey

> pushing my perf/core branch with this series applied, please check that
> everything is ok, I'll do some testing now, but it all seems ok.
> 
> Thanks,
> 
> - Arnaldo
>  
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> ---
>>  Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
>>  1 file changed, 11 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
>> index def074807cee..b06ae9389809 100644
>> --- a/Documentation/admin-guide/sysctl/kernel.rst
>> +++ b/Documentation/admin-guide/sysctl/kernel.rst
>> @@ -720,20 +720,26 @@ perf_event_paranoid:
>>  ====================
>>  
>>  Controls use of the performance events system by unprivileged
>> -users (without CAP_SYS_ADMIN).  The default value is 2.
>> +users (without CAP_PERFMON). The default value is 2.
>> +
>> +For backward compatibility reasons access to system performance
>> +monitoring and observability remains open for CAP_SYS_ADMIN
>> +privileged processes but CAP_SYS_ADMIN usage for secure system
>> +performance monitoring and observability operations is discouraged
>> +with respect to CAP_PERFMON use cases.
>>  
>>  ===  ==================================================================
>>   -1  Allow use of (almost) all events by all users
>>  
>>       Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
>>  
>> ->=0  Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN
>> +>=0  Disallow ftrace function tracepoint by users without CAP_PERFMON
>>  
>> -     Disallow raw tracepoint access by users without CAP_SYS_ADMIN
>> +     Disallow raw tracepoint access by users without CAP_PERFMON
>>  
>> ->=1  Disallow CPU event access by users without CAP_SYS_ADMIN
>> +>=1  Disallow CPU event access by users without CAP_PERFMON
>>  
>> ->=2  Disallow kernel profiling by users without CAP_SYS_ADMIN
>> +>=2  Disallow kernel profiling by users without CAP_PERFMON
>>  ===  ==================================================================
>>  
>>  
>> -- 
>> 2.24.1
>>
> 
