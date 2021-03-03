Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1533D32C761
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348838AbhCDAbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1581467AbhCCVPb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 16:15:31 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18D7EC061756
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 13:14:41 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id d13so26954557edp.4
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 13:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Gsb7p3lHxwqEyzlYgTeRLW9CKPtXkL+ffDG3FJmCv4s=;
        b=nef2M8xLh7j2rtP6nzL1oChcoNjmtoS/Kr/m0cx6azM2x1x5hBkAKTSvt80fzLo+fn
         w9Jhwkq80awq4/5EdorhJRpdBGFl79wtedaRnGv+YURilHRP5aW3WwqU1O/+GTUO1UaA
         mkx/3j/2fO16BF82Y+/yaRipYdNxH2+ygaI9hrhxochJbzAvPhcbZtvkVFrvsJswBNbO
         D487TvUkl1yFqB9lWiy43o+9M8yoHkhof6DgU3HiWPJ4ETYWEj90nwl2wYeCWAn6IaY7
         eZzM9MlhoaTmrXrz7sh6Vtm+o07gnqkztyHAYtuPy7lgZn+tELd8drr7+IAgpwbtsZNf
         YErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gsb7p3lHxwqEyzlYgTeRLW9CKPtXkL+ffDG3FJmCv4s=;
        b=B13iu295J+eEO5iEhAu6JSSn6oQaGUXSiq24PqoRtu3CZUsXoc2xlejVO3aSy9TbOx
         7nSg1oCivR4NisOnWnUkabH1OyLUAUbdviF8cKotUqvk3f95Br4I/+4BQH3XoRKjg7wD
         Q4898n+xR6AnQ+2BwhlqHk/je5H+bfJ23lRqbdzQXJKqogB+8eT/K+V3SjsiOISaisqN
         Wbd2Tqe9pmISnvPvBcWwoN7akxwyiXZNt3gzLkJ6E3xoUaIPn/G9MwjG/SW/NyQM2nr0
         0MKFEpCX279jwrnBflb+G/TNzeIK9iBvM5LAqVMca47QtL7jZoTAYUnKgLjIfPKQpDA8
         Evcw==
X-Gm-Message-State: AOAM532KuQICYMldEDWBYEg5USvOlfkycCl/2zNkXdTmx05GUIZgq8HD
        Qa0MFlXApRd+VPktP1Y32nLOYmNS3H7t9g==
X-Google-Smtp-Source: ABdhPJzpIaqWakDbR/9iz6Vgfh24f7xphWjt44j5Cf7VOl+VE5DsFCZaSNo8VU7Gxka7rjCxqg8Lrw==
X-Received: by 2002:a05:6402:c88:: with SMTP id cm8mr1186460edb.62.1614806079476;
        Wed, 03 Mar 2021 13:14:39 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id q16sm13389930ejd.15.2021.03.03.13.14.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 13:14:38 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] ftw.3: SYNOPSIS: Remove duplicate header
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210223235439.135579-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8fd64055-2650-669a-f270-4206cd738b1a@gmail.com>
Date:   Wed, 3 Mar 2021 22:14:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210223235439.135579-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/24/21 12:54 AM, Alejandro Colomar wrote:
> Both functions have the same header.
> There's no reason to separate the prototypes repeating the header.
Agreed. Patch applied.

Cheers,

Michael


> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/ftw.3 | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/man3/ftw.3 b/man3/ftw.3
> index 027750fd7..fa7678fa8 100644
> --- a/man3/ftw.3
> +++ b/man3/ftw.3
> @@ -45,8 +45,6 @@ ftw, nftw \- file tree walk
>  .BI "                  int " typeflag ", struct FTW *" ftwbuf ),
>  .BI "        int " nopenfd ", int " flags );
>  .PP
> -.B #include <ftw.h>
> -.PP
>  .BI "int ftw(const char *" dirpath ,
>  .BI "        int (*" fn ")(const char *" fpath ", const struct stat *" sb ,
>  .BI "                  int " typeflag ),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
