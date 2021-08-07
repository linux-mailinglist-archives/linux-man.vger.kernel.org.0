Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 506793E3786
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 01:05:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbhHGXGE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 19:06:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGXGE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 19:06:04 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AFE6C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 16:05:44 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id u16so12232389ple.2
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 16:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xgBTK01edjblrub4XM0BxOA5P+Lg4/eK0PwM770mr68=;
        b=WcRNT9oL0cZjWavOPfBc3KKomiNlncUqVUO2fUJ3sG/Ig7t4AfVox+hP6TPLLVCjla
         7t/QVz65yjWDQMCaIU3pkpZRCDXg15B7N1T/SMKgRR1Ptlc9vLOnLXG9KJYuKVkTFJym
         dA/rZyYp6ifw6R0T7bqkTnopCbYD7wRkdKOfuiicgXuoFZrxbEHeKxIYCJrgIO51ymXW
         SDbkwP49NSU64wNeYHaYL+DPFmWaSnJ0xffesD4yqrKhIRL64VAWqzDVEIpoE32fQ8FN
         txfe2xAm3uNnCpEAqG4XpcpLsB58A/azGNqqTNQN9qGPGEuwBefv3KMTMgW57FI+qclf
         IfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xgBTK01edjblrub4XM0BxOA5P+Lg4/eK0PwM770mr68=;
        b=Hfd/CRJOCvxRTPL2D4H1tqaNnaWYmIWZL91cAJaMMA5/ce2W+jiAbmYPyL283lDLCl
         BK2uRZuPShg77TYvIF1HPTY8wb7S76o7m7n1+94vq0FdXpuZlUbjnMkeDcFlrkWnt7eY
         83+UYYdMyt3QrQou2SqrshzT9gBWBtvGx8ZybFZNnKqf84JPgyJoPyu9LTN4G6Yrn4HC
         IAV/fKG1pRY0k0TkSCI3GE94qW9l9YWRkTVtQx13qJ1VRvVVQGnttlq2Ljhhk/DP7G+T
         tazv+FaCAlHuWbvmiMa1G4fKVAw2DGoufQEcxdWzbf0r5ta6bmfpCfDkqgHUNUS663uY
         vTFg==
X-Gm-Message-State: AOAM530aWfn596LXZaXAvwbKLQihbsNxdkqJ8mtLnc0YtU5raGAbMi0l
        tQVFrghqY3zv806TyUvx4B6OyYLgaRk=
X-Google-Smtp-Source: ABdhPJxV1cYy/DlOp6ixsKPVYPQVerG5vc1DNEkWM8XgZ7GE1xgbxSjVtBkezPkMLCKb4/LzgOXZ8Q==
X-Received: by 2002:a17:90a:9318:: with SMTP id p24mr17018465pjo.138.1628377543717;
        Sat, 07 Aug 2021 16:05:43 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id mm7sm2968488pjb.44.2021.08.07.16.05.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 16:05:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Richard Palethorpe <rpalethorpe@suse.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 20/32] wait.2: Add ESRCH for when pid == INT_MIN
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-21-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <be2b400f-3e22-a9a9-1ae0-18149dc78577@gmail.com>
Date:   Sun, 8 Aug 2021 01:05:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-21-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Richard and Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Richard Palethorpe <rpalethorpe@suse.com>
> 
> Please see upstream commit:
> 
>  commit dd83c161fbcc5d8be637ab159c0de015cbff5ba4
>  Author: zhongjiang <zhongjiang@huawei.com>
>  Date:   Mon Jul 10 15:53:01 2017 -0700
> 
>      kernel/exit.c: avoid undefined behaviour when calling wait4()
> 
> It avoids negating INT_MIN by returning early with ESRCH.
> 
> Signed-off-by: Richard Palethorpe <rpalethorpe@suse.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>> ---
>  man2/wait.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/man2/wait.2 b/man2/wait.2
> index 5ae955b3f..63d872ee6 100644
> --- a/man2/wait.2
> +++ b/man2/wait.2
> @@ -455,6 +455,15 @@ was caught; see
>  The
>  .I options
>  argument was invalid.
> +.TP
> +.B ESRCH
> +(for
> +.BR wait ()
> +or
> +.BR waitpid ())
> +.I pid
> +is equal to
> +.I INT_MIN
>  .SH CONFORMING TO
>  SVr4, 4.3BSD, POSIX.1-2001.
>  .SH NOTES

Thanks. Patch applied, and added the follow-up patch below.

Thanks,

Michael



diff --git a/man2/wait.2 b/man2/wait.2
index 63d872ee6..b6cb326c0 100644
--- a/man2/wait.2
+++ b/man2/wait.2
@@ -463,7 +463,7 @@ or
 .BR waitpid ())
 .I pid
 is equal to
-.I INT_MIN
+.BR INT_MIN .
 .SH CONFORMING TO
 SVr4, 4.3BSD, POSIX.1-2001.
 .SH NOTES

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
