Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74CEA37795F
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:53:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbhEIXyU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:54:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhEIXyU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:54:20 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC7A9C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:53:16 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id h127so12363854pfe.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UugFJJz8b/VBmvP0n+e2QOVPK3pgP6aOovJ3R4sAjpA=;
        b=abj7qsPk8wGy6LCp9uuOcpz67jrxVE9uf7vtnPchm5WZTjGRT3BrVg9xN3WJBAycm5
         kyZV6WMOk2Rf2Zgu1FJr9ji7RF2uPFrylyHDGCI/k7hrqxKRcb+uXI8/74gATzIbui9r
         QUQwik5MMO+5ZLfkOr2AJyxPiWQ5dELxizupVbLZVU5RvQ3di9KxloN5d7vAbley28Zy
         u890gyVKbd7i3S9DQzDxZlK1EeoGq1URJ6IpeQB2W8UBkrQYgSqd/tOFWyVkgf3DWgHt
         IQ8aMgDKTWFyMFL5w4suddG3XMYl+ee/igcA578byRhFZcLUVatMjr1aYeHHl56p+tnX
         TPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UugFJJz8b/VBmvP0n+e2QOVPK3pgP6aOovJ3R4sAjpA=;
        b=iZmxjElNBpfUB4ZwSn4y61/jECqTF21NWlFpx10DBO/oc0247u02r9F8g1nuBh3fH7
         auADrWtLRW6Fu+fMmeSxXbcaFSXIQP9H/X0AWwwJLcL5Wtj5M8P2XD4ar2GzzXrmbeJG
         XgNXe0RdKX6Fe+1N0cpDq/TjUotf8TPlHe0dAtrRD0dmZGnm6304IhwuqcHjhZdO0frJ
         5u+e/HcnAQCeABkKTq9uV9Y0B5P/1GATQcNX/qZSvOoepI25aCge3l00idReGZ/D/y+2
         td3WAx3SwAdI7PXYag7HuJh3YVy7cn5fH0YMiYfdlX/4lj28dkM6PC3Mr48bzgGQ0m3y
         0/tA==
X-Gm-Message-State: AOAM533mEHRQ6G2YfvpwQiY0W7tYFxNGNX+pZk4HaBUJbI7eCTCt7KIl
        aiptV7LK+GIP7YqNMpeEq/JVZ5h69pw=
X-Google-Smtp-Source: ABdhPJw7h7WUbA7LlkwtyFo1wjkzAYZaIFsJpJ7RQdIEr9hyrFwLtoJLEK/2zf9DdE3ob1awM9CL7g==
X-Received: by 2002:a63:610b:: with SMTP id v11mr21970211pgb.291.1620604396136;
        Sun, 09 May 2021 16:53:16 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id t19sm9873117pjs.23.2021.05.09.16.53.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:53:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_attr_setinheritsched.3: SYNOPSIS: Use 'restrict'
 in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-17-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cb11bfe9-6056-fbaf-1bcc-fee93773617e@gmail.com>
Date:   Mon, 10 May 2021 11:53:12 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-17-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Both POSIX and glibc use 'restrict' in
> pthread_attr_getinheritsched().
> Let's use it here too.
> 
> .../glibc$ grep_glibc_prototype pthread_attr_getinheritsched
> sysdeps/htl/pthread.h:90:
> extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict __attr,
> 					 int *__restrict __inheritsched)
> 	__THROW __nonnull ((1, 2));
> sysdeps/nptl/pthread.h:313:
> extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
> 					 __attr, int *__restrict __inherit)
>      __THROW __nonnull ((1, 2));
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied. Thanks!

Cheers,

Michael

> ---
>  man3/pthread_attr_setinheritsched.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/pthread_attr_setinheritsched.3 b/man3/pthread_attr_setinheritsched.3
> index 4ac1e3e7f..b834c1fd7 100644
> --- a/man3/pthread_attr_setinheritsched.3
> +++ b/man3/pthread_attr_setinheritsched.3
> @@ -33,8 +33,8 @@ inherit-scheduler attribute in thread attributes object
>  .PP
>  .BI "int pthread_attr_setinheritsched(pthread_attr_t *" attr ,
>  .BI "                                 int " inheritsched );
> -.BI "int pthread_attr_getinheritsched(const pthread_attr_t *" attr ,
> -.BI "                                 int *" inheritsched );
> +.BI "int pthread_attr_getinheritsched(const pthread_attr_t *restrict " attr ,
> +.BI "                                 int *restrict " inheritsched );
>  .PP
>  Compile and link with \fI\-pthread\fP.
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
