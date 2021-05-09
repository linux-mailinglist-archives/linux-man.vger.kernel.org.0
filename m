Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2371E377929
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:12:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbhEIXN7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:13:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXN6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:13:58 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EDB9C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:12:54 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id gx21-20020a17090b1255b02901589d39576eso2646259pjb.0
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MOpPXDsxi9Wevpy89rYrz83Z+X+V44XCtCNMWB/AbTI=;
        b=iI0d/2m1ceONhTn95GHhTm9odSsKGx6uOZoZlX1mTjGxldBWHNne67zEac2aLHdxi/
         c77X600BEj0GPKZnAJUEpCMoXCb5Pyff+cI7oW++rGJGavIx2gBosu0OGaPh5/GHYuEG
         Evy0NfcisrsSglJ7hPL5f9gHBy7I5nUqBrZIYNgUnkAO1TvCzUVXDpX/kqeLK3Ghno1C
         f65Dbvx8IzmZZ196Ac/+oKxBSbO/2wB2WY7UHi+xbcGKUqnyFcnaKvIRTJNH6kAlaqxf
         +ayWo+Cg2NRUuNBzF0pcTU4rb2qO8/u8o7LqXUhf8KNghiJNu/xnAGmui0hMnYzuFG3m
         tgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MOpPXDsxi9Wevpy89rYrz83Z+X+V44XCtCNMWB/AbTI=;
        b=VLh00N4RyHy1FqiWtzswYdRtgD8YUNQ0ZQ7rUf4d5NJ+g9mWf4zeWHyASbaoCUI4Gx
         bBqECWK1F0IMsUmFlkFGG8AeIXicgccWOHUFOZ4rm36s+WPQFprZHQXaEiilI6vJMm/j
         9EPjhAVMhLSNmHCqM5bQ+RRQsmyeETj8O7Qj+AK7/Ah/JlG2IaRMmGs4d2PWxe3UpFSO
         YVMys62/k5MfjBOnYo7Su+g5drjoh+GUVJgQ3s4uE4M0YkgUgPSIpqWPApxXPnx1nu9w
         2m9vfXR8nltUnVuYGHjFjrf+4MKbhGe5IWETz6kFk+E//pP9weqwNX3wQpBPJASFuHMu
         xkDQ==
X-Gm-Message-State: AOAM532Dri+W7tYQnz48dGc0GsB9D5P2QgtW71Uu7HxrQWIKNNqUHwhM
        3oO12j1BTuzKsy9+6mmo3ApbehUdR2c=
X-Google-Smtp-Source: ABdhPJyWmBNf13sb/kmte7r7MbZi/otciWZa9lA1RRDNrZIt1fuM5o4SpmAyqZul5rUiGqQk8DkdXA==
X-Received: by 2002:a17:90b:1050:: with SMTP id gq16mr37361403pjb.227.1620601973880;
        Sun, 09 May 2021 16:12:53 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id in1sm17061203pjb.23.2021.05.09.16.12.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:12:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] perror.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-11-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0d376c01-1795-e66c-40d7-e612ccf968cf@gmail.com>
Date:   Mon, 10 May 2021 11:12:50 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-11-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael

> ---
>  man3/perror.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/perror.3 b/man3/perror.3
> index ae271f343..e3eec1da3 100644
> --- a/man3/perror.3
> +++ b/man3/perror.3
> @@ -39,7 +39,7 @@ perror \- print a system error message
>  .PP
>  .B #include <errno.h>
>  .PP
> -.BI "const char * const " sys_errlist [];
> +.BI "const char *const " sys_errlist [];
>  .BI "int " sys_nerr ;
>  .BI "int " errno ";       \fR/* Not really declared this way; see errno(3) */"
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
