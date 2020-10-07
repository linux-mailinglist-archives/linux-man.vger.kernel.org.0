Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E28BD286686
	for <lists+linux-man@lfdr.de>; Wed,  7 Oct 2020 20:06:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727717AbgJGSGR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Oct 2020 14:06:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727783AbgJGSGQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Oct 2020 14:06:16 -0400
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com [IPv6:2607:f8b0:4864:20::f41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 501CFC061755
        for <linux-man@vger.kernel.org>; Wed,  7 Oct 2020 11:06:16 -0700 (PDT)
Received: by mail-qv1-xf41.google.com with SMTP id s17so1666697qvr.11
        for <linux-man@vger.kernel.org>; Wed, 07 Oct 2020 11:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XVN9TXDGSRj6V/9Ka28X5J6VnHkh7KeBNilsvN02Qvw=;
        b=OAT+A2JugNHWpeBa4VCScggVS1RNxb7Bzc9FeIjd39PsK3t5spZtyVerbeOydI0S+w
         8c6jl6wkFg/suzw8+2cdDQ0vse/g1CfboW2aCk11lsflbyTwFtkmdxwVTnF+EtqByBiU
         2XiZa8iSV0dy8VemS/zKT3470rZ4AMOSnHEztyjr8QXw7uxHBlgjg0OHA9l+vjAXQZI3
         VgeNodHp0PjBMk1oAMHacxpvjqeZ3pdWhtJcrjmSqTR0CNf++lecBqy51kdmHirSnDZV
         EpX89ZdxU7a2DxAhBcNxPECuJvytYEdmUbQeZKqI3rtNAORpDkPW2Hd8TPfqu3fQOkFt
         O/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=XVN9TXDGSRj6V/9Ka28X5J6VnHkh7KeBNilsvN02Qvw=;
        b=JrBwxDywtsvs1gLBO3OTedf7LtGQrRiWYtEkMGJErGOXTgeeEVW1Y9nY9wztVbL6/g
         JX6tmzhr89TBdJ5/ljP8Oya7Vb8vjZq2DAlk9wpRlt7LFzpaxoX7tIsG1fdCbGgxDruw
         5gjto/kAWrKFx7ukXmpkBtGbcGhHFtb7qVTzux0RqNANb9Lo3HJhSY2eu/2CL8G7ka6Y
         oC1onvKSHDTtro/C7wv13Ln/8nWd8y3g9P2eReVCfgZo5QlNyYWR+aV4wqqe4LSEq5r0
         N5T3lp0LlLpCAs6S133IUQ24l69yOz9U1HKKGQy7OvSRSvMYtM2USy07tik93U2ZchYH
         Vp8w==
X-Gm-Message-State: AOAM530zWamkaafE50eEFCv0dn3guosMZ+Qext/Vy/2lEv0svgW9sdWo
        shPNL7cbGs+GPPNH3/m6dTMxEg==
X-Google-Smtp-Source: ABdhPJz42FIkVDjuwfvy5cg69qsQQ4AZ+TLgglXKKVivulsOfBtI8YOACZ1GZIsHVwiqFzbTFQ9xkw==
X-Received: by 2002:a0c:bd85:: with SMTP id n5mr4391514qvg.22.1602093975427;
        Wed, 07 Oct 2020 11:06:15 -0700 (PDT)
Received: from [192.168.1.4] ([177.194.48.209])
        by smtp.googlemail.com with ESMTPSA id m15sm1019968qtc.90.2020.10.07.11.06.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2020 11:06:14 -0700 (PDT)
To:     "Karstens, Nate" <Nate.Karstens@garmin.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "willy@infradead.org" <willy@infradead.org>
References: <20201006161520.975-1-nate.karstens@garmin.com>
 <6dec3d89-a16e-8be5-6f85-4ff4e51e9136@linaro.org>
 <b9349b7939b140fc8e53d3b96807affc@garmin.com>
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
Autocrypt: addr=adhemerval.zanella@linaro.org; prefer-encrypt=mutual; keydata=
 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
Subject: Re: [PATCH] system.3: Indicate MT-Unsafe
Message-ID: <65eb1d09-64b9-03d1-321f-440b857ac1b2@linaro.org>
Date:   Wed, 7 Oct 2020 15:06:11 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b9349b7939b140fc8e53d3b96807affc@garmin.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

But calling system does not really incur in a race w.r.t the resources
of the caller itself and least glibc does handle concurrent sigactions 
calls and thread cancellation (by reaping the created process). I am
not sure about other libc implementation though.

The file leakage will be only for the spawn program itself and although 
it is might characterize as unsafe to call 'system' in multithread 
environment I don't think this characterize as MT-unsafe (and with 
FD_CLOEXEC/O_CLOEXEC system is indeed safe in this regarding).

So maybe document using a different markup to make it explicit?

On 07/10/2020 11:35, Karstens, Nate wrote:
> I'm fine with adding a "race" qualifier. Do you have any ideas on the type of race? I didn't see anything in the other man-pages that jumped out as being correct.
> 
> Thanks,
> 
> Nate
> 
> -----Original Message-----
> From: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> Sent: Tuesday, October 06, 2020 12:26
> To: Karstens, Nate <Nate.Karstens@garmin.com>; mtk.manpages@gmail.com
> Cc: linux-man@vger.kernel.org; libc-alpha@sourceware.org; willy@infradead.org
> Subject: Re: [PATCH] system.3: Indicate MT-Unsafe
> 
> CAUTION - EXTERNAL EMAIL: Do not click any links or open any attachments unless you trust the sender and know the content is safe.
> 
> 
> On 06/10/2020 13:15, Nate Karstens via Libc-alpha wrote:
>> The fact that system(3) does not support pthread_atfork(3) also means
>> that it is not thread safe. See the discussion for the proposal of a
>> close-on-fork flag in the 2020 April and May timeframe, especially:
>>
>> https://urldefense.com/v3/__https://lkml.org/lkml/2020/5/15/1067__;!!E
>> Jc4YC3iFmQ!D9YVAE760hT-YFoOT14KmIu4y2cjQb8ZflVgpX-3rxgBF2WvxyATUeQogZF
>> Ffv2sIQ$
>>
>> Signed-off-by: Nate Karstens <nate.karstens@garmin.com>
> 
> Not sure if man pages characterizes file descriptor leak as mt-unsafe, at least we don't have this concept on glibc manual.  In fact, I think adding a MT-Unsafe mark to this potentially make any libc call that is not atomic potentially MT-Unsafe, either when they do not concurrent trigger race issues regarding memory semantic. At least I think it should add a 'race'
> mark to indicate what exactly is MT-unsafe (as for other implementations).
> 
>> ---
>>  man3/system.3 | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man3/system.3 b/man3/system.3 index aef40417a..8730fabd3
>> 100644
>> --- a/man3/system.3
>> +++ b/man3/system.3
>> @@ -127,7 +127,7 @@ l l l.
>>  Interface    Attribute       Value
>>  T{
>>  .BR system ()
>> -T}   Thread safety   MT-Safe
>> +T}   Thread safety   MT-Unsafe
>>  .TE
>>  .SH CONFORMING TO
>>  POSIX.1-2001, POSIX.1-2008, C89, C99.
>>
> 
> ________________________________
> 
> CONFIDENTIALITY NOTICE: This email and any attachments are for the sole use of the intended recipient(s) and contain information that may be Garmin confidential and/or Garmin legally privileged. If you have received this email in error, please notify the sender by reply email and delete the message. Any disclosure, copying, distribution or use of this communication (including attachments) by someone other than the intended recipient is prohibited. Thank you.
> 
