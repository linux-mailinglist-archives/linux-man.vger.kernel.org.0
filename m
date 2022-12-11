Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1F7264956F
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 18:35:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbiLKRfx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 12:35:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbiLKRfw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 12:35:52 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 743D4BF65
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:35:51 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so3301921wmb.2
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=HTrxApPqEUpt2720kL6KLR8YDpjeFdOAfiobUl4s23Q=;
        b=OfW9mGEWtpg+5+0cpJ6/xqru4XVKDLKCwLa+CsZlDhTMcyikHOIzlwsoejhcX6rvan
         mqvHkUJzu3wi2TAqyVZAYRvcBA23nm436/sEDSBIO7cFgfiEfmk3aon7vSRphpAhmARW
         L3xqRwf9G648MmUMYvvSsJTKrA4T28UPXRfdZnxUXQRJYyK3SySUR6Cctg1xgOykESQI
         hQhnFduzkfic7PD26wBuEUfw+mt8X22y4ytmcHhMFiSRYGUUNUAysZgcKIyekS0mYzZs
         NqSjL0aF/3HP/FWL2ImrO7nNIhv9vhX1RfQnz2Vb1Q/4S1fSto3R5VeJ6F9RklOE1Haf
         5Rqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HTrxApPqEUpt2720kL6KLR8YDpjeFdOAfiobUl4s23Q=;
        b=FKfwLq6GgSrryb6CTAHbqi5wT9Dd31Mq95xb4Ir8CV75y8IEbETD7xPrFZliCwmaJY
         atwfvq10vSoKU+j0fjAnflHHTPNLSVyiyCHtadYxa5YiFVgWdCl99A+Nd2pW0l0g7y6d
         HDexAzbM6RJAkz4g8r556pZn34CW8Ay7TaO5jAwGDs/74AIkA30VmA5accWVahuH7UrA
         gkzCvxqsk15//eeUybPM1DffyRCiV2RXQVmPmLtXIGCTC0nNE2skHp9CvJ9UPLV+z/aW
         eEUgnnckvq/8brB/xPu4ibS3Ca4wrvyKQOYTDslut+pVaLZ1OFs0eKZLEInKU1T0iJcY
         mvhg==
X-Gm-Message-State: ANoB5pkG8+nLAj1aZJaZ3JGam1vSC9QXX1CX1sgtl7ORfqqLLOIJVbt4
        fsIuYf7/2WNkDjSaqYA3+Eg=
X-Google-Smtp-Source: AA0mqf4UWffbKmVfNUYWE0K1n5e/Hib/J0fPBdGPcilc0ElH3LMzkMxbohpzlYzfGYr4ueLNEbZKwQ==
X-Received: by 2002:a05:600c:4f93:b0:3cf:6e85:eda7 with SMTP id n19-20020a05600c4f9300b003cf6e85eda7mr10771640wmq.14.1670780149934;
        Sun, 11 Dec 2022 09:35:49 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l20-20020a05600c2cd400b003a3442f1229sm6425039wmc.29.2022.12.11.09.35.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 09:35:49 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <eeac5fa0-f4da-23ee-5d98-a6b04ad71645@gmail.com>
Date:   Sun, 11 Dec 2022 18:35:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
Content-Language: en-US
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>,
        Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20221208091442.10595-1-vapier@gentoo.org>
 <20221208163413+0100.348521-stepnem@smrk.net>
 <f79f3230-8001-12e7-1a93-5aec55b070a0@gmail.com>
 <20221211183048+0100.234579-stepnem@smrk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221211183048+0100.234579-stepnem@smrk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Štěpán,

On 12/11/22 18:30, Štěpán Němec wrote:
> On Sun, 11 Dec 2022 17:05:48 +0100
> Alejandro Colomar wrote:
> 
>> On 12/8/22 16:34, Štěpán Němec wrote:
>>> On Thu,  8 Dec 2022 04:14:42 -0500
>>> Mike Frysinger wrote:
>>>
>>>> @@ -106,15 +107,15 @@ calls fail, or if the function cannot allocate memory,
>>>>    NULL is returned.
>>>>    .PP
>>>>    .BR pclose ():
>>>> -on success, returns the exit status of the command; if
>>>> +on success, returns the exit status of the command; if one of the
>>>>    .\" These conditions actually give undefined results, so I commented
>>>>    .\" them out.
>>>>    .\" .I stream
>>>>    .\" is not associated with a "popen()ed" command, if
>>>>    .\".I stream
>>>>    .\" already "pclose()d", or if
>>>> -.BR wait4 (2)
>>>> -returns an error, or some other error is detected,
>>>> +.BR wait (2)
>>>> +family of calls returns an error, or some other error is detected,
>>>>    \-1 is returned.
>>>>    .PP
>>>>    On failure, both functions set
>>>
>>> I'll just point out that, if this goes in, putting "one of the" _after_
>>> the comment would prevent rendering it incomprehensible.
>>
>> Yes, thanks for pointing that out!
>>
>> I'd move the entire "if one of the".
> 
> That would cause the same issue, though.  AIUI, the "original" text read:
> 
>    on success, returns the exit status of the command; if
>    .I stream
>    is not associated with a "popen()ed" command, if
>    .I stream
>    already "pclose()d", or if
>    .BR wait4 (2)
>    returns an error, or some other error is detected,
> 
> Then someone commented out lines 2-5 and added two lines of rationale:
> 
>    on success, returns the exit status of the command; if
>    .\" These conditions actually give undefined results, so I commented
>    .\" them out.
>    .\" .I stream
>    .\" is not associated with a "popen()ed" command, if
>    .\".I stream
>    .\" already "pclose()d", or if
>    .BR wait4 (2)
>    returns an error, or some other error is detected,
> 
> Both Mike's change and your alternative proposal would make this quite
> unobvious to future readers without resorting to VCS archaeology,
> because the commented-out text would no longer make sense as a
> continuation of the preceding text.

Ahhh, now I understand.  So yes, you're right.

Cheers,

Alex

> 
