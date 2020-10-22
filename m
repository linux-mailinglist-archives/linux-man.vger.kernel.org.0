Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8ACC296407
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 19:48:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S369265AbgJVRsj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 13:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2900989AbgJVRsj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 13:48:39 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05092C0613CE
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 10:48:39 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id n6so3553410wrm.13
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 10:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mHMpq9Uau2EMbgProagCSVgtqHfuBKjfra1ziV13koU=;
        b=H1h1zycoI8rg/NcT6DenUtcFdTQC0n9+S4M8zwFqKTht5O7/aoEa0owsfskpAyWMXU
         jIr+MUze7WdtTMWcy1rHVX2E7HCiqcQng4n9mYHV55eUlAew+7Q+lG6YDzVpxb7//bqv
         VEqEMHeklAKel2ql7FkPhEirIfFOap0ja1h0+CscUdArGRAU0SGcdAZExRxNdsZ150sk
         Xa1urpR53DBo1OZrVY7VA953P622ZJfcwdrnptr02QOFs6hmRJ5wADdmY6CR8rm7JotJ
         2MD44EKNS+hTyi7a4EpR8puM7Ba8Z7U7Dv2iPQm4pof62A6f/Lmm+jyezTXUx0QbnBRL
         ITaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mHMpq9Uau2EMbgProagCSVgtqHfuBKjfra1ziV13koU=;
        b=evshQZNVglB+fBtxjZdbVA+0mKIZs0cNY9xECNk91X01qXmbiDWFw6CYKd4BUm+55P
         MdL5UjrdSu4/+RjH3LwnEP6fhotWTEaByEPvdmjKqq67sQVaKjZ1+sLOaCG6uy3n6hYe
         Rwsx/VnUL0NuYnJZhCUnIbUJxO664HUuAQfhBMomIQWhU+QjeELZmuWvm0+SmNzBZgmP
         6/hG5kArUUvX9iEgOPfLpS5e7d3jbI50Nqd3j7ptovzx4mqqCEGmlxbR+3ocrU8tB5ew
         z57EjIdpaTzWlZ/aBmCBTYtfKvzNnj128UUWXNWxn7+dcX+q5tcCWnbOKC7IzpZ//OTH
         2N9g==
X-Gm-Message-State: AOAM533AqRAST2KYCiHqjoj+vSKETCumHXaU+3emeof8WEhDP596s95c
        WZ0hTn2MyUH1ac4XUE0hM5v1Llcj87M=
X-Google-Smtp-Source: ABdhPJw7n9DB68aUL1odbhjErS42aRN2ydiYRFaamRJgf1F9aB9GCTwEeWVaxL01mBPfq8mrcPiZSA==
X-Received: by 2002:adf:92e4:: with SMTP id 91mr3910525wrn.230.1603388917715;
        Thu, 22 Oct 2020 10:48:37 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id d129sm5370043wmd.5.2020.10.22.10.48.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 10:48:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 00/10] slist.3: fork from queue.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bbeda9b1-9844-a14d-9531-c65974d70f0f@gmail.com>
Date:   Thu, 22 Oct 2020 19:48:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/22/20 2:38 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Here's slist.3.
> 
> I applied to this page all of the fixes you applied to list.3.
> Also I noticed some unsorted macros,
> so I'll check list.3 and sort them if necessary.

Thanks! I've applied this series.

Cheers,

Michael

> Alejandro Colomar (10):
>   slist.3: New page that will hold the (slist) contents of queue.3
>   queue.3, slist.3: NAME: Move code from queue.3 to slist.3
>   queue.3, slist.3: SYNOPSIS: Move code from queue.3 to list.3
>   queue.3, slist.3: DESCRIPTION: Move slist specific code from queue.3
>     to slist.3
>   queue.3, slist.3: EXAMPLES: Move example program from queue.3 to
>     slist.3
>   slist.3: Copy and adapt code from queue.3
>   slist.3: ffix: Use man markup
>   slist.3: Add details
>   SLIST_EMPTY.3, SLIST_ENTRY.3, SLIST_FIRST.3, SLIST_FOREACH.3,
>     SLIST_HEAD.3, SLIST_HEAD_INITIALIZER.3, SLIST_INIT.3,
>     SLIST_INSERT_AFTER.3, SLIST_INSERT_HEAD.3, SLIST_NEXT.3,
>     SLIST_REMOVE.3, SLIST_REMOVE_HEAD.3: Link to the new slist(3) page
>     instead of queue(3)
>   queue.3: SEE ALSO: Add slist(3)
> 
>  man3/SLIST_EMPTY.3            |   2 +-
>  man3/SLIST_ENTRY.3            |   2 +-
>  man3/SLIST_FIRST.3            |   2 +-
>  man3/SLIST_FOREACH.3          |   2 +-
>  man3/SLIST_HEAD.3             |   2 +-
>  man3/SLIST_HEAD_INITIALIZER.3 |   2 +-
>  man3/SLIST_INIT.3             |   2 +-
>  man3/SLIST_INSERT_AFTER.3     |   2 +-
>  man3/SLIST_INSERT_HEAD.3      |   2 +-
>  man3/SLIST_NEXT.3             |   2 +-
>  man3/SLIST_REMOVE.3           |   2 +-
>  man3/SLIST_REMOVE_HEAD.3      |   2 +-
>  man3/queue.3                  | 248 +-----------------------
>  man3/slist.3                  | 355 ++++++++++++++++++++++++++++++++++
>  14 files changed, 368 insertions(+), 259 deletions(-)
>  create mode 100644 man3/slist.3
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
