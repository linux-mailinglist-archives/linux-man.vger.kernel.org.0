Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62DE42FA519
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:49:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392771AbhARPnk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:43:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393551AbhARPmI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:42:08 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C20C4C061573
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:41:27 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id dj23so15491783edb.13
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Qny6wWqeghcAAkzGgprD10i/EI2fJDITcVhX0y7bgx4=;
        b=XxqlS851m8C1JYaexqnFZVKNJP7cCmF+vpZb72yh04Gich7AvZVnZ1F226W0JAaSdA
         B9mCS4+Ihxkg95KKqTwSeIvhbdtaqZRyaB6SOFi6UJ1Z0Lff8y8Nimuff7crT5rmRmMK
         fHSw7LKPJ7LkLfRcvnMU3Fvyy8X6iGwMa65v9V/XLqIsqQdvgwflnkT9BuavGoDH+Cqg
         BbKQOWxYfyTuvohskNAO1dzQoWDlTos624zWFXPkNKwzzlraLEMfkhdvuRQOaiK61Urr
         ZpJx2BsZqJ72X2RqSZx+/unjDKM6S3dr7sgoTD6Q/R8smNjNOFMRHgfLthTpZ8LKOLv9
         P0yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Qny6wWqeghcAAkzGgprD10i/EI2fJDITcVhX0y7bgx4=;
        b=f+gQGHOT6NZuOqOwregfiqXMW9SJJsNEtUXWY05OszTPY26DbYxpxr5DIdFZ/LIAt8
         GFEnrrIkkRHP+uYfL6BGwrilPNZ9lfyKGsCYyAUVweJe5nJVH3+lCSHqMfSDrD2FQBHS
         cwsf6bTG6qt475gcbgh4JZvpIs95qhZHSh8wJ1fR7SCVQZZM+YbChBZO/P/ovZs0SNfp
         zvXs2dfJy/5IFjjah4Z+8uhh5IDttcvTy7yfjMbsNSb8/nvcRbgBRHk55EaNL1NcXmDQ
         BdmFdbYpHPd7OCoSkBkAZ2g1zojFwe4z2WEHuGAPODCvX/nycqV1XLnKLZmfx6sXHc/r
         nYCg==
X-Gm-Message-State: AOAM5322/IjEe+QzYL2fHtuWoiFiUz6YA8CHaMuKG2CKRWHDNTdKXhqo
        c6rijJcBiVkAj2MbTDik9hjmKR5QntA=
X-Google-Smtp-Source: ABdhPJxWglwEIHLU2y2bx5ZWCP5N2/PSO7BM5/DwucS17nC076BO9xxCnLqCAS64LCw7RaP4DkyXpA==
X-Received: by 2002:a05:6402:1714:: with SMTP id y20mr81841edu.2.1610984486244;
        Mon, 18 Jan 2021 07:41:26 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id r21sm10952192eds.91.2021.01.18.07.41.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:41:25 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pipe.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210118091717.7042-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <55143e95-0023-5edd-a778-c495fb9a9064@gmail.com>
Date:   Mon, 18 Jan 2021 16:41:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210118091717.7042-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/18/21 10:17 AM, Jakub Wilk wrote:
> Escape hyphens.
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

I've applied this patch.

Thanks,

Michael

> ---
>  man7/pipe.7 | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index 21c8fa79b..c3210320c 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -163,7 +163,7 @@ but is provided on many implementations.
>  .SS /proc files
>  On Linux, the following files control how much memory can be used for pipes:
>  .TP
> -.IR /proc/sys/fs/pipe-max-pages " (only in Linux 2.6.34)"
> +.IR /proc/sys/fs/pipe\-max\-pages " (only in Linux 2.6.34)"
>  .\" commit b492e95be0ae672922f4734acf3f5d35c30be948
>  An upper limit, in pages, on the capacity that an unprivileged user
>  (one without the
> @@ -175,9 +175,9 @@ The default value for this limit is 16 times the default pipe capacity
>  (see above); the lower limit is two pages.
>  .IP
>  This interface was removed in Linux 2.6.35, in favor of
> -.IR /proc/sys/fs/pipe-max-size .
> +.IR /proc/sys/fs/pipe\-max\-size .
>  .TP
> -.IR /proc/sys/fs/pipe-max-size " (since Linux 2.6.35)"
> +.IR /proc/sys/fs/pipe\-max\-size " (since Linux 2.6.35)"
>  .\" commit ff9da691c0498ff81fdd014e7a0731dab2337dac
>  The maximum size (in bytes) of individual pipes that can be set
>  .\" This limit is not checked on pipe creation, where the capacity is
> @@ -202,7 +202,7 @@ Since Linux 4.9,
>  the value on this file also acts as a ceiling on the default capacity
>  of a new pipe or newly opened FIFO.
>  .TP
> -.IR /proc/sys/fs/pipe-user-pages-hard " (since Linux 4.5)"
> +.IR /proc/sys/fs/pipe\-user\-pages\-hard " (since Linux 4.5)"
>  .\" commit 759c01142a5d0f364a462346168a56de28a80f52
>  The hard limit on the total size (in pages) of all pipes created or set by
>  a single unprivileged user (i.e., one with neither the
> @@ -220,7 +220,7 @@ no hard limit is applied.
>  .\" The default was chosen to avoid breaking existing applications that
>  .\" make intensive use of pipes (e.g., for splicing).
>  .TP
> -.IR /proc/sys/fs/pipe-user-pages-soft " (since Linux 4.5)"
> +.IR /proc/sys/fs/pipe\-user\-pages\-soft " (since Linux 4.5)"
>  .\" commit 759c01142a5d0f364a462346168a56de28a80f52
>  The soft limit on the total size (in pages) of all pipes created or set by
>  a single unprivileged user (i.e., one with neither the
> @@ -238,9 +238,9 @@ The default value for this file is 16384,
>  which permits creating up to 1024 pipes with the default capacity.
>  .PP
>  Before Linux 4.9, some bugs affected the handling of the
> -.IR pipe-user-pages-soft
> +.IR pipe\-user\-pages\-soft
>  and
> -.IR pipe-user-pages-hard
> +.IR pipe\-user\-pages\-hard
>  limits; see BUGS.
>  .\"
>  .SS PIPE_BUF
> @@ -342,9 +342,9 @@ Portable applications should avoid reliance on
>  bidirectional pipe semantics.
>  .SS BUGS
>  Before Linux 4.9, some bugs affected the handling of the
> -.IR pipe-user-pages-soft
> +.IR pipe\-user\-pages\-soft
>  and
> -.IR pipe-user-pages-hard
> +.IR pipe\-user\-pages\-hard
>  limits when using the
>  .BR fcntl (2)
>  .BR F_SETPIPE_SZ
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
