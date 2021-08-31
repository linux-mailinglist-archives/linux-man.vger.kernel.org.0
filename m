Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F31313FC06F
	for <lists+linux-man@lfdr.de>; Tue, 31 Aug 2021 03:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231297AbhHaBUL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 21:20:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239255AbhHaBUL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Aug 2021 21:20:11 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B767DC061575
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 18:19:16 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id c17so15223080pgc.0
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 18:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w9XHuVv4zKDPq/ryVj/F+u4EA5dn7CVNQpRCaD+sXkc=;
        b=ohkJK7J7DDvNI2wbGoKVRYnrPdK/p2JV+0MUUOKhhB70WJODANBJm7Sx8itRANW63I
         PYbHgi3gvbxGIzyxhLCUEKv7sKJsrHqa429X5tkpP04//4Cdj+PCovXjzw+K5PbcLBjR
         P2AA+t0lYXBrM2sEtrT8aDXBixrNYR4KY/noWerCdzMQ65j0olcx8tig3HI19NjumWLz
         mB9wC0mwXgboJprGA+O3aah8R2SmPwZvEe1jxk32w+AH4OvB217Tv0H9s68AVgPfwlHz
         b96LBGEuDO728EYJbKVxoZYnyNKh2uektC5JMV8jgTEzAOHIBseak/qwCfOcn0gX6tJC
         /u3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w9XHuVv4zKDPq/ryVj/F+u4EA5dn7CVNQpRCaD+sXkc=;
        b=q7btzGuATz9d1KieBTIMS5zO0BXLYa3KLb3GlXnLot4v9OVjJ193MFTVIH4zNuT6cs
         0hPsY8NkqW9DAteOGtyV/BLs1nhRe/2R9Bc3p0krbL2hzZUIbYWeCK93iVkZXR4C9CfL
         N+ct/intJMEEs4TY+q7LDu6CdS7bQACaWkGC5f5ecTMUMyBrqj/O1a258tFlpElmWmd/
         gupzyHbyyUj2FE294/BO/Zf3wiUzJu4yGHsRIA9M/2o3SjcwHkcHtbwfRzA6o2rNd8pG
         hHDwyA7+pqIDNC+v8DnlDBjALGR7+eT9ZFPPXuq+InsyfF1VLY4ZAgm4v0ii9E+QKPI3
         EOOQ==
X-Gm-Message-State: AOAM532i2d33Oai5h6v6jrkKrJWPJPooY3aOjU9XghfbjfmAXAHsCMBp
        YtKbmhh1BUeOlDiP94VVswU=
X-Google-Smtp-Source: ABdhPJxtdCAfx3MY+lNxsaHTz0e0PDZbQDDROVhmozi5CpyUhykhx4tu+76WBjAHGZuafWw+pRBkFA==
X-Received: by 2002:a63:1e0e:: with SMTP id e14mr8641399pge.5.1630372756305;
        Mon, 30 Aug 2021 18:19:16 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id z3sm637253pjn.43.2021.08.30.18.19.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 18:19:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [[patch] 2/2] malloc_hook.3: modernize for glibc 2.34
To:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        alx.manpages@gmail.com
References: <20210810193708.10277-1-eggert@cs.ucla.edu>
 <20210810193708.10277-2-eggert@cs.ucla.edu>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <37d6bb42-5a83-6ef7-e17b-26fbd5a0e671@gmail.com>
Date:   Tue, 31 Aug 2021 03:19:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210810193708.10277-2-eggert@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Paul,

On 8/10/21 9:37 PM, Paul Eggert wrote:
> ---
>  man3/malloc_hook.3 | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)

Patch applied.

Thanks you!

Cheers,

Michael

> diff --git a/man3/malloc_hook.3 b/man3/malloc_hook.3
> index 6d944003b..7b76bbc9b 100644
> --- a/man3/malloc_hook.3
> +++ b/man3/malloc_hook.3
> @@ -11,7 +11,7 @@
>  .SH NAME
>  __malloc_hook, __malloc_initialize_hook,
>  __memalign_hook, __free_hook, __realloc_hook,
> -__after_morecore_hook \- malloc debugging variables
> +__after_morecore_hook \- malloc debugging variables (DEPRECATED)
>  .SH SYNOPSIS
>  .nf
>  .B "#include <malloc.h>"
> @@ -86,11 +86,18 @@ The use of these hook functions is not safe in multithreaded programs,
>  and they are now deprecated.
>  From glibc 2.24 onwards, the
>  .B __malloc_initialize_hook
> -variable has been removed from the API.
> +variable has been removed from the API,
> +and from glibc 2.34 onwards, all
> +the hook variables have been removed from the API.
>  .\" https://bugzilla.redhat.com/show_bug.cgi?id=450187
>  .\" http://sourceware.org/bugzilla/show_bug.cgi?id=9957
>  Programmers should instead preempt calls to the relevant functions
> -by defining and exporting functions such as "malloc" and "free".
> +by defining and exporting
> +.BR malloc (),
> +.BR free (),
> +.BR realloc (),
> +and
> +.BR calloc ().
>  .SH EXAMPLES
>  Here is a short example of how to use these variables.
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
