Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1972E2B1642
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 08:18:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726352AbgKMHSE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 02:18:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726348AbgKMHSE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 02:18:04 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D65A3C0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 23:17:53 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id h62so7459226wme.3
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 23:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cwFfHW80WvYgjwzgnjcBi7aspJECTXVlDg+WWHz61J0=;
        b=dNM+4z5Pz1uoeYrsWq+ogVbjKzgl42mFz+vrkwk2s7Ft4wYi/6UMXMKxOddfyljA70
         dOiO5GLGX+CIvnMFp0R90gDtB4ebhatxPPNx7C3nUlZSGsn1W4jovFqdHvBihH1ocPR8
         7Prwklczmny/vUPCv60zkW7hNVjqTXzj1ckmvrs6Cv8JMZWmpG/FE52iZLSm7q1FU8sA
         KQ8/s8oCz4DHLa/BRwi/81LuqFRy5D2KvDXVzUbpY3vd8UBD0gTtENeF7feBsaN2CPHW
         bnshSt8oC38YQC8/SyqgcSDZA0K3e8r3OIFcFIHKpO+tCNJHoY9nhyEQ3d4w73bOAt0n
         bkag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cwFfHW80WvYgjwzgnjcBi7aspJECTXVlDg+WWHz61J0=;
        b=lPR/bCMXSw2ghOoYPyxxZ5Vs88kYDqwxNqsoS8LQS1a0DDn8XYgLUwpFhXEzdYutTd
         fm0JLVXFkgvZUYWDRP8CmB1FNq0MfXizc+sub6eSztU1JqaN1OL39GNHPq9TrPJuL75+
         rw9NfxCJRnHdWl6+BjeeUD/pf6zW10/ThYNf33Sa+8WrkP9otHYA83SAyQDVvYqttGQb
         G837rVLjsGPzORUYaTCqzSA7M8oHAPGBySMf2MlYnF+mcFsaaLRMycrP6Xh5QWnNa6dx
         YlOYn61Q1xny9P9rrUv4IqCBhCct6rR8oXz9aOalfiguAW3lTT3hHQQTokc+5Z8DFovo
         LK6w==
X-Gm-Message-State: AOAM531isaY1UKSMPx3fJn40ludAfKHm4kP7fQHF4sMaYCeZvQ+MaxM0
        9Dbj5JG8/S0ymNpDa2IxLlQCjsm74RM=
X-Google-Smtp-Source: ABdhPJyuna4rcs7fV9o8EaYQppivrqCsmZ4/Sv/JtGEdC5rtz6aVAOOtkhEYiSrqda1H0mCLe7lhWA==
X-Received: by 2002:a1c:7e8e:: with SMTP id z136mr1101988wmc.46.1605251872293;
        Thu, 12 Nov 2020 23:17:52 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id q12sm10219458wmc.45.2020.11.12.23.17.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 23:17:51 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Rationale for .PD 0 in old commit
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <6b34f96a-7930-3338-e286-c17fad67b5e3@gmail.com>
 <7b38be67-711a-fd8e-539a-bf946b3ee87f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cb2b9421-fd39-cb5b-8af4-2ef1c197698a@gmail.com>
Date:   Fri, 13 Nov 2020 08:17:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <7b38be67-711a-fd8e-539a-bf946b3ee87f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,


On 11/12/20 11:30 PM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 11/12/20 11:26 PM, Alejandro Colomar (man-pages) wrote:
>> Hello Michael,
>>
>> I'd like to know, if you happen to remember it,
>> the rationale for using [.PD 0] + [.RS] + [.TP 24]
>> in perf_event_open.2.
>>
>> It was added in commit 2b538c3e5380cbe81a5c053cd183788e3a13f0cb.
>>
>> I guess it's related to the fact that
>> there are too many levels of indentation,
>> but is it really needed?
>> I think everything fits correctly in an 80-column terminal
>> without needing that workaround.
>>
>> Is it maybe for other than terminals?
>>
>> May I remove those in my attempt to simplify and standardize the markup?
>>
>> Thanks,
>>
>> Alex
>>
> 
> 
> Ahhhh, It removes some unwanted blank lines, doesn't it?

Yes.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
