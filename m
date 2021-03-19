Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A44E34276A
	for <lists+linux-man@lfdr.de>; Fri, 19 Mar 2021 22:09:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbhCSVIj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 17:08:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230240AbhCSVIf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 17:08:35 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40089C06175F
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 14:08:35 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id x13so10437000wrs.9
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 14:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wRfqQLmlB5evT2YVunYbhGTNfCSypZNL3YIpAV2tCzU=;
        b=i5C4j1VNYP8ybQolj0F9TN1nADyIHK4RZLZvpPV97lbEWet8RSDUBpBepvlvAyFBiu
         hwasP2VGHHD+LgHSQ3QWUlfCwOYWgIMB5/IL6kI1cE5vd1/bCe3IYPB+FWVyd2a52PXm
         B3ZpqvOfffbybXs3oa9qYNM9hOrws8cw0vQR6CUonmuIaoIDZquuSQzay8VhXiTFZP/W
         bhsTeXSY4X0OWNz9kS9ZoKBFaLPeC4R5/kWzK4Kk1VJK4/YdEyjXZIbmKHyBYMti7Hwn
         P2SV2occdqhBuF0PNbEAxsePt2ZHeRj5K1puKYygaoFc/8HvB57mHwlxzvyXHzM4HPbF
         HsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wRfqQLmlB5evT2YVunYbhGTNfCSypZNL3YIpAV2tCzU=;
        b=jXrTCgS/AKVNH/NzdqB1CAeGw7/ROGJZvRHSxj/X95PozttB3OLojnvdBlg/ZEx8t3
         usxAaQKHKTBlserTeil2faJIXetGUFLQm3DYwIPmxLUA91zz+vrBTZyxfZRehB6/XVg4
         irya0YwO7nmXa4AI0nnh31htVYTYvkm96ktY1wyt38sUVjQeYKMhA2Nt46G3nBCphxo1
         h9npqB5FcfGCPnOy5p3hReXgWwyOPNjhgBVumT/szQW+PlYiM3zdrBn1yxrm6gu6tuZ0
         poJFw0wB9zpFiwOvHG5r482PFGxBGB9MtVEoR9/0/BqQ6yYwooYH5jza4wQDfhIY8iOu
         i4xw==
X-Gm-Message-State: AOAM533WwAq62V2LAtkEv8ddq6g6TPMuYmEG/AlDPFrJkYrNXUd4nTXL
        o+CujYi4kFhVTlnb7BCK6jlnvZxfTTw=
X-Google-Smtp-Source: ABdhPJxj+BL5Up5TeECkv2s+69rpmwPhQIvGeoj2LfaM/KVRBMe8ssZb3b4RuDPWp+mvcjHdvXcLMg==
X-Received: by 2002:a5d:4ec5:: with SMTP id s5mr6622312wrv.168.1616188113993;
        Fri, 19 Mar 2021 14:08:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g202sm7724383wme.20.2021.03.19.14.08.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 14:08:33 -0700 (PDT)
Subject: Re: [PATCH 00/24] man3: SYNOPSIS: Use 'restrict' in prototypes (batch
 5)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
 <c2920146-e8d2-ea8c-80fa-76c56e5ac6a9@gmail.com>
 <8d280f7b-034a-3b91-5f50-60bf2cbbcaf3@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c5b11775-bc89-7e89-33f9-1d56dc8fb92a@gmail.com>
Date:   Fri, 19 Mar 2021 22:08:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <8d280f7b-034a-3b91-5f50-60bf2cbbcaf3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 3/14/21 9:53 PM, Michael Kerrisk (man-pages) wrote:
> On 3/14/21 9:51 PM, Michael Kerrisk (man-pages) wrote:
>> Hello Alex,
>>
>> On 3/10/21 7:31 PM, Alejandro Colomar wrote:
>>> This fixes up til trunc.3 
>>
>> trunc.3? I'm a little confused, since the last patch is for swab.3.
>>
>>> (I didn't send you scanf.3
>>> in this patch set because I did in my mom's computer and forgot to push).
>>
>> :-).
>>
>>> When you come back and merge all of the pending patches, I'll send/resend
>>> anything that's not in sync anyway.
>>> So don't worry about missing some of them.
>>
>> I've applied all of the below patches.
>>
>> Thanks once again for all of this work!
> 
> I forgot to mention that you seem to have made a local fix for a small
> white-space bug in sigwait.3, but didn't send me that patch. Consequently,
> the sigwait.3 patchy didn't apply until I made the same fix.

Yes, when I noticed you weren't able to review all of the emails, I
started buffering most of them, so I only sent you the big "trivial"
patch sets about restrict, and a few other important patches, to avoid
overloading you.  While rebasing to reorder them, I lost track of what I
had sent you and what not.  We'll sync again soon!

Cheers!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
