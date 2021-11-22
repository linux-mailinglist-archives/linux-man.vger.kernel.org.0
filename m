Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 614F1459327
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 17:35:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234203AbhKVQiM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 11:38:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230406AbhKVQiM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 11:38:12 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D843AC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 08:35:05 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id g191-20020a1c9dc8000000b0032fbf912885so316926wme.4
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 08:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EjCSMQEbq5Or72k1+qO8XrN7GIcFw6Pi+ogsKXecr3E=;
        b=RpVogSXcFos8zh7AQXaNk0VGJN7oUH06E/45NVOt7F0Yjy7BJME9lqPrqErwRlyAmA
         rC8Q4XyRI+0/Zb/18J3bgK5rUlLO5cz/bHxmps0eipmPJkwqOv0FCvjWYZZorDVgv+Hw
         KwF38MMCBJK8+jw+diWALaM42oiALjJZ/lPrEUM9u5IdsA3vyl9Ux0Qjg1lvaN3M9MZa
         VtLEBI1yL3+uxj0LpAS8B6vDB1ABjX4UvbuxOqdV8O2kbiuWtRnywp/P3T92Vn/z/EhX
         xyuIcEVLmQM/H8p53QpBFiiR2HS6NBTOt6mSLY5I0BoAnDUE+apfLGHMe9ryW+rvopDU
         u8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EjCSMQEbq5Or72k1+qO8XrN7GIcFw6Pi+ogsKXecr3E=;
        b=ocYCY0SGmM2Sz386Cjt+GHWzZlM7xc1ob8yLDF6O0M4zEGBHdGFCIJFVUOLCqPTQvj
         U38BbWTlDVtKFVreoAyXIOfyeUqEwrjnOUM9YfnrENUHEPoSCqjjHPlsWUa3DCOcigKH
         gv2/H3aUFQ38LJqKunY7Ubi/E5BpujK8A/6ouyPkUVinJ9cyf/DL+tG7yamGq9ZjzL10
         H756VNG47tbaRuhvqZU2J2h65NiaS85wc73j56Hkvo5DcAhiXtm19QriD3imu6mVuAqP
         4ZBNWE6IxtByvsY9WhozQy5NS1JgNOwozhUJHWyGN4aeBfcWk58gdTCWuwI2LeSivZRl
         L1uQ==
X-Gm-Message-State: AOAM530YxbFmjwmA2+sPcqD+FewrDO/UdEhyN2NRAaWDVk+C+AENcWy9
        rR+N+Fe/FgrYNxtI+x9FFyQ=
X-Google-Smtp-Source: ABdhPJwFbM2+oTPKXuPDI5yXS71aci16uYfvVLn9YB3QGlDskseGiTmyLhQ7WFZdYKFd6V62FiT2kQ==
X-Received: by 2002:a7b:ce96:: with SMTP id q22mr31072602wmj.9.1637598904443;
        Mon, 22 Nov 2021 08:35:04 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h3sm8674069wrv.69.2021.11.22.08.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 08:35:04 -0800 (PST)
Message-ID: <b15e5482-c379-85e8-efcb-2da013634152@gmail.com>
Date:   Mon, 22 Nov 2021 17:35:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <d6c9edca79f9aedd4dd9e07e46a4587153f35149.camel@codeconstruct.com.au>
 <d0f4c857-db51-8482-d658-69f6ac25c73b@gmail.com>
 <833fa653b978889d929638e925bb187ba8886b4e.camel@codeconstruct.com.au>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <833fa653b978889d929638e925bb187ba8886b4e.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jeremy,

On 11/18/21 06:08, Jeremy Kerr wrote:
> Hi Alex,
> 
>> I didn't even know there was such a convention, but if there is, yes,
>> I explicitly want to override it.
> 
> OK, I'll update to suit.
> 
>> man-pages(7) recommends breaking long lines at clause boundaries
>> (commas, semicolons, and so on), but somethimes clauses (if you don't
>> know the difference between phrases and clauses, which you don't need
>> to, basically clauses are made up of phrases) are too long, and you
>> can have a single clause that uses more than a single line.  In those
>> cases, the most sensible place to break the line is at the next level:
>> phrase boundaries.
> 
> OK, understood, thanks for that.
> 
>> What I mean is, if in the future this structure will have additional
>> trailing fields, documenting this padding is unnecessary, since that
>> may
>> vary.  Code should not rely on this structure having _only_ that
>> padding.  And if code handles any arbitrary extra stuff in this
>> structure, it will implicitly also handle that __smctp_pad1 field, so
>> there's no need to mention it.
>>
>> Example:
>>
>> struct sockaddr_mctp {
>>       unsigned short     smctp_family;  /* = AF_MCTP */
>>       uint16_t           __smctp_pad0;  /* pad, must be zero */
>>       int                smctp_network; /* local network identifier */
>>       struct mctp_addr   smctp_addr;    /* EID */
>>       uint8_t            smctp_type;    /* message type byte */
>>       uint8_t            smctp_tag;     /* tag value, including TO flag */
>>       uint8_t            foo;           /* was __smctp_pad1 */
>>       uint8_t            bar;           /* extra stuff */
>> };
>>
>> Here I got rid of the pad, and even added an extra field.
> 
> Right, but you've also broken the ABI if that previous padding byte
> wasn't explicitly present, and required to be zero.

Ahh, that's why I require in such cases a memset(p, 0, sizeof(*p));
That covers any undocumented padding; present or future.

> In that future ABI
> implementation, the kernel can't distinguish between 'foo' being properly
> initialised, and not just random stack garbage from an old-ABI caller.
> 
> That's why we have the _pad1 field, and why we require it to be zero.
> Since that's enforced by the kernel, I'd rather have it documented,
> rather than users seeing their calls fail for "invisible" reasons, when
> a call's _pad1 happens to contain a non-zero byte due to not being
> initialised.
> 
>> Code should be written to be compatible with this case, right?
> 
> I'm not 100% clear on you mean by compatible there - you want to prevent
> the case where __smctp_pad1 is removed from the header, and that code is
> now referencing an invalid struct member?
> 
> That's somewhat unavoidable, and also applies to _pad0; I'm not sure why
> _pad1 needs to be different.

I want that programmers zero the structure not by p->_pad0 = 0,
but by bzero(3) or memset(3).  That's how it covers any ammount of padding.

Nevertheless, I don't have a strong feeling about this, and if you 
prefer to document the padding, I'm fine with that.

Cheers!
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
