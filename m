Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08F8D3C2A3E
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 22:19:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbhGIUWi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 16:22:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbhGIUWi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 16:22:38 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 685A3C0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 13:19:54 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id t14-20020a05600c198eb029020c8aac53d4so27479152wmq.1
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 13:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=go0RwTrtC8ADJLSfhebVyCzjm5Gt+9MgT2A5wfoEBXY=;
        b=lRb8JpKFqf+UkwRBMbGN++V7DYCQeC6T/xahUSltC9BgC42yLNyAzNrZk/O089PbyG
         TQYQI4L5zrbdpE1ciwU507dwhAXiY28iHDIgU5fZqCjTFN3MTix3oaav+YUrrVEcai50
         PxAbD7/xTBT6iTnkqEjfh+kH2VyrBhL4EZlG4rL5hdT+FFhAmQU7PnXYj0jIVACno0Tq
         ke+fgnhsZ9NGXLKX1zX1dvNS6vltePaPElOn8TK8aOyhwy1x4iu6y1c6iQjD9xBwLnZu
         asHvIg3F0GxfDQKCzmliN3vxBBqAD4+Bkn4OXTiDF0Cg3Upn3mK9r47kT8k+LM9ZC49W
         4kGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=go0RwTrtC8ADJLSfhebVyCzjm5Gt+9MgT2A5wfoEBXY=;
        b=uCzmwkKeg8UNNlP0YoHBWJPwTwsdcOg5MaChaKLh38bTeo6XjIGJaSfBJeWM7gXTjY
         50ljNy3Pz/UMXFSAAvAJ8zR1ZHhHnrak5V7S09hZQmA4hhneNWLambphIH3Y3abYmk4X
         RREZ8r34VElZy3nvNGWa0RyiHF5Qh7jsGgWmm1iGb8q6g3TvBk4UbDnHGGp9u2DcCfCj
         +iSQjcaq4RKvSez0ARVkcv7WVdUd/MBahezbOcx8yWUsrSECXlP/wFNLjvEN91wZT1CR
         w9bPTQiCTYLhxORU6G891Zt/agUqboVOzwWaL/tX2G8fccVDQ5SARIZ4umNLQFpdP9+h
         aX7g==
X-Gm-Message-State: AOAM532Pt2CJ1/Bp9bePlWJVXovonoV9vSYn9K9UhKXN0Chh4gKvUVB6
        tUGYU8rHKNz3/9T0yJJELzc=
X-Google-Smtp-Source: ABdhPJzynsYBmpkmBJ2wki8Um+lvS64mUN/sM0Cjm1Tol35lLfwr4pknSXpc6q5yfyvv1M564Ekg4w==
X-Received: by 2002:a05:600c:4f81:: with SMTP id n1mr743487wmq.16.1625861993021;
        Fri, 09 Jul 2021 13:19:53 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.56.53])
        by smtp.gmail.com with ESMTPSA id b7sm6011749wri.96.2021.07.09.13.19.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 13:19:52 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: strlen
To:     Martin Sebor <msebor@gmail.com>, LIU Hao <lh_mouse@126.com>,
        johnsfine@verizon.net,
        "gcc-help@gcc.gnu.org" <gcc-help@gcc.gnu.org>,
        "jg@jguk.org" <jg@jguk.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "fw@deneb.enyo.de" <fw@deneb.enyo.de>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
 <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
 <1627912755.3783669.1625745946723@mail.yahoo.com>
 <59a70222-a46f-1e65-c9db-6c9e577c8adc@126.com>
 <8e0db7f8-bbdb-1dc1-b4ce-5f2da0bf1708@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ec778d25-c14e-021a-e057-bfa0d6c1dd99@gmail.com>
Date:   Fri, 9 Jul 2021 22:19:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <8e0db7f8-bbdb-1dc1-b4ce-5f2da0bf1708@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 7/9/21 7:26 PM, Martin Sebor wrote:
> On 7/8/21 8:08 PM, LIU Hao via Gcc-help wrote:
>> 在 7/8/21 8:05 PM, johnsfine--- via Gcc-help 写道:
>>>   This is not the forum for such a discussion.  But I want to make 
>>> people reading this aware that many expert C and C++ programmers 
>>> (likely a majority) consider that advice to avoid unsigned types to 
>>> be horrible advice.

I'm sorry if it's not the right place, I could remove the lists
from the CC if it's too noisy, but I think an important point is
here, and a couple of emails won't damage too much the mailing lists.

On the other hand, I consider bad etiquette removing CCs from
a discussion.

>>> I advise people to avoid signed types and I do so myself.  If an 
>>> integer value won't be negative, it shouldn't be signed.  That makes 
>>> your intent clearer to anyone reading your code, and (especially in 
>>> x86-64) lets the compiler generate smaller and faster code.

As others have showed with facts, and the Google style guide also hints,
using unsigned types just removes the opportunity of the compiler
to optimize on overflow, because it has to account for wrapping around.

>>
>> That makes no sense. Would you prefer unsigned integers to signed 
>> ones, for something that can only be one of {1,2,3,4}? Just because 
>> something can't be negative, does not mean it should be unsigned.
That.
The same way that because a number is never going to be
greater than 100 is it any better to use [u]int256_t.
Just use int, unless you have a reason not to.

Please John, read the paper from Bjarne about unsigned types,
it really covers a lot.  If you still disagree after reading that,
feel free to argument it.

<http://open-std.org/JTC1/SC22/WG21/docs/papers/2019/p1428r0.pdf>

> 
> There are benefits to making that explicit by choosing an unsigned
> type: the result of converting a narrower unsigned type to a wider
> unsigned type is unchanged.  The result of converting it to a wider
> signed type may change.  This has an impact on value range propagation
> which in turn can influence other optimizations as well as warnings.

That problem with implicit conversions to larger types is not a
problem of signed integers, not even a problem of unsigned integers.
It's a problem of mixing both.
If you use signed integers for everything, you won't have that problem.


Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
