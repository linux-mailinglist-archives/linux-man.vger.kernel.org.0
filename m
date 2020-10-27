Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B895529BEEC
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 18:01:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1814635AbgJ0Q6A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:58:00 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:38526 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1814629AbgJ0Q57 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:57:59 -0400
Received: by mail-wr1-f68.google.com with SMTP id n18so2734838wrs.5;
        Tue, 27 Oct 2020 09:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5Imk97/w2HvF1xclc9uRO47vQyBg3EVx6Oo1r98lCOo=;
        b=MUzKuzqsiMDRdrwlC7ruPG7+E4xwDG+F4PDlfvhkhLRrkojMapS5iQjucKKxbQ9UXa
         T4WXPvkC4ncTX3ibhp6cP8AZWK164+NeA0KausiUK+xF8pQvZy2e1E7oOe9D2qnPo8Yb
         IhlLMbYwt6NpmSdIJ6r3s55II9xuPDVM/pynKewstLPBR0Bn4kYSCstu2mw4JHSDpEa2
         Ec/6jPNU2GFp9lLWj8pWOF8P2QhEP4TCjHJW6oIyByMifxOuyWUkOMg08EBsx5OhYWAr
         HVbCNRrm/Ks6mN6Jh9PaElpP23pelXoUeFzhVYbLerlxtjBXaxIdID2VylpN/lgEnwWU
         gANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5Imk97/w2HvF1xclc9uRO47vQyBg3EVx6Oo1r98lCOo=;
        b=SuqN9c/O6r3CPNxwv7Fv+SwHHeGldcUEMlw13TyGJdZgfNbBX6yS8UhoKQUqjKBM29
         +CbMJnR1VPF92ZjPv1N9Lomg6vxpVqS9PXh65QJnq4Hh4lUsg5j0s7SkregzwScjxiMe
         DqLY+34hANV4sKIa6oyF6fqK6HDBVZ6Qc0JN/JQlou6+RuSv3PQzaTLZzMjakqhxAv66
         sWO+E3RC/pMPlkLUPcNYV/2ZIOgkt+JtoQ27Ffx0o7fYIPibWX2ie/lFWnhxWhjqAM23
         2pWdoWxxKX9z475H7Wdm3vPWSipsAxwmF1kv9L3zqC5gpQwu/zfAq22CrwWS3ZPnoqkO
         3g/Q==
X-Gm-Message-State: AOAM531O9UxNg61AqcXZuC/SCGukYpe097V9VKY5ctj6MpzMWdGJXbFB
        mzdQbkAxqvIfvwPAMD/NSjR6qAT1ouc=
X-Google-Smtp-Source: ABdhPJzT6ytxvPUdMOxr5n6i4ZkRLq7oKAKeJFGIMpNGZ3zmnQGuUy1QaxY/5NwR2UXGdZdJZy91oQ==
X-Received: by 2002:adf:e744:: with SMTP id c4mr3931268wrn.222.1603817876561;
        Tue, 27 Oct 2020 09:57:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id o4sm2734892wrv.8.2020.10.27.09.57.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 09:57:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@redhat.com>,
        Namhyung Kim <namhyung@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Ingo Molnar <mingo@redhat.com>,
        Andi Kleen <ak@linux.intel.com>,
        linux-man <linux-man@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] perf_event_open.2: update the man page with
 CAP_PERFMON related information
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
References: <33c10554-c0ee-9e46-2946-67a9deac6752@linux.intel.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <190971ba-31f1-ca41-60a9-38989fe82a64@gmail.com>
Date:   Tue, 27 Oct 2020 17:57:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <33c10554-c0ee-9e46-2946-67a9deac6752@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alexey,

On 10/27/20 5:48 PM, Alexey Budankov wrote:
> 
> Extend perf_event_open 2 man page with the information about
> CAP_PERFMON capability designed to secure performance monitoring
> and observability operation in a system according to the principle
> of least privilege [1] (POSIX IEEE 1003.1e, 2.2.2.39).
> 
> [1] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>

Thanks for this. I've applied. I have a few questions/comments below.

> ---
>  man2/perf_event_open.2 | 32 ++++++++++++++++++++++++++++++--
>  1 file changed, 30 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 4827a359d..9810bc554 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -97,6 +97,8 @@ when running on the specified CPU.
>  .BR "pid == \-1" " and " "cpu >= 0"
>  This measures all processes/threads on the specified CPU.
>  This requires
> +.B CAP_PERFMON
> +(since Linux 5.8) or
>  .B CAP_SYS_ADMIN
>  capability or a
>  .I /proc/sys/kernel/perf_event_paranoid
> @@ -108,9 +110,11 @@ This setting is invalid and will return an error.
>  When
>  .I pid
>  is greater than zero, permission to perform this system call
> -is governed by a ptrace access mode
> +is governed by
> +.B CAP_PERFMON
> +(since Linux 5.9) and a ptrace access mode

I want to check: did you really mean 5.9 here? (Everywhere else,
5.8 is mentioned, but perhaps this change came in the next kernel 
version.)

>  .B PTRACE_MODE_READ_REALCREDS
> -check; see
> +check on older Linux versions; see
>  .BR ptrace (2).
>  .PP
>  The
> @@ -2925,6 +2929,8 @@ to hold the result.
>  This allows attaching a Berkeley Packet Filter (BPF)
>  program to an existing kprobe tracepoint event.
>  You need
> +.B CAP_PERFMON
> +(since Linux 5.8) or
>  .B CAP_SYS_ADMIN
>  privileges to use this ioctl.
>  .IP
> @@ -2967,6 +2973,8 @@ have multiple events attached to a tracepoint.
>  Querying this value on one tracepoint event returns the id
>  of all BPF programs in all events attached to the tracepoint.
>  You need
> +.B CAP_PERFMON
> +(since Linux 5.8) or
>  .B CAP_SYS_ADMIN
>  privileges to use this ioctl.
>  .IP
> @@ -3175,6 +3183,8 @@ it was expecting.
>  .TP
>  .B EACCES
>  Returned when the requested event requires
> +.B CAP_PERFMON
> +(since Linux 5.8) or
>  .B CAP_SYS_ADMIN
>  permissions (or a more permissive perf_event paranoid setting).
>  Some common cases where an unprivileged process
> @@ -3296,6 +3306,8 @@ setting is specified.
>  It can also happen, as with
>  .BR EACCES ,
>  when the requested event requires
> +.B CAP_PERFMON
> +(since Linux 5.8) or
>  .B CAP_SYS_ADMIN
>  permissions (or a more permissive perf_event paranoid setting).
>  This includes setting a breakpoint on a kernel address,
> @@ -3326,6 +3338,22 @@ The official way of knowing if
>  support is enabled is checking
>  for the existence of the file
>  .IR /proc/sys/kernel/perf_event_paranoid .
> +.PP
> +.B CAP_PERFMON
> +capability (since Linux 5.8) provides secure approach to
> +performance monitoring and observability operations in a system
> +according to the principal of least privilege (POSIX IEEE 1003.1e).
> +Accessing system performance monitoring and observability operations
> +using
> +.B CAP_PERFMON
> +rather than the much more powerful
> +.B CAP_SYS_ADMIN
> +excludes chances to misuse credentials and makes operations more secure.
> +.B CAP_SYS_ADMIN
> +usage for secure system performance monitoring and observability
> +is discouraged with respect to
> +.B CAP_PERFMON
> +capability.

Thank you for adding the above piece. That point of course
really needs to be emphasized!

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
