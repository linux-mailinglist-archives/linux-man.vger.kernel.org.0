Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 693F546B9C5
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 12:05:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235543AbhLGLJZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Dec 2021 06:09:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235453AbhLGLJZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Dec 2021 06:09:25 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E329AC061574
        for <linux-man@vger.kernel.org>; Tue,  7 Dec 2021 03:05:54 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id i12so10400899wmq.4
        for <linux-man@vger.kernel.org>; Tue, 07 Dec 2021 03:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cDbl0kgd6ssdl7bsZMgJOL1FGQDT0Ezvyi60557NXxE=;
        b=Tz/zZAkPQReDzJM5Q8/7IfqXOJUi1NG64tXqwat4I4emTZl01mYZNqTiA4oP31lqT1
         0e2wBkSk8hnxjuy08HHhbpYC557wpaGB0Nx9NL89+qJ0W+MZCsDscZZqfS4NIwQcL+LP
         ZpiY19ClYW3xrd/xdjrxHcOzJqUlfvyKtLtcBet+KPwUr8GUmw5tiku1fmkM6CNyvyeJ
         uU+SBvya8p0822gyaYPLsQwCZhpNo5fPC6HgHc7vRDBZR7ks30voHbyFhW3Xi8T7yIEE
         TuVOFguy5lbJmPZM8SA/5A0dxl94oY0++97k11I2/lCBYaPR0G+/0E5C1VfM5J0223MD
         0l5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cDbl0kgd6ssdl7bsZMgJOL1FGQDT0Ezvyi60557NXxE=;
        b=tJ4FCAWZ40D8YI1TOjmKM+7L0wYDd/W4GKDI5LNtbKRFcsPNZ94+zo3IMjccPCFSVB
         ZUqtkqd4f4Rci19QMQ9HuXl5M/DmqfRgKSII2ygK8N4l7/7+wJOH1Z44B0fFVx46N+IU
         gnhwKDIMuGAj0sfnWoQF81cmPiwN0hglekIjcky4LNXO8NHgXjU2IqMLdZPMw7wCRkWR
         sqjt/6daRPHW30hbUlclAI4GdU4OmlndX2+6F773dZnf8ItuIsaPMS3gNgyLXA84opPS
         FdMf758X7IbKB6SCyFSvQsaubY0+EY+++iFNQv6Em6kDC97HI11siE4bKQK6aGnF9O+6
         DvjQ==
X-Gm-Message-State: AOAM531jAbVvHOYcQ+5aaRiupQEotA2Y+8MvSs44zvELe4Kg3kDlVFTp
        +eKAbHAxXEL6olz1FhgHSgBw21mgB54=
X-Google-Smtp-Source: ABdhPJwNUFcfUHcYQHeoldCaEYxTsWrYZoa6QBt6iZxDSmzOVhAdnxhQGIqZnQuwYn4+15KMMUE1xA==
X-Received: by 2002:a7b:cbd8:: with SMTP id n24mr5902686wmi.150.1638875153506;
        Tue, 07 Dec 2021 03:05:53 -0800 (PST)
Received: from [10.8.0.110] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id bg34sm2413786wmb.47.2021.12.07.03.05.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Dec 2021 03:05:53 -0800 (PST)
Message-ID: <6834024b-38d1-5c12-dcbf-a3e80488fd35@gmail.com>
Date:   Tue, 7 Dec 2021 12:05:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 3/4] system_data_types.7: correct struct
 timespec::tv_nsec type for x32
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        lnx-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
 <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
 <8e968437b301aa7487e84cce21822b56072e9217.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
 <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <CACKs7VDHgVLAOPteGjTwo8FD_WGMcuiX7uxpGq0VnZTinkpeEQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VDHgVLAOPteGjTwo8FD_WGMcuiX7uxpGq0VnZTinkpeEQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Stefan!

On 12/7/21 12:02, Stefan Puiu wrote:
>> Notes: glibc uses long long instead of long for tv_nsec in some
>> architectures:
>>
>>          #if !(__x86_64__ && __ILP32__ /* == x32 */)
>>                  long      tv_nsec;
>>          #else
>>                  long long tv_nsec;
>>          #endif
> 
> The #if condition is actually "we're not on x32", so maybe the comment
> could say /* != x32 */? Otherwise it looks like the comment
> contradicts the code; I know the comment is inside the paranthesis,
> and the negation ('!') is outside, but the negation might be easy to
> overlook.
> 
> Or maybe leave the x32 field size for a note? (E.g. something like
> "This is true on almost all arches, but see NOTES", and then under
> NOTES specify that "actually, on x32 tv_nsec is long long"). The #if
> in the definition doesn't *exactly* match the code anyway.

In the latest version of the patch (unfortunately it's not tagged as 
v4), we removed the negation to avoid that problem.

Thanks for reporting it :)


Cheers,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
