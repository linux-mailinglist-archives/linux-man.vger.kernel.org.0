Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0AB003FB456
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 13:05:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236397AbhH3LFQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 07:05:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236324AbhH3LFP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Aug 2021 07:05:15 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A48AEC061575
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 04:04:21 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id i3so8507706wmq.3
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 04:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=yrNjw1Xv2D/hN6BDycCYKby700P1x4rPwxy7QKqont0=;
        b=FqKm0CWRYHq8ofPeGWzAD4JGBqYbU0x8VeaMzBSIL9BXAwhjCOPNz0i7wjwdAm853H
         twexPuI/WVa9j0T7agLOx/bnbxAxiRYBysF6T7JuxuUh2mU2+JF1BlOGOJCO/AmrRotu
         gxZThFDDnKE05dYHkxfkwCFnPbU8X9/ZhDQlHS/yMxVcooOXjZPLlRljctTC4OvTLlbm
         sjkI1aNwlzJnhWOM/JSsqst9DSqhyUnb5R2S8T5pHN92GvYoXZX3Y7HbZYYPRs4KHhcK
         5jqQN6ChiQBRZotpoxHLXxf/dcBQLVJ8HMtfaYWHY/HjN+rnO1yNlDDQ9qaViOnBlCxD
         +j/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yrNjw1Xv2D/hN6BDycCYKby700P1x4rPwxy7QKqont0=;
        b=g3k7Dphd46P+KByr1hzdqcyAhXS5+R8WkLk5aTi+Ddxay+94TALI10/vFpirRIW/oT
         WktLlUX/ITfvjMgnJytj+0E8xSpyOaQ/G30X7de/JXcdFI7x3CVsVbX0kmHiPPCCwT9M
         3BUserfgcXJu5K2xXwZz/DgdO0Arc5GirTCYAF7Hu+Ltt016OUD7E0mRQaS7ggnBqo1S
         0h7SJ5NR/wMM05I9v+OU0OfSpDI+rIqaQvdId6OAnxKP8Px12c4qbM9FyGQ07bwduS6c
         dAkGiMK9CeeM01JC64m8M6vjBTqX0WSuEqhdmKUR+iw4vR2L9qJMLGoPpEfaaen3l1qg
         SsEQ==
X-Gm-Message-State: AOAM531Ff++avc6OYkHZ8ZtmHo+PyRryIGnouHiDfZWSo8ObnZ5feqbt
        pUMMqaPeq9ZGjU5eUQy29/PmCsmVB9Q=
X-Google-Smtp-Source: ABdhPJx70UWB3G+i/RH4mvw5ca07qtDgwtJTJFiClenXhVPpxj2SPxTi4BXkBFhXSTlBTcvZ6AHBZw==
X-Received: by 2002:a05:600c:20f:: with SMTP id 15mr21265080wmi.176.1630321460235;
        Mon, 30 Aug 2021 04:04:20 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z6sm13392706wmp.1.2021.08.30.04.04.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 04:04:19 -0700 (PDT)
Subject: Re: cfsetispeed and zero baudrate
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
References: <20210830103855.kv2ykg34m3eorrel@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5dc2196a-9a2a-1b2e-e6ee-3539a62aad82@gmail.com>
Date:   Mon, 30 Aug 2021 13:04:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210830103855.kv2ykg34m3eorrel@pali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali!

On 8/30/21 12:38 PM, Pali Rohár wrote:
> Hello Alejandro!
> 
> Currently in cfsetispeed() documentation is written:
> 
>   If the input baud rate is set to zero, the input baud rate will be
>   equal to the output baud rate.
> 
> There is B0 constant which represents "zero baud rate". And also
> information that argument for cfsetispeed() (and also cfsetospeed())
> must be Bnnn constant.
> 
> But above quote documents special handling, "zero" here is really
> integer 0 and not pre-defined constant B0.
> 
> I think that phrase "If the input baud rate is set to zero" could be
> confusing, as based on requirement to use Bnnn constants somebody could
> interpret that "zero" as B0.
> 
> What do you think, should be above documentation part extended to
> express that "zero" is really integer 0 and not constant B0?
> 
> Some references:
> * glibc really checks for integer 0:
>   https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/speed.c;h=daac5ecde1f3695b8cb178002e8756895406087b;hb=HEAD#l86
> * POSIX describes that it is integer 0:
>   https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcsetattr.html

I think we should, as POSIX does, use literal `0` (and not mention
'zero' at all) to clearly differentiate it from the 'zero baud rate' B0.

Would you send a patch?

Thanks!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
