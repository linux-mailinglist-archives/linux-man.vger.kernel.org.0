Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0808B42FDCA
	for <lists+linux-man@lfdr.de>; Sat, 16 Oct 2021 00:03:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243211AbhJOWFo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Oct 2021 18:05:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235521AbhJOWFo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Oct 2021 18:05:44 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9E1FC061570
        for <linux-man@vger.kernel.org>; Fri, 15 Oct 2021 15:03:36 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id o20so28777314wro.3
        for <linux-man@vger.kernel.org>; Fri, 15 Oct 2021 15:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IBd88oDI8dEHLXfo7rpov0JJL9DY5R4kUIVwZxXFqWo=;
        b=ECDu4NMTJyxi82Ydi/NjBOpgsFVo8d0/6wGMA9gfoIqeqbqpdGoUME6e5Znk7kr5gt
         SQW1iJdYN0XsGPQBCncWsRw5IpQ8V8kFKXNSgVgzl8mRfn/PUomeY5bhC487w2cUbN1u
         hME0v78iuI+jZZhg3GAatBUz1qJxvhMU6gtAIRbKIcmb0KZudiAqPveZFPeGt/h2V6Nf
         vfeQPSwAjZnDIl13gOHCB4nQZc0+X0J0HcX4Hv0wI/wCj1jvRGMXSLZV+O9aC54NjY6Z
         lz0RW9VhvcQuQQNEnO9JmCmaFPytERYkeDcNW+z4ga8o5s45+xavM8MxJNaDDYRUWws8
         1KNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IBd88oDI8dEHLXfo7rpov0JJL9DY5R4kUIVwZxXFqWo=;
        b=cCFEuIu1Mwwkq4bA1U1Mt8Hs5L9j+gSNiJWaHEcwKetfKOQ3KDPiB7SDs/3w3R6Qi3
         CPtG8vml1sMQNNKjnvEqfII+RSakV5EnYApvNTYI+5rE9HxmLMuPwwoWHW7wARZwUovM
         Ftacojv3tdo3/q4kKlZotCVptK+eCHbYbVsl+kkZQek3gzYkH7HN2XBSp4/vdcAUW1Q7
         3/FxXt0h0iwsKrso+S8eLM1iCSRPRx+EsDaBE6BEzGql/3sfBIMwVhje/rnvQwKx7dTS
         4qoF99KpGgzHCQgksZtYjZLo3OOF5hJ3ZjkDSASFmUyI8J9CayXdvU3jdZwnUcl3/zT0
         vvxw==
X-Gm-Message-State: AOAM530S+xmw9NhFdaHpIYeUoi/xd4sI6AZYcJ/1PpuTKGcaRc2xwrcs
        iURIk/25/1JIb7aFx9N5pky16sMgHVE=
X-Google-Smtp-Source: ABdhPJwxQxnFGzOaiQedGbLnzFLCIVYsjHpbYll57iY3qMfb8ZTzZ1ZoMN3Te0OUKFOhHmDso8JEGA==
X-Received: by 2002:adf:bc14:: with SMTP id s20mr17402307wrg.8.1634335415572;
        Fri, 15 Oct 2021 15:03:35 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l20sm16497406wmq.42.2021.10.15.15.03.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 15:03:35 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] timegm.3: Remove recommendation against use of
 timegm()
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     libc-alpha@sourceware.org, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-2-alx.manpages@gmail.com>
 <15d7b96d-13d0-86c1-48f3-24a637ab8e30@cs.ucla.edu>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e46d9e6b-c2c8-66e3-6b18-f24ef718f59f@gmail.com>
Date:   Sat, 16 Oct 2021 00:03:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <15d7b96d-13d0-86c1-48f3-24a637ab8e30@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 10/11/21 5:40 PM, Paul Eggert wrote:
> On 10/11/21 4:12 AM, Alejandro Colomar wrote:
> 
>> time_t portable_timegm(struct tm *tm)
>> {
>>     tm->tm_isdst = 0;
>>     /*
>>      * If another thread modifies the timezone during the
>>      * execution of the line below, it will produce undefined
>>      * behavior.
>>      */
>>     return mktime(tm) - timezone;
>> }
> 
> This doesn't work for multiple reasons:


> it's not thread-safe,

Actually, since timegm(3) is implemented in terms of mktime(3), as far 
as I could read from glibc code, the problem will be the same, I think. 
  I don't understand why it wasn't the other way around; maybe it was 
more complex internally...  But timegm(3) shouldn't need to depend on 
environment variables.

> mktime might set timezone even in a single-threaded app,

Yes, I should have called tzset() before the return line.

> and the subtraction might overflow.

Yup, casting to int64_t needed.  BTW, I had a look at mktime source 
code, and it uses long, which might be 32 bits, and then there's a lot 
of checking for overflow.  Wouldn't it be simpler to just implement 
mktime(3) with int64_t internally?  Then, only at the return, cast it 
implicitly to whatever time_t means, but int64_t would simplify the code 
very much, I think.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
