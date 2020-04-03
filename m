Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7274D19D741
	for <lists+linux-man@lfdr.de>; Fri,  3 Apr 2020 15:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728049AbgDCNIZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Apr 2020 09:08:25 -0400
Received: from mga05.intel.com ([192.55.52.43]:24643 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728001AbgDCNIZ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 3 Apr 2020 09:08:25 -0400
IronPort-SDR: 5jBA5CXyyVaTeLdtl8N4Ty8c2GLxNh95x6P1IMrPwDA6uJftsIf8E6OiOcU+ysUbVTncm+/8Ls
 pGseaCdHKYew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2020 06:08:24 -0700
IronPort-SDR: eRbNnU/rrDVFmfPF1paXBtVE7T+boFiNmimnvsynFAx7AqUKmKsq45Gu0Hyf0/gNHc14/OXMM+
 ZhahdNoYwqYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,339,1580803200"; 
   d="scan'208";a="273943090"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga004.fm.intel.com with ESMTP; 03 Apr 2020 06:08:23 -0700
Received: from [10.249.254.224] (abudanko-mobl.ccr.corp.intel.com [10.249.254.224])
        by linux.intel.com (Postfix) with ESMTP id 3E6E958077B;
        Fri,  3 Apr 2020 06:08:17 -0700 (PDT)
Subject: Re: [PATCH v8 04/12] perf tool: extend Perf tool with CAP_PERFMON
 capability support
To:     Jiri Olsa <jolsa@redhat.com>
Cc:     Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        James Morris <jmorris@namei.org>,
        Namhyung Kim <namhyung@kernel.org>,
        Serge Hallyn <serge@hallyn.com>,
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
 <a66d5648-2b8e-577e-e1f2-1d56c017ab5e@linux.intel.com>
 <20200403110828.GL2784502@krava>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <56648455-3650-1fa2-6364-659d92d5dc14@linux.intel.com>
Date:   Fri, 3 Apr 2020 16:08:16 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403110828.GL2784502@krava>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 03.04.2020 14:08, Jiri Olsa wrote:
> On Thu, Apr 02, 2020 at 11:47:35AM +0300, Alexey Budankov wrote:
>>
>> Extend error messages to mention CAP_PERFMON capability as an option
>> to substitute CAP_SYS_ADMIN capability for secure system performance
>> monitoring and observability operations. Make perf_event_paranoid_check()
>> and __cmd_ftrace() to be aware of CAP_PERFMON capability.
>>
>> CAP_PERFMON implements the principal of least privilege for performance
>> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
>> principle of least privilege: A security design principle that states
>> that a process or program be granted only those privileges (e.g.,
>> capabilities) necessary to accomplish its legitimate function, and only
>> for the time that such privileges are actually required)
>>
>> For backward compatibility reasons access to perf_events subsystem remains
>> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
>> secure perf_events monitoring is discouraged with respect to CAP_PERFMON
>> capability.
>>
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> Reviewed-by: James Morris <jamorris@linux.microsoft.com>
> 
> Acked-by: Jiri Olsa <jolsa@redhat.com>

Thanks! I appreciate you support.

~Alexey

> 
> thanks,
> jirka
> 
>> ---
>>  tools/perf/builtin-ftrace.c |  5 +++--
>>  tools/perf/design.txt       |  3 ++-
>>  tools/perf/util/cap.h       |  4 ++++
>>  tools/perf/util/evsel.c     | 10 +++++-----
>>  tools/perf/util/util.c      |  1 +
>>  5 files changed, 15 insertions(+), 8 deletions(-)
>>
>> diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
>> index d5adc417a4ca..55eda54240fb 100644
>> --- a/tools/perf/builtin-ftrace.c
>> +++ b/tools/perf/builtin-ftrace.c
>> @@ -284,10 +284,11 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
>>  		.events = POLLIN,
>>  	};
>>  
>> -	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
>> +	if (!(perf_cap__capable(CAP_PERFMON) ||
>> +	      perf_cap__capable(CAP_SYS_ADMIN))) {
>>  		pr_err("ftrace only works for %s!\n",
>>  #ifdef HAVE_LIBCAP_SUPPORT
>> -		"users with the SYS_ADMIN capability"
>> +		"users with the CAP_PERFMON or CAP_SYS_ADMIN capability"
>>  #else
>>  		"root"
>>  #endif
>> diff --git a/tools/perf/design.txt b/tools/perf/design.txt
>> index 0453ba26cdbd..a42fab308ff6 100644
>> --- a/tools/perf/design.txt
>> +++ b/tools/perf/design.txt
>> @@ -258,7 +258,8 @@ gets schedule to. Per task counters can be created by any user, for
>>  their own tasks.
>>  
>>  A 'pid == -1' and 'cpu == x' counter is a per CPU counter that counts
>> -all events on CPU-x. Per CPU counters need CAP_SYS_ADMIN privilege.
>> +all events on CPU-x. Per CPU counters need CAP_PERFMON or CAP_SYS_ADMIN
>> +privilege.
>>  
>>  The 'flags' parameter is currently unused and must be zero.
>>  
>> diff --git a/tools/perf/util/cap.h b/tools/perf/util/cap.h
>> index 051dc590ceee..ae52878c0b2e 100644
>> --- a/tools/perf/util/cap.h
>> +++ b/tools/perf/util/cap.h
>> @@ -29,4 +29,8 @@ static inline bool perf_cap__capable(int cap __maybe_unused)
>>  #define CAP_SYSLOG	34
>>  #endif
>>  
>> +#ifndef CAP_PERFMON
>> +#define CAP_PERFMON	38
>> +#endif
>> +
>>  #endif /* __PERF_CAP_H */
>> diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
>> index 816d930d774e..2696922f06bc 100644
>> --- a/tools/perf/util/evsel.c
>> +++ b/tools/perf/util/evsel.c
>> @@ -2507,14 +2507,14 @@ int perf_evsel__open_strerror(struct evsel *evsel, struct target *target,
>>  		 "You may not have permission to collect %sstats.\n\n"
>>  		 "Consider tweaking /proc/sys/kernel/perf_event_paranoid,\n"
>>  		 "which controls use of the performance events system by\n"
>> -		 "unprivileged users (without CAP_SYS_ADMIN).\n\n"
>> +		 "unprivileged users (without CAP_PERFMON or CAP_SYS_ADMIN).\n\n"
>>  		 "The current value is %d:\n\n"
>>  		 "  -1: Allow use of (almost) all events by all users\n"
>>  		 "      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK\n"
>> -		 ">= 0: Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN\n"
>> -		 "      Disallow raw tracepoint access by users without CAP_SYS_ADMIN\n"
>> -		 ">= 1: Disallow CPU event access by users without CAP_SYS_ADMIN\n"
>> -		 ">= 2: Disallow kernel profiling by users without CAP_SYS_ADMIN\n\n"
>> +		 ">= 0: Disallow ftrace function tracepoint by users without CAP_PERFMON or CAP_SYS_ADMIN\n"
>> +		 "      Disallow raw tracepoint access by users without CAP_SYS_PERFMON or CAP_SYS_ADMIN\n"
>> +		 ">= 1: Disallow CPU event access by users without CAP_PERFMON or CAP_SYS_ADMIN\n"
>> +		 ">= 2: Disallow kernel profiling by users without CAP_PERFMON or CAP_SYS_ADMIN\n\n"
>>  		 "To make this setting permanent, edit /etc/sysctl.conf too, e.g.:\n\n"
>>  		 "	kernel.perf_event_paranoid = -1\n" ,
>>  				 target->system_wide ? "system-wide " : "",
>> diff --git a/tools/perf/util/util.c b/tools/perf/util/util.c
>> index d707c9624dd9..37a9492edb3e 100644
>> --- a/tools/perf/util/util.c
>> +++ b/tools/perf/util/util.c
>> @@ -290,6 +290,7 @@ int perf_event_paranoid(void)
>>  bool perf_event_paranoid_check(int max_level)
>>  {
>>  	return perf_cap__capable(CAP_SYS_ADMIN) ||
>> +			perf_cap__capable(CAP_PERFMON) ||
>>  			perf_event_paranoid() <= max_level;
>>  }
>>  
>> -- 
>> 2.24.1
>>
> 
