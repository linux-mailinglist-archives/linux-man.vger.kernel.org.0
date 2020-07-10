Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54C9C21B8B2
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2020 16:31:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726977AbgGJObB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jul 2020 10:31:01 -0400
Received: from mga07.intel.com ([134.134.136.100]:53235 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726832AbgGJObB (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 10 Jul 2020 10:31:01 -0400
IronPort-SDR: mn02xBGCwjyV3gLaoC19KLrdiOAKHCSDbtaCLoTR6ZLtaWRvSStcnp0dcI45iBIFAMlQFLRTt5
 R7xWYpdQvptw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="213087472"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; 
   d="scan'208";a="213087472"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2020 07:30:56 -0700
IronPort-SDR: l+oczZlRHesjhYT/RVjERlIPOBvvzdUWgMvrKgcP1xI2vV4rgPo3QXbhZ4EvUl2kA80nT/Ej9G
 2WvRalgm6d8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; 
   d="scan'208";a="284520136"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga006.jf.intel.com with ESMTP; 10 Jul 2020 07:30:56 -0700
Received: from [10.249.228.181] (abudanko-mobl.ccr.corp.intel.com [10.249.228.181])
        by linux.intel.com (Postfix) with ESMTP id 8039B5805F0;
        Fri, 10 Jul 2020 07:30:51 -0700 (PDT)
Subject: Re: [PATCH v8 00/12] Introduce CAP_PERFMON to secure system
 performance monitoring and observability
To:     Ravi Bangoria <ravi.bangoria@linux.ibm.com>
Cc:     Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
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
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
Date:   Fri, 10 Jul 2020 17:30:50 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi Ravi,

On 10.07.2020 16:31, Ravi Bangoria wrote:
> Hi Alexey,
> 
>> Currently access to perf_events, i915_perf and other performance
>> monitoring and observability subsystems of the kernel is open only for
>> a privileged process [1] with CAP_SYS_ADMIN capability enabled in the
>> process effective set [2].
>>
>> This patch set introduces CAP_PERFMON capability designed to secure
>> system performance monitoring and observability operations so that
>> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
>> for performance monitoring and observability subsystems of the kernel.
> 
> I'm seeing an issue with CAP_PERFMON when I try to record data for a
> specific target. I don't know whether this is sort of a regression or
> an expected behavior.

Thanks for reporting and root causing this case. The behavior looks like
kind of expected since currently CAP_PERFMON takes over the related part
of CAP_SYS_ADMIN credentials only. Actually Perf security docs [1] say
that access control is also subject to CAP_SYS_PTRACE credentials.

CAP_PERFMON could be used to extend and substitute ptrace_may_access()
check in perf_events subsystem to simplify user experience at least in
this specific case.

Alexei

[1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html

> 
> Without setting CAP_PERFMON:
> 
>   $ getcap ./perf
>   $ ./perf stat -a ls
>     Error:
>     Access to performance monitoring and observability operations is limited.
>   $ ./perf stat ls
>     Performance counter stats for 'ls':
>                     2.06 msec task-clock:u              #    0.418 CPUs utilized
>                     0      context-switches:u        #    0.000 K/sec
>                     0      cpu-migrations:u          #    0.000 K/sec
> 
> With CAP_PERFMON:
> 
>   $ getcap ./perf
>     ./perf = cap_perfmon+ep
>   $ ./perf stat -a ls
>     Performance counter stats for 'system wide':
>                   142.42 msec cpu-clock                 #   25.062 CPUs utilized
>                   182      context-switches          #    0.001 M/sec
>                    48      cpu-migrations            #    0.337 K/sec
>   $ ./perf stat ls
>     Error:
>     Access to performance monitoring and observability operations is limited.
> 
> Am I missing something silly?
> 
> Analysis:
> ---------
> A bit more analysis lead me to below kernel code fs/exec.c:
> 
>   begin_new_exec()
>   {
>         ...
>         if (bprm->interp_flags & BINPRM_FLAGS_ENFORCE_NONDUMP ||
>             !(uid_eq(current_euid(), current_uid()) &&
>               gid_eq(current_egid(), current_gid())))
>                 set_dumpable(current->mm, suid_dumpable);
>         else
>                 set_dumpable(current->mm, SUID_DUMP_USER);
> 
>         ...
>         commit_creds(bprm->cred);
>   }
> 
> When I execute './perf stat ls', it's going into else condition and thus sets
> dumpable flag as SUID_DUMP_USER. Then in commit_creds():
> 
>   int commit_creds(struct cred *new)
>   {
>         ...
>         /* dumpability changes */
>         if (...
>             !cred_cap_issubset(old, new)) {
>                 if (task->mm)
>                         set_dumpable(task->mm, suid_dumpable);
>   }
> 
> !cred_cap_issubset(old, new) fails for perf without any capability and thus
> it doesn't execute set_dumpable(). Whereas that condition passes for perf
> with CAP_PERFMON and thus it overwrites old value (SUID_DUMP_USER) with
> suid_dumpable in mm_flags. On an Ubuntu, suid_dumpable default value is
> SUID_DUMP_ROOT. On Fedora, it's SUID_DUMP_DISABLE. (/proc/sys/fs/suid_dumpable).
> 
> Now while opening an event:
> 
>   perf_event_open()
>     ptrace_may_access()
>       __ptrace_may_access() {
>                 ...
>                 if (mm &&
>                     ((get_dumpable(mm) != SUID_DUMP_USER) &&
>                      !ptrace_has_cap(cred, mm->user_ns, mode)))
>                     return -EPERM;
>       }
> 
> This if condition passes for perf with CAP_PERFMON and thus it returns -EPERM.
> But it fails for perf without CAP_PERFMON and thus it goes ahead and returns
> success. So opening an event fails when perf has CAP_PREFMON and tries to open
> process specific event as normal user.
> 
> Workarounds:
> ------------
> Based on above analysis, I found couple of workarounds (examples are on
> Ubuntu 18.04.4 powerpc):
> 
> Workaround1:
> Setting SUID_DUMP_USER as default (in /proc/sys/fs/suid_dumpable) solves the
> issue.
> 
>   # echo 1 > /proc/sys/fs/suid_dumpable
>   $ getcap ./perf
>     ./perf = cap_perfmon+ep
>   $ ./perf stat ls
>     Performance counter stats for 'ls':
>                     1.47 msec task-clock                #    0.806 CPUs utilized
>                     0      context-switches          #    0.000 K/sec
>                     0      cpu-migrations            #    0.000 K/sec
> 
> Workaround2:
> Using CAP_SYS_PTRACE along with CAP_PERFMON solves the issue.
> 
>   $ cat /proc/sys/fs/suid_dumpable
>     2
>   # setcap "cap_perfmon,cap_sys_ptrace=ep" ./perf
>   $ ./perf stat ls
>     Performance counter stats for 'ls':
>                     1.41 msec task-clock                #    0.826 CPUs utilized
>                     0      context-switches          #    0.000 K/sec
>                     0      cpu-migrations            #    0.000 K/sec
> 
> Workaround3:
> Adding CAP_PERFMON to parent of perf (/bin/bash) also solves the issue.
> 
>   $ cat /proc/sys/fs/suid_dumpable
>     2
>   # setcap "cap_perfmon=ep" /bin/bash
>   # setcap "cap_perfmon=ep" ./perf
>   $ bash
>   $ ./perf stat ls
>     Performance counter stats for 'ls':
>                     1.47 msec task-clock                #    0.806 CPUs utilized
>                     0      context-switches          #    0.000 K/sec
>                     0      cpu-migrations            #    0.000 K/sec
> 
> - Ravi
