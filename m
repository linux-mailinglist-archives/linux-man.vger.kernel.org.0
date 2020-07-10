Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 419ED21B680
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2020 15:34:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727782AbgGJNeY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jul 2020 09:34:24 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:17662 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726840AbgGJNeX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jul 2020 09:34:23 -0400
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 06ADW6mL006648;
        Fri, 10 Jul 2020 09:33:46 -0400
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 326bpr3apw-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 10 Jul 2020 09:33:46 -0400
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 06ADWPAd007505;
        Fri, 10 Jul 2020 09:33:42 -0400
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com [159.122.73.71])
        by mx0a-001b2d01.pphosted.com with ESMTP id 326bpr39v3-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 10 Jul 2020 09:33:42 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
        by ppma02fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 06AD4wgt012132;
        Fri, 10 Jul 2020 13:32:42 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
        by ppma02fra.de.ibm.com with ESMTP id 326bcf0ngm-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 10 Jul 2020 13:32:42 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
        by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 06ADVPdD59965518
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Fri, 10 Jul 2020 13:31:25 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 4E7BAA4051;
        Fri, 10 Jul 2020 13:31:25 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id E7A08A404D;
        Fri, 10 Jul 2020 13:31:21 +0000 (GMT)
Received: from [9.199.38.25] (unknown [9.199.38.25])
        by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
        Fri, 10 Jul 2020 13:31:21 +0000 (GMT)
From:   Ravi Bangoria <ravi.bangoria@linux.ibm.com>
Subject: Re: [PATCH v8 00/12] Introduce CAP_PERFMON to secure system
 performance monitoring and observability
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
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
        linux-man@vger.kernel.org,
        Ravi Bangoria <ravi.bangoria@linux.ibm.com>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Message-ID: <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
Date:   Fri, 10 Jul 2020 19:01:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-10_07:2020-07-10,2020-07-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 clxscore=1011 priorityscore=1501 mlxlogscore=999
 malwarescore=0 adultscore=0 bulkscore=0 suspectscore=0 mlxscore=0
 impostorscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2006250000 definitions=main-2007100093
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alexey,

> Currently access to perf_events, i915_perf and other performance
> monitoring and observability subsystems of the kernel is open only for
> a privileged process [1] with CAP_SYS_ADMIN capability enabled in the
> process effective set [2].
> 
> This patch set introduces CAP_PERFMON capability designed to secure
> system performance monitoring and observability operations so that
> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
> for performance monitoring and observability subsystems of the kernel.

I'm seeing an issue with CAP_PERFMON when I try to record data for a
specific target. I don't know whether this is sort of a regression or
an expected behavior.

Without setting CAP_PERFMON:

   $ getcap ./perf
   $ ./perf stat -a ls
     Error:
     Access to performance monitoring and observability operations is limited.
   $ ./perf stat ls
     Performance counter stats for 'ls':
    
                  2.06 msec task-clock:u              #    0.418 CPUs utilized
                     0      context-switches:u        #    0.000 K/sec
                     0      cpu-migrations:u          #    0.000 K/sec

With CAP_PERFMON:

   $ getcap ./perf
     ./perf = cap_perfmon+ep
   $ ./perf stat -a ls
     Performance counter stats for 'system wide':
    
                142.42 msec cpu-clock                 #   25.062 CPUs utilized
                   182      context-switches          #    0.001 M/sec
                    48      cpu-migrations            #    0.337 K/sec
   $ ./perf stat ls
     Error:
     Access to performance monitoring and observability operations is limited.

Am I missing something silly?

Analysis:
---------
A bit more analysis lead me to below kernel code fs/exec.c:

   begin_new_exec()
   {
         ...
         if (bprm->interp_flags & BINPRM_FLAGS_ENFORCE_NONDUMP ||
             !(uid_eq(current_euid(), current_uid()) &&
               gid_eq(current_egid(), current_gid())))
                 set_dumpable(current->mm, suid_dumpable);
         else
                 set_dumpable(current->mm, SUID_DUMP_USER);

         ...
         commit_creds(bprm->cred);
   }

When I execute './perf stat ls', it's going into else condition and thus sets
dumpable flag as SUID_DUMP_USER. Then in commit_creds():

   int commit_creds(struct cred *new)
   {
         ...
         /* dumpability changes */
         if (...
             !cred_cap_issubset(old, new)) {
                 if (task->mm)
                         set_dumpable(task->mm, suid_dumpable);
   }

!cred_cap_issubset(old, new) fails for perf without any capability and thus
it doesn't execute set_dumpable(). Whereas that condition passes for perf
with CAP_PERFMON and thus it overwrites old value (SUID_DUMP_USER) with
suid_dumpable in mm_flags. On an Ubuntu, suid_dumpable default value is
SUID_DUMP_ROOT. On Fedora, it's SUID_DUMP_DISABLE. (/proc/sys/fs/suid_dumpable).

Now while opening an event:

   perf_event_open()
     ptrace_may_access()
       __ptrace_may_access() {
                 ...
                 if (mm &&
                     ((get_dumpable(mm) != SUID_DUMP_USER) &&
                      !ptrace_has_cap(cred, mm->user_ns, mode)))
                     return -EPERM;
       }

This if condition passes for perf with CAP_PERFMON and thus it returns -EPERM.
But it fails for perf without CAP_PERFMON and thus it goes ahead and returns
success. So opening an event fails when perf has CAP_PREFMON and tries to open
process specific event as normal user.

Workarounds:
------------
Based on above analysis, I found couple of workarounds (examples are on
Ubuntu 18.04.4 powerpc):

Workaround1:
Setting SUID_DUMP_USER as default (in /proc/sys/fs/suid_dumpable) solves the
issue.

   # echo 1 > /proc/sys/fs/suid_dumpable
   $ getcap ./perf
     ./perf = cap_perfmon+ep
   $ ./perf stat ls
     Performance counter stats for 'ls':
    
                  1.47 msec task-clock                #    0.806 CPUs utilized
                     0      context-switches          #    0.000 K/sec
                     0      cpu-migrations            #    0.000 K/sec

Workaround2:
Using CAP_SYS_PTRACE along with CAP_PERFMON solves the issue.

   $ cat /proc/sys/fs/suid_dumpable
     2
   # setcap "cap_perfmon,cap_sys_ptrace=ep" ./perf
   $ ./perf stat ls
     Performance counter stats for 'ls':
    
                  1.41 msec task-clock                #    0.826 CPUs utilized
                     0      context-switches          #    0.000 K/sec
                     0      cpu-migrations            #    0.000 K/sec

Workaround3:
Adding CAP_PERFMON to parent of perf (/bin/bash) also solves the issue.

   $ cat /proc/sys/fs/suid_dumpable
     2
   # setcap "cap_perfmon=ep" /bin/bash
   # setcap "cap_perfmon=ep" ./perf
   $ bash
   $ ./perf stat ls
     Performance counter stats for 'ls':
    
                  1.47 msec task-clock                #    0.806 CPUs utilized
                     0      context-switches          #    0.000 K/sec
                     0      cpu-migrations            #    0.000 K/sec

- Ravi
