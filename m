Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 67711B21EA
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 16:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730331AbfIMO1A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 10:27:00 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54451 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725536AbfIMO1A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 10:27:00 -0400
Received: by mail-wm1-f65.google.com with SMTP id p7so3004123wmp.4
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 07:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IYmrv/DFMlgZj0k+zl9e+fizhmFCRP8EYzhfMYxhhqI=;
        b=p/Iuyf1bl4dzwU70r8oLo/BlmI+Q0dw/t2GVJPBeVleidvTlCD5AWvmMaYa+djdtrl
         17j07MjUsbLVFQiyzjNhiQoNu1IuyLEsaeg3opb7sZplQTkJd5LUbNScheIQyYBCMxiA
         Th+SAZlwtsXry/PiImvG7+QULMZebyc0CGwesbNAUSknri5pkpJRRsLhDxEAVhCdhsX/
         74xJ8/aLaM/+1FcHp2fuxrRiIuSeV3JoBLvHcbLsQW1TFVnB7l/sF/s+RJjTCeF/gKWe
         UOfE4P+1/a6pOSgMbs58SwPr1WC2HNyWVM44wgiKXscJtZCX/UHLkx+4FTRzDL19+BmE
         SHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IYmrv/DFMlgZj0k+zl9e+fizhmFCRP8EYzhfMYxhhqI=;
        b=NBf14zYei9bhlefVBDI2iCtxHCHdrMQKO5tEYj6BSuRmS/O/Xg7LLPtJ+PsMXQzOtD
         k090By5XCXuW/FKw/7PlwLRScDffMGVC8Tccc3+2wPYEdmaD5lxGkiGUcNg+zMWcwA0f
         aAGg+d/zSxek4Lish/QM3v2PAqyklPk9R9RvPq1tuRQKZlHmHilfNgAQRbgcoX7sa4Ty
         Bc54XsF5oUKU252/6E4Vtq7PoiGEV3zyGvQVSB/8m2Qb9kH4+dWFS8AE2AX46M6Kbhth
         vXy5WykZxxpowz3zu8XikGwrIKsej0RXR79UQ5ZXId216/Hfeg7KrkWuB5Z7UplAWe2V
         Qe0w==
X-Gm-Message-State: APjAAAWc4yo00O1/G4rLh5q+YiO/xnf4hvLpRA/QXJDB2GqVI6xoXNCj
        MmWlB5cl3SG0G4U7DlfyHwcixbPX
X-Google-Smtp-Source: APXvYqyPj786Dd8VNxCfxRenSDYyjyaKRnRwlbMa2H6N/eJas1/BftEawdKvyfBBHsSdjczJrmtMtg==
X-Received: by 2002:a1c:1b14:: with SMTP id b20mr3429665wmb.122.1568384817395;
        Fri, 13 Sep 2019 07:26:57 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id v4sm43905966wrg.56.2019.09.13.07.26.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 07:26:56 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] mmap.2: fix EINVAL conditions
To:     nforro@redhat.com
References: <ba87bced44ac346f45887c6e91d0d29b0632a7f9.camel@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6043e06f-011e-ef75-cd9b-b0a0b3cee5a8@gmail.com>
Date:   Fri, 13 Sep 2019 16:26:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ba87bced44ac346f45887c6e91d0d29b0632a7f9.camel@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Nikola,

On 6/24/19 1:20 PM, Nikola Forró wrote:
> Since introduction of MAP_SHARED_VALIDATE, in case flags contain
> both MAP_PRIVATE and MAP_SHARED, mmap() doesn't fail with EINVAL,
> it succeeds.
> 
> The reason for that is that MAP_SHARED_VALIDATE is in fact equal
> to MAP_PRIVATE | MAP_SHARED.
> 
> This is intended behavior, see:
> https://lwn.net/Articles/758594/
> https://lwn.net/Articles/758598/

Patch applied. Thanks for the excellent detail in covering
message.

Cheers,

Michael

> 
> Signed-off-by: Nikola Forró <nforro@redhat.com>
> ---
>  man2/mmap.2 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index cea0bd372..b41e8b9ca 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -565,11 +565,11 @@ was 0.
>  .TP
>  .B EINVAL
>  .I flags
> -contained neither
> -.B MAP_PRIVATE
> +contained none of
> +.BR MAP_PRIVATE ,
> +.B MAP_SHARED
>  or
> -.BR MAP_SHARED ,
> -or contained both of these values.
> +.BR MAP_SHARED_VALIDATE .
>  .TP
>  .B ENFILE
>  .\" This is for shared anonymous segments
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
