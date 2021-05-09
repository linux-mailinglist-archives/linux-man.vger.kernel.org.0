Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED27377960
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbhEIXyl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:54:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhEIXyk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:54:40 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F7F7C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:53:37 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id p4so12426607pfo.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6PI8MxULudM/wv/YBgPF/ib/R60ZgWXxaNWc9pug9JM=;
        b=lL0c6/Cw4GT05IGKQ5jGVDo575VyGlimjQPnEhgZgr9ipwfKVKAxXdK2tyeaXj+WcJ
         ZNeHdVAUwTAXR6i5SZ6mCAZ238VFs70tanAiKbS78KEm7KOIp5tE5BlRBHURW6FhgyPX
         NkERlHmippcuYdRUFAdvFW0lXy2sBTdXaMFJ8BiYc5DZQGbFfPymegyNEAkdWJYWiKeV
         G87govALlnu8CcuYn+FSuxEVdLzrsUKmvc4vL3I2EKFX/H3v3WHWWlvzvN463haJSkOu
         ZIYbEC3EzyB2P/XIbbh9Se9G9STmcaFNF0dgH++sU/ye+zcVNA9vgOKA5twM4d/zm+Od
         LYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6PI8MxULudM/wv/YBgPF/ib/R60ZgWXxaNWc9pug9JM=;
        b=rslbqTrvjqPbSZjZSK1Z038eIN3/rYkc/Ls26xiTuu1FJihObNHPxSmjLiBnJinETt
         x3bsV/AhWp4ei8A89ocdWyJC1PAt47gA4uDgq/G1hNoCrWnD7k2e7luy+YQdJ+gDaCq+
         /STCJaTYsAKbAaaTCvb1pm2SVSS3+zSSFjX8U7VvSQ+XBerC99fPPva0VL7AfxWlCyfN
         yE8aNeeXDfCMHnvMG5AyaoekoaHzzEqk4hZGQR4HMwGW/hEcaOsPuQPQZRgm6X3zv1qb
         iRDMp4AMxnTLX30wPWFbqxu9FFPJWxXiDqWXEzRK04Lf7BvRxEnPUw21kFKhDn79sxWa
         s/pA==
X-Gm-Message-State: AOAM532Pg70A5SjXpiAIvv3r9ldCm0qet8GMR7EIdn9oUvgniv5AhCaj
        twzCtlTazCuhsBg68yLt9VriNosEVv8=
X-Google-Smtp-Source: ABdhPJyryEgM4GxD963KJlw4X9cW/Aaj8OsGvtZTm44s/KgLmeOK9jxir4P+lD3yTdzfkTtld2BG6w==
X-Received: by 2002:a63:da0a:: with SMTP id c10mr22455636pgh.255.1620604416661;
        Sun, 09 May 2021 16:53:36 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id j7sm17820970pjw.4.2021.05.09.16.53.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:53:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_attr_setschedparam.3: SYNOPSIS: Use 'restrict' in
 prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-18-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <74f2addf-c553-31b5-30a1-7012eab4e32e@gmail.com>
Date:   Mon, 10 May 2021 11:53:33 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-18-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Both POSIX and glibc use 'restrict' in
> pthread_attr_getschedparam(), pthread_attr_setschedparam().
> Let's use it here too.
> 
> .../glibc$ grep_glibc_prototype pthread_attr_getschedparam
> sysdeps/htl/pthread.h:102:
> extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
> 				       struct sched_param *__restrict __param)
> 	__THROW __nonnull ((1, 2));
> sysdeps/nptl/pthread.h:294:
> extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
> 				       struct sched_param *__restrict __param)
>      __THROW __nonnull ((1, 2));
> .../glibc$ grep_glibc_prototype pthread_attr_setschedparam
> sysdeps/htl/pthread.h:107:
> extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
> 				       const struct sched_param *__restrict
> 				       __param) __THROW __nonnull ((1, 2));
> sysdeps/nptl/pthread.h:299:
> extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
> 				       const struct sched_param *__restrict
> 				       __param) __THROW __nonnull ((1, 2));
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied. Thanks!

Cheers,

Michael

> ---
>  man3/pthread_attr_setschedparam.3 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man3/pthread_attr_setschedparam.3 b/man3/pthread_attr_setschedparam.3
> index adc3fbcb2..72ee0143a 100644
> --- a/man3/pthread_attr_setschedparam.3
> +++ b/man3/pthread_attr_setschedparam.3
> @@ -31,10 +31,10 @@ scheduling parameter attributes in thread attributes object
>  .nf
>  .B #include <pthread.h>
>  .PP
> -.BI "int pthread_attr_setschedparam(pthread_attr_t *" attr ,
> -.BI "                               const struct sched_param *" param );
> -.BI "int pthread_attr_getschedparam(const pthread_attr_t *" attr ,
> -.BI "                               struct sched_param *" param );
> +.BI "int pthread_attr_setschedparam(pthread_attr_t *restrict " attr ,
> +.BI "                              const struct sched_param *restrict " param );
> +.BI "int pthread_attr_getschedparam(const pthread_attr_t *restrict " attr ,
> +.BI "                              struct sched_param *restrict " param );
>  .PP
>  Compile and link with \fI\-pthread\fP.
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
