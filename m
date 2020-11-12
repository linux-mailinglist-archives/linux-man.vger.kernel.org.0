Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7412B1188
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 23:30:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726072AbgKLWa0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 17:30:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725999AbgKLWa0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 17:30:26 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7927AC0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 14:30:26 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id c17so7626783wrc.11
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 14:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Hm/xCx4ICEWre4tiHWcBLVt7hAT2KyWC19Bqz63aeNw=;
        b=lERPQfpjt+AlRPuhhAIlpbYaX6vxc7EQ165to3vBKAYemHvflrD7sp9vZMmx3jdbMM
         r+epp88Tt3Th30HlKA0EldvTykATgPU8eFVyNXjFR3bVivB7ULLgboaS/belDI+ccnbw
         bja9yGaak28baVndfqvNbp5U/VEn5sEyNZ54LH2Inu96/Ncud4i+At4vyvH5SZenzWQp
         OqZvq2qpTKKHPXNw1k6Q0M8vrIegMCovABx9wCzFFArIAF6QEjXqlISHC35UaB28cMEN
         nMBGrzNL1MtTyL9Kd5AgDl7jvXcPqTgD/pMlcR7R4PjHSPT364idIl+GL/ma5ZKoDPAr
         eroQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Hm/xCx4ICEWre4tiHWcBLVt7hAT2KyWC19Bqz63aeNw=;
        b=IoTAG8DRnoSTjsl2b6aZTdaImAIsVSJI+quiupFs8OlGy0ALCcvUi1nut90GPxXS+q
         +5zykrzE7JyFWkXi3zXYcYAcK9YcSXd8ZyRdeKi9ibV3GLFMWVt/oLhOzV3IZTSYeLmu
         CDC17KkKJGW8ONwKR1u9ZuHWvTrN7opV3Dv/AlHrWZfuYU/p9lwK+Z5VXKV9hFporoiq
         7nJqnxqfE9K7bzE5flkzyJ1neWPrFyfReh0vAe9Nlli/r1s3LA5K9Ao/bS1/ezEIeQP5
         2c1/6HqpEb4FZCsCHz85dAg5de34kMCdm8oa9bI3Quv9U6EZd7D69DziVzikAJDU69gH
         FL1A==
X-Gm-Message-State: AOAM532u97twdYfWXd6BVPU1gRqoLaEfTRIpKWRptCnz6929HXY8/EDN
        VpwSF85MCSULrpXqYnA4X9Vwui5rMbko4A==
X-Google-Smtp-Source: ABdhPJwW2UqfvX8wkXVwGTOV4eioJwAsnFuVO8HnBS5SzpUKJGwtRvHVkPlARKlSLdiEpA6424JSGQ==
X-Received: by 2002:a5d:4c8c:: with SMTP id z12mr2055516wrs.248.1605220224909;
        Thu, 12 Nov 2020 14:30:24 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id y20sm7831087wma.15.2020.11.12.14.30.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 14:30:24 -0800 (PST)
Subject: Re: Rationale for .PD 0 in old commit
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <6b34f96a-7930-3338-e286-c17fad67b5e3@gmail.com>
Message-ID: <7b38be67-711a-fd8e-539a-bf946b3ee87f@gmail.com>
Date:   Thu, 12 Nov 2020 23:30:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <6b34f96a-7930-3338-e286-c17fad67b5e3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/12/20 11:26 PM, Alejandro Colomar (man-pages) wrote:
> Hello Michael,
> 
> I'd like to know, if you happen to remember it,
> the rationale for using [.PD 0] + [.RS] + [.TP 24]
> in perf_event_open.2.
> 
> It was added in commit 2b538c3e5380cbe81a5c053cd183788e3a13f0cb.
> 
> I guess it's related to the fact that
> there are too many levels of indentation,
> but is it really needed?
> I think everything fits correctly in an 80-column terminal
> without needing that workaround.
> 
> Is it maybe for other than terminals?
> 
> May I remove those in my attempt to simplify and standardize the markup?
> 
> Thanks,
> 
> Alex
> 


Ahhhh, It removes some unwanted blank lines, doesn't it?

Great!
