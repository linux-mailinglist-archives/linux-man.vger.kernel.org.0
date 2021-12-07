Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01C3A46AFDD
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 02:36:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233404AbhLGBjY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 20:39:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239593AbhLGBiU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 20:38:20 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 695FFC061746
        for <linux-man@vger.kernel.org>; Mon,  6 Dec 2021 17:34:50 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id i5so26163917wrb.2
        for <linux-man@vger.kernel.org>; Mon, 06 Dec 2021 17:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PxObqP4dTn56QVav8XRpMw+Nrb9iFI7uShjZu2h7bS4=;
        b=iY++IT3/3XpQwdaWNZCD1rIXABeEoGN/un4X/QWxDeraNkS9DxL/X9nq1HN7yaabTW
         hpCY0isP9wFhtRnsK8dbloEDhaJXO81dJX7HBAS7bu+1wnW9uGvvUj1jugubUR3KfDdW
         HqIt13iNOOk72IBqzIEIes2IpWXJd2gHAnsRnpzlEWBBMrow4PPj8gBmJWKF9f8xus+y
         1lo45bsWOnd/O6WJayoiJM217Kd2//8Hyzz5GmRHnaxmbmw6SIB97Ad93zS2kmKTO92p
         u7pesRt/eqhLt/00lgQo+hVmo28uikF2zXxUJhrd+zbzlLauJv63uSBV61OqSKhoyO0X
         Gt+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PxObqP4dTn56QVav8XRpMw+Nrb9iFI7uShjZu2h7bS4=;
        b=iqcRn0+usnx887PBBOE2Jyz7v8N8GzyYUuWsoaGv1yImN5qTsp6io48qc4HPjubSdl
         XeiybV487V1g29iqbLm3FRwmNfi6X4AW9lhATDLfB0/T/X0aYIeBcGIKpsUfctHjYIek
         1G0JQs5ERXJiZr2PGqk35B8P/M0fyUzxfFdFIs9qVleR4hRI4laKt07QZPLQ7hlvEi7m
         Pn816OWpaUIXKzdGtOaZ8b4gdSKKBg3Z9A/XLSdsVsFEYFeX+qiYYyR+C39Ei76JQ/i0
         RYc86QHqNdpld+NYoRytAdb5738menyupHJ/LuLpY6tRUadg/jr8Qw0weSbDvvuGfv4r
         Of3g==
X-Gm-Message-State: AOAM532fScNQSWxlANIoNlTixTlC+ClAy8zz/Y51twQRUgovVVG316kz
        VT3zLdwj2znptWKGhiuXOL0=
X-Google-Smtp-Source: ABdhPJziu1Fw00tHO/Oz9mRvHu01FjkXkdByKeFh8BlG89EddyQNFpvVhzx4+BBEd7afznUiOYFfNQ==
X-Received: by 2002:a5d:5244:: with SMTP id k4mr45907620wrc.77.1638840889014;
        Mon, 06 Dec 2021 17:34:49 -0800 (PST)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w7sm12918595wru.51.2021.12.06.17.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 17:34:48 -0800 (PST)
Message-ID: <4537f47c-7188-3c7d-2470-fb8635959fba@gmail.com>
Date:   Tue, 7 Dec 2021 02:34:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct timespec::tv_nsec
 type for x32 and portability
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Zack Weinberg <zackw@panix.com>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
 <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
 <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
 <d400d07c-585c-ded8-afc1-563bb4796881@gmail.com>
 <20211207010823.e37d5vurshovd7ee@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211207010823.e37d5vurshovd7ee@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/7/21 02:08, наб wrote:
> On Tue, Dec 07, 2021 at 01:38:34AM +0100, Alejandro Colomar (man-pages) wrote:
>> On 12/7/21 00:31, наб wrote:
>>> For my own curiosity: which preposition would you use in Spanish here?
>> I would say "en" (which normally translates to "in" in English).
>>
>> Under some circumstances I might use "con" ("with" in English), but it would
>> be rarer.
> Huh! That's neat, I wouldn't've expected it!
> 
>>> Eeeeh, not really? That's functionally identical but, like,
>>> very verbose for no good reason.
>> Are those defined to actual values?  Or are they defined just empty?
>> I thought they were empty (but have never used those macros, so don't know
>> at all), in which case it would matter:
> They're either undefined (=> 0) or defined to a truthy value
> (1, realistically, but you see versions in some other APIs).
> It'd also be logically valid to define them to 0,
> but this is rare because people do define-checks.
> 
> A "default" -D macro, like all features are, is 1,

Huh, I didn't expect that.  Good to know it.
You can see that I don't use them a lot :)

So, nothing else to add to the patch; LGTM.  I'll leave up to you to 
decide if Notes or Bugs, and will wait also until tomorrow to merge it 
to see if someone has anything to add.

Thanks a lot!

Kind regards,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
