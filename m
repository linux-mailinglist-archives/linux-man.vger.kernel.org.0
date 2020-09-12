Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C65BC267988
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 12:29:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725836AbgILK3U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 06:29:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725825AbgILK3T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 06:29:19 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F054C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 03:29:18 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o5so13740144wrn.13
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 03:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NqveXbqVfN6t9HiKZQ9/LEIdGpHgXugDIC6Xk5RmRO0=;
        b=BnWNmRAJvSrLSUIsPN/g4yCc3sigxFIyRUKTwVNDSOdJnzbFSr+Ie9vu/F80dE8CHV
         kRiilBrLIbyYP3vGpveVJmp7iP+9uqKv+iutujLiiOT92ANXNELRHKHeblpBNPEMCFLD
         2xA/poWUbwfHLb9FulVEbAX+HNkA++/hJ03p61tUWteCXCNJYOPq5+ntwO8a7jzlox+V
         Okrk80NXUWvKFiSg3UQutoY74WmVavBuJJ2cYnkPETurZmzacIalyT40pQqgIB325cld
         1hHeTZByJjvH9xKIbNRboFQJcNRFSbPuJ1L/s2BoDihLUCfpBFrgdGLM9K3wgwp9QqPc
         Uv9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NqveXbqVfN6t9HiKZQ9/LEIdGpHgXugDIC6Xk5RmRO0=;
        b=SREovP1ZzEHsYAkDzjWwrzPQxQ1g0PhrrBBCRjbLf5uETkpZ5wjdaFG1CkxvESppjH
         b2FPYvgSLFnFwIWKKdGIidJ9iaAO+COgDlkb9TiDsu6YScLGb6mDCO8DvX3/N7G5Dc2/
         l2OnyhuJUYaC5Y98zSqc0jNIi8tSqXGKw1+tLN4eZaEyqvA9n9OANYXZ6Kbp7n/zPe6G
         LGgzg/c1QXbYVp85TFiB3DB9e7TQ6Jt/p56p9APjYkhwiBO61zTYtETcoiwtSYq5c67I
         5FrikKJ8/8tTlvnbgx8Xu0YsLv/8yZEMPtBCgp5rcf/kibcuZnZgZbJXGL9ZztXH8uBq
         iWuw==
X-Gm-Message-State: AOAM533dW/Wxc1KxPc2TLiW6Ff0hSvlglE0R66mbeyYS8RwSgjpTK1I7
        EyawZCPYYA24nWxAs4DKMF/UDOAmyPSuZA==
X-Google-Smtp-Source: ABdhPJx0Wo/Tll7c6JSukvG1OzIqLp+67lxexEnS4GmCYMIa+Yxeyc0dnAhjrhrexF4WweMejBmkEw==
X-Received: by 2002:adf:f852:: with SMTP id d18mr6236972wrq.245.1599906556967;
        Sat, 12 Sep 2020 03:29:16 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id p11sm9118344wma.11.2020.09.12.03.29.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 03:29:16 -0700 (PDT)
Subject: Re: [PATCH 10/12] spu_run.2: Cast 'int' to 'unsigned int' when
 printing with "%x"
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-11-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <0dc39cc2-6cbf-b8f9-3b21-f216c70f17f2@gmail.com>
Date:   Sat, 12 Sep 2020 12:29:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-11-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I think this patch of mine should not be applied.

printf() will internally reinterpret the 'int' as 'unsigned int'
anyway, and the behaviour is completely defined AFAIK.

Relevant standard: C18 §6.5.2.2 6

And in the case you do want this patch, I should have written
'unsigned int' in the cast, for consistency.

Thanks,

Alex

On 2020-09-12 01:14, Alejandro Colomar wrote:
 > Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
 > ---
 >   man2/spu_run.2 | 2 +-
 >   1 file changed, 1 insertion(+), 1 deletion(-)
 >
 > diff --git a/man2/spu_run.2 b/man2/spu_run.2
 > index b6bc2c131..ddd03ffd3 100644
 > --- a/man2/spu_run.2
 > +++ b/man2/spu_run.2
 > @@ -254,7 +254,7 @@ int main(void)
 >        *   0x00000002 (spu was stopped due to stop\-and\-signal)
 >        * | 0x12340000 (the stop\-and\-signal code)
 >        */
 > -    printf("SPU Status: %#08x\en", spu_status);
 > +    printf("SPU Status: %#08x\en", (unsigned) spu_status);
 >
 >       exit(EXIT_SUCCESS);
 >   }
 >
