Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 123DE37792C
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbhEIXRY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:17:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXRX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:17:23 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 717B7C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:16:18 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id u25so1413003pgl.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3hvfKSIKl4HI+bnVBc2wf3zee16SxUN5I7Pgd2Eswx4=;
        b=tydhiUDv8CwCVwWJdfH2uOiTKI1P18cEJjYGR8jZmN+d1Yggey7/gmzoOGiejmjsBH
         VuZPiLebYKKoSPBIE7FcaBswvzQtDSjLLtg+usQk8PJQsKK/qgwmgD9tLH/p/4vveMLs
         BdaKe+wvm2Kv2imBNuFVKpOLd5AjikwmEJIyy/546g3R7PbUKGTjIUy1Hr2onZaJDcbV
         x3BcTtlxqAfvKyqbcL/c3I9npaCU86nb0q5gAcqepHcI+49g1VnhYTWV0NcO83TmEGCn
         547rKUAB6LgL44ioYnoIjX/hv5kGzD7XkkBSKUsD0ZASIQUMxKMumF1us0AfKZFC1wLC
         GFQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3hvfKSIKl4HI+bnVBc2wf3zee16SxUN5I7Pgd2Eswx4=;
        b=lJ8ul/z9SwWJVqcgD8YlAsu118FzDBfZLB4lOeLveQ2LX4lATqbX4fkc9wuEFZOlsj
         yz4le/nm3K2LPS6uyFNG1TtnxYB2ZIN/8JB5zD9JtGRzjvwD4u5Lky9sv9g6zLAac8s8
         XT1XOb9LMGOLqg7I4wF43pLxsyXSdbJ8m9VN1GDWkBUZMSznq/Z7jjb/9vyAx2Uizjp/
         xLLohhSTgtZpy2BPvIOjYw3V/JH6BXn1SnPAd/9ykgEqay2d3yqzJyyZwoU7x4rG/FeM
         6bQxL5vIqFZjKcaz4mpcopZbL/NZA6zCdyM/q0v7u0l3+m2FyFancxxcbsP4Vp9ukiHK
         9KBQ==
X-Gm-Message-State: AOAM533fIfMWwiz2ga/e6TE4AU8ShR1VaapK54VeSf/t5MjoiOS+40k3
        MM/mS31SUDIJTkFKc85/kZPZtzSto/I=
X-Google-Smtp-Source: ABdhPJzdREiLrjrmloVrVXBuum1m35I6lDQbg9k+vY9O1iyUAFlIUKjkzxUxylSK4PXmZH+ep7tGQg==
X-Received: by 2002:a05:6a00:a95:b029:25c:eb77:723a with SMTP id b21-20020a056a000a95b029025ceb77723amr22111007pfl.23.1620602177734;
        Sun, 09 May 2021 16:16:17 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id cm22sm9523914pjb.32.2021.05.09.16.16.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:16:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strsignal.3: SYNOPSIS: Add missing 'const'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-20-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bf86e9dc-e2b1-017b-2ba5-4299d2cf4f6e@gmail.com>
Date:   Mon, 10 May 2021 11:16:14 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-20-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> glibc uses 'const' in sigdescr_np(), sigabbrev_np().
> Let's use it here too.
> 
> .../glibc$ grep_glibc_prototype sigdescr_np
> string/string.h:469:
> extern const char *sigdescr_np (int __sig) __THROW;
> .../glibc$ grep_glibc_prototype sigabbrev_np
> string/string.h:466:
> extern const char *sigabbrev_np (int __sig) __THROW;
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael

> ---
>  man3/strsignal.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/strsignal.3 b/man3/strsignal.3
> index 6a5a1e610..bc4120303 100644
> --- a/man3/strsignal.3
> +++ b/man3/strsignal.3
> @@ -36,8 +36,8 @@ strsignal, sigdescr_np, sigdescr_np, sys_siglist \- return string describing sig
>  .B #include <string.h>
>  .PP
>  .BI "char *strsignal(int " sig );
> -.BI "char *sigdescr_np(int " sig );
> -.BI "char *sigabbrev_np(int " sig );
> +.BI "const char *sigdescr_np(int " sig );
> +.BI "const char *sigabbrev_np(int " sig );
>  .PP
>  .BI "extern const char *const " sys_siglist [];
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
