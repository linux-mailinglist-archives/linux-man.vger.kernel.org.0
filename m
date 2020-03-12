Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91D5E182AFA
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2020 09:16:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726254AbgCLIQN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Mar 2020 04:16:13 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:45708 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726044AbgCLIQN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Mar 2020 04:16:13 -0400
Received: by mail-wr1-f67.google.com with SMTP id m9so6151694wro.12
        for <linux-man@vger.kernel.org>; Thu, 12 Mar 2020 01:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C55FhpbOEK4fC95mXpEglN8FX5M85YfvcWbyhgPlsXE=;
        b=Zi+IKrafB+6mn++b+6J2CfHQm+1j5mVGnciBs1ZuITiyNq0koV762+1+7PAjXTfNqA
         Pc+VeoRg20qhftUBHYBp8aRnXHGDquYcVK8gFhkSxvOEHr3dJ2128k506uET16OwXe7u
         glqAwd6nZ7L1Pv3hlAdupOAup5PAUKHXm/5sK40gjE+T4ayF4oN/uXyw5RS9RmAa5lHI
         V6Zyu3nKw0O6CWDTKvXpTeVkZmLQWqjAf3UWDdYs1vKVeb0S8JEVkr/VXvGGO9bV2Vo9
         j7KSOMbWZMVOgRvnOzo58jL+OO6Qq3Q68QhX7mMSqiKKMtzD6sdsxtUxMhu9zwHgm1mH
         0RTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C55FhpbOEK4fC95mXpEglN8FX5M85YfvcWbyhgPlsXE=;
        b=MgFUCw36JUf5VpLVEKyfgIIuPLnCuhfKmMFx7keW5wNLD9Fq9NXob6CZOFpQIluJ/H
         ELY1MP8NFNzvkdK3DFvioNugT9uXAjGlX5TptS1fmD27dqMgAL829UKACy8E9H9u6ull
         dt+zz5ccrObMC2mqQqaq+kh4+B2RriSYkrX9TG9sflo5ZymI7RytjUEHrXtzxOmYrJ2x
         xouFdQrJNjdtbIvqhUnLL/BW2M/qYPuCh/gvS1kaZE7ClAqjkbZFLd/J5a/DaRm0n4BD
         aaBVsS2nl5Iky9XIB/rlkQK4zxv0i5S3lRBKhmp/quErxBmUwQJmpfF7EYLphE14tMIj
         01Rw==
X-Gm-Message-State: ANhLgQ3VTc6cLBefO3SrluXEwRIFbWMgJdY4kvRkwYScSUQ3Ko4lwjY7
        VjkHrMTpJ3GS2Y9kTQAeUGAYQRch1ew=
X-Google-Smtp-Source: ADFU+vs5uYRaAOJTP7wsXiVaPq3MWtXUhY1VEXHJIcD0bBM/oQWXED0gYeF3wX2v04Fc0FwtlWpIHA==
X-Received: by 2002:adf:a510:: with SMTP id i16mr10190730wrb.292.1584000969593;
        Thu, 12 Mar 2020 01:16:09 -0700 (PDT)
Received: from [10.5.49.236] ([195.171.175.163])
        by smtp.gmail.com with ESMTPSA id s15sm54634485wrr.45.2020.03.12.01.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:16:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] Changes.old: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200306114104.1179-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c9fe26c0-6950-affb-16b1-8ad5b0a9196e@gmail.com>
Date:   Thu, 12 Mar 2020 09:16:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306114104.1179-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/6/20 12:41 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael

> ---
>  Changes.old | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Changes.old b/Changes.old
> index c870270ee..8c9d78f85 100644
> --- a/Changes.old
> +++ b/Changes.old
> @@ -15250,7 +15250,7 @@ sigwaitinfo.2
>  
>      Michael Kerrisk
>          These interfaces have per-thread semantics
> -            The page was previously fuzzy about whether the these interfaces
> +            The page was previously fuzzy about whether these interfaces
>              have process-wide or per-thread semantics.  (E.g., now the
>              page states that the calling *thread* (not process) is suspended
>              until the signal is delivered.)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
