Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68ADC267E0A
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 07:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725909AbgIMFrJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 01:47:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725918AbgIMFqz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 01:46:55 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F17D7C061757
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:46:53 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o5so15163543wrn.13
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XbLT3ml6vbwd8TEjFaGZFkT3J3K9ouyZCh5XdCqFNyc=;
        b=aSbPdCyn56Y0F106hxDdFyp2a+JktmQwTmNnu3gqhWnbdnSe9W7T8Ak8sABL0oeoyW
         mSfBg6Re+l0EoRMTzybzHY7UpHh6tfOQaeeQbgygNa2N7XShpromuU66qEBa1rudcyid
         mzUEgIVtzJfANvcE0LSYJZRin11zpftzZXb75ycexHCxFjjRxF11OHp1AZVPZlcSxWRX
         QNlraPHnb0WbFBPUlLlm2XsEpP2JOvF998CfTinIeQCIIcoSqt6UI4NP0s6CypstG5NO
         lSG0+sa2nkPw0FvTUtZLX2IGzQig8ame7xGbBFqhPDh6svyoetCPRRhGmFo7Pa5yU6xD
         0XHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XbLT3ml6vbwd8TEjFaGZFkT3J3K9ouyZCh5XdCqFNyc=;
        b=Z3BzAHi6ZTtOvjR53cmsujdVIGfXp8X+bao3+IUnX1db/G2G9FLR8xGPnYE5H2izON
         LXOJiXwlAIjcEydezVuMz8FvIS7L8Sdwof0K2rUkNGVlQe0e+LM1kELcwixqbMY1pCOK
         QSnsfqIUicSoS2i7HCX+Q3PiN/gshFnUOHoQVJTh6sUC1k8y3wSt2wEGottEQZQymXMe
         7Rvtn6uXsd0MygUIk4FEdhDSJp4AKOVrWaN7FT+K1yRZbzpG4xSgThOHWXhZhksxjM1+
         k9wDtcPKcYr5IQ6GBYw8o5ss/8BzCIqbRmZPgLNuvmwlj3DUxHtD/TEGnrACNNRwEXqO
         kdRA==
X-Gm-Message-State: AOAM530NIuY9rL7X6/SLzX6hNoPf+MsISfZTiF3P9nB5xXc8PB+BCbMZ
        HL5yb6u9ZNzMFfuiG+NSeDPVQWO/VNw=
X-Google-Smtp-Source: ABdhPJwJvAGnoYtf1G8fu+g/BVML/BwzI57XaDusqUcmySDoO4x1Bi+kyu9N5JFzGEev3/O4uX/7JA==
X-Received: by 2002:a5d:67cd:: with SMTP id n13mr9418848wrw.51.1599976010946;
        Sat, 12 Sep 2020 22:46:50 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id o6sm14277990wrm.76.2020.09.12.22.46.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 22:46:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 02/12] malloc_hook.3: Remove unneeded cast, and print
 'size_t' with "%zu"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dde9c18a-a0ab-feaa-6932-0d5b6b8bf856@gmail.com>
Date:   Sun, 13 Sep 2020 07:46:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/malloc_hook.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/malloc_hook.3 b/man3/malloc_hook.3
> index a509dc72f..fb45e30f2 100644
> --- a/man3/malloc_hook.3
> +++ b/man3/malloc_hook.3
> @@ -130,8 +130,8 @@ my_malloc_hook(size_t size, const void *caller)
>      old_malloc_hook = __malloc_hook;
>  
>      /* printf() might call malloc(), so protect it too. */
> -    printf("malloc(%u) called from %p returns %p\en",
> -            (unsigned int) size, caller, result);
> +    printf("malloc(%zu) called from %p returns %p\en",
> +            size, caller, result);
>  
>      /* Restore our own hooks */
>      __malloc_hook = my_malloc_hook;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
