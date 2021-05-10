Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2D9537798E
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 02:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbhEJAvU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 20:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbhEJAvU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 20:51:20 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 730D3C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 17:50:16 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id fa21-20020a17090af0d5b0290157eb6b590fso9284553pjb.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 17:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GcpdigAzMBE0iQy/a+aL4SjU+0K2wcpmuxizKmUZVFA=;
        b=n350CpEJtZWephSYG1HA0sg7dQvOul1w1ZIVHbf0SNeQGAuLR0xSdTHnLwoh9TWx51
         Gwxsu805BkodNjZuUezpt1vlCHzSi9LD/k5m+2c5+QvEI7vHIU0IWAqVkhPIFiJizb1y
         IwRpUO6YkKD7R5n1RuE1aW+lwHksKGV4AEQeJxhbdMe+roiyrK9cMyH/kTAeCLYIPM6P
         HmgbX8Xn8ogGgxAjvyCx6xAmBwLRuCnMiJJ6MUR7MNCNHKvZ1YrRC8ue75BXIvQiKIli
         hSSjr9CzUVflvFANkGHWEbHXg1ex0sRFaxmEhcNfzUJIueyDKOOV0gRb0dniSfeqhird
         WF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GcpdigAzMBE0iQy/a+aL4SjU+0K2wcpmuxizKmUZVFA=;
        b=Z0qGnl+44OScRlsvTp6U64KbKRSAa4mEJ/u8xwLrDu1W2WFfIKvJZ3Idx9VUuJAB33
         aof82Y1jliGXsOFC2jiFVtWqSpxZqNPK4yJ7OROUuXLC3dhak6yKy11sWS/k81fYfnR/
         ERlTtmNvvJovNApLARXyGvZchhC+LNBwDjq3jHKE0BrdXbwTINr14B0pYFHH+NXxLCZv
         xE/m/E+t8at2Uo31Gh/ST3eZD0wgj+GaIHB5BWhm6H6e08zv6PZSkRNNnVjO7YIfZZdl
         QACpS8eKC8gE6iFEMU1WzrSs4e9wjUv+YsJQMXQBRlEw3tuWtaCw3u4Lcw8wWT/7JrnD
         szMg==
X-Gm-Message-State: AOAM531J93y6nm1tk2qVk//nYkkIVuixRB69FmfWqoiDO4TWy7eAzgsi
        Jn4q79L3NGWQV/PXNL3LbEI=
X-Google-Smtp-Source: ABdhPJwLoo6DrsZhSwpfHUhQxqMlMFFqn87p8I37fN/jis5bm7fgy80D55KfHicE8FQQMLeBtAeftQ==
X-Received: by 2002:a17:90a:4282:: with SMTP id p2mr12372032pjg.21.1620607815938;
        Sun, 09 May 2021 17:50:15 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id a20sm9606011pfn.23.2021.05.09.17.50.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 17:50:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Walter Harms <wharms@bfs.de>, Theodore Ts'o <tytso@mit.edu>,
        Adam Borowski <kilobyte@angband.pl>
Subject: Re: [PATCH] open.2: Fix bug in linkat(2) call example
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ebf17ada-9086-d2de-1995-70572238f9a4@gmail.com>
Date:   Mon, 10 May 2021 12:50:10 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> AT_EMPTY_PATH works with empty strings (""), but not with NULL
> (or at least it's not obvious).
> 
> The relevant kernel code is the following:
> 
> linux$ sed -n 189,198p fs/namei.c
> 	result->refcnt = 1;
> 	/* The empty path is special. */
> 	if (unlikely(!len)) {
> 		if (empty)
> 			*empty = 1;
> 		if (!(flags & LOOKUP_EMPTY)) {
> 			putname(result);
> 			return ERR_PTR(-ENOENT);
> 		}
> 	}
> 
> Reported-by: Walter Harms <wharms@bfs.de>
> Cc: Theodore Ts'o <tytso@mit.edu>
> Cc: Adam Borowski <kilobyte@angband.pl>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/open.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/open.2 b/man2/open.2
> index 6360636af..bac1ee806 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -824,7 +824,7 @@ fd = open("/path/to/dir", O_TMPFILE | O_RDWR,
>  
>  /* File I/O on \(aqfd\(aq... */
>  
> -linkat(fd, NULL, AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
> +linkat(fd, "", AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
>  
>  /* If the caller doesn\(aqt have the CAP_DAC_READ_SEARCH
>     capability (needed to use AT_EMPTY_PATH with linkat(2)),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
