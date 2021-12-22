Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 961FE47D766
	for <lists+linux-man@lfdr.de>; Wed, 22 Dec 2021 20:03:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237669AbhLVTDZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Dec 2021 14:03:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233240AbhLVTDZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Dec 2021 14:03:25 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20B22C061574
        for <linux-man@vger.kernel.org>; Wed, 22 Dec 2021 11:03:25 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id e5so6813297wrc.5
        for <linux-man@vger.kernel.org>; Wed, 22 Dec 2021 11:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fWxaBzJv+E+/suvwma+eFo2VGZFpbCrFTQF6+0vtOGk=;
        b=T3mGoPKqVN6XGr0tTK7KPo1plAvd4oSbV6cFhWUHukZyD5Pcs/F9btfcraBt6SL8q5
         1YxqUAcytBajnOF+mXLq8zgLOxzyyucHrXXI74vF5+k69FQx2umvtgSNvcFLWvKNVCYM
         XDo/jSGcOqENiot2gSz7pkOz/NJgD1QVoUXebqe17HLAlaYvgMNAmHVcPQhMQAUb/7ZO
         TriivlX7Fbu6HBNHhzmqndEvWoCSq1rSHGz/zPbe9+sN6nqW5yCMK7VNp2fUH1qEsuBb
         YM4+588aKc/jW+oql1baOvvbEpbV+u5/+vI6sX1kIXggDx1X/okdB5znYY/5n3uD/l9q
         gXyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fWxaBzJv+E+/suvwma+eFo2VGZFpbCrFTQF6+0vtOGk=;
        b=yVprX1s3bR+w6oqQfVm+XcVq6+4cr9GpBQ/arwFOhqkw31H4zt45d8fsuYaAEXX12W
         cno9+FtGGUEWYvCOmiTLrYhyoI9s5vA5bbBJFrXXPe3Mg8dZeQfVT1SPK+16hEYzJuTz
         Poc/3gNV21UKxVPg2XeViZVmLdSQqdffprSlf2S5SdvUruuWA6Gw9n7UNeq88uQOIaSt
         sHJpT+5AiCvJYfsqLonPBral4jfv6Yz+a6LGjI5Tg6GdK14s5XbFpzjuujNtqYB5OPEt
         pUUkFa+BSawN/JBoO46i8J8KB46zluu4EgHZRk7IQ960989Bj5ZbFrFTn9SWOmPMsOCC
         pQPQ==
X-Gm-Message-State: AOAM5305m0zNlu4gmroiwDF5NLiC94dW2d47qf7Zb/UsGrVXZgoccAGI
        AJQBMuMfXUxw5mQYiNxtKfg=
X-Google-Smtp-Source: ABdhPJwyTEuFKBV2u+4MLherqR0KagpGbzhAWMkS+XMzCyFK02UWdL85J+OEQ1ZuN+RY067BjgWAmg==
X-Received: by 2002:adf:e788:: with SMTP id n8mr3095764wrm.685.1640199803702;
        Wed, 22 Dec 2021 11:03:23 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i1sm5756076wml.26.2021.12.22.11.03.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Dec 2021 11:03:23 -0800 (PST)
Message-ID: <a2e586b1-98b7-0dba-5ada-1df19a1a3eb2@gmail.com>
Date:   Wed, 22 Dec 2021 20:03:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH] printf.3: Document %#m as strerrorname_np(errno)
Content-Language: en-US
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <20211222181539.3262-1-alx.manpages@gmail.com>
 <0e5a0463-2d8a-2daa-481c-92d7b7dc2d25@linaro.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <0e5a0463-2d8a-2daa-481c-92d7b7dc2d25@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/22/21 19:58, Adhemerval Zanella wrote:
>> @@ -853,7 +864,10 @@ any flags, a field width, or a precision.
>>   .B m
>>   (Glibc extension; supported by uClibc and musl.)
>>   Print output of
>> -.IR strerror(errno) .
>> +.I strerror(errno)
>> +(or
>> +.I strerrorname_np(errno)
>> +in the alternate form).
>>   No argument is required.
>>   .TP
>>   .B %
> 
> Maybe add that strerrorname_np is only support on glibc, since on the same
> section it states that 'm' is a Glibc extension supported by uClibc and
> musl.

This is the main documentation for %m in the man pages, and it differs 
from the printf(3) CONFORMING TO (C89 and POSIX.1-2001).  However, 
there's only a mention to strerrorname_np(3), whose main (man-pages) 
documentation is in strerror(3), and there it's already noted that it's 
a glibc extension, so I think that's enough.

> 
> The rest look ok, thanks.

Thank you :)

Cheers,
Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
