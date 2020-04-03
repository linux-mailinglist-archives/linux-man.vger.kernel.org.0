Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 70EF719D581
	for <lists+linux-man@lfdr.de>; Fri,  3 Apr 2020 13:08:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727911AbgDCLIq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Apr 2020 07:08:46 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:57337 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1728066AbgDCLIq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Apr 2020 07:08:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1585912125;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=+NAmZggX3XZCWjuUW8aBncEYEOJoNqi6G9ZgkQxDzKU=;
        b=eQ424mFOUNgNw7GqosrLGP8Ngw4QYvtWShCPkTgTSOMZUyFpXQaiEwg70I64SYf9ygsLkc
        q3vYgZHnQqBmkNb1SeqDrbkSDqM4t9hR5ulf82jMQXyEyocHDZddhFRqGwZwcnX3qDbcs5
        hlrxkwyFKn4buiD6n3HykwuGv0OFVJo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-k5sRkw49OPuXre1ZjeIV8A-1; Fri, 03 Apr 2020 07:08:41 -0400
X-MC-Unique: k5sRkw49OPuXre1ZjeIV8A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C91F5107ACCA;
        Fri,  3 Apr 2020 11:08:38 +0000 (UTC)
Received: from krava (unknown [10.40.194.72])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E509B5C1DC;
        Fri,  3 Apr 2020 11:08:32 +0000 (UTC)
Date:   Fri, 3 Apr 2020 13:08:28 +0200
From:   Jiri Olsa <jolsa@redhat.com>
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
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
Subject: Re: [PATCH v8 04/12] perf tool: extend Perf tool with CAP_PERFMON
 capability support
Message-ID: <20200403110828.GL2784502@krava>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <a66d5648-2b8e-577e-e1f2-1d56c017ab5e@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a66d5648-2b8e-577e-e1f2-1d56c017ab5e@linux.intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Apr 02, 2020 at 11:47:35AM +0300, Alexey Budankov wrote:
> 
> Extend error messages to mention CAP_PERFMON capability as an option
> to substitute CAP_SYS_ADMIN capability for secure system performance
> monitoring and observability operations. Make perf_event_paranoid_check()
> and __cmd_ftrace() to be aware of CAP_PERFMON capability.
> 
> CAP_PERFMON implements the principal of least privilege for performance
> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
> principle of least privilege: A security design principle that states
> that a process or program be granted only those privileges (e.g.,
> capabilities) necessary to accomplish its legitimate function, and only
> for the time that such privileges are actually required)
> 
> For backward compatibility reasons access to perf_events subsystem remains
> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
> secure perf_events monitoring is discouraged with respect to CAP_PERFMON
> capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> Reviewed-by: James Morris <jamorris@linux.microsoft.com>

Acked-by: Jiri Olsa <jolsa@redhat.com>

thanks,
jirka

> ---
>  tools/perf/builtin-ftrace.c |  5 +++--
>  tools/perf/design.txt       |  3 ++-
>  tools/perf/util/cap.h       |  4 ++++
>  tools/perf/util/evsel.c     | 10 +++++-----
>  tools/perf/util/util.c      |  1 +
>  5 files changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
> index d5adc417a4ca..55eda54240fb 100644
> --- a/tools/perf/builtin-ftrace.c
> +++ b/tools/perf/builtin-ftrace.c
> @@ -284,10 +284,11 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
>  		.events = POLLIN,
>  	};
>  
> -	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> +	if (!(perf_cap__capable(CAP_PERFMON) ||
> +	      perf_cap__capable(CAP_SYS_ADMIN))) {
>  		pr_err("ftrace only works for %s!\n",
>  #ifdef HAVE_LIBCAP_SUPPORT
> -		"users with the SYS_ADMIN capability"
> +		"users with the CAP_PERFMON or CAP_SYS_ADMIN capability"
>  #else
>  		"root"
>  #endif
> diff --git a/tools/perf/design.txt b/tools/perf/design.txt
> index 0453ba26cdbd..a42fab308ff6 100644
> --- a/tools/perf/design.txt
> +++ b/tools/perf/design.txt
> @@ -258,7 +258,8 @@ gets schedule to. Per task counters can be created by any user, for
>  their own tasks.
>  
>  A 'pid == -1' and 'cpu == x' counter is a per CPU counter that counts
> -all events on CPU-x. Per CPU counters need CAP_SYS_ADMIN privilege.
> +all events on CPU-x. Per CPU counters need CAP_PERFMON or CAP_SYS_ADMIN
> +privilege.
>  
>  The 'flags' parameter is currently unused and must be zero.
>  
> diff --git a/tools/perf/util/cap.h b/tools/perf/util/cap.h
> index 051dc590ceee..ae52878c0b2e 100644
> --- a/tools/perf/util/cap.h
> +++ b/tools/perf/util/cap.h
> @@ -29,4 +29,8 @@ static inline bool perf_cap__capable(int cap __maybe_unused)
>  #define CAP_SYSLOG	34
>  #endif
>  
> +#ifndef CAP_PERFMON
> +#define CAP_PERFMON	38
> +#endif
> +
>  #endif /* __PERF_CAP_H */
> diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
> index 816d930d774e..2696922f06bc 100644
> --- a/tools/perf/util/evsel.c
> +++ b/tools/perf/util/evsel.c
> @@ -2507,14 +2507,14 @@ int perf_evsel__open_strerror(struct evsel *evsel, struct target *target,
>  		 "You may not have permission to collect %sstats.\n\n"
>  		 "Consider tweaking /proc/sys/kernel/perf_event_paranoid,\n"
>  		 "which controls use of the performance events system by\n"
> -		 "unprivileged users (without CAP_SYS_ADMIN).\n\n"
> +		 "unprivileged users (without CAP_PERFMON or CAP_SYS_ADMIN).\n\n"
>  		 "The current value is %d:\n\n"
>  		 "  -1: Allow use of (almost) all events by all users\n"
>  		 "      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK\n"
> -		 ">= 0: Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN\n"
> -		 "      Disallow raw tracepoint access by users without CAP_SYS_ADMIN\n"
> -		 ">= 1: Disallow CPU event access by users without CAP_SYS_ADMIN\n"
> -		 ">= 2: Disallow kernel profiling by users without CAP_SYS_ADMIN\n\n"
> +		 ">= 0: Disallow ftrace function tracepoint by users without CAP_PERFMON or CAP_SYS_ADMIN\n"
> +		 "      Disallow raw tracepoint access by users without CAP_SYS_PERFMON or CAP_SYS_ADMIN\n"
> +		 ">= 1: Disallow CPU event access by users without CAP_PERFMON or CAP_SYS_ADMIN\n"
> +		 ">= 2: Disallow kernel profiling by users without CAP_PERFMON or CAP_SYS_ADMIN\n\n"
>  		 "To make this setting permanent, edit /etc/sysctl.conf too, e.g.:\n\n"
>  		 "	kernel.perf_event_paranoid = -1\n" ,
>  				 target->system_wide ? "system-wide " : "",
> diff --git a/tools/perf/util/util.c b/tools/perf/util/util.c
> index d707c9624dd9..37a9492edb3e 100644
> --- a/tools/perf/util/util.c
> +++ b/tools/perf/util/util.c
> @@ -290,6 +290,7 @@ int perf_event_paranoid(void)
>  bool perf_event_paranoid_check(int max_level)
>  {
>  	return perf_cap__capable(CAP_SYS_ADMIN) ||
> +			perf_cap__capable(CAP_PERFMON) ||
>  			perf_event_paranoid() <= max_level;
>  }
>  
> -- 
> 2.24.1
> 

