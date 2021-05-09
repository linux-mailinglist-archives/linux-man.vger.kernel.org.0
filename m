Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5D2537796F
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:59:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbhEJAAT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 20:00:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229853AbhEJAAT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 20:00:19 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DE62C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:59:14 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id b21so8282435plz.0
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UN/PaLBoT/Tj+MGC+5FA+ViIg84hKmiazXqaGysoDJU=;
        b=ZAm6FvAHBKT2H2Jw/tseVwHrCNpKHpuihwLBJXy9g/zEptIXt+lNQdi5fLhwiR9CP8
         E4MbVJSrLCCXp6TgtzYrGuasR9cax7BN+sH7h1C+89g0yVyqKSR5LmZkU5qO2Nk3m5O0
         E3aKaFMj6umDVtgxWgzDGDwZGcgk4VO8xzkUhmGX7nZbofQgo47PtMLdWUeT1ICp+oWB
         u2EDUPrlIFqY9ql3xFdWH4py6EJ7VceQfnfcHZ7H2m+SN4RaQqF8z2qEUJplHI8OfrpD
         xVYa2uJ+C3lD9+KQAPd7Ug+R8J9mGIcAfZoxyEgj4/mgJ1BgeN6k95oqGwXIAq4g7RRx
         qFmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UN/PaLBoT/Tj+MGC+5FA+ViIg84hKmiazXqaGysoDJU=;
        b=cHT3MYGrURPvLce4lNlmHwzYQjpOfvdBzlMDkDELTys28BWWrWyKXc8ZSlfsDe2Xk5
         k917f5asP2ZVaO2xaTQ+uFv60kKyEVaRBEwK7svozVUqaRKxVsEewiNIAm28mZiwyJp7
         rC0VsdaumpSi4SHxhMMDJknDP4iMaL1v2c8n+OMOmXydKH18I4+ziYqljVBSjXDobzG+
         VeA2CalHUUInHH4WARkGSjkWvKMupCRSxgeWON2v0A9lRva5BAETHBNuUtMMr00rtsOh
         coy5UWwXCEZVgKkr/bn9RPZ42jPvIHJbfHwPVzhehSRDRCIrRy/mK+KLiYZwlfNR6VWs
         xpXg==
X-Gm-Message-State: AOAM531i1lCQSBxgBg69GWwJ6RcXXodAPkXAAvfabw3qIh5834AKHQec
        88wY2ckrUmE6kj4CCYmPnNEiFOYrRKw=
X-Google-Smtp-Source: ABdhPJy5PFTsR6b2qUE67UMAXt0FPMOXn39ajaOjVLsoKtSKHmWFAAF4SvZkADs+6kWE+2O9B9Gldg==
X-Received: by 2002:a17:902:b683:b029:ee:f0e3:7a50 with SMTP id c3-20020a170902b683b02900eef0e37a50mr22008939pls.7.1620604753930;
        Sun, 09 May 2021 16:59:13 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id cm22sm9565487pjb.32.2021.05.09.16.59.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:59:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] basename.3: SYNOPSIS: Add missing 'const'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <797047d7-00a6-5633-43c7-35d7fd709cb9@gmail.com>
Date:   Mon, 10 May 2021 11:59:09 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:38 AM, Alejandro Colomar wrote:
> Glibc uses 'const' for the basename() parameter.
> Fix the prototype.

Yes, but see basename(3p):

    SYNOPSIS
       #include <libgen.h>

       char *basename(char *path);

       ...

       The basename() function may modify the string pointed to by  path,
       and may return a pointer to internal storage. The returned pointer
       might be invalidated or the storage might be overwritten by a sub‐
       sequent  call  to  basename().  The returned pointer might also be
       invalidated if the calling thread is terminated.

I'll skip this patch.

Thanks,

Michael

> ......
> 
> .../glibc$ grep_glibc_prototype basename
> string/string.h:511:
> extern char *basename (const char *__filename) __THROW __nonnull ((1));
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/basename.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/basename.3 b/man3/basename.3
> index 65a14e8cb..51825eca4 100644
> --- a/man3/basename.3
> +++ b/man3/basename.3
> @@ -32,7 +32,7 @@ basename, dirname \- parse pathname components
>  .B #include <libgen.h>
>  .PP
>  .BI "char *dirname(char *" path );
> -.BI "char *basename(char *" path );
> +.BI "char *basename(const char *" path );
>  .fi
>  .SH DESCRIPTION
>  Warning: there are two different functions
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
