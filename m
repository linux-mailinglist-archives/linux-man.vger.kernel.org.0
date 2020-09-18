Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B82DF27084D
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726168AbgIRVc0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726139AbgIRVc0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:32:26 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55378C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:32:26 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id q9so6573704wmj.2
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+PSQuAqAtTuOt0lcjv0/b2u0X4e77c1EFELZbA8tz3s=;
        b=pZaiPJ4bIuw7vANX+igjSrsvi9KYoB4rNruS4oDAz5XDUEi4BdhvoE59GmBRQ2KIbS
         uYdPR3m9dXczqg4+4Y5++11277lySQunbcv8nP/an/DGhsDkp3Bd8ee3SkYW43fNxnRE
         D7Nxlw3Ppu5RTMhizFi8iQ2NnvnuP139LYSYrzuGpNJk7FcKndaTyfV9644U0bX8rJPE
         1X90QO/k6RtdZWZ8Q07k0zYpAe7KLQTiilOiAByii06+z7a587qChMWJGH/0z9kRbuKL
         O3SqOaHAfxoE/ptqxf+tO7DbPhrMCOfF1/+4T1MKr8gnZASnncnbeorfmPQE4wDFaPzA
         KPGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+PSQuAqAtTuOt0lcjv0/b2u0X4e77c1EFELZbA8tz3s=;
        b=WcxU1yTD88hLpwkJtVgeRUt4goAejwLt1bG+LgsUesQ4W2T0xJIW62RRdlrVaHRAM1
         Tx5ammaOh3SAOqdzrwY7/JWj6A87kjRdC2RoeFObwIrGykGfTZGsJBqE2DqIpHTgqg8s
         CYpVeClbXaBzS0BpN2PXUkb9m0zBKvafMekXRFwS3iTSNRk+TDz4SX9FnTMJgw8QzWDD
         Azvcgsk+zw9knGp6P1B0tgymdNppOhRXOrn6s/gc5CIGpkfEgyWW93wAwksX+L4t53+H
         PWb/Qa6iUKdxtO+HxHVGRssmE6thU/73JIzd5tlyA39SxPJm0c9xuC17pwUX3l9gy6/I
         W+5w==
X-Gm-Message-State: AOAM532hz+NhAbqsEscGM/55BlH4qNDk4ip6DjbAtggK74PikmekFPV/
        S5LhplMCGzlTnXf18LFe2mo=
X-Google-Smtp-Source: ABdhPJyTwoP6Z4xohgxBbKp00lvDr2BP/HosSwuxhoYC2vFRGaO1wPfIgozvo4ccDzLsuvfeCny6vA==
X-Received: by 2002:a1c:5685:: with SMTP id k127mr18203728wmb.135.1600464745060;
        Fri, 18 Sep 2020 14:32:25 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id z9sm7379138wmg.46.2020.09.18.14.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:32:24 -0700 (PDT)
Subject: Re: [PATCH 1/4] system_data_types.7: wfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
 <20200918124554.46308-2-colomar.6.4.3@gmail.com>
 <4d201c89-8c47-8487-3672-b9af39c1bf2d@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <cff41318-06f2-af10-747c-2a0ed1e70e84@gmail.com>
Date:   Fri, 18 Sep 2020 23:32:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4d201c89-8c47-8487-3672-b9af39c1bf2d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

On 2020-09-18 22:27, Michael Kerrisk (man-pages) wrote:
>> -Describes times in seconds and microseconds.
>> +Describes elapsed time in seconds and microseconds.
>>   .IP
>>   Conforming to: POSIX.1-2001 and later.
>>   .IP
> 
> I don;t think this patch is correct. At the least, it needs
> more explanation. As far as I can see, 'timespec' is not just
> about elapsed time. It really is just time, expressed as secs +
> nanosecs. For example, see utimensat(2), which set file timestamps
> with nanosec precision.

I took that wording from timeval.3bsd. But I think you're correct.

> 
> For the moment, I'm not applying this (and I hope not doing so
> doesn't break any following patch).

That's fine.  It shouldn't break anything.

> 
> Thanks,
> 
> Michael
> 


Cheers,

Alex
