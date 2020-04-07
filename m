Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8C0EA1A1286
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 19:17:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726495AbgDGRRX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 13:17:23 -0400
Received: from mga09.intel.com ([134.134.136.24]:7902 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726277AbgDGRRW (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 7 Apr 2020 13:17:22 -0400
IronPort-SDR: EvZql3krYj3kyZ/MUpIBSLzNPC/uALBZRxbkrcRG0v7azaqb37exafJrlNWb9aLF91c9Tk6uXT
 Js911c4J6xMQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2020 10:17:20 -0700
IronPort-SDR: f+e98gTz84KNvlgovAVPTfEQ+3pXzSPnYUp+lSC72IsBa7QeERvkKZhPGBNFVKUHaEv9jQD1dA
 7/YiU7dClaRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; 
   d="scan'208";a="286288039"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga002.fm.intel.com with ESMTP; 07 Apr 2020 10:17:20 -0700
Received: from [10.249.224.62] (abudanko-mobl.ccr.corp.intel.com [10.249.224.62])
        by linux.intel.com (Postfix) with ESMTP id D9F375802BC;
        Tue,  7 Apr 2020 10:17:15 -0700 (PDT)
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
 <20200407163654.GB12003@kernel.org> <20200407164050.GC12003@kernel.org>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <ca8dc2ac-5a1d-d1a6-ca04-a4b5d9e9cbef@linux.intel.com>
Date:   Tue, 7 Apr 2020 20:17:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407164050.GC12003@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 07.04.2020 19:40, Arnaldo Carvalho de Melo wrote:
> Em Tue, Apr 07, 2020 at 01:36:54PM -0300, Arnaldo Carvalho de Melo escreveu:
>> Em Tue, Apr 07, 2020 at 05:54:27PM +0300, Alexey Budankov escreveu:
>>> On 07.04.2020 17:35, Arnaldo Carvalho de Melo wrote:
>>>> Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
>>>>> [perf@five ~]$ type perf
>>>>> perf is hashed (/home/perf/bin/perf)
>>>>> [perf@five ~]$ getcap /home/perf/bin/perf
>>>>> /home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
>>>>> [perf@five ~]$ groups
>>>>> perf perf_users
>>>>> [perf@five ~]$ id
>>>>> uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>>>> [perf@five ~]$ perf top --stdio
>>>>> Error:
>>>>> Failed to mmap with 1 (Operation not permitted)
>>>>> [perf@five ~]$ perf record -a
>>>>> ^C[ perf record: Woken up 1 times to write data ]
>>>>> [ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]
>>>>>
>>>>> [perf@five ~]$ perf evlist
>>>>> cycles:u
>>>>> [perf@five ~]$
>>>>
>>>> Humm, perf record falls back to cycles:u after initially trying cycles
>>>> (i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
>>>> lemme test, humm not really:
>>>>
>>>> [perf@five ~]$ perf top --stdio -e cycles:u
>>>> Error:
>>>> Failed to mmap with 1 (Operation not permitted)
>>>> [perf@five ~]$ perf record -e cycles:u -a sleep 1
>>>> [ perf record: Woken up 1 times to write data ]
>>>> [ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
>>>> [perf@five ~]$
>>>>
>>>> Back to debugging this.
>>>
>>> Could makes sense adding cap_ipc_lock to the binary to isolate from this:
>>>
>>> kernel/events/core.c: 6101
>>> 	if ((locked > lock_limit) && perf_is_paranoid() &&
>>> 		!capable(CAP_IPC_LOCK)) {
>>> 		ret = -EPERM;
>>> 		goto unlock;
>>> 	}
>>
>>
>> That did the trick, I'll update the documentation and include in my
>> "Committer testing" section:
> 
> I ammended this to that patch, please check the wording:
> 
> - Arnaldo
> 
> diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
> index c0ca0c1a6804..ed33682e26b0 100644
> --- a/Documentation/admin-guide/perf-security.rst
> +++ b/Documentation/admin-guide/perf-security.rst
> @@ -127,12 +127,19 @@ taken to create such groups of privileged Perf users.
>  
>  ::
>  
> -   # setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
> -   # setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
> +   # setcap "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
> +   # setcap -v "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
>     perf: OK
>     # getcap perf
>     perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
>  
> +If the libcap installed doesn't yet support "cap_perfmon", use "38" instead,
> +i.e.:
> +
> +::
> +
> +   # setcap "38,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
> +
>  As a result, members of perf_users group are capable of conducting
>  performance monitoring and observability by using functionality of the
>  configured Perf tool executable that, when executes, passes perf_events
> 

Looks good to me. The paragraph just above should then also be extended to
mention that perf_events subsystem memory limit is ignored due to usage of
CAP_IPC_LOCK:

"As a result, members of perf_users group are capable of conducting
 performance monitoring and observability by using functionality of the
 configured Perf tool executable that, when executes, passes perf_events
 subsystem scope and perf_event_mlock_kb locking limit checks."

~Alexey
