Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A11442EAA2E
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 12:50:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729836AbhAELuY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jan 2021 06:50:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729835AbhAELuV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jan 2021 06:50:21 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29C86C061793
        for <linux-man@vger.kernel.org>; Tue,  5 Jan 2021 03:49:41 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id cw27so30756124edb.5
        for <linux-man@vger.kernel.org>; Tue, 05 Jan 2021 03:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UyizsYoCtI+WySt0raaWHB0rc2MthmR2o7AhbYGamkI=;
        b=LTMV+WZxBC4GAZMhuXlfsfYmoOPnjvboQxZiIWw/hBK99ADWDXO80iCxmg/uLlldhf
         g2sIPgXd1PDWEO6sBkATcQacGprbqHKE0es9L+/qjYrXoJ8YWZPeoEE98M96RhDXXtnE
         t2QNZ3jW9U6L8ZdsyDav9dtobuk8np5j2Rm20FEhEEXJnJT2fhoEi/8Az5kcgcshdMPI
         Cz4GeeOu3ejG6M28OSvwuWX+aAmWMWOYjOAF9WSlbgsr6x5zKRMcn1fBDTZKkK4w98fu
         778N+2bVMrrEkZx3sqlzbrW51Gfbk29bH6vBBNJrzQdabJwpnbqwA9xpgqm9K6PjoCcV
         qPeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UyizsYoCtI+WySt0raaWHB0rc2MthmR2o7AhbYGamkI=;
        b=iR0AK6rY3CTCBXiy+RCQ1L4HfyQHfdDkocn95lzBi3P6KX2F/EsKyLBZV6+ScAQmVp
         xXj82b0PMtANoxZ/JUD/i2/zzw9MdNAOzAWyFw4aLPsDsjlR+jcuxlCKC915+socPlo4
         52bqXOpWopaso5JQQ2OX9rVJC9GYIUYz3aPz/fTt4GYaAy8zkjUZJxrSOtlyKNMR2CCI
         NnmIh0G2lOSXYYD20qiK2bhdkrNo1ZsRvs7geGChjn+ygHTNIRI7eA+tGiceiLsNI2wo
         Rg1TpD013qcLUr75kAuD3zqPO5VR3w43K0Or6RycijhyV0FMOJLigAak/3Aqz7XsSOTq
         qjqw==
X-Gm-Message-State: AOAM530z0VeMNeP1XHWKub294RZ5270rOyHJwjd086Ftxzs5rfX0w6Gm
        k0K/dnJ36hHW479y+qRppInaLuV3QZM=
X-Google-Smtp-Source: ABdhPJzdcQGMoIFO+doFX3l/CTZFCbW0gBKR85mGTC+n9vP0SGMxrEwNsdB20Bqv5AuRVk9veSepcw==
X-Received: by 2002:a05:6402:202e:: with SMTP id ay14mr77019635edb.102.1609847379657;
        Tue, 05 Jan 2021 03:49:39 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id n22sm44899266edr.11.2021.01.05.03.49.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 03:49:38 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] futex.2, syscalls.2, vmsplice.2, bpf-helpers.7: Write
 consistently 'user space' instead of 'userspace'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210104185519.78139-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <75c3df01-bd81-6ee5-df03-c18522817a92@gmail.com>
Date:   Tue, 5 Jan 2021 12:49:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210104185519.78139-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/4/21 7:55 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/futex.2       | 4 ++--
>  man2/syscalls.2    | 2 +-
>  man2/vmsplice.2    | 2 +-
>  man7/bpf-helpers.7 | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 49ea6ef3b..04df4896f 100644

Prepended "wfix" to the title, and applied.

Thanks!

Michael

> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1018,7 +1018,7 @@ user space atomically by setting the futex value to 0.
>  .\"     retry:
>  .\"
>  .\"     	/*
> -.\"     	 * Owner might have unlocked in userspace before we
> +.\"     	 * Owner might have unlocked in user space before we
>  .\"     	 * were able to set the waiter bit.
>  .\"              */
>  .\"             if (atomic_acquire(futex) == SUCCESS) {
> @@ -1147,7 +1147,7 @@ but the kernel can fix this up and acquire the futex.
>  .\"	in user space would fail, so kernel has to clean up.)
>  .\" Darren Hart (Oct 2015):
>  .\"     The trylock in the kernel has more state, so it can independently
> -.\"     verify the  flags that userspace must trust implicitly.
> +.\"     verify the flags that user space must trust implicitly.
>  .IP
>  The
>  .IR uaddr2 ,
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index e8cb489b1..99db98fea 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -224,7 +224,7 @@ T}
>  .\" \fBcmpxchg\fP(2)	2.6.12	T{
>  .\" ARM, syscall constant never was
>  .\" .br
> -.\" exposed to userspace, in-kernel
> +.\" exposed to user space, in-kernel
>  .\" .br
>  .\" definition had \fB__ARM_NR\fP prefix,
>  .\" .br
> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
> index 17834607b..649fe0ca7 100644
> --- a/man2/vmsplice.2
> +++ b/man2/vmsplice.2
> @@ -181,7 +181,7 @@ this limit is 1024.
>  .\" commit 6a14b90bb6bc7cd83e2a444bf457a2ea645cbfe7
>  .BR vmsplice ()
>  really supports true splicing only from user memory to a pipe.
> -In the opposite direction, it actually just copies the data to userspace.
> +In the opposite direction, it actually just copies the data to user space.
>  But this makes the interface nice and symmetric and enables people to build on
>  .BR vmsplice ()
>  with room for future improvement in performance.
> diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
> index f3b9bbc72..5ddbe79ba 100644
> --- a/man7/bpf-helpers.7
> +++ b/man7/bpf-helpers.7
> @@ -3020,7 +3020,7 @@ void bpf_sys_open(struct pt_regs *ctx)
>                                            ctx\->di);
>  
>          // Consume buf, for example push it to
> -        // userspace via bpf_perf_event_output(); we
> +        // user space via bpf_perf_event_output(); we
>          // can use res (the string length) as event
>          // size, after checking its boundaries.
>  }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
