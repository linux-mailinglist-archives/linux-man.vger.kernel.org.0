Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB7BC3000B7
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 11:52:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727368AbhAVKvf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 05:51:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727389AbhAVKut (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 05:50:49 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5BD8C0613D6
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 02:50:07 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id c124so3877136wma.5
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 02:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oGk4yKoentR3E0kH3ZDBGbcGXvFM2Hzoot0sfSF219A=;
        b=VVXyX2luCttuEJJq1GshSqIDuV+924QufNm9gGPVc84tM0VjFXXsfiEt457u7ww/62
         brrw5lw0/MvY0Qvnyn/Tw9WKuG3ahGVLNYcKZFjuOR3xvaqnoJSpwwkjvKuo1xTU11SP
         aqLvufrHHfRX4vmQNVYpGdlsYpfvCEElpJYtNpeD3fjVSViNcOEBZenPyNPKGipjAc2q
         bdBP2wxPzy5xneklJmvsj14DwP5iMn7jBMXk8r5qyB3Uwl+dNuGmZnPAQcKJYA0E+k2B
         QR21tFosF3W/mI0rXysWBHWah/yLsBDdfs+gOlTJ7sfVxUs7aAqAK+OTspNDp9JPKv14
         3Taw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oGk4yKoentR3E0kH3ZDBGbcGXvFM2Hzoot0sfSF219A=;
        b=JJDK9hhA8icEHlEk82mcJ95uziZj8JyvQcR9rZeR/xbxu45WFQTxGM1F2b9ZdAMnib
         FiAmh0iuej4VsojWh9Pvpy7AjthLOurbBsJH3tSLS5R5tC5tKmvmzdxKVGSdD+eT2SPB
         k7OpCcKPXkdnf96yjQyzo1K5Y7SbVsKpbHBwbFaaOuc6W8G3tbInJLE3Tbx0Q/rymQRH
         JaOMYKYmi1tIOl3glC4n+SHDySwP6pg5QjO8Ry50EgHsOuzJEvLJsBF1cspoxSeQsVGv
         jlsAEZIbf9rzldOQMu/ppSYOF1P0HzDw6KN+MO5NsLMKK3Lmnfv580PpKKMvEfKCYvXI
         TUsg==
X-Gm-Message-State: AOAM532LkL/pVlvKrDp4++ZljtHwFsYkim74S2OyVLOQPQJ39bFutBv9
        lZjNwp6Jw5r0W8vTgYbiE5c=
X-Google-Smtp-Source: ABdhPJwd0BDwHNT7xufr/BcWWsG1nC85I+5uV1B9BMeR69CH7cLGb+bZDPt7DXy8T6aMpyVWYzm4yQ==
X-Received: by 2002:a1c:f604:: with SMTP id w4mr3412381wmc.39.1611312605746;
        Fri, 22 Jan 2021 02:50:05 -0800 (PST)
Received: from [10.8.0.134] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id h1sm8194431wrr.73.2021.01.22.02.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 02:50:05 -0800 (PST)
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
 <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
 <20210121201426.b6wfycjdegxce7fw@jwilk.net>
 <20210122032300.zsqf6uuznfbu6tij@localhost.localdomain>
 <20210122093556.nwo4qe5vcnbinu7z@jwilk.net>
 <20210122100718.ab3wkbyf2hv533rz@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <948982ef-a747-099a-78d5-096610ec0f57@gmail.com>
Date:   Fri, 22 Jan 2021 11:50:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210122100718.ab3wkbyf2hv533rz@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/22/21 11:07 AM, G. Branden Robinson wrote:
> At 2021-01-22T10:35:56+0100, Jakub Wilk wrote:
>> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2021-01-22, 14:23:
>>> U+2039 and U+203A are "single {left,right}-pointing angle quotation
>>> mark" per Unicode.  Their groff special character escapes are \[fo]
>>> and \[fc], respectively.  (I don't know the mnemonic that inspired
>>> the "f" in the name.)
>>
>> "French", I guess:
>> https://en.wikipedia.org/wiki/French_quotes#French
> 
> Thanks.  That's probably true, alas for the poor overlooked Finns,
> Swedes, Greeks, Hungarians, Portuguese...
> 
>>> .  char \[la] \[Fo]
>>> .  char \[ra] \[Fc]
>>
>> Should be lowercase "f" here.
> 
> You're right: we have both kinds--Country _and_ Western!
> 
>         «        \[Fo]   u00AB     left double chevron
>         »        \[Fc]   u00BB     right double chevron
>         ‹        \[fo]   u2039     left single chevron
>         ›        \[fc]   u203A     right single chevron
> [from groff_char(7) in the forthcoming groff 1.23.0]
> 
> I don't think I've ever seen URLs bracketed «like this».
> 
> On the other hand, because \[Fo] and \[Fc] are in the ISO 8859 character
> sets, aren't they much more likely to be supported by the Linux console
> driver?

For that same reason we could conclude that <> (less than, greater than) 
have even better support :)

I'd use either u2039/A, or plain <>.

Regards,

Alex


> 
> Regards,
> Branden
> 


-- 
--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
