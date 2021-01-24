Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 971E2301D84
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 17:36:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725837AbhAXQgF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 11:36:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725798AbhAXQgE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 11:36:04 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B403CC061573
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 08:35:23 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id m2so8528203wmm.1
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 08:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CqgdsMB6seMOaint5dFWVyh2n67X435cSOytI3XF8a0=;
        b=lvy2gVT6wlCc+/m6sLWL9sslkOhemrMHy045PXPNaNIcAu+TkEEDNQ7ny55x0hFjBO
         AJI76XHJR8ickc5QzhzWuiFgiBfdrEM/X3aAWqAgUrawvMo679gj1wM7GyTrPjtI9v4w
         gWcuQYjmo7bXZOjRubVQh/9xXP4tex2WK2Dg3jR16DdWCsHHmpUJk+p3ODLpKFbqcYtL
         SxWYh/kHZNTqMfiPWaEeEUFS3F2qhJwMhEOrfeCMl/3khtvtkbuzTeQUbiHQQ6tmaY3H
         bii7aOE2aUCbRzgQD6Ux+GAenTsYvL9uYZqJWpy3E30vxZ5wJGz/ZdTYwco3obf5Dm/i
         Vyfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CqgdsMB6seMOaint5dFWVyh2n67X435cSOytI3XF8a0=;
        b=lx9LwfP4ZPiW+/3fcntThmbCG1mW2h9OEbg/YIZDweVYa+oSSdS+jUL5B1AP7TNVEd
         Gpod9PsD2bsRzdQrTuzC+LHUt3h+DZDdw2paJXbgjQP1iY1B5DzhWJ/YJJNFRVixsuZN
         lPRkrpDM1O0lN1KVg2m74FzrliBEVWep8IsXO8xB+EwH8AVnLbvGxXfPlFvkhIsqKZSo
         IS2E/AmHXknApPJxVTj4lu0XS/r227sd9wvIYPBSBAlvzEkNCO/KJNrefgjrBts0d1c9
         6nwWiTCeRAnCtlwVw5a4Y80A+OcSu+ljRT1C75ikDfJGyEJ3KnFyQfs283jLkRNrw0Ib
         m1YQ==
X-Gm-Message-State: AOAM533Erw9Cb6xP5jNKBepMnEg3u3+BJYACkSKNa9XOlFhZSKaRqpZz
        L1HkYOwi/KqNmuo6D3KHn7HjTAGXKi4=
X-Google-Smtp-Source: ABdhPJx13Bg4f3Is0uagCjsOroHWWdwf1a+UzlN4xHjHWLwNqOdiKw88Bi6HlY1l8LPClp0nu5NT/A==
X-Received: by 2002:a7b:cf3a:: with SMTP id m26mr1349807wmg.55.1611506122425;
        Sun, 24 Jan 2021 08:35:22 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id u16sm19690033wrn.68.2021.01.24.08.35.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jan 2021 08:35:22 -0800 (PST)
Subject: Re: [PATCH] Various pages: Use 'logical' puntuation method for
 parentheses
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210124151035.70536-5-alx.manpages@gmail.com>
 <ab080b59-8d3e-d3cf-3b70-ba2cf8fbae67@gmail.com>
 <c9453042-2af2-4ec5-3269-5ef322a26b19@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c9c2e62b-46a2-dbab-87a2-cfd3c568df29@gmail.com>
Date:   Sun, 24 Jan 2021 17:35:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <c9453042-2af2-4ec5-3269-5ef322a26b19@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/24/21 5:18 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/24/21 5:06 PM, Alejandro Colomar (man-pages) wrote:
>> On 1/24/21 4:10 PM, Alejandro Colomar wrote:
>>> This fix places periods after the closing parenthesis.
>>> This is normative in various European languages,
>>> and avoids confusion.
>>>
>>> See "Hart's Rules",
>>> and the "Oxford Dictionary for Writers and Editors".
>>> See also the spanish "Diccionario Panhispanico de Dudas"
>>> entry about parentheses.
>>>
>>>
>>> Script:
>>>
>>> $ find man? -type f \
>>>   |xargs sed -iE '/(etc\.\)|\.\.\.|\.\)\.|\(\.\)| ack\.| ed\.| dec\.|Copyright)/!s/\.\)/)./';
>>>
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>> ---
>>>
>>> Hi Michael,
>>>
>>> I thoroughly reviewed this one, and didn't see any weird things.
>>> I don't have a copy of Hart's Rules, or the Oxford dict.;
>>> I followed the Spanish rules for parentheses, which I guess will be the same:
>>> <https://www.rae.es/dpd/par%C3%A9ntesis>.
>>> You can practice a bit of Spanish reading that ;).
>>>
>>> Cheers,
>>>
>>> Alex
>>
>> Hi Michael,
>>
>> This patch is too large for vger (395 KiB);
>> what should I do?
>>
>> Split it into <100K chunks? (I think the limit for vger is 100 KiB).
>> Forward a sample of it to linux-man@?
> 
> Nothing yet. The patch is wrong. In English, the Lofgical Style pertains only
> to quotes.
> 
> In English, punctuation goes inside parentheses when a
> full sentence is involved. (Thus, this sentence is correctly
> punctuated.) It's news to me that Spanish is different!
> 
> Thanks,
> 
> Michael
> 

Hi Michael,

Hummm!  The illogical English-speaking people are... illogical!  :-P

That surprised me of American a month ago, and now about British.
So I'm not surprised that you're surprised.  It's logical to be
surprised.  What is illogical is that the British use the logical style
for quotations, but not for parentheses.

So, we'll have to live with it.

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
