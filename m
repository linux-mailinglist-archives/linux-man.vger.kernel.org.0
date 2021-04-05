Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FD8C354180
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:26:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234625AbhDEL0k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:26:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbhDEL0k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:26:40 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F67DC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:26:34 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id f8so8167018edd.11
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aFf35beqxWd8mmJZe2yeHUv9nQfPl5d5rqMQwgivKes=;
        b=YfElKA0anr0Y7H0NcLBgEcdoLPCdN1ZJi2iUNxKUw/fBw0kY0uTSmxraA6dh6eigvo
         d7vZOVVt9oaNKLsDjAjpJJoBRpUaf2e4/ZgRH1L1jtxet4HLyMM0PATrRVv7bDmx6yb3
         9uu3h7/utpmgadQ6l1xV+LPvkGXjc2tM+cE6f1WQ9UWu0LZ3eqzbkUhFrH9i4Ozlun/x
         +AMepghH2DcJ+7T5ovmR+UyhJLmx+c9Y37a/ak5Qq/m9jmCxImvTqVwfmq9LLdx6Q6PX
         V42/ZOoWOXZWYM/qWup3juXmkhC3t17iLOCYlxwnM3i50AZIyuBl8qocTr98mli2jz0w
         p5gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aFf35beqxWd8mmJZe2yeHUv9nQfPl5d5rqMQwgivKes=;
        b=tohTy/qNBLT5A0iTUPU4FySt6BM6/2HMqZQaBEjUHFrBoF1oRDKkqPWdInVBI5IYX+
         4yNyumCxhwbWdoxYX6ewTsBzkEmQW4J6AzVkwljj7SNHS2rLwXldkmAChel2y2KKpZSa
         5Dp9+fIXKl+c+C5UzIetqD+SaqQAGDp73LFpBBCmkgpH184NFjn95HAt29T8YX9lGhN5
         0cqGzBnZkiIaAeNi+8Ol6CLJmeV+mvaeEin9+weNpAaqsBmrCRGMRMHFVrXw+wH5MXcc
         AzQKdbYGYT7hAvQHj/NgIfqsrrVx0wXD2XTX592Np8/cErDaV0nOyRPtxEB+qRmduJbu
         elvQ==
X-Gm-Message-State: AOAM533+GzxP4boPbijRBXQOH4sLsgr3lWLce2Sw+24VUHvex4Io3Ifn
        eINmAsZ5D7Zvt5WKVyb8oEE=
X-Google-Smtp-Source: ABdhPJx4wZHCarR3SCiPjwtC6xJW3I/O1bXtksVvUmPmyQMBd/LBnq1jDyIa3q9j5417LxB/pVaN+g==
X-Received: by 2002:a05:6402:393:: with SMTP id o19mr11011108edv.274.1617621993330;
        Mon, 05 Apr 2021 04:26:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id k26sm8630356ejk.29.2021.04.05.04.26.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:26:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 09/35] arch_prctl.2: SYNOPSIS: Remove unused includes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-10-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c492a81f-5fd6-f74d-7b50-532acad766ef@gmail.com>
Date:   Mon, 5 Apr 2021 13:26:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-10-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> AFAICS, there's no reason to include that.
> All of the macros that this function uses
> are already defined in the other headers.

I suspect it was a case of cut-and-paste (from prctl.2) long ago 
when the page was written. Patch applied.

Thanks,

Michael


> Cc: glibc <libc-alpha@sourceware.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/arch_prctl.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
> index f8073d625..7ae5b350c 100644
> --- a/man2/arch_prctl.2
> +++ b/man2/arch_prctl.2
> @@ -28,7 +28,6 @@ arch_prctl \- set architecture-specific thread state
>  .SH SYNOPSIS
>  .nf
>  .BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constants */"
> -.B #include <sys/prctl.h>
>  .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
>  .B #include <unistd.h>
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
