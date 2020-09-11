Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE7D1265D50
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 12:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725777AbgIKKDr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 06:03:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgIKKDo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 06:03:44 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D690C061573;
        Fri, 11 Sep 2020 03:03:44 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m6so10919319wrn.0;
        Fri, 11 Sep 2020 03:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=POhj3jegRGP6q3IKkaKl2cWKxOt99YGMVORLapBYKGY=;
        b=Rv86pOREL6ZX1Yj2fV1HOdVZ4Jf3FSIcJHQccO+6KcsvkozGG7gtLk+cKtfiXsce+Z
         AZfuL0MJN/qA70VRkN+T02YA5c31xZsbj3C0DQsHW1GMN2t0q2G5LHSpFl0SVUC0k1zE
         BAe7vS02FqFtmxaTwinKOa5sX6/JPuUYjUpJo1U+iE54RWvzT2FB/JW7D8Ua7ubtVR8G
         0SwTLTYUZ4vT884Y+wKQwz46zdmukPCczHs5G5fSYDnnnOUB22DXWNAbq8/X6cNumvJc
         CHdQ7Awc0A2m0wYTxl0nAfMJ6KD3pkJLQ3s2ETpKJHtsiMlUzCGtjJSAI8x4mG5rYMKl
         +eUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=POhj3jegRGP6q3IKkaKl2cWKxOt99YGMVORLapBYKGY=;
        b=mRZZYe6RIV/ah5gt1n7DQaaeEnb7BjpmVqytGqgqwxPHedZsxclK1ir553GaYWOEop
         ufrMKG6Q0ujAQxa7L+9ww2MDdboSW3LfWIzrVrfiPrAhohIgyzdQoet1uOqKcN+ZneUh
         2tmWsNFR++6SoVqssmsTJCm3MfKAO9YSkXwrEMNPAKUTWSD92k2UZ58Jpdy02Rjib+3V
         lSsLJVQfCMwjgdN9dtthPBS3Hv5BuiaA2p7o6Sbt7MCoDwrtNU6pPHAK+8w0UYzm+DJ3
         FWCWti6PpLYs2sp18GDBpzCLm0nd3YGZUBitiyHuELlxRMDRvvWrZ7a5syoP+Fep8PRT
         4/8A==
X-Gm-Message-State: AOAM533V4JE7zdAvINRaFimJqpFJvlQoZAN6db9u29n2jx75Ahd22XY/
        yZ6r1PYok7mskuW4XK+W89O4TS7Dajo=
X-Google-Smtp-Source: ABdhPJz8MXQKZbTXAhY0CmNrdOQgJKSPFi3TaYkpHz0AexP6+kpdvOS+Vp9hoLi0/93+nLaa1SNyHg==
X-Received: by 2002:adf:e711:: with SMTP id c17mr1261191wrm.359.1599818622470;
        Fri, 11 Sep 2020 03:03:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id w14sm3629041wrk.95.2020.09.11.03.03.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 03:03:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 23/24] select_tut.2: Use MAX(a, b) from <sys/param.h>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-24-colomar.6.4.3@gmail.com>
 <ede06e4b-7217-1315-6035-9116df9b02c0@gmail.com>
 <e10294cf-e7fc-6ef4-55e9-c09ba30d995f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3170056b-f99d-dad4-9418-777d3af80f03@gmail.com>
Date:   Fri, 11 Sep 2020 12:03:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e10294cf-e7fc-6ef4-55e9-c09ba30d995f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/11/20 10:46 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-09-11 09:54, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>
>> I'm reluctant to apply this, because MAX() is not a standard
>> macro. I suppose it may not be present on some other UNIX
>> systems. You thoughts?
> 
> I know the BSDs have it; maybe not all of them (I don't know them all), 
> but it is present at least in OpenBSD, libbsd, FreeBSD so I guess it's 
> common enough.
> For other UNIX systems, I have no idea.
> Maybe there's some unicorn UNIX that doesn't have it... impossible to tell.

Yup. So, I think I will skip this patch.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
