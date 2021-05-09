Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19841377936
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbhEIXUK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbhEIXUJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:20:09 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 363BAC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:19:06 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id j12so5929717pgh.7
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ven1KHUttyIitgmBkc820wPQxX7RdBffNWTtli8aElc=;
        b=OcYoCuaoOLh79kQGm/zWC2skV3yhX4aUfkjLdIde1X0QENGhxihZef2Tfi0uPPe3R/
         dcsyd09yw6HEV7gH9EXmS29pVXJFLXvyW69+5TvVzkVMD/NcsuIJhZgtb34d7edG5w0J
         3iCzkOqR95Y6lbsdzIe/XzsgAOD1ABfdsFl4O1Lb+UtMtwBQ1nnTt9X9Oe99+Q+u8yLk
         /LrcAexBLIyQj/80xCJ7OyZ2bvdlyqHDqDv98EjtZG3mTVNhx8naM34d8SHu7orHtEEb
         MtXinZ07SxuXSK85zEu/ygorVAa6P6mK/nU0JipnQ34jV7Dwp2V0wvo9Aask7bS2Ve87
         c1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ven1KHUttyIitgmBkc820wPQxX7RdBffNWTtli8aElc=;
        b=ogHW01j7uoBvZr3/aEz8Yc8absPHbx0PQrgFD30gmWYQLuWqEywyQQQfoNIQxnX4uM
         BiQPZEEkk5QY5I7ULweygEUvFk5lzzTroZ/3akJZFgJaa77ZHBsVLK8DjC4r/KNf8b/x
         29Z0m33TF9kVw0eID9CbK6sP9VX9QWKGRpaTwJouMfomDJpZ8Iraq2P7dqNYUJmiVHEQ
         /rax3zHAEw79s4sY+1ZHZOPlfT7aQ2w1GVFmcKIj8oA5VS9lgWWB3+Nj4BGjK2OtRkyB
         Waqgc/fboDYifW0cn2xS8flfTkVoI/uvMQ9+4SFf6eI1PMV4hFms0Id6DpgzUjRbEDl6
         6SOw==
X-Gm-Message-State: AOAM530IvWwpLPDnUglOvuk4Gux0/dedc2TF1nd+53ZZMK7mAIlX7A9q
        R7GSGdsNosyTzvGEU6JU/Xnc7rQXj98=
X-Google-Smtp-Source: ABdhPJwKbI0oPGvZUwewHxF6x+tMno2uNBZ49L1GLUd4iXWCBDFo9k6EmTujpuk4Tugha1FIOXVWlg==
X-Received: by 2002:a65:6849:: with SMTP id q9mr1115783pgt.377.1620602345646;
        Sun, 09 May 2021 16:19:05 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id g15sm9319454pfv.127.2021.05.09.16.19.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:19:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_getattr_default_np.3: SYNOPSIS: Add missing
 'const'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-22-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3a2fbf42-bc5e-a015-d197-c2bbfb26695c@gmail.com>
Date:   Mon, 10 May 2021 11:19:01 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-22-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> glibc uses 'const' in pthread_setattr_default_np().
> Let's use it here too.


Applied.

Thanks,

Michael


> 
> .../glibc$ grep_glibc_prototype pthread_setattr_default_np
> sysdeps/nptl/pthread.h:406:
> extern int pthread_setattr_default_np (const pthread_attr_t *__attr)
>      __THROW __nonnull ((1));
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/pthread_getattr_default_np.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/pthread_getattr_default_np.3 b/man3/pthread_getattr_default_np.3
> index 903d5095a..5973af5ec 100644
> --- a/man3/pthread_getattr_default_np.3
> +++ b/man3/pthread_getattr_default_np.3
> @@ -32,7 +32,7 @@ get or set default thread-creation attributes
>  .B #include <pthread.h>
>  .PP
>  .BI "int pthread_getattr_default_np(pthread_attr_t *" attr );
> -.BI "int pthread_setattr_default_np(pthread_attr_t *" attr );
> +.BI "int pthread_setattr_default_np(const pthread_attr_t *" attr );
>  .PP
>  Compile and link with \fI\-pthread\fP.
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
