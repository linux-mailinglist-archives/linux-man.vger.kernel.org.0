Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C24B92EEEF7
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 09:58:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727738AbhAHI6w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 03:58:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727045AbhAHI6w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 03:58:52 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6189C0612F5
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 00:58:11 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id v26so1486407eds.13
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 00:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EJzIh08koDJzTJirsy2TFElS2GxUPBETZM3mJIdoZ7U=;
        b=MCmN/058FGpGa5DiJ/pUX8tXm6/5Fe/p4ER3qI3mbzQ7noPOOI5km5+ZjwkgOlk29a
         GBnL9oCHj9C+/27AZaPqmBsdJXqSCl+beLnZi/pYyuNMfIWCeTwKrqoIT2dh5jYTBHlL
         wA92GVDh1lqvDVXGQEsQNtB/XFCbLntf+Mslh+tlkVGv2l5ZdFjKcpIjod/TBN1xnssu
         cryo6uku3dnSp8KodBz8iwNIqB/gOyC43C6yVu0jHLrkA1uaAbYmrgthnr4KicvbcHNh
         JhnCdZd/zoCURtjzh1FTsciAhvo4ALtI/9Hri70pmyVxESwcyefpu+/zDZ4YEyzS/pzD
         XWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EJzIh08koDJzTJirsy2TFElS2GxUPBETZM3mJIdoZ7U=;
        b=TeKbWaNRUTjMuYi09MHMjFEDsBt9CQrrY/+clUCY0UYNHZR8XYCY2NIunltCO+ov0R
         wLLOyUyXE0EnWELBtuqQLNLhESkLAECJB1667PTvLonXDxzMY1+lllXmZst9p0tyDMA4
         3RNxpmsJ1akm8DURMChMMv78jYwnnzEN8K2Xegl8j9yia29Ba0HPmeebr6dKz3BRaRKB
         L81FYsbvZLp87dLn/lXNBZSGkakCsgrUlxWZTsqEXQYI1eObnyIKxD9DBLugj96ro1IU
         Y9qHJ4aP+UiqzJ/7lyKk4GiV5ClgkB2qi56fBB8EWEBQo9NmyICqqt5ZweoVHd1o+Y7l
         1QIw==
X-Gm-Message-State: AOAM532EVTsdFCgSzDS8rWYxzhRWb/i4LCOFkPg+acee8Z1pY/KSyLah
        E3NnrKkZ9GOZTX+6qdBJmsRz5dC/iJ0=
X-Google-Smtp-Source: ABdhPJxh8hGeW6v44JqlKXNaUbYmUzJSpv2G4YOyx37dTkOvlGSE1kRPsa9bDxr0nf3VsF7qe+RyHA==
X-Received: by 2002:a05:6402:3c3:: with SMTP id t3mr4652089edw.86.1610096290237;
        Fri, 08 Jan 2021 00:58:10 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id e25sm3549013edq.24.2021.01.08.00.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 00:58:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Various pages: tfix: Use Oxford comma
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210107183819.42513-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <77aff4c7-aa65-ce20-5202-a6edbaf76ae4@gmail.com>
Date:   Fri, 8 Jan 2021 09:58:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210107183819.42513-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 1/7/21 7:38 PM, Alejandro Colomar wrote:
> Found using:
> $ pcregrep -rnM "^\.[B|I]R .*,\n\.[B|I].*[^,]\nor" man? \

Chévere!

>   |grep ^man \
>   |sort;
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/mmap.2        | 2 +-
>  man3/aio_return.3  | 2 +-
>  man3/dbopen.3      | 2 +-
>  man3/drand48.3     | 2 +-
>  man3/posix_spawn.3 | 4 ++--
>  man3/xdr.3         | 2 +-
>  man4/sk98lin.4     | 4 ++--
>  man7/symlink.7     | 2 +-
>  8 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index b44a8f1b7..a4aa205ed 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -563,7 +563,7 @@ was 0.
>  .I flags
>  contained none of
>  .BR MAP_PRIVATE ,
> -.B MAP_SHARED
> +.BR MAP_SHARED ,
>  or
>  .BR MAP_SHARED_VALIDATE .
>  .TP
> diff --git a/man3/aio_return.3 b/man3/aio_return.3
> index 062dce2cf..4ea2c0e10 100644
> --- a/man3/aio_return.3
> +++ b/man3/aio_return.3
> @@ -53,7 +53,7 @@ If the asynchronous I/O operation has completed, this function returns
>  the value that would have been returned in case of a synchronous
>  .BR read (2),
>  .BR write (2),
> -.BR fsync (2)
> +.BR fsync (2),
>  or
>  .BR fdatasync (2),
>  call.
> diff --git a/man3/dbopen.3 b/man3/dbopen.3
> index d76ee3e6a..2ea5ad3cf 100644
> --- a/man3/dbopen.3
> +++ b/man3/dbopen.3
> @@ -522,7 +522,7 @@ routines may fail and set
>  for any of the errors specified for the library routines
>  .BR read (2),
>  .BR write (2),
> -.BR free (3)
> +.BR free (3),
>  or
>  .BR malloc (3).
>  .PP
> diff --git a/man3/drand48.3 b/man3/drand48.3
> index 36309550e..26c5bd09d 100644
> --- a/man3/drand48.3
> +++ b/man3/drand48.3
> @@ -147,7 +147,7 @@ The value returned by any of the functions
>  .BR erand48 (),
>  .BR lrand48 (),
>  .BR nrand48 (),
> -.BR mrand48 ()
> +.BR mrand48 (),
>  or
>  .BR jrand48 ()
>  is
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index cbf6802b1..a56aa3e86 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -513,13 +513,13 @@ and
>  .BR posix_spawnp ()
>  functions fail only in the case where the underlying
>  .BR fork (2),
> -.BR vfork (2)
> +.BR vfork (2),
>  or
>  .BR clone (2)
>  call fails;  in these cases, these functions return an error number,
>  which will be one of the errors described for
>  .BR fork (2),
> -.BR vfork (2)
> +.BR vfork (2),
>  or
>  .BR clone (2).
>  .PP
> diff --git a/man3/xdr.3 b/man3/xdr.3
> index a225acfe1..a0b686d33 100644
> --- a/man3/xdr.3
> +++ b/man3/xdr.3
> @@ -99,7 +99,7 @@ Note: encoded characters are not packed, and occupy 4 bytes each.
>  For arrays of characters, it is worthwhile to
>  consider
>  .BR xdr_bytes (),
> -.BR xdr_opaque ()
> +.BR xdr_opaque (),
>  or
>  .BR xdr_string ().
>  .PP
> diff --git a/man4/sk98lin.4 b/man4/sk98lin.4
> index 1301300b2..7fb91a5b4 100644
> --- a/man4/sk98lin.4
> +++ b/man4/sk98lin.4
> @@ -248,7 +248,7 @@ If AutoNeg_A is set to
>  .IR On ,
>  all three values of DupCap_A (
>  .IR Half ,
> -.I Full
> +.IR Full ,
>  or
>  .IR Both )
>  might be stated.
> @@ -278,7 +278,7 @@ If AutoNeg_B is set to
>  .IR On ,
>  all three values of DupCap_B (
>  .IR Half ,
> -.I Full
> +.IR Full ,
>  or
>  .IR Both )
>  might be stated.
> diff --git a/man7/symlink.7 b/man7/symlink.7
> index a2a34204b..8b691aa1a 100644
> --- a/man7/symlink.7
> +++ b/man7/symlink.7
> @@ -548,7 +548,7 @@ the
>  command acts a little differently.
>  If you do not specify the
>  .IR \-F ,
> -.IR \-d
> +.IR \-d ,
>  or
>  .I \-l
>  options,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
