Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5625D42FDAE
	for <lists+linux-man@lfdr.de>; Fri, 15 Oct 2021 23:55:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238674AbhJOV53 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Oct 2021 17:57:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229921AbhJOV52 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Oct 2021 17:57:28 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD63EC061570
        for <linux-man@vger.kernel.org>; Fri, 15 Oct 2021 14:55:21 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id k7so28510911wrd.13
        for <linux-man@vger.kernel.org>; Fri, 15 Oct 2021 14:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z1GK1t4EQF/MQ7VS+kzlTPLgCHx75ijcfnV4Bo0zSS8=;
        b=YHVj5imS5bZG6Ap4YhqMAhYCNeWhnzBzjjEYP6wMiYpFz6p/sUMbrlnH6Mh2+wSGwc
         tBpDg4/MtlQYja3vkeR8ZP3QWfRe8hYHu0OKRMFYn8qxFHImZTI56k3thYUJw/xv81NJ
         tze4TEsveaHcN8qMuKjtJEsHcndf+TMzXZ+a5EpJCGYOjDPvB7scPsr6mT/2Sc1MiFah
         wt4OA5ewCwjfpyeJSPHdrfdI9/lZSBGhzBJsEFsN4tK9Q319oxwmjXx80MqbmdBrVRcK
         NwwSqI4L2XCEAg8Fs9D+n3TotqRIxchWwrZi6GgxdaHDPbhvml2PWUYiG+BRQht5y1Me
         V7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z1GK1t4EQF/MQ7VS+kzlTPLgCHx75ijcfnV4Bo0zSS8=;
        b=YM+190a9hy4G88Kb/WpHjT2AhAIZhHeK/Y+wN+8yJWE6a21bxrppjeCU4FVyIN8b1C
         kqfoKyJkebmSLQBhxYgEK/xwdeZd18NFapLDdt3f81E1FKvW/k7t3bksWGoOkw212UzJ
         6kCgIn1e5Y0OjgEL2MxEgqKZHp1nl64vg2IKgvIWrP5Mc6O4NPeg8npUd9VBpoxC5Wfo
         wQ/nOXOowrsJr8jsJqG1Dxrd74USXIzOAayFewBukmR2LLN6Eq4jQ6yxHc0qjXdPsKry
         bfJCJL73ur0HUlhBoperTUrhLR2u/va0uzH97pgxa8Wv5yL2EXkpMaJqt272qYxx6/7P
         DAig==
X-Gm-Message-State: AOAM532UOXCzsa0nGELL3CepLvGP1vsyKGqPga+NiGH2Fl3ghPCsROvJ
        fyduGA3zen4gqh4Pl5VTxD0=
X-Google-Smtp-Source: ABdhPJxN+KwNILWAm0FScXCx/pR6TofsE5feHcy7NLYtEzda/SYpKuWylTvGzp1VGWSO6z6H4E3grg==
X-Received: by 2002:a5d:6e8d:: with SMTP id k13mr17555397wrz.295.1634334920422;
        Fri, 15 Oct 2021 14:55:20 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h1sm5591244wmb.7.2021.10.15.14.55.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 14:55:20 -0700 (PDT)
Subject: Re: [PATCH] ctime.3: mktime() may modify tm_hour due to tm_isdst
To:     Joseph Myers <joseph@codesourcery.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
References: <20211010105245.53896-1-alx.manpages@gmail.com>
 <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <6ccf0867-33fe-53f0-0bb9-bf25d09aabb6@cs.ucla.edu>
 <alpine.DEB.2.22.394.2110112204030.1524986@digraph.polyomino.org.uk>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b84dbd5b-fc01-0d73-5ad1-a2735aa279e5@gmail.com>
Date:   Fri, 15 Oct 2021 23:55:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2110112204030.1524986@digraph.polyomino.org.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Josepf and Paul,

On 10/12/21 12:05 AM, Joseph Myers wrote:
> On Mon, 11 Oct 2021, Paul Eggert wrote:
> 
>> On 10/11/21 3:27 AM, Alejandro Colomar (man-pages) wrote:
>>> timegm(3) says that you should "avoid their use" because timegm(3) is a
>>> Linux and BSD extension, but its use can NOT be avoided (well, it can, but
>>> if not done very carefully, you are likely to introduce bugs due to
>>> setenv(3) not being thread-safe), so I'd remove that sentence from
>>> timegm(3).  I think it should be in POSIX.
>>
>> No, NetBSD's mktime_z should be in POSIX, as it nicely generalizes both mktime
>> and timegm.

Hmm, I didn´t know that one either...  Yes, it seems a nicer interface 
(and can be used to implement both mktime and timegm).

I'd still remove the warning against timegm(3) in the man page, though.

> 
> Arguably ISO C (there's no obvious dependence on any concepts that are in
> scope of POSIX but not of ISO C), but we're now past the deadline to
> request document numbers for proposals to C23 (and while there's a
> proposal to add timegm, there's no proposal to add functions using
> explicit time zones).
> 

Yes.

On 10/11/21 5:37 PM, Paul Eggert wrote:
 > mktime_z should also be in glibc, but that's another story....

BTW, I started implementing mktime_z(3) in my library, based mostly on 
glibc's mktime(3) code.  When I have something working, I'll tell you in 
case you want to pick it for glibc.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
