Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D518E20083A
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2020 13:56:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732225AbgFSL4y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Jun 2020 07:56:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732823AbgFSL4q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Jun 2020 07:56:46 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75833C06174E
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 04:56:46 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id j198so8680623wmj.0
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 04:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VobvufT27JhXUNne6i+RStTUA7sp/m+0jdbeqhO1qF4=;
        b=mFZIcoRcHGy6SMljk+IXdThmXdRxa7XBBVpDBD2qll+rzJyzF5D+i84eMqc1T4WVgK
         Qi3RStC4iRyLe+i8cptqfd8l4Pd/l6yLjik8dVjEtcMeuVwqAaHzuOs4qkPokoyk8fZc
         ZyJ1jaLstYWvrGQhdM5A/gkwMeiCygNZq5tEyilVSqnp8+kYXkpWnpiilLSv8pQnnJ5x
         Id2FyN2e3HvcxnpG2p2kSoYf7cMvfqGJYTS7Hp7ZApepZm1PXZaa0o8cATBofSWMZ1ba
         l3ZS9wTkPeIjwh+3K/xGWNx/hC8kgBt93Y4MFBaVcQ1BeGr+MciLxFxyKo9kL9mHjWs/
         7buA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VobvufT27JhXUNne6i+RStTUA7sp/m+0jdbeqhO1qF4=;
        b=uV23kCmg+8z2WSL0l8OswmDvFw98CFTE1Ei7N5U0kE+E/2o07DYWPMDygrO8H8a+hi
         w7zH744VWbA73ChDAwpGHjgXV9bxrIZaaDm9jf+Fdxz20GYOqPypY44/Pp+6JZKoMhAL
         fnB8aIkcUVnWJ/o6S9CQJo1iZ2EgKMhfys6rG6NlxuK1I0/7t1+h00hYviDOpIPPLgJl
         pr4QYYX5+LVJLVEE9W0FI/wXFgGfscdQm2cT9NzbmQfR5JSvsfBWd0z/bJQlAq/XR0f/
         dyPEqbREdmyEJUgPqMxdX+y4xGxKzdLm0mytvDvpAiMXipi+K9p961jfnMT3CtqgdN1U
         8W6g==
X-Gm-Message-State: AOAM531uw5hPUUxgyakrcQHD5G9xMv7q+pB7dKuJN8XhAVM04w+s7xeo
        G4aEe3OIg16UOV+o9DDDXkxsH2zhrWk=
X-Google-Smtp-Source: ABdhPJz82BO+KdUVaQOzLIVtWYYrVOtfYqaa5FmudlESvsLJNe2nUDSUp4KArfzga1V8UFbpj6XbfQ==
X-Received: by 2002:a05:600c:210:: with SMTP id 16mr3590200wmi.185.1592567805032;
        Fri, 19 Jun 2020 04:56:45 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id u13sm6843083wrp.53.2020.06.19.04.56.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 04:56:44 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: Inform that comm in /proc/pid/{stat,status} might
 also be truncated
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
References: <20200617205125.28163-1-arkadiusz@drabczyk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a03ce3d1-9608-84f9-a074-ac3ca1781444@gmail.com>
Date:   Fri, 19 Jun 2020 13:56:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200617205125.28163-1-arkadiusz@drabczyk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Arkadiusz,

On 6/17/20 10:51 PM, Arkadiusz Drabczyk wrote:
> pgrep for example searches for a process name in /proc/pid/status and
> therefore cannot find processes whose names are longer than 15
> characters unless -f is specified.
> 
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man5/proc.5 | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 538c6c6..edaf281 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -2089,6 +2089,9 @@ The process ID.
>  .TP
>  (2) \fIcomm\fP \ %s
>  The filename of the executable, in parentheses.
> +Strings longer than
> +.B TASK_COMM_LEN
> +(16) characters (including the terminating null byte) are silently truncated.
>  This is visible whether or not the executable is swapped out.
>  .TP
>  (3) \fIstate\fP \ %c
> @@ -2504,6 +2507,9 @@ The fields are as follows:
>  .IP * 2
>  .IR Name :
>  Command run by this process.
> +Strings longer than
> +.B TASK_COMM_LEN
> +(16) characters (including the terminating null byte) are silently truncated.
>  .IP *
>  .IR Umask :
>  Process umask, expressed in octal with a leading zero; see
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
