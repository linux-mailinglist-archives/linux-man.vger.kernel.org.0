Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACCFE3DCB4C
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 13:07:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231462AbhHALH5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 07:07:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHALH4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 07:07:56 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6300C06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 04:07:47 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id u15so8690508wmj.1
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 04:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qGrCLBIQdJ2jMulw2osLVZo3nmLSp+D4S8WjdJgulqc=;
        b=dmiCK1Rc+uTwarH1f3bqLMISDqeKz3kHe27DAF69joaaitrd+Bulunenk0bhM9krpv
         8bD1ITJjpy4CEgFDoHRg3RP8XUJCK+T7sc6/3VDBBET/TTsJFUPDmBmUrzXDlnd1ynK0
         STrc9yblFLyy8F6mSrS4hU+fTus45cFT9gZ53m9OyA1n0JWbKtW/0qgdafWG7YXQXSyb
         aGpagBN6GdsMndVfWbfzTLw18PhnE/4ACdEfCPyukLrhC4vbyq2DM9QKMG0bMdGacKTb
         pqOJ8sKS3VYLIOlD5x4566kRfOf0C6KJ/aFlb05Pq8eKyDs97YnhU1j8AgfvVRdoUy14
         f/UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qGrCLBIQdJ2jMulw2osLVZo3nmLSp+D4S8WjdJgulqc=;
        b=rG5ZpptBBW+GU8Hewu4PsrW+PkgjfgWHonAcBqAdy+z8b9QCNXot9AunsbouEz95JV
         BcNIPIit8cqcnfcSYw2m07ejBaclMcBs13yX7M6E8SkcfL1IDrXBnHo8AUnHNRdUsT1p
         UghlQHBidpSy/PQL8LEn7ewyAOxfxEsEIr80RdoFMtItkghCLAAR1tW/wM+u1sY4zlR2
         Eq9d3ooF8oAyAps4cY61YJJsH9jVJR06KEd5R3gzqdV2mrOzxRJIyWSTEmoefDEe3xUI
         27JjMdjfNTPIOk+Lhnowuchc8rQp62EkFMKWvpYQYT+Kfvw/xXAPMMvl/llSJkaV0FPy
         /ntw==
X-Gm-Message-State: AOAM531Ykl7yxtCnwZXtJaXMDVE0sf4+6VRvyZDlrjnfQqN6c5gqDg80
        D8rzxMjQROwT7YuJ0UTnVTHZePeisQA=
X-Google-Smtp-Source: ABdhPJwHCiog673YPu6QtrFYuh1EkEeUkzonYOa6p0iLZVfRyO7ePYcQxEugm2KaqxZVcHaIcy3ngg==
X-Received: by 2002:a05:600c:896:: with SMTP id l22mr2139816wmp.68.1627816066411;
        Sun, 01 Aug 2021 04:07:46 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w10sm5918254wrr.23.2021.08.01.04.07.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 04:07:46 -0700 (PDT)
Subject: Re: [PATCH v2] termios.3: Add information how to set baud rate to any
 other value
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210730153044.23673-1-pali@kernel.org>
 <20210730184536.13620-1-pali@kernel.org>
 <20210731001943.pqpclzfhjgwztdo7@localhost.localdomain>
 <b0ac0201-e102-0556-04f9-9685abf1c5c9@gmail.com>
 <20210731110649.2irr2eb335jpwuo6@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3f5d41da-f7b0-72f3-0104-45bccb18c8a2@gmail.com>
Date:   Sun, 1 Aug 2021 13:07:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210731110649.2irr2eb335jpwuo6@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,


On 7/31/21 1:06 PM, Pali Rohár wrote:
> On Saturday 31 July 2021 13:04:50 Alejandro Colomar (man-pages) wrote:
>> Hi Branden,
>>
>> On 7/31/21 2:19 AM, G. Branden Robinson wrote:
>>> Hi, Pali!
>>>
>>> At 2021-07-30T20:45:36+0200, Pali Rohár wrote:
>>>> +Setting the baud rate to a value other that those defined by
>>>> +.B Bnnn
>>>> +constants is possible via the
>>>
>>> I'd say
>>>
>>> .BI B nnn
>>>
>>> because the "nnn" is not literal, but variable.
>>
>> Agree.
>>
>> But as I already merged the patch, I'll add a new patch with that change.
>> Moreover, man pages mostly-consistently use .B Bnn style (although
>> incorrectly, from reading groff_man(7)), so it deserves a separate patch.
> 
> Makes sense. Would you fix style on all places ('git grep Bnn')?

I fixed it right now for Bnnn: 
<https://github.com/alejandro-colomar/man-pages/commit/e505393f80d040a03f3c2955e0d236c8e109ee6e>

I'll try to fix it for every other case of FOO* in the pages soon.


Regards,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
