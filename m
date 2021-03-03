Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1FDD32C772
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355596AbhCDAcA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:32:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1391158AbhCCW0P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 17:26:15 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8537C061756
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 14:25:32 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id w1so45436541ejf.11
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 14:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Gvp3P0bkdpvSHLSuYYkVNLgGG/7qYyOKw//qYCl6dzs=;
        b=YvHIvBYFDIV3/0vD7ayLWvCcSCjw0n5JEaPp0trdR5RXXjoDoMJo0lWE9z44Y4jYNR
         qWsAkR+nILmgov1dc7rjtoAgWC4ZXVtrSj1Bp/0ybZOjny9Us0aVIk0EHDSCFF6tHRCW
         6K/xWa+pu11fr1UEMO7fSTB0KgBRq5XANLWtFTVtqHvj13x3CI+gjtLe6dxvnmTVozQr
         IxgjjgorqeW50lXVj7aaA1mYWYNEJIncy0WZjlakHZiiWHEm1Y3zRWsORlzceGi560Fj
         8+A8+jcLm+AQXD8seyUyWn2sVhdqyO+82L0UgTknH1naCwgglZxq5cGycR9iAuwPHnTt
         cYRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gvp3P0bkdpvSHLSuYYkVNLgGG/7qYyOKw//qYCl6dzs=;
        b=YkkroGLyTNIQjaWufCyxf0FByKjj9/yMOOn2FsB9u1bxrO8mpJt7ftw0cA58SGfj16
         cTiXisRA3CjTZ5TQ1jq4pWlKrxCMexG3VhmB029pkzwabwF5/ax/9MAiu/lppE3Vg47T
         t7KZqfp5E+MQlbWOg4oQp2tZVk9KdlmdZNZYNVReCF57Dn4Z8o/NmGsaLRPVEJYKbiDx
         sAgyPe0h4AwligYtX1M8gZMmL1f9TYqSCs0noj1g2rrpq6u4pzwG7KULwCQ9p8SjrtJO
         Z3468xIO9lpobECV+ju/DgqzJeD6gXsfdY1KAd9kBz26IvdaMYR6JAUZWu7kwwvHpJcp
         uLWA==
X-Gm-Message-State: AOAM531C8GF3pqa+tHf3winw8UyexPwo24jGDfCDRrFp/zU/0SsR343N
        dYwtmp4SaylBminqb1k8Q/s=
X-Google-Smtp-Source: ABdhPJzut7X6rehd+u75KjrJW7zfEUVonqZz0kUuBkxGcB7NRLQCXCFUZAUI8UKacRC5yI3B7qP4Mw==
X-Received: by 2002:a17:906:dfcc:: with SMTP id jt12mr865537ejc.31.1614810331568;
        Wed, 03 Mar 2021 14:25:31 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id d15sm8749615edx.62.2021.03.03.14.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 14:25:30 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 00/14] man3: SYNOPSIS: Use 'restrict' in prototypes (batch
 2)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0f98f70d-c060-c58c-a4aa-6fb5c0c2eaa3@gmail.com>
Date:   Wed, 3 Mar 2021 23:25:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/28/21 1:48 AM, Alejandro Colomar wrote:
> Hey Michael,
> 
> This is the second batch of pages in man3 that use 'restrict'.
> 
> I have already checked until getrpcport.3.

Thanks for doing all of this work!

I've applied all of these patches.

Cheers,

Michael

> 
> ---
> 
> A few functions to automate the commit messages:
> 
> For functions that are restrict in POSIX and glibc:
> 
> function gitcommit_rp()
> {
> 	local commafuncs="$(echo $@ |sed -e 's/\> \</(), /g' -e 's/$/()/')";
> 	local msg="\
> $(man_gitstaged): SYNOPSIS: Use 'restrict' in prototypes
> 
> Both POSIX and glibc use 'restrict' in ${commafuncs}.
> Let's use it here too.
> 
> $(echo "$@" \
>   |xargs -n1 bash -c \
>     'echo ".../glibc$ grep_glibc_prototype $@"; \
>      echo "$(cd ~/src/gnu/glibc && grep_glibc_prototype $@)"' _)
> .../glibc$";
> 
> 	git commit -sm "$msg";
> }
> 
> For functions that are restrict in glibc:
> 
> function gitcommit_rg()
> {
> 	local commafuncs="$(echo $@ |sed -e 's/\> \</(), /g' -e 's/$/()/')";
> 	local msg="\
> $(man_gitstaged): SYNOPSIS: Use 'restrict' in prototypes
> 
> glibc uses 'restrict' in ${commafuncs}.
> Let's use it here too.
> 
> $(echo "$@" \
>   |xargs -n1 bash -c \
>     'echo ".../glibc$ grep_glibc_prototype $@"; \
>      echo "$(cd ~/src/gnu/glibc && grep_glibc_prototype $@)"' _)
> .../glibc$";
> 
> 	git commit -sm "$msg";
> }
> 
> ---
> Alejandro Colomar (14):
>   getaddrinfo.3: SYNOPSIS: Use 'restrict' in prototypes
>   getaddrinfo_a.3: SYNOPSIS: Use 'restrict' in prototypes
>   getdate.3: SYNOPSIS: Use 'restrict' in prototypes
>   getdirentries.3: SYNOPSIS: Use 'restrict' in prototypes
>   getgrent_r.3: SYNOPSIS: Use 'restrict' in prototypes
>   getgrnam.3: SYNOPSIS: Use 'restrict' in prototypes
>   gethostbyname.3: SYNOPSIS: Use 'restrict' in prototypes
>   getline.3: SYNOPSIS: Use 'restrict' in prototypes
>   getmntent.3: SYNOPSIS: Use 'restrict' in prototypes
>   getnameinfo.3: SYNOPSIS: Use 'restrict' in prototypes
>   getnetent_r.3: SYNOPSIS: Use 'restrict' in prototypes
>   getprotoent_r.3: SYNOPSIS: Use 'restrict' in prototypes
>   getpwent_r.3: SYNOPSIS: Use 'restrict' in prototypes
>   getpwnam.3: SYNOPSIS: Use 'restrict' in prototypes
> 
>  man3/getaddrinfo.3   | 11 ++++++-----
>  man3/getaddrinfo_a.3 | 12 ++++++------
>  man3/getdate.3       |  2 +-
>  man3/getdirentries.3 |  4 ++--
>  man3/getgrent_r.3    | 10 ++++++----
>  man3/getgrnam.3      | 11 +++++++----
>  man3/gethostbyname.3 | 31 ++++++++++++++++++++-----------
>  man3/getline.3       |  7 ++++---
>  man3/getmntent.3     |  8 +++++---
>  man3/getnameinfo.3   |  8 +++++---
>  man3/getnetent_r.3   | 23 +++++++++++++----------
>  man3/getprotoent_r.3 | 17 ++++++++++-------
>  man3/getpwent_r.3    | 11 +++++++----
>  man3/getpwnam.3      | 11 +++++++----
>  14 files changed, 99 insertions(+), 67 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
