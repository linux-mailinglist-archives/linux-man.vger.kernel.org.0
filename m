Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEA652E740B
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:54:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726240AbgL2Uya (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:54:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726256AbgL2Uy3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:54:29 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 777F4C0613D6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:53:49 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 3so3142882wmg.4
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7TY2gLw7SqJCabbOLPrL89KxAT3f3EL+4SHuUKuELRQ=;
        b=ft2CrQrGPTmaZvqeUMTu7ho1+5XbXGEbaC+chLfzAV7aGcP9tL6ofdnNhg9/oGLDwy
         IbaaXKVgnEBpD9VgCuaAZhzGQSkHCB3wwd3QKJSAoPZK0cJIIEhyWCaTQkLhNel1resE
         y2w3AhcDn2/HXC9K7tny7tgsB51ifN7YgQx1Oipsn12NIlSAZV3KD7KVNNV7x2RzgC19
         3OjS18i85pckSrnsUBrdb+A1Arwx4YyhkI2Ir2VAeWCEPyx11RaCudTtt0SQZ+CQj9rx
         azps2svV/gJKButlj1n4DX4IegIeKtBJoRkk4RxQ0KQHP2FyZBBywkXHKg2vqnBZdCkc
         6wvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7TY2gLw7SqJCabbOLPrL89KxAT3f3EL+4SHuUKuELRQ=;
        b=nJc8bQ7lCy4/o8mvuJmUHEAa8/3J6qeeOpI0DjOyeu/xDbpzuRoizCsdi47hPTrt3C
         pFId1H/8XUvZqNn/VWya9SYnp1LOO+1PPY5zdeTg3RNPQ8s99Hv74amOwgFUZE6tc6Pm
         tunEm5qfrMfY7MloefLnRRi1MEJVGFZcMqYVHLzSDD7HXP3UGMXYV6ahSMgTcD7LXMEi
         HWHaGaaceeVkbfJ3wN/+JXmvSBoF4JYP7uNEf1tXCxBisW3M4ZXRbCplqUV3fMpwqerZ
         ++6i6lh/0AHIrnqOx3Dt8ZdBxNMoSSiVOVm1kfu82iZnvYPreDJZl5hefy9HyX/gZFVs
         6/LA==
X-Gm-Message-State: AOAM531g5IpCap8TktbBWwGS7bzap5QGVVJ5xxwetObQMlq7BCu1kyeI
        D1myMZUzHhE4cWsfMCRyacsS7pVNrHo=
X-Google-Smtp-Source: ABdhPJyczbhezuX7qwIO0uS7FeKGz+/v2l7VrRfuvluPP8Dgb6j9vdl8rTTcR4cwQuhvsKtZnCCAdw==
X-Received: by 2002:a1c:4489:: with SMTP id r131mr5007515wma.24.1609275228311;
        Tue, 29 Dec 2020 12:53:48 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id p8sm60249008wru.50.2020.12.29.12.53.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 12:53:47 -0800 (PST)
Subject: Re: [PATCH 2/2] Various pages: Normalize NOTES about non-existing
 glibc wrappers
To:     mtk.manpages@gmail.com
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <20201229143859.17473-3-alx.manpages@gmail.com>
 <CAKgNAkgiZiycjW3r=-LTzV0g1CyboYokqcgQbe9hYRT6MWjUTg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <842d4263-0fd5-ea70-bac0-1f4abd405c20@gmail.com>
Date:   Tue, 29 Dec 2020 21:53:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkgiZiycjW3r=-LTzV0g1CyboYokqcgQbe9hYRT6MWjUTg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Please, see a comment below.

Thanks,

Alex

On 12/29/20 9:32 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex, Ganimedes,
> 
> Again, in the subject line, s/
> 
> non-existing/nonexistent/
> 
> [...]
> 
>> --- a/man2/getdents.2
>> +++ b/man2/getdents.2
>> @@ -211,13 +211,13 @@ SVr4.
>>  Library support for
>>  .BR getdents64 ()
>>  was added in glibc 2.30;
>> -there is no glibc wrapper for
>> -.BR getdents ().
>> -Calling
>> +Glibc does not provide a wrapper for
>> +.BR getdents ();
>> +call
> 
> s/call/calling/

See below

> 
>>  .BR getdents ()
>>  (or
>>  .BR getdents64 ()
>> -on earlier glibc versions) requires the use of
>> +on earlier glibc versions) using

The new version is 'Call XXX using syscall(2).'.

>>  .BR syscall (2).
>>  In that case you will need to define the
>>  .I linux_dirent
> 
> [...]
> 
> Again, the only reason I'm not making these patches and making the
> minor fixes is in case you find some other pages that might be added
> to the patch. Let me know.
> 
> Thanks,
> 
> Michael
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
