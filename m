Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B66AE4880E6
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 03:25:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233328AbiAHCZX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 21:25:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230392AbiAHCZX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 21:25:23 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CFBEC061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 18:25:23 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id c126-20020a1c9a84000000b00346f9ebee43so3814792wme.4
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 18:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MTKn4/3UQx01HT66b9UTrBp1h2t75TD+TVQZ5COosX8=;
        b=jVEfS/grQkAFrQDYIbIwnaBf/7PJ1OAdibqmV45fwuzXmpZnJ50W/dj2yTywlKn+ON
         2yhfi9VwILe3mKX+fqtlIsaEPFnaTyM85B9FkxTnVBKuyz1ec7s4NsbApcpVbdwjoAfA
         r3XDaYwwCBg/wr+UEhOg2HfWL/3xkA0PJa8ysEljqFSM5k0VS4OJ5k2oDBbcsL5ZyN4s
         rllY3TkR5pElZUqnIwd6t55to3iR9UvaO3JqO64Sg/hbIgYw7D2B4eC+qNiHqj8m3RLM
         frJIEiyxgGDpQ7UCuGV4WhkQQPkaqL0OsIosKPg0SwzkMJDA5oXuxcIWldhiDDOh5etS
         6i5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MTKn4/3UQx01HT66b9UTrBp1h2t75TD+TVQZ5COosX8=;
        b=58xwrJRamGUkrcrvAm7+TaQAuwA3Qp7a7fVxUoj+46rrZJBmKZWWlIN3iY5o8IKdHI
         lb+yisppSGLBvU1CHXlaoCuGLW94W9jNg7/Dykn+VYItvmHejfaVDScroZNBmcB0sjoR
         cmGpievQ1ExlmFRqXnhIqn9R3WTeSjFxOVWR2qTVsh4S8TqtA8yMVxpO0MUDEjiFEsXd
         wwKwBh6gkN+pIEmzRNC6koETKg4UkvO6nakhgctS/QhZo9XhFxDSyreGISEc6V1V4IK+
         oHvrxGfsI5xtkSJOv9poSAOhQOTrYu3TNb7xHzy8h8vkdouWorpIo4oBPdbA82DBUvdA
         VQ5g==
X-Gm-Message-State: AOAM530UjfxqnFKzNPZdYaiiUNUlSGMSnXIUjZBOhW4ZfQxU9O6xYswh
        gOjLQqLOxVzzVRs1BvxJLqM=
X-Google-Smtp-Source: ABdhPJwy3p4RnUO3d4sKCBcjQbYS7lABKaqs1zAt/UKwVO0nf0oQjdKiFD6XAFS9ljH55I+ow9qxdA==
X-Received: by 2002:a7b:c190:: with SMTP id y16mr12464554wmi.35.1641608721655;
        Fri, 07 Jan 2022 18:25:21 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z6sm200596wmp.9.2022.01.07.18.25.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 18:25:21 -0800 (PST)
Message-ID: <b4622fe8-ec81-654f-fa32-bf2efa0459ea@gmail.com>
Date:   Sat, 8 Jan 2022 03:25:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 9/9] malloc_info.3: Use intptr_t to store pointers
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-9-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-9-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
> int isn't large enough to store pointers on all platforms, use
> intptr_t instead.

Well, since the pointer came from a previous 'int', there should be no 
problem.  But since the C language (or even POSIX) is very permissive 
about what a conforming implementation can do with pointers, and it only 
guarantees conversions to/from [u]intptr_t, I'd take this patch for 
correctness.  However...

I still don't like at all the fact that compilers require an explicit 
cast.  Casts are dangerous.  Period.  I haven't seen a place where casts 
are good, except when you explicitly want to rely on undefined behavior 
(which I've found very useful in a few cases).  It should be clear to 
the compiler that we're doing the right thing, since we declared the 
variable to be 'intptr_t', which is by itself very rare.  Requiring a 
cast adds no clarity, while it does increase the chances of a bug.

I'd like to know your opinion.  I think I'll remove the cast, even if 
compilers are going to give a warning for implicitly converting from 
pointer to integer (intptr_t).  I'd say patch the compiler, not the code.

Thanks,

Alex

> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>
> ---
>   man3/malloc_info.3 | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/malloc_info.3 b/man3/malloc_info.3
> index a5b8d34f9..3baa891fd 100644
> --- a/man3/malloc_info.3
> +++ b/man3/malloc_info.3
> @@ -198,7 +198,7 @@ static int numThreads, numBlocks;
>   static void *
>   thread_func(void *arg)
>   {
> -    int tn = (int) arg;
> +    intptr_t tn = (intptr_t) arg;
>   
>       /* The multiplier \(aq(2 + tn)\(aq ensures that each thread (including
>          the main thread) allocates a different amount of memory. */
> @@ -237,7 +237,7 @@ main(int argc, char *argv[])
>   
>       /* Create threads that allocate different amounts of memory. */
>   
> -    for (int tn = 0; tn < numThreads; tn++) {
> +    for (intptr_t tn = 0; tn < numThreads; tn++) {
>           errno = pthread_create(&thr[tn], NULL, thread_func,
>                                  (void *) tn);
>           if (errno != 0)

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
