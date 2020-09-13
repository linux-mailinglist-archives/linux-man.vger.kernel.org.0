Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D167267E1C
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 08:06:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725902AbgIMGGB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 02:06:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbgIMGGA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 02:06:00 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F182C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 23:06:00 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id z9so8214857wmk.1
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 23:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ktHd2MqEdE4FjWfi33lFd7lbrCXyqtJTne61BYtUn9g=;
        b=fX45rzAQU+ZQ8UYJX3Z0YUxeTC41qtEZkPQ3xDIAeDLrmHGMd90BbjBEynCUtYqNiT
         KETY2ENqtFzqlJX8Ektp2L+I8GUuSyzepvSoyf4qVfoGzr6J8PYoHMi4dvJ/dDazS45Q
         E43l8ZBHY6cLau4nUbeIAxKW912pNnpzh0CogMGKHVYuesowHpmolCJ+JTkYOu2L4kqm
         EyRTC8AFgPxVNcVIUz+rPxl7TRqXwq3GGS0N4DTdg9ds5alSeYK0Na0oZ9xiuKYacqaY
         QUu3kPIDJAkOSH+1kqfoOU0iMuu/BsCFBF2KU98DGaOl6is9URzWdZQfJZb/gQbxNo4x
         sR+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ktHd2MqEdE4FjWfi33lFd7lbrCXyqtJTne61BYtUn9g=;
        b=FCy/HS1q3P4pJRML2pMvp7kL+a+X1XjmUnPD0akhHhgg/B26ftmqY8DtFxji4tQte4
         0sDF4roJPATvlr6gVMSsii0M+g/JOSPujHLomC73p/f5lffSg9FoONRmmICc750Bkll7
         vP+vI8yX/dWc86MzjkOpxYUuaeAWsJ48uLN6olUS9RRur9PmeDUgK0nl5CFWoNuJd9hf
         w+UNfPydilABaFRG71EghlZQgxA/dLpbtLY0H7dMxPai0UBQ50isYjGAzEnKkvdWsFz5
         01knEv+dDLuf8tzQWfrBWPjHbIY1Rrj/rDZqkfEcO2/hKs2H0/GGTeQL9EczGmnziUDl
         B4wg==
X-Gm-Message-State: AOAM531uBa6ezkNaLmg+pC2n5rvPGz/xCKbiG6v9bClY/Lt7PxeG8CvH
        e/kEoSL9jRtaYzY36XSd84oRX+gtWzs=
X-Google-Smtp-Source: ABdhPJwZldw1a2/NzQ70YZYJX6rsbwWOAxu2nL90mdriaTEbTwhQBiq1Mm4/8i9WfqjrG6Oy8eUsmA==
X-Received: by 2002:a1c:2501:: with SMTP id l1mr10371989wml.16.1599977158575;
        Sat, 12 Sep 2020 23:05:58 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n11sm13769793wrx.91.2020.09.12.23.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 23:05:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 03/12] pthread_getcpuclockid.3: Cast 'time_t' to
 'intmax_t' for printf()
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-4-colomar.6.4.3@gmail.com>
 <af4a408c-7e6e-4074-2c61-461e7f167a55@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <58caefae-2952-692e-67d2-17857d84bbdf@gmail.com>
Date:   Sun, 13 Sep 2020 08:05:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <af4a408c-7e6e-4074-2c61-461e7f167a55@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/13/20 7:58 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 9/12/20 1:14 AM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>  man3/pthread_getcpuclockid.3 | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> Casting to long is the historical practive here, and should be sufficient,
> don't you think?

Oh -- I see Jakub made a similar comment for patch 08.

Do you want to redraft this patch too?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
