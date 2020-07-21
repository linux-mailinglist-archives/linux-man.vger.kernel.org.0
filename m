Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D44DD22808F
	for <lists+linux-man@lfdr.de>; Tue, 21 Jul 2020 15:07:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727782AbgGUNGm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jul 2020 09:06:42 -0400
Received: from mga02.intel.com ([134.134.136.20]:51040 "EHLO mga02.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726673AbgGUNGl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 21 Jul 2020 09:06:41 -0400
IronPort-SDR: c2sH9XMHlMEW0pXmT2VA5aERqC0tYNRyeN5DmbFOqK9pNaLaovhsgsKXSxVKhhusu3qxLaKA2K
 4dxO1mMeFggQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="138212736"
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; 
   d="scan'208";a="138212736"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2020 06:06:40 -0700
IronPort-SDR: 1f9g+T99IbrmyFt7xBCselt0GPuvuJ3RrAXPC5kATSHrbPKrQpJOfcGQvBkbWmxTDVJnIFVMfr
 g3LXCjN1Bflw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; 
   d="scan'208";a="283853844"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga003.jf.intel.com with ESMTP; 21 Jul 2020 06:06:40 -0700
Received: from [10.249.224.14] (abudanko-mobl.ccr.corp.intel.com [10.249.224.14])
        by linux.intel.com (Postfix) with ESMTP id E3853580299;
        Tue, 21 Jul 2020 06:06:35 -0700 (PDT)
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v8 00/12] Introduce CAP_PERFMON to secure system
 performance monitoring and observability
To:     Arnaldo Carvalho de Melo <acme@kernel.org>
Cc:     Peter Zijlstra <peterz@infradead.org>,
        Ravi Bangoria <ravi.bangoria@linux.ibm.com>,
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
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
 <20200713121746.GA7029@kernel.org>
 <0fadcf78-8b0e-ed03-a554-cc172b7d249c@linux.intel.com>
 <20200713185152.GA18094@kernel.org>
Organization: Intel Corp.
Message-ID: <8d6030a4-ff2c-230c-c36e-d0a8c68832ac@linux.intel.com>
Date:   Tue, 21 Jul 2020 16:06:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200713185152.GA18094@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 13.07.2020 21:51, Arnaldo Carvalho de Melo wrote:
> Em Mon, Jul 13, 2020 at 03:37:51PM +0300, Alexey Budankov escreveu:
>>
>> On 13.07.2020 15:17, Arnaldo Carvalho de Melo wrote:
>>> Em Mon, Jul 13, 2020 at 12:48:25PM +0300, Alexey Budankov escreveu:
>>>>
>>>> On 10.07.2020 20:09, Arnaldo Carvalho de Melo wrote:
>>>>> Em Fri, Jul 10, 2020 at 05:30:50PM +0300, Alexey Budankov escreveu:
>>>>>> On 10.07.2020 16:31, Ravi Bangoria wrote:
>>>>>>>> Currently access to perf_events, i915_perf and other performance
>>>>>>>> monitoring and observability subsystems of the kernel is open only for
>>>>>>>> a privileged process [1] with CAP_SYS_ADMIN capability enabled in the
>>>>>>>> process effective set [2].
>>>
>>>>>>>> This patch set introduces CAP_PERFMON capability designed to secure
>>>>>>>> system performance monitoring and observability operations so that
>>>>>>>> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
>>>>>>>> for performance monitoring and observability subsystems of the kernel.
>>>
>>>>>>> I'm seeing an issue with CAP_PERFMON when I try to record data for a
>>>>>>> specific target. I don't know whether this is sort of a regression or
>>>>>>> an expected behavior.
>>>
>>>>>> Thanks for reporting and root causing this case. The behavior looks like
>>>>>> kind of expected since currently CAP_PERFMON takes over the related part
>>>>>> of CAP_SYS_ADMIN credentials only. Actually Perf security docs [1] say
>>>>>> that access control is also subject to CAP_SYS_PTRACE credentials.
>>>
>>>>> I think that stating that in the error message would be helpful, after
>>>>> all, who reads docs? 8-)
>>>
>>>> At least those who write it :D ...
>>>
>>> Everybody should read it, sure :-)
>>>  
>>>>> I.e., this:
>>>>>
>>>>> $ ./perf stat ls
>>>>>   Error:
>>>>>   Access to performance monitoring and observability operations is limited.
>>>>> $
>>>>>
>>>>> Could become:
>>>>>
>>>>> $ ./perf stat ls
>>>>>   Error:
>>>>>   Access to performance monitoring and observability operations is limited.
>>>>>   Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
>>>>> $
>>>>
>>>> It would better provide reference to perf security docs in the tool output.
>>>
>>> So add a 3rd line:
>>>
>>> $ ./perf stat ls
>>>   Error:
>>>   Access to performance monitoring and observability operations is limited.
>>>   Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
>>>   Please read the 'Perf events and tool security' document:
>>>   https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
> 
>> If it had that patch below then message change would not be required.
> 
> Sure, but the tool should continue to work and provide useful messages
> when running on kernels without that change. Pointing to the document is
> valid and should be done, that is an agreed point. But the tool can do
> some checks, narrow down the possible causes for the error message and
> provide something that in most cases will make the user make progress.
> 
>> However this two sentences in the end of whole message would still add up:
>> "Please read the 'Perf events and tool security' document:
>>  https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html"
> 
> We're in violent agreement here. :-)

Here is the message draft mentioning a) CAP_SYS_PTRACE, for kernels prior
v5.8, and b) Perf security document link. The plan is to send a patch extending
perf_events with CAP_PERFMON check [1] for ptrace_may_access() and extending
the tool with this message.

"Access to performance monitoring and observability operations is limited.
 Enforced MAC policy settings (SELinux) can limit access to performance
 monitoring and observability operations. Inspect system audit records for
 more perf_event access control information and adjusting the policy.
 Consider adjusting /proc/sys/kernel/perf_event_paranoid setting to open
 access to performance monitoring and observability operations for processes
 without CAP_PERFMON, CAP_SYS_PTRACE or CAP_SYS_ADMIN Linux capability.
 More information can be found at 'Perf events and tool security' document:
 https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
 perf_event_paranoid setting is -1:
     -1: Allow use of (almost) all events by all users
           Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
 >= 0: Disallow raw and ftrace function tracepoint access
 >= 1: Disallow CPU event access
 >= 2: Disallow kernel profiling
 To make the adjusted perf_event_paranoid setting permanent preserve it
 in /etc/sysctl.conf (e.g. kernel.perf_event_paranoid = <setting>)"

Alexei

[1] https://lore.kernel.org/lkml/20200713121746.GA7029@kernel.org/

>  
>>>
>>>> Looks like extending ptrace_may_access() check for perf_events with CAP_PERFMON
>>>
>>> You mean the following?
>>
>> Exactly that.
> 
> Sure, lets then wait for others to chime in and then you can go ahead
> and submit that patch.
> 
> Peter?
> 
> - Arnaldo
>  
>>>
>>> diff --git a/kernel/events/core.c b/kernel/events/core.c
>>> index 856d98c36f56..a2397f724c10 100644
>>> --- a/kernel/events/core.c
>>> +++ b/kernel/events/core.c
>>> @@ -11595,7 +11595,7 @@ SYSCALL_DEFINE5(perf_event_open,
>>>  		 * perf_event_exit_task() that could imply).
>>>  		 */
>>>  		err = -EACCES;
>>> -		if (!ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
>>> +		if (!perfmon_capable() && !ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
>>>  			goto err_cred;
>>>  	}
>>>
>>>> makes monitoring simpler and even more secure to use since Perf tool need
>>>> not to start/stop/single-step and read/write registers and memory and so on
>>>> like a debugger or strace-like tool. What do you think?
>>>
>>> I tend to agree, Peter?
>>>  
>>>> Alexei
>>>>
>>>>>
>>>>> - Arnaldo
>>
>> Alexei
> 
