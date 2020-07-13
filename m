Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7843021D325
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2020 11:48:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729043AbgGMJsr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jul 2020 05:48:47 -0400
Received: from mga05.intel.com ([192.55.52.43]:4743 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726571AbgGMJsq (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 13 Jul 2020 05:48:46 -0400
IronPort-SDR: E2+0JxC4esRGlKyhw+7mMBIrHOaV3huPf4KeZRhw4ykNvks9Uv+1gQpaJkVfHe1v7Pvw0WSB6j
 p4IbwOt1C8bQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9680"; a="233441956"
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; 
   d="scan'208";a="233441956"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2020 02:48:38 -0700
IronPort-SDR: L14eLNOG7+vwt/gUze0GN5sjUdM/MU8jqTcbQ9b3v71MLCPCZqZytwKXRulOQNxowZGOBGFJUx
 qnqpy+9+rocg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; 
   d="scan'208";a="268327366"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga007.fm.intel.com with ESMTP; 13 Jul 2020 02:48:38 -0700
Received: from [10.249.229.49] (abudanko-mobl.ccr.corp.intel.com [10.249.229.49])
        by linux.intel.com (Postfix) with ESMTP id 9AA74580806;
        Mon, 13 Jul 2020 02:48:27 -0700 (PDT)
Subject: Re: [PATCH v8 00/12] Introduce CAP_PERFMON to secure system
 performance monitoring and observability
To:     Arnaldo Carvalho de Melo <acme@kernel.org>
Cc:     Ravi Bangoria <ravi.bangoria@linux.ibm.com>,
        Peter Zijlstra <peterz@infradead.org>,
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
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
Date:   Mon, 13 Jul 2020 12:48:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200710170911.GD7487@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 10.07.2020 20:09, Arnaldo Carvalho de Melo wrote:
> Em Fri, Jul 10, 2020 at 05:30:50PM +0300, Alexey Budankov escreveu:
>> On 10.07.2020 16:31, Ravi Bangoria wrote:
>>>> Currently access to perf_events, i915_perf and other performance
>>>> monitoring and observability subsystems of the kernel is open only for
>>>> a privileged process [1] with CAP_SYS_ADMIN capability enabled in the
>>>> process effective set [2].
> 
>>>> This patch set introduces CAP_PERFMON capability designed to secure
>>>> system performance monitoring and observability operations so that
>>>> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
>>>> for performance monitoring and observability subsystems of the kernel.
>  
>>> I'm seeing an issue with CAP_PERFMON when I try to record data for a
>>> specific target. I don't know whether this is sort of a regression or
>>> an expected behavior.
>  
>> Thanks for reporting and root causing this case. The behavior looks like
>> kind of expected since currently CAP_PERFMON takes over the related part
>> of CAP_SYS_ADMIN credentials only. Actually Perf security docs [1] say
>> that access control is also subject to CAP_SYS_PTRACE credentials.
> 
> I think that stating that in the error message would be helpful, after
> all, who reads docs? 8-)

At least those who write it :D ...

> 
> I.e., this:
> 
> $ ./perf stat ls
>   Error:
>   Access to performance monitoring and observability operations is limited.
> $
> 
> Could become:
> 
> $ ./perf stat ls
>   Error:
>   Access to performance monitoring and observability operations is limited.
>   Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
> $

It would better provide reference to perf security docs in the tool output.
Looks like extending ptrace_may_access() check for perf_events with CAP_PERFMON
makes monitoring simpler and even more secure to use since Perf tool need
not to start/stop/single-step and read/write registers and memory and so on
like a debugger or strace-like tool. What do you think?

Alexei

> 
> - Arnaldo
>  
>> CAP_PERFMON could be used to extend and substitute ptrace_may_access()
>> check in perf_events subsystem to simplify user experience at least in
>> this specific case.
>>
>> Alexei
>>
>> [1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
>>
>>>
>>> Without setting CAP_PERFMON:
>>>
>>>   $ getcap ./perf
>>>   $ ./perf stat -a ls
>>>     Error:
>>>     Access to performance monitoring and observability operations is limited.
>>>   $ ./perf stat ls
>>>     Performance counter stats for 'ls':
>>>                     2.06 msec task-clock:u              #    0.418 CPUs utilized
>>>                     0      context-switches:u        #    0.000 K/sec
>>>                     0      cpu-migrations:u          #    0.000 K/sec
>>>
>>> With CAP_PERFMON:
>>>
>>>   $ getcap ./perf
>>>     ./perf = cap_perfmon+ep
>>>   $ ./perf stat -a ls
>>>     Performance counter stats for 'system wide':
>>>                   142.42 msec cpu-clock                 #   25.062 CPUs utilized
>>>                   182      context-switches          #    0.001 M/sec
>>>                    48      cpu-migrations            #    0.337 K/sec
>>>   $ ./perf stat ls
>>>     Error:
>>>     Access to performance monitoring and observability operations is limited.
>>>
>>> Am I missing something silly?
>>>
>>> Analysis:
>>> ---------
>>> A bit more analysis lead me to below kernel code fs/exec.c:
>>>
>>>   begin_new_exec()
>>>   {
>>>         ...
>>>         if (bprm->interp_flags & BINPRM_FLAGS_ENFORCE_NONDUMP ||
>>>             !(uid_eq(current_euid(), current_uid()) &&
>>>               gid_eq(current_egid(), current_gid())))
>>>                 set_dumpable(current->mm, suid_dumpable);
>>>         else
>>>                 set_dumpable(current->mm, SUID_DUMP_USER);
>>>
>>>         ...
>>>         commit_creds(bprm->cred);
>>>   }
>>>
>>> When I execute './perf stat ls', it's going into else condition and thus sets
>>> dumpable flag as SUID_DUMP_USER. Then in commit_creds():
>>>
>>>   int commit_creds(struct cred *new)
>>>   {
>>>         ...
>>>         /* dumpability changes */
>>>         if (...
>>>             !cred_cap_issubset(old, new)) {
>>>                 if (task->mm)
>>>                         set_dumpable(task->mm, suid_dumpable);
>>>   }
>>>
>>> !cred_cap_issubset(old, new) fails for perf without any capability and thus
>>> it doesn't execute set_dumpable(). Whereas that condition passes for perf
>>> with CAP_PERFMON and thus it overwrites old value (SUID_DUMP_USER) with
>>> suid_dumpable in mm_flags. On an Ubuntu, suid_dumpable default value is
>>> SUID_DUMP_ROOT. On Fedora, it's SUID_DUMP_DISABLE. (/proc/sys/fs/suid_dumpable).
>>>
>>> Now while opening an event:
>>>
>>>   perf_event_open()
>>>     ptrace_may_access()
>>>       __ptrace_may_access() {
>>>                 ...
>>>                 if (mm &&
>>>                     ((get_dumpable(mm) != SUID_DUMP_USER) &&
>>>                      !ptrace_has_cap(cred, mm->user_ns, mode)))
>>>                     return -EPERM;
>>>       }
>>>
>>> This if condition passes for perf with CAP_PERFMON and thus it returns -EPERM.
>>> But it fails for perf without CAP_PERFMON and thus it goes ahead and returns
>>> success. So opening an event fails when perf has CAP_PREFMON and tries to open
>>> process specific event as normal user.
>>>
>>> Workarounds:
>>> ------------
>>> Based on above analysis, I found couple of workarounds (examples are on
>>> Ubuntu 18.04.4 powerpc):
>>>
>>> Workaround1:
>>> Setting SUID_DUMP_USER as default (in /proc/sys/fs/suid_dumpable) solves the
>>> issue.
>>>
>>>   # echo 1 > /proc/sys/fs/suid_dumpable
>>>   $ getcap ./perf
>>>     ./perf = cap_perfmon+ep
>>>   $ ./perf stat ls
>>>     Performance counter stats for 'ls':
>>>                     1.47 msec task-clock                #    0.806 CPUs utilized
>>>                     0      context-switches          #    0.000 K/sec
>>>                     0      cpu-migrations            #    0.000 K/sec
>>>
>>> Workaround2:
>>> Using CAP_SYS_PTRACE along with CAP_PERFMON solves the issue.
>>>
>>>   $ cat /proc/sys/fs/suid_dumpable
>>>     2
>>>   # setcap "cap_perfmon,cap_sys_ptrace=ep" ./perf
>>>   $ ./perf stat ls
>>>     Performance counter stats for 'ls':
>>>                     1.41 msec task-clock                #    0.826 CPUs utilized
>>>                     0      context-switches          #    0.000 K/sec
>>>                     0      cpu-migrations            #    0.000 K/sec
>>>
>>> Workaround3:
>>> Adding CAP_PERFMON to parent of perf (/bin/bash) also solves the issue.
>>>
>>>   $ cat /proc/sys/fs/suid_dumpable
>>>     2
>>>   # setcap "cap_perfmon=ep" /bin/bash
>>>   # setcap "cap_perfmon=ep" ./perf
>>>   $ bash
>>>   $ ./perf stat ls
>>>     Performance counter stats for 'ls':
>>>                     1.47 msec task-clock                #    0.806 CPUs utilized
>>>                     0      context-switches          #    0.000 K/sec
>>>                     0      cpu-migrations            #    0.000 K/sec
>>>
>>> - Ravi
> 
