Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0BF19EC47
	for <lists+linux-man@lfdr.de>; Sun,  5 Apr 2020 17:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726669AbgDEPGC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Apr 2020 11:06:02 -0400
Received: from mail-qv1-f65.google.com ([209.85.219.65]:45997 "EHLO
        mail-qv1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726598AbgDEPGC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Apr 2020 11:06:02 -0400
Received: by mail-qv1-f65.google.com with SMTP id g4so6151464qvo.12;
        Sun, 05 Apr 2020 08:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9N0f+yc5GoSCYnU9CVx853Ppx5E/zoOAAJ8nxJTEFpA=;
        b=Y7HC76M5hVnZTH8jN1WbAtr84f16u+KO/0nyPseW+pLLAipoydW7pYF+tiVNoF9ltF
         nbON5GLMf6QRr52JUdP83hAVn+jLhQvGMFWskD4I9BQ4/odgzvrDIxLY1xI9g+yVb4C/
         s2cXWLpGSGzf4q/LWNJcl8OkpS52o0e6zCslyw2/Qq1avqM+IwMRvbjeSG8ehkjV1pyP
         jk0xK8gMfmYrXak7p4ZBSW4h4CSVZrnstU6bREaND652xm4ip4yb8awoWHKWAlDfQN7H
         2JukMwQacbyr6AGkGf4X1IAviX6LZpurPEzVRr6WO9rx86RHbTcv8uI2206+v2FhdU+k
         1Law==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9N0f+yc5GoSCYnU9CVx853Ppx5E/zoOAAJ8nxJTEFpA=;
        b=YZM2Ojf0ShWMqlF82rCP5lZSnv1uTVehy3kyEcwJd+BhvcmUyotRpPeTGii2kUjOMt
         FXEf4ohTqswAa6UUyeRspIASk2g66n25yRsl0Lexhpc++xm15EszBooUnWLPcrVdfQjq
         mHQPArqMgfw6QShQ5ZePOh9bsevFQYxyEtFGMWPbK86dIt27YGGS2uNo/y8PR+bUkYiA
         0Lu9zFbwfM3v/3o+4nOomHnFLd8jq7h+GJXSS4KoPqDEh6N6zlDTlXWwZGWHA0A8efiu
         R9JtLm5yYNaU6vS9slMlIMRVJ8BydzoNOcYYUOff9ugoCcy0Hqnq/hoVCmKbwSZVaWBY
         1Owg==
X-Gm-Message-State: AGi0Pubigtbs67Tn9f+VcaumBljo+WU1hOM4eSxzCYOlCK85YNrdhtQ7
        akZw5Egw3BTlIa4dzxnTF1A=
X-Google-Smtp-Source: APiQypLiZ3GOPWLtLhl8U0huwRiWUGwCKoPM/+nsqylQydejMUMQHHoJEpvfE25ROQ27KYKdEh9uaQ==
X-Received: by 2002:a0c:db86:: with SMTP id m6mr16240577qvk.116.1586099160280;
        Sun, 05 Apr 2020 08:06:00 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id m10sm12655562qte.71.2020.04.05.08.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Apr 2020 08:05:59 -0700 (PDT)
From:   Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id 535B0409A3; Sun,  5 Apr 2020 12:05:57 -0300 (-03)
Date:   Sun, 5 Apr 2020 12:05:57 -0300
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
Cc:     Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
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
Subject: Re: [PATCH v8 12/12] doc/admin-guide: update kernel.rst with
 CAP_PERFMON information
Message-ID: <20200405150557.GP9917@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
 <20200405141029.GA16896@kernel.org>
 <eb7fd0bd-4043-b51c-9b19-ee0a1d1849e9@linux.intel.com>
 <966244a1-2a2d-8e47-b805-2effa46fe8cd@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <966244a1-2a2d-8e47-b805-2effa46fe8cd@linux.intel.com>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Sun, Apr 05, 2020 at 05:54:37PM +0300, Alexey Budankov escreveu:
> 
> On 05.04.2020 17:41, Alexey Budankov wrote:
> > 
> > On 05.04.2020 17:10, Arnaldo Carvalho de Melo wrote:
> >> Em Thu, Apr 02, 2020 at 11:54:39AM +0300, Alexey Budankov escreveu:
> >>>
> >>> Update kernel.rst documentation file with the information
> >>> related to usage of CAP_PERFMON capability to secure performance
> >>> monitoring and observability operations in system.
> >>
> >> This one is failing in my perf/core branch, please take a look. I'm
> 
> Please try applying this:

Thanks, applied with the original commit log message,

- Arnaldo
 
> ---
>  Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
> index 335696d3360d..aaa5bbcd1e33 100644
> --- a/Documentation/admin-guide/sysctl/kernel.rst
> +++ b/Documentation/admin-guide/sysctl/kernel.rst
> @@ -709,7 +709,13 @@ perf_event_paranoid
>  ===================
>  
>  Controls use of the performance events system by unprivileged
> -users (without CAP_SYS_ADMIN).  The default value is 2.
> +users (without CAP_PERFMON).  The default value is 2.
> +
> +For backward compatibility reasons access to system performance
> +monitoring and observability remains open for CAP_SYS_ADMIN
> +privileged processes but CAP_SYS_ADMIN usage for secure system
> +performance monitoring and observability operations is discouraged
> +with respect to CAP_PERFMON use cases.
>  
>  ===  ==================================================================
>   -1  Allow use of (almost) all events by all users.
> @@ -718,13 +724,13 @@ users (without CAP_SYS_ADMIN).  The default value is 2.
>       ``CAP_IPC_LOCK``.
>  
>  >=0  Disallow ftrace function tracepoint by users without
> -     ``CAP_SYS_ADMIN``.
> +     ``CAP_PERFMON``.
>  
> -     Disallow raw tracepoint access by users without ``CAP_SYS_ADMIN``.
> +     Disallow raw tracepoint access by users without ``CAP_PERFMON``.
>  
> ->=1  Disallow CPU event access by users without ``CAP_SYS_ADMIN``.
> +>=1  Disallow CPU event access by users without ``CAP_PERFMON``.
>  
> ->=2  Disallow kernel profiling by users without ``CAP_SYS_ADMIN``.
> +>=2  Disallow kernel profiling by users without ``CAP_PERFMON``.
>  ===  ==================================================================
>  
> ---
> 
> Thanks,
> Alexey
> 
> > 
> > Trying to reproduce right now. What kind of failure do you see?
> > Please share some specifics so I could follow up properly.
> > 
> > Thanks,
> > Alexey
> > 
> >> pushing my perf/core branch with this series applied, please check that
> >> everything is ok, I'll do some testing now, but it all seems ok.
> >>
> >> Thanks,
> >>
> >> - Arnaldo
> >>  
> >>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> >>> ---
> >>>  Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
> >>>  1 file changed, 11 insertions(+), 5 deletions(-)
> >>>
> >>> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
> >>> index def074807cee..b06ae9389809 100644
> >>> --- a/Documentation/admin-guide/sysctl/kernel.rst
> >>> +++ b/Documentation/admin-guide/sysctl/kernel.rst
> >>> @@ -720,20 +720,26 @@ perf_event_paranoid:
> >>>  ====================
> >>>  
> >>>  Controls use of the performance events system by unprivileged
> >>> -users (without CAP_SYS_ADMIN).  The default value is 2.
> >>> +users (without CAP_PERFMON). The default value is 2.
> >>> +
> >>> +For backward compatibility reasons access to system performance
> >>> +monitoring and observability remains open for CAP_SYS_ADMIN
> >>> +privileged processes but CAP_SYS_ADMIN usage for secure system
> >>> +performance monitoring and observability operations is discouraged
> >>> +with respect to CAP_PERFMON use cases.
> >>>  
> >>>  ===  ==================================================================
> >>>   -1  Allow use of (almost) all events by all users
> >>>  
> >>>       Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
> >>>  
> >>> ->=0  Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN
> >>> +>=0  Disallow ftrace function tracepoint by users without CAP_PERFMON
> >>>  
> >>> -     Disallow raw tracepoint access by users without CAP_SYS_ADMIN
> >>> +     Disallow raw tracepoint access by users without CAP_PERFMON
> >>>  
> >>> ->=1  Disallow CPU event access by users without CAP_SYS_ADMIN
> >>> +>=1  Disallow CPU event access by users without CAP_PERFMON
> >>>  
> >>> ->=2  Disallow kernel profiling by users without CAP_SYS_ADMIN
> >>> +>=2  Disallow kernel profiling by users without CAP_PERFMON
> >>>  ===  ==================================================================
> >>>  
> >>>  
> >>> -- 
> >>> 2.24.1
> >>>
> >>

-- 

- Arnaldo
