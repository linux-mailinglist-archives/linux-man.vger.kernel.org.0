Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E7892DAA09
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 10:25:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727536AbgLOJZQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 04:25:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726749AbgLOJZM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 04:25:12 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C49AC06179C
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 01:24:26 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id lt17so26651958ejb.3
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 01:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4Hu9q15O2SIOVCfKIdpXbfZskDOcHOKY8olGzm/ogB4=;
        b=U8Z+YSq6w1unYHdKlb+m91hcwl5AuMHoYHJl5F5y/DT2l8wJ0olUO0eEeUDOu8c+hC
         ZxgnnDhxlw5Gl23x74UbRVK2cLa5DvkGnWLubkuoZQbDt/eMMuuCYVinhTsKnXM7Zz9S
         RTGi3kyRPpC22i7iGYh2bO4HTZDiZI17KiOVkWzm6pnA4B29lRuy67Zpz8cUbf+Uogs+
         u6hy5f/8bm9CcLxhrRo4r0OnDrTV7lWB23eoGIZ6i/oB1WrExJtAIuXTesUSqXZVCbg1
         qW2GSu2+TabvUv3sNkAJeR0wzeEPAwIWArqZzKAMo7Icj8WNb+W3kwvRzHN2KJrbmzmO
         PXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4Hu9q15O2SIOVCfKIdpXbfZskDOcHOKY8olGzm/ogB4=;
        b=r4NmMvFFvhFAGwcioqxlIUdyuFJx5gRwo3kuEXtYJ4Iw6jYwmCjzkfzDqpeRYRVZ2p
         dCtMhPNXK8Mw61LxMthI+C2b1P7HARjd3NPbiMl9K3cCdvMOODNI9DNmakiJn9Q4ZCtf
         CaMQF3A6XTrnn1Bqpf8NoFut6Yk0PiQ1eavHg0gGY/cYqwK6OT6oyIu1bN7XArP1TfIR
         c8CFOumoBxFOJHevExAErEEx5yhFGQ8Vmh/aOY7AEnqa8CSCYayKHboUe0FpW85uknr0
         RkD84qqaeKkAKlrkL1sUcS6hTuqPg0gBUilXhWX40+cx0hu39inEY5Hf5UXfhNnHWZjm
         eIcg==
X-Gm-Message-State: AOAM532yjs6gyoDR2sbGY/JbOtdRu0CWIMA5AVFJX/I0insUDqmXSP6c
        cAvHVF4EQ2d111SPxOXPrXWMvpaGA6Vq5w==
X-Google-Smtp-Source: ABdhPJwsZKLW1p55z1qElBgQSRsL7UlXjq7Ic6LvG4jV/lyz0cJg7f4ULi+0diXxQV21mGEu7PlcAA==
X-Received: by 2002:a17:906:3712:: with SMTP id d18mr26925928ejc.178.1608024264571;
        Tue, 15 Dec 2020 01:24:24 -0800 (PST)
Received: from ?IPv6:2001:a61:2534:8201:1503:5ce5:5a20:9c25? ([2001:a61:2534:8201:1503:5ce5:5a20:9c25])
        by smtp.gmail.com with ESMTPSA id ho12sm890469ejc.45.2020.12.15.01.24.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 01:24:24 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strtol.3: tfix
To:     "John A. Leuenhagen" <john@zlima12.com>
References: <20201215030359.bwevjq5ovqnncuan@Lima-1.maple.zlima12.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fc7be6d5-2ec1-c15e-96e9-f7b67472ff27@gmail.com>
Date:   Tue, 15 Dec 2020 10:24:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201215030359.bwevjq5ovqnncuan@Lima-1.maple.zlima12.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/15/20 4:03 AM, John A. Leuenhagen wrote:
> Signed-off-by: John A. Leuenhagen <john@zlima12.com>

Thanks, John. Patch applied.

Cheers,

Michael

> ---
>  man3/strtol.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/strtol.3 b/man3/strtol.3
> index 549138726..26b62664a 100644
> --- a/man3/strtol.3
> +++ b/man3/strtol.3
> @@ -198,7 +198,7 @@ and then determine if an error occurred by checking whether
>  has a nonzero value after the call.
>  .PP
>  According to POSIX.1,
> -in locales other than the "C" and "POSIX",
> +in locales other than "C" and "POSIX",
>  these functions may accept other,
>  implementation-defined numeric strings.
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
