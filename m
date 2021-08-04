Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC2C03DFBFB
	for <lists+linux-man@lfdr.de>; Wed,  4 Aug 2021 09:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235606AbhHDHVW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Aug 2021 03:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235394AbhHDHVV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Aug 2021 03:21:21 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EE48C0613D5
        for <linux-man@vger.kernel.org>; Wed,  4 Aug 2021 00:21:08 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id x17so576862wmc.5
        for <linux-man@vger.kernel.org>; Wed, 04 Aug 2021 00:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=d47MilEDQ5+nmkDYElQ1PvX79R9NMVYP4OGGd0gn4y0=;
        b=sF3iatB4m8HPe6TiapYeRmXD4DgnnB01nl/6Btn+wuSwsOlzJuTcun8scdIdOs2wHX
         w/a3QLLgb6HrM/K/bZcoBO0iNIhtVCFcWFC/me+aQFG1jBLTK66MBf4fBcUK656jxa4A
         zQEYSkkGk0TyzvY7GPei4gaR4zFV6AGa6Ved+TBsIDW2dH0C6Fi1IomfECCcLsoBA1WW
         v3SvPb1P8rG7eM6nQBexYG/efE3OMTQ6yXBt542RBZWCItYFe/NcvN8iQ77O+OOPQwkb
         UXQElP86xHBeoQkutKGQJlsPbxpIO8J6Xz8TmWaWB4xB0w9kb8FulbiW+2kSJ5cVEtZq
         BWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d47MilEDQ5+nmkDYElQ1PvX79R9NMVYP4OGGd0gn4y0=;
        b=OAGgoMH3Zjnw+/QSO8h/cfsr2HTra3DEW2hx8aQuuQwsOd0VF44n+FYRvdtZP4Iuk/
         8Fh20Ya5x3IqNyb1VMGc3WX9kEW3/JRXdIPUgsZ2fYnDjdM8lYHrvCHm3p64o44eQuqO
         QZj7zQD8gc0bpIdQPi0pUQbS8jMk+48Zs6rln49kOp+oWQW7cmBf44VKLtBG9t6wHKtw
         1eQDM+rMaVvwIi6S+nUiXnoXk+fhuQmj72LTMwfl6OcWoMziKokJNEeh4rMdAT+70SFC
         iZTngCzsC5c0NmyGtKgqdrTEPuU1a/+g3hJpQ7LY2M8coEXWFSekmrNMNkrOov3bSkAZ
         WXOA==
X-Gm-Message-State: AOAM5335gCK8jWPGIxCCsFeEypEMKTTm965krjoFGatA9HW67+xiCDVf
        sQvx7xKH7va9TeXJ+zHbKEKezkoAoQo=
X-Google-Smtp-Source: ABdhPJxk83w5Tb2NGsJW5y3gSjFZ0HGc659C0NIyq2686T2W4QGreJxnTd2BNEIYDkawFlYLPgYxtQ==
X-Received: by 2002:a05:600c:1ca4:: with SMTP id k36mr8221235wms.107.1628061667194;
        Wed, 04 Aug 2021 00:21:07 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id d15sm1468380wri.96.2021.08.04.00.21.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 00:21:06 -0700 (PDT)
Subject: Re: [PATCH] proc.5: PID/stat: add I, fix P state doc
To:     Kir Kolyshkin <kolyshkin@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20210804021506.181989-1-kolyshkin@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9207c4dd-5a08-88dc-509c-3f9929ce6ce2@gmail.com>
Date:   Wed, 4 Aug 2021 09:21:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210804021506.181989-1-kolyshkin@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Kir,

On 8/4/21 4:15 AM, Kir Kolyshkin wrote:
> 1. The I state was not documented -- add it.
> 
> 2. The P state was documented to be absent since Linux 3.13.
>     It appears it has been reintroduced in Linux 4.14. Document
>     it, and move the description up (so that currently present
>     states will be above the ones that got removed).
> 
> 3. Consolidate the two descriptions of W state.
> 
> This way, the set of states documented matches those that are present
> as of Linux v5.14-rc4 ("RSDTtXZPI").
> 
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

Thanks for the patch!  Please see a few minor comments below.

Thanks,

Alex

> ---
>   man5/proc.5 | 19 +++++++++++--------
>   1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 69f6e15dd..d6027c469 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -2099,10 +2099,18 @@ Stopped (on a signal) or (before Linux 2.6.33) trace stopped
>   .IP t
>   .\" commit 44d90df6b757c59651ddd55f1a84f28132b50d29
>   Tracing stop (Linux 2.6.33 onward)
> -.IP W
> -Paging (only before Linux 2.6.0)
>   .IP X
>   Dead (from Linux 2.6.0 onward)
> +.IP I
> +.\" commit 06eb61844d841d0032a9950ce7f8e783ee49c0d0
> +Idle kernel thread (Linux 4.14 onward)
> +.IP P
> +.\" commit f2530dc71cf0822f90bb63ea4600caaef33a66bb
> +Parked (Linux 3.9 to
> +.\" commit 74e37200de8e9c4e09b70c21c3f13c2071e77457
> +3.13,
> +.\" commit 8ef9925b02c23e3838d5e593c5cf37984141150f
> +from 4.14 onwards)

s/onwards/onward/

I'd add an "and" before "from", or change s/,/;/

>   .IP x
>   .\" commit 44d90df6b757c59651ddd55f1a84f28132b50d29
>   Dead (Linux 2.6.33 to
> @@ -2117,12 +2125,7 @@ Wakekill (Linux 2.6.33 to
>   .\" commit 44d90df6b757c59651ddd55f1a84f28132b50d29
>   Waking (Linux 2.6.33 to
>   .\" commit 74e37200de8e9c4e09b70c21c3f13c2071e77457
> -3.13 only)
> -.IP P
> -.\" commit f2530dc71cf0822f90bb63ea4600caaef33a66bb
> -Parked (Linux 3.9 to
> -.\" commit 74e37200de8e9c4e09b70c21c3f13c2071e77457
> -3.13 only)
> +3.13 only) or (before Linux 2.6.0) paging
>   .RE
>   .TP
>   (4) \fIppid\fP \ %d
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
