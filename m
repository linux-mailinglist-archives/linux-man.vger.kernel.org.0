Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77DE0317264
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 22:32:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233391AbhBJVcB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 16:32:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233417AbhBJVbq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 16:31:46 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DEAAC061756
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:31:06 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id y8so4749293ede.6
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Xv+pmgFmpryAUxwjiiWAT2phin7+ICj1qd/+wr0PiRg=;
        b=kZho35chOaOjfBr/aGvPrIMPf8CtVPRj0mgFkpTFkevvlA3w6XqJLRctLk3aoB2g1I
         NPXlHLIuJBoJ2GJ5YpTEbeG4bQgaVqQgTpWTiPgCJ+u6iQsLslZ0V8CYImrDIcum9zlW
         wVNI9EmBSmO4+5unVe4DnmMdIUUIICAtRvidxRktz/4TteVCYjYi+IZGw/wlaXPOKzBL
         T9jN6ThB3uzLbIB0g42Ijn7aujtkCl7EJ2gASx02/PRvfW4ekqs5AN7ixf/uCDsfedKh
         sIS7UtDyDAV++2d9Zdg+A4oSiYU0YCjaI60PU83/IlxCnMwLwMM0k8E5VP5PLAj56Az+
         Fb/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Xv+pmgFmpryAUxwjiiWAT2phin7+ICj1qd/+wr0PiRg=;
        b=B8TJMVlKw/ZEFnh0+XP/ISH0Or7mPO8BnLsOY3B3OPmrXDasPaamjVTWAFm5IzlYbP
         icHvdbtTuHvH6BEw+ELFY6ff9FVEA++P2wxfeMoMOP7ZdJaiNh7XPz4iIWvOJpu/NIDa
         +YHXdTm4gGzRkVLlrlmalaP/jv+Jz1deU891w2U+oAqOn28le2ItMnmrYuYO4UoV5x+t
         6miWJSAYtRk3YaLEiS+G89HaAnOTX9CnZkSlf3K3vLDCUNZyZk3qsW3NSPFo8z2/sS7d
         ds/XPikh7cbG8X2U0JvGkSa+VQLAUX6FqLM4edrIQtMAA8dvKuH56TDPuSJx7pzYYF+f
         yjBA==
X-Gm-Message-State: AOAM532DGYAxu/8I4/NjDvBHsxQg2D70z/JSe2fEizDx7FunE3N+x0TC
        0lBgXGC5kZACFRkjm6EQ5ORwoiiyd9nGAg==
X-Google-Smtp-Source: ABdhPJwaLVDJy8J3T5QLTPyyRxRRVWWFgY0P9Z4K/nNnbRDKTFiEyF17k4gGIVD6dPKKQ/6aZ72E4Q==
X-Received: by 2002:aa7:c9c9:: with SMTP id i9mr5084258edt.160.1612992664964;
        Wed, 10 Feb 2021 13:31:04 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id kb25sm2242222ejc.19.2021.02.10.13.31.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:31:04 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: ptrace.2: Simplify signature? s/enum \w*/int/
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <e7685576-db7b-f53d-26b9-64ee6621aea1@gmail.com>
 <bba760a2-b291-d676-2949-90b47f13d4f9@gmail.com>
 <eb01e43f-6ab4-c4c9-62b5-a705aab906ae@gmail.com>
 <e5de8f47-b8cc-ee52-4702-5bdf7193f0d8@gmail.com>
 <e49ab35b-a131-1adf-4b5c-5285e662d26c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1ac680f8-e61b-440a-4c51-b34842d229c3@gmail.com>
Date:   Wed, 10 Feb 2021 22:31:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <e49ab35b-a131-1adf-4b5c-5285e662d26c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/10/21 11:18 AM, Alejandro Colomar (man-pages) wrote:
> On 2/9/21 11:34 PM, Alejandro Colomar (man-pages) wrote:
> [...]
>>
>> Here are the glibc results (grepping though the kernel is taking much
>> longer, but I guess the command will have ended by tomorrow morning, and
>> I'll send you a follow-up.
> 
> There aren't syscalls using enum (as expected).
> 
> .../linux/linux$ func_list ../man-pages/man2 \
>                  |while read -r f; do
>                          grep_syscall $f;
>                  done \
>                  |grep enum;
> .../linux/linux$


Okay -- I defer to your judgement. You send me a patch, 
and I'll apply it.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
