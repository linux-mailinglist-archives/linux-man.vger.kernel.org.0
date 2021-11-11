Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E69D44DD4A
	for <lists+linux-man@lfdr.de>; Thu, 11 Nov 2021 22:49:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbhKKVw2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Nov 2021 16:52:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234114AbhKKVw0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Nov 2021 16:52:26 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFAEEC0613F5
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 13:49:36 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id y196so6176960wmc.3
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 13:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=z9amOFyRryQ4nGgPfiO9GB+fagpFjh0v96g8tKrirZc=;
        b=PezhTwH9PCUHFiCrp50HU4X0FN/cIKoyC43YsOppFuqSsmrsj9hISAyr9SZEk9UR92
         HC/V8AtKzqQUl0OxVPUh2ME2KW/Rg+IyGa/c4NwyXzdkcs/5U5PwiIYxF7aiV2lU05M1
         jtPPVXNRUa/pdoPHKk6UXfgq+e1KzqtnX58P30n1MpY7PE8SirGHYj/GjaGN8RkdCjyS
         TMcPOngtvkJrZ/XiUXwucxqlPuKnjzwGNlKkjY1pOBOtpOZbgw4D1e8DYUXpRCyONgTD
         rUn0i/G1R6/73J51QEMhm+htzfAiOWAfipUg1YLn1aqxTJg9nfLGwdIGQsTz42e46lnP
         EFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=z9amOFyRryQ4nGgPfiO9GB+fagpFjh0v96g8tKrirZc=;
        b=1vmjese03N40KZaAqDH+abkQyQ2Mts6duNBp4OhdOz214+k94MCBqG5gcabfaC4Ocs
         0l98Tm02AZc7CtOkpLNJdKIdMamm/ue7pYfrM1LCUmvN7OR/7FBiXX2dqxLYjs5+iiOu
         2HlFc/D9s3Qmnefld5SI9aOdVVT0yKCR/s6jND33Vm7k2b1ityNfH80+D6TpPyjEcFNB
         H4VXvMa5UAc0JGlcxtGO6rV6EX6K9nUHo/5OkgOgvNKjV4z/Cu1wqOBYdw1nfLN1yxxj
         9nRHYHp5iCIyyg4ukr0l9A5BwsNdtsC4vQzESPbeXQ81a2BCt1X/rTlTV+DAtnbB0+fv
         +uzg==
X-Gm-Message-State: AOAM530+4na5OXqCtRUZ3g1iy/mq8fukKYdSEgZneQ8SNexQG3MROwVG
        im6a+6ekx3vYyBBU5edqJLQ=
X-Google-Smtp-Source: ABdhPJwsjLLUV/VTSu5oLltA4tgFYrhJMd4Vz72di4rD8EK/81UhkEYz9kAo8s/LzwaOZiPM0HS3dA==
X-Received: by 2002:a05:600c:4108:: with SMTP id j8mr11634089wmi.139.1636667375610;
        Thu, 11 Nov 2021 13:49:35 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l11sm3884915wrp.61.2021.11.11.13.49.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Nov 2021 13:49:35 -0800 (PST)
Message-ID: <9dcab95b-ec77-b82b-22cf-ce082af033fb@gmail.com>
Date:   Thu, 11 Nov 2021 22:49:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH] pthread_atfork.3: wfix.
Content-Language: en-US
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
 <874k8k8m5s.fsf@oldenburg.str.redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <874k8k8m5s.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On 11/9/21 23:27, enh wrote:
 > Clarify that the pthread_atfork() callback list is a global, not
 > per-thread.
 >
 > The use of "this thread" implied to some readers that pthread_atfork()
 > maintained per-thread lists of callbacks. Given that the next sentence
 > already explains that the callbacks are run in the context of the thread
 > that calls fork(), I actually think it would be fine not to mention
 > threads at all in the earlier sentence, but for now I've gone with what
 > I think was intended to be written.
 > ---
 >   man3/pthread_atfork.3 | 2 +-
 >   1 file changed, 1 insertion(+), 1 deletion(-)

Could you please sign your patch?

<https://www.kernel.org/doc/html/latest/process/submitting-patches.html#developer-s-certificate-of-origin-1-1>

On 11/10/21 09:11, Florian Weimer wrote:
>> diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
>> index b727cb48e..3e61e797f 100644
>> --- a/man3/pthread_atfork.3
>> +++ b/man3/pthread_atfork.3
>> @@ -39,7 +39,7 @@ The
>>   .BR pthread_atfork ()
>>   function registers fork handlers that are to be executed when
>>   .BR fork (2)
>> -is called by this thread.
>> +is called by any thread in a process.
>>   The handlers are executed in the context of the thread that calls
>>   .BR fork (2).
>>   .PP
> 
> There's another confusing “thread” reference further below:
> “pthread_atfork() may be called multiple times by a thread, to register
> multiple handlers for each phase.”  I think that should be replaced by
> “process” for clarity.

Also, if you could also fix that line reported by Florian in the same 
patch, it would be great.

Thanks!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
