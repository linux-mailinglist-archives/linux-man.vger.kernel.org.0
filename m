Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6B8F21D5A7
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2020 14:17:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728950AbgGMMRv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jul 2020 08:17:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:34060 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726586AbgGMMRu (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 13 Jul 2020 08:17:50 -0400
Received: from quaco.ghostprotocols.net (unknown [177.158.141.203])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5CCDB206F0;
        Mon, 13 Jul 2020 12:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1594642669;
        bh=wc2dhxkIG9GjfHmWSmkltugECChmqIjO4+eGKEz9U8U=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NU7xlNRIpfzoyfaed7t2MB9wYUrmC/Wy9Zlmr0S7A2G8ByKqE2GKBqMXDhAYt24gG
         bdyovVnMvdmfyTmoH1pgspO72I5SfzqbEO+2pPZSiZR+npt9idpq9b8Nf+K4jH7Avf
         KtG4JjEQf3O/2GuwLHU1ceEofeuxDiN5LocZDN5k=
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id 125C7405FF; Mon, 13 Jul 2020 09:17:46 -0300 (-03)
Date:   Mon, 13 Jul 2020 09:17:46 -0300
From:   Arnaldo Carvalho de Melo <acme@kernel.org>
To:     Alexey Budankov <alexey.budankov@linux.intel.com>,
        Peter Zijlstra <peterz@infradead.org>
Cc:     Ravi Bangoria <ravi.bangoria@linux.ibm.com>,
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
Subject: Re: [PATCH v8 00/12] Introduce CAP_PERFMON to secure system
 performance monitoring and observability
Message-ID: <20200713121746.GA7029@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Mon, Jul 13, 2020 at 12:48:25PM +0300, Alexey Budankov escreveu:
> 
> On 10.07.2020 20:09, Arnaldo Carvalho de Melo wrote:
> > Em Fri, Jul 10, 2020 at 05:30:50PM +0300, Alexey Budankov escreveu:
> >> On 10.07.2020 16:31, Ravi Bangoria wrote:
> >>>> Currently access to perf_events, i915_perf and other performance
> >>>> monitoring and observability subsystems of the kernel is open only for
> >>>> a privileged process [1] with CAP_SYS_ADMIN capability enabled in the
> >>>> process effective set [2].

> >>>> This patch set introduces CAP_PERFMON capability designed to secure
> >>>> system performance monitoring and observability operations so that
> >>>> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
> >>>> for performance monitoring and observability subsystems of the kernel.

> >>> I'm seeing an issue with CAP_PERFMON when I try to record data for a
> >>> specific target. I don't know whether this is sort of a regression or
> >>> an expected behavior.

> >> Thanks for reporting and root causing this case. The behavior looks like
> >> kind of expected since currently CAP_PERFMON takes over the related part
> >> of CAP_SYS_ADMIN credentials only. Actually Perf security docs [1] say
> >> that access control is also subject to CAP_SYS_PTRACE credentials.

> > I think that stating that in the error message would be helpful, after
> > all, who reads docs? 8-)

> At least those who write it :D ...

Everybody should read it, sure :-)
 
> > I.e., this:
> > 
> > $ ./perf stat ls
> >   Error:
> >   Access to performance monitoring and observability operations is limited.
> > $
> > 
> > Could become:
> > 
> > $ ./perf stat ls
> >   Error:
> >   Access to performance monitoring and observability operations is limited.
> >   Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
> > $
> 
> It would better provide reference to perf security docs in the tool output.

So add a 3rd line:

$ ./perf stat ls
  Error:
  Access to performance monitoring and observability operations is limited.
  Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
  Please read the 'Perf events and tool security' document:
  https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html

> Looks like extending ptrace_may_access() check for perf_events with CAP_PERFMON

You mean the following?

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 856d98c36f56..a2397f724c10 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -11595,7 +11595,7 @@ SYSCALL_DEFINE5(perf_event_open,
 		 * perf_event_exit_task() that could imply).
 		 */
 		err = -EACCES;
-		if (!ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
+		if (!perfmon_capable() && !ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
 			goto err_cred;
 	}

> makes monitoring simpler and even more secure to use since Perf tool need
> not to start/stop/single-step and read/write registers and memory and so on
> like a debugger or strace-like tool. What do you think?

I tend to agree, Peter?
 
> Alexei
> 
> > 
> > - Arnaldo
> >  
> >> CAP_PERFMON could be used to extend and substitute ptrace_may_access()
> >> check in perf_events subsystem to simplify user experience at least in
> >> this specific case.
> >>
> >> Alexei
> >>
> >> [1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
> >>
> >>>
> >>> Without setting CAP_PERFMON:
> >>>
> >>>   $ getcap ./perf
> >>>   $ ./perf stat -a ls
> >>>     Error:
> >>>     Access to performance monitoring and observability operations is limited.
> >>>   $ ./perf stat ls
> >>>     Performance counter stats for 'ls':
> >>>                     2.06 msec task-clock:u              #    0.418 CPUs utilized
> >>>                     0      context-switches:u        #    0.000 K/sec
> >>>                     0      cpu-migrations:u          #    0.000 K/sec
> >>>
> >>> With CAP_PERFMON:
> >>>
> >>>   $ getcap ./perf
> >>>     ./perf = cap_perfmon+ep
> >>>   $ ./perf stat -a ls
> >>>     Performance counter stats for 'system wide':
> >>>                   142.42 msec cpu-clock                 #   25.062 CPUs utilized
> >>>                   182      context-switches          #    0.001 M/sec
> >>>                    48      cpu-migrations            #    0.337 K/sec
> >>>   $ ./perf stat ls
> >>>     Error:
> >>>     Access to performance monitoring and observability operations is limited.
> >>>
> >>> Am I missing something silly?
> >>>
> >>> Analysis:
> >>> ---------
> >>> A bit more analysis lead me to below kernel code fs/exec.c:
> >>>
> >>>   begin_new_exec()
> >>>   {
> >>>         ...
> >>>         if (bprm->interp_flags & BINPRM_FLAGS_ENFORCE_NONDUMP ||
> >>>             !(uid_eq(current_euid(), current_uid()) &&
> >>>               gid_eq(current_egid(), current_gid())))
> >>>                 set_dumpable(current->mm, suid_dumpable);
> >>>         else
> >>>                 set_dumpable(current->mm, SUID_DUMP_USER);
> >>>
> >>>         ...
> >>>         commit_creds(bprm->cred);
> >>>   }
> >>>
> >>> When I execute './perf stat ls', it's going into else condition and thus sets
> >>> dumpable flag as SUID_DUMP_USER. Then in commit_creds():
> >>>
> >>>   int commit_creds(struct cred *new)
> >>>   {
> >>>         ...
> >>>         /* dumpability changes */
> >>>         if (...
> >>>             !cred_cap_issubset(old, new)) {
> >>>                 if (task->mm)
> >>>                         set_dumpable(task->mm, suid_dumpable);
> >>>   }
> >>>
> >>> !cred_cap_issubset(old, new) fails for perf without any capability and thus
> >>> it doesn't execute set_dumpable(). Whereas that condition passes for perf
> >>> with CAP_PERFMON and thus it overwrites old value (SUID_DUMP_USER) with
> >>> suid_dumpable in mm_flags. On an Ubuntu, suid_dumpable default value is
> >>> SUID_DUMP_ROOT. On Fedora, it's SUID_DUMP_DISABLE. (/proc/sys/fs/suid_dumpable).
> >>>
> >>> Now while opening an event:
> >>>
> >>>   perf_event_open()
> >>>     ptrace_may_access()
> >>>       __ptrace_may_access() {
> >>>                 ...
> >>>                 if (mm &&
> >>>                     ((get_dumpable(mm) != SUID_DUMP_USER) &&
> >>>                      !ptrace_has_cap(cred, mm->user_ns, mode)))
> >>>                     return -EPERM;
> >>>       }
> >>>
> >>> This if condition passes for perf with CAP_PERFMON and thus it returns -EPERM.
> >>> But it fails for perf without CAP_PERFMON and thus it goes ahead and returns
> >>> success. So opening an event fails when perf has CAP_PREFMON and tries to open
> >>> process specific event as normal user.
> >>>
> >>> Workarounds:
> >>> ------------
> >>> Based on above analysis, I found couple of workarounds (examples are on
> >>> Ubuntu 18.04.4 powerpc):
> >>>
> >>> Workaround1:
> >>> Setting SUID_DUMP_USER as default (in /proc/sys/fs/suid_dumpable) solves the
> >>> issue.
> >>>
> >>>   # echo 1 > /proc/sys/fs/suid_dumpable
> >>>   $ getcap ./perf
> >>>     ./perf = cap_perfmon+ep
> >>>   $ ./perf stat ls
> >>>     Performance counter stats for 'ls':
> >>>                     1.47 msec task-clock                #    0.806 CPUs utilized
> >>>                     0      context-switches          #    0.000 K/sec
> >>>                     0      cpu-migrations            #    0.000 K/sec
> >>>
> >>> Workaround2:
> >>> Using CAP_SYS_PTRACE along with CAP_PERFMON solves the issue.
> >>>
> >>>   $ cat /proc/sys/fs/suid_dumpable
> >>>     2
> >>>   # setcap "cap_perfmon,cap_sys_ptrace=ep" ./perf
> >>>   $ ./perf stat ls
> >>>     Performance counter stats for 'ls':
> >>>                     1.41 msec task-clock                #    0.826 CPUs utilized
> >>>                     0      context-switches          #    0.000 K/sec
> >>>                     0      cpu-migrations            #    0.000 K/sec
> >>>
> >>> Workaround3:
> >>> Adding CAP_PERFMON to parent of perf (/bin/bash) also solves the issue.
> >>>
> >>>   $ cat /proc/sys/fs/suid_dumpable
> >>>     2
> >>>   # setcap "cap_perfmon=ep" /bin/bash
> >>>   # setcap "cap_perfmon=ep" ./perf
> >>>   $ bash
> >>>   $ ./perf stat ls
> >>>     Performance counter stats for 'ls':
> >>>                     1.47 msec task-clock                #    0.806 CPUs utilized
> >>>                     0      context-switches          #    0.000 K/sec
> >>>                     0      cpu-migrations            #    0.000 K/sec
> >>>
> >>> - Ravi
> > 

-- 

- Arnaldo
