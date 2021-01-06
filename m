Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD40B2EBD07
	for <lists+linux-man@lfdr.de>; Wed,  6 Jan 2021 12:10:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbhAFLKA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jan 2021 06:10:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725813AbhAFLKA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Jan 2021 06:10:00 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 109BBC06134C
        for <linux-man@vger.kernel.org>; Wed,  6 Jan 2021 03:09:20 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id h16so4018431edt.7
        for <linux-man@vger.kernel.org>; Wed, 06 Jan 2021 03:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7kP8J5PRCBvGNCBhRvTkHEIm6XxCNsa1PkJ0Lir9acc=;
        b=MPliTz+0lw81ow4+yWJSLDYfYJ8P1WitgdBIX3f2hrpej1D7jWDqI5BwhEoT8pji52
         cDQJqx4zkWg7RZHMm36Qh9nDtK4WfPH46T+msxpzOA2mlmulhjt+lBjNjePto7dasbYq
         aLpi2WKH4vEEljpA9+gMZRXNMS7xx+afx4tmSc+UBvIsFrb8lAe+ywsYC4DbMhfGUEk6
         wpKKjI7sWBun0r+24fhTn2+/zJE41q+LVTgl1AfEXe9OIKNJbHIl72b5FPjdGUebhtLH
         41mAMEyMg6wVazKdrS/+Xf+lW6RKsILu46TPnAWMbqP6xdRKy0/QCzqJ2/cUPVSWj8CY
         02hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7kP8J5PRCBvGNCBhRvTkHEIm6XxCNsa1PkJ0Lir9acc=;
        b=cz0FXpmuhHnAODS3du+DOLPony/4qn76B6bvVbyFoFrn5fNZ0Uia9cRE1peBmDWUt7
         9jhCnb7J8iay7fxWXhEelj/sbpC/vDNVw6szyilL85z7TaDI23JHfSJSY/ZHLFwFbHkD
         +CFp5PbxsVWFX5fMOJdr69aWWS+Bc1ovw+nmZoaaO8DkTvGS+sjFAL0DV+NDfJkzKuSH
         NI3cuk1C8MakOuYPNCQ4ECs8ghO3GUosoU6Yf/GDKO3nhw27OqjYDLKD4NesGzKCDFxy
         pfblITBKXCm+vORyDrItqWXfGAPPiRtQjwxv2efhY3aTCNDvoqD2ki8PlivysZhcrakt
         1kMw==
X-Gm-Message-State: AOAM533fGSIFU3pue7oi18dLutte6M8GWxDWQyybMAOFwwsR7vzWS4Xd
        bYdYPkE7cYQgY+glGYG7igq5yGhmzLE=
X-Google-Smtp-Source: ABdhPJwaMyMl/Osr4fmgDedtzc567ZcZvCMxdd6lEPch5kb4xmbZP53zYSjpxO9v2ZLW9SgQxR/K1Q==
X-Received: by 2002:a05:6402:1c04:: with SMTP id ck4mr3581808edb.320.1609931358398;
        Wed, 06 Jan 2021 03:09:18 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id q25sm1271356eds.85.2021.01.06.03.09.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 03:09:17 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: pdfman
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210104224515.140403-1-alx.manpages@gmail.com>
 <ae31daa2-a44b-2e79-1a70-a95428b7e231@gmail.com>
 <90210646-9bc6-fce0-5c3b-a440a0a0bf8f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6d09983e-7c7e-c04d-dc02-33d3828594a7@gmail.com>
Date:   Wed, 6 Jan 2021 12:09:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <90210646-9bc6-fce0-5c3b-a440a0a0bf8f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/5/21 3:05 PM, Alejandro Colomar (man-pages) wrote:
> Hey Michael,
> 
> On 1/5/21 1:00 PM, Michael Kerrisk (man-pages) wrote:
>> function pdfman {
>>     man -Tps -l $1 > /tmp/$(basename $1).$$.ps
>>     ps2pdf /tmp/$(basename $1).$$.ps $1.pdf
>>     evince $1.pdf
>> }
> 
> Would you mind adding that to a script in scripts/?

I'm not convinced it really belongs in there.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
