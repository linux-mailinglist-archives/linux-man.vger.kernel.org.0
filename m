Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC82424EF09
	for <lists+linux-man@lfdr.de>; Sun, 23 Aug 2020 19:28:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726664AbgHWR2i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Aug 2020 13:28:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726792AbgHWR2g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Aug 2020 13:28:36 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F15FC061573;
        Sun, 23 Aug 2020 10:28:36 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id s20so1208010wmj.1;
        Sun, 23 Aug 2020 10:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HoFO/AgR8AufdMjyxtS63xYROlqubr/t8wlPbNK2VDI=;
        b=LNL/hXG9CVk7XyZ7Pxt6xTDwW6kDXS39iwSjQjJZgBz38IbxBgygCt4bE4JNxAi2Ce
         agbjzGqAkVwmJdUT+lvpZ8vkmYFCjNZZiWUkqmQ6itPWVvBiB8WiZrsbfdEmfCawwxEK
         kC+Bt7Vi17W5jx0v6r8pA6kf/argMOp5AlPT2EgDw20bmAjMastqiJiCa9nTynbJaE5J
         3aCQzG0lE/lmUrd0WxedItxJnIWWHuReXbTFHv1/F/MC74DAcLdbfSbCgQLjN4yv87Ej
         CB7OTyzpfuaB3Sx1E2a0syXnZcPBZ6ofYiG/0iLn8Hq+x1OJ0yY7qzrKJ0od42cRMCm6
         m0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HoFO/AgR8AufdMjyxtS63xYROlqubr/t8wlPbNK2VDI=;
        b=dxDTiBkLhSebg9KLAlY+HdBeR8BdXUc+kh0m0KL5sb/xHBrXMqUavNWgnjkb4k/cMM
         wNtLBYSID420agIGKcF05Ssmij+Aa1pfeRRGLBw8lKdMVPA91eAiziwTb6hppQlTVHeD
         rp1nzhoEzvp7GJ1XhNIzVhQ36l3mEDzlZS/xkKd9huqbtEeM6nYlTNDijJenubLAdHGp
         HHHEtOXxKW7Wa3ArMGxS3oSBOP7gfzb6cM/0+7m51OitTTI9/IFOO48dJphROUic6CCr
         x8sQVyojWdTVt6xp4rX+0oAxc0kT3t/gKFJCzbxCBtnWNbluLa9X19y2MYOl7PxMkGF2
         BoqQ==
X-Gm-Message-State: AOAM531/Q4e/ZaiCqyeQnpF49FoxGd6rRY0K46O56hTOd99vhlIRfUXR
        ZyUtQews01Vh1zLg6PKBS8PvvSvnZ6OrgQ==
X-Google-Smtp-Source: ABdhPJxWNmuIlQQFsKivnSNHJ4iwdG6k0g1uyr5YArFNHVjz+qsWhiE+yaPISSWYORbkao4s9b7lJg==
X-Received: by 2002:a1c:dd07:: with SMTP id u7mr2149064wmg.172.1598203714469;
        Sun, 23 Aug 2020 10:28:34 -0700 (PDT)
Received: from localhost.localdomain ([194.230.147.231])
        by smtp.gmail.com with ESMTPSA id j5sm23025209wma.45.2020.08.23.10.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2020 10:28:33 -0700 (PDT)
Subject: Re: [PATCH v1] perf_event_open.2: update the man page with
 CAP_PERFMON related information
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
Cc:     linux-man@vger.kernel.org, James Morris <jmorris@namei.org>,
        Serge Hallyn <serge@hallyn.com>,
        Stephen Smalley <sds@tycho.nsa.gov>,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andi Kleen <ak@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <18d1083d-efe5-f5f8-c531-d142c0e5c1a8@linux.intel.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ed6f63bd-5dcb-425d-60ee-311a68756bfe@gmail.com>
Date:   Sun, 23 Aug 2020 19:28:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <18d1083d-efe5-f5f8-c531-d142c0e5c1a8@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alexey,

Could you look at the question below and update the patch.

On 2/17/20 9:18 AM, Alexey Budankov wrote:
> 
> Extend perf_event_open 2 man page with the information about
> CAP_PERFMON capability designed to secure performance monitoring
> and observability operation in a system according to the principle
> of least privilege [1] (POSIX IEEE 1003.1e, 2.2.2.39).
> 
> [1] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>   man2/perf_event_open.2 | 27 +++++++++++++++++++++++++++
>   1 file changed, 27 insertions(+)
> 
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 89d267c02..e9aab2ca1 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -98,6 +98,8 @@ when running on the specified CPU.
>   .BR "pid == \-1" " and " "cpu >= 0"
>   This measures all processes/threads on the specified CPU.
>   This requires
> +.B CAP_PERFMON
> +or
>   .B CAP_SYS_ADMIN
>   capability or a
>   .I /proc/sys/kernel/perf_event_paranoid
> @@ -2920,6 +2922,8 @@ to hold the result.
>   This allows attaching a Berkeley Packet Filter (BPF)
>   program to an existing kprobe tracepoint event.
>   You need
> +.B CAP_PERFMON
> +or
>   .B CAP_SYS_ADMIN
>   privileges to use this ioctl.
>   .IP
> @@ -2962,6 +2966,8 @@ have multiple events attached to a tracepoint.
>   Querying this value on one tracepoint event returns the id
>   of all BPF programs in all events attached to the tracepoint.
>   You need
> +.B CAP_PERFMON
> +or
>   .B CAP_SYS_ADMIN
>   privileges to use this ioctl.
>   .IP
> @@ -3170,6 +3176,8 @@ it was expecting.
>   .TP
>   .B EACCES
>   Returned when the requested event requires
> +.B CAP_PERFMON
> +or
>   .B CAP_SYS_ADMIN
>   permissions (or a more permissive perf_event paranoid setting).
>   Some common cases where an unprivileged process
> @@ -3291,6 +3299,8 @@ setting is specified.
>   It can also happen, as with
>   .BR EACCES ,
>   when the requested event requires
> +.B CAP_PERFMON
> +or
>   .B CAP_SYS_ADMIN
>   permissions (or a more permissive perf_event paranoid setting).
>   This includes setting a breakpoint on a kernel address,
> @@ -3321,6 +3331,23 @@ The official way of knowing if
>   support is enabled is checking
>   for the existence of the file
>   .IR /proc/sys/kernel/perf_event_paranoid .
> +.PP
> +.B CAP_PERFMON
> +capability (since Linux X.Y) provides secure approach to

What's the version?

> +performance monitoring and observability operations in a system
> +according to the principal of least privilege (POSIX IEEE 1003.1e).
> +Accessing system performance monitoring and observability operations
> +using
> +.B CAP_PERFMON
> +capability singly, without the rest of
> +.B CAP_SYS_ADMIN
> +credentials, excludes chances to misuse the credentials and makes

I think that wording like "using CAP_PERFMON rather than the much
more powerful CAP_SYS_ADMIN..."

> +the operations more secure.
> +.B CAP_SYS_ADMIN
> +usage for secure system performance monitoring and observability
> +is discouraged with respect to
> +.B CAP_PERFMON
> +capability.
>   .SH BUGS
>   The
>   .B F_SETOWN_EX

Thanks,

Michael

