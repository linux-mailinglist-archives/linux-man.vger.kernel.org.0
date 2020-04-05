Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 39D6419EBE2
	for <lists+linux-man@lfdr.de>; Sun,  5 Apr 2020 16:10:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726702AbgDEOKf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Apr 2020 10:10:35 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:40512 "EHLO
        mail-qt1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726410AbgDEOKf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Apr 2020 10:10:35 -0400
Received: by mail-qt1-f195.google.com with SMTP id y25so10637537qtv.7;
        Sun, 05 Apr 2020 07:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Fj5IkYeTwvEQJU3mrvn13eBZKNJ+9tUvL96085xGJxE=;
        b=PUXZHGoaZxdIN6d3dLITTVmOMYMyzD1WzUovhblIhnH0+gX1MNWpAzLXCQgk2kjb4r
         MlJo8+N8G03Sa1hMX0SzavAQvly8jLAQ+hbQperFpamXKFXDtOKZO1KBx7z3QF7jU4DN
         v2O2rih9I491tXxgjaiA8y75O5NeuTOBTrBD5lyOIL+4LBqVTqjlPgB8IOP+vdkio7Ne
         OF0/t3wAwc/c/4fhcxK0mgit6koSfOKh3e8xFvAUuaInvIs+DvGpC7Qx4f3FaJ6/exvW
         RQ5WEGhuuoq8VdPrvO9ejeK2M4qtHC7mPdoXm5yO6XzAi2YIMIwcRWsAHg60RLTYDgVS
         MEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Fj5IkYeTwvEQJU3mrvn13eBZKNJ+9tUvL96085xGJxE=;
        b=CUbM8n9R1BIZ509Zn+V4YwkO3TbRgDHl/e8ettddQvDgRBSjvtYKV+0W63VoKCnB/1
         NwS8rpTK2ysXVSFf5ZjxX4EDRvFzxuBm9xtVYgjPo0WxkoQXUKgZN4REB1NZHBIU98of
         bGVLwmeDrVstBWhjYWkyz4OmUZPLCvZx3Kf7sijDMAtaeo/snNdvj/uoca3hVtvzXfPs
         dE9whIHKThHT79pOaKj7ExC19aWNIZX0k8Prev9Q/4e1z5uxlKp/CUwkbPdKFc8+HP8y
         LwoXGcqdVT+nBtz+KCgry7NE7kyiuJI0e/rM1cyjxCPofrIBoz6wLTKMO6PxvYQfEMjt
         fSlQ==
X-Gm-Message-State: AGi0Pua+CmfbzlG7fB/wdGUvXnQkhezH2Fup34fegx1aH8V4y4uM0mNk
        g9Wx9qXKBcLSurIO+F4lHno=
X-Google-Smtp-Source: APiQypJu0uvODNR9YrN0sb4Kh6DQPLH6AalqUaYQK8KEpypo5wVQtssYkV/vcueHnh7R58TbWcdGhg==
X-Received: by 2002:aed:2435:: with SMTP id r50mr16393370qtc.314.1586095833851;
        Sun, 05 Apr 2020 07:10:33 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id 6sm9452806qkr.25.2020.04.05.07.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Apr 2020 07:10:32 -0700 (PDT)
From:   Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
        id AE02E409A3; Sun,  5 Apr 2020 11:10:29 -0300 (-03)
Date:   Sun, 5 Apr 2020 11:10:29 -0300
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
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
Subject: Re: [PATCH v8 12/12] doc/admin-guide: update kernel.rst with
 CAP_PERFMON information
Message-ID: <20200405141029.GA16896@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
X-Url:  http://acmel.wordpress.com
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Em Thu, Apr 02, 2020 at 11:54:39AM +0300, Alexey Budankov escreveu:
> 
> Update kernel.rst documentation file with the information
> related to usage of CAP_PERFMON capability to secure performance
> monitoring and observability operations in system.

This one is failing in my perf/core branch, please take a look. I'm
pushing my perf/core branch with this series applied, please check that
everything is ok, I'll do some testing now, but it all seems ok.

Thanks,

- Arnaldo
 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>  Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
> index def074807cee..b06ae9389809 100644
> --- a/Documentation/admin-guide/sysctl/kernel.rst
> +++ b/Documentation/admin-guide/sysctl/kernel.rst
> @@ -720,20 +720,26 @@ perf_event_paranoid:
>  ====================
>  
>  Controls use of the performance events system by unprivileged
> -users (without CAP_SYS_ADMIN).  The default value is 2.
> +users (without CAP_PERFMON). The default value is 2.
> +
> +For backward compatibility reasons access to system performance
> +monitoring and observability remains open for CAP_SYS_ADMIN
> +privileged processes but CAP_SYS_ADMIN usage for secure system
> +performance monitoring and observability operations is discouraged
> +with respect to CAP_PERFMON use cases.
>  
>  ===  ==================================================================
>   -1  Allow use of (almost) all events by all users
>  
>       Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
>  
> ->=0  Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN
> +>=0  Disallow ftrace function tracepoint by users without CAP_PERFMON
>  
> -     Disallow raw tracepoint access by users without CAP_SYS_ADMIN
> +     Disallow raw tracepoint access by users without CAP_PERFMON
>  
> ->=1  Disallow CPU event access by users without CAP_SYS_ADMIN
> +>=1  Disallow CPU event access by users without CAP_PERFMON
>  
> ->=2  Disallow kernel profiling by users without CAP_SYS_ADMIN
> +>=2  Disallow kernel profiling by users without CAP_PERFMON
>  ===  ==================================================================
>  
>  
> -- 
> 2.24.1
> 

-- 

- Arnaldo
