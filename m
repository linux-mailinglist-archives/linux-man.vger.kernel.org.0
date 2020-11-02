Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57F762A2B45
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 14:12:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728359AbgKBNMm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 08:12:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727324AbgKBNMl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 08:12:41 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D04F7C0617A6
        for <linux-man@vger.kernel.org>; Mon,  2 Nov 2020 05:12:39 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id h62so4622875wme.3
        for <linux-man@vger.kernel.org>; Mon, 02 Nov 2020 05:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ajDdEx10UNA/d0Hmk6TgxULxR7a3Rd7frUnZNZh6DsM=;
        b=hXCcwH1z9owjA/yW5G7D0qSwQfnBnW5CqrZKdrWQO/O4TR8Lpbc/i0gBSMTn/PNzQy
         IVOamzh+0+sr6vLo5HKV71XxkQotK6DnlYrXWcvYDb5RQJQotgPyElATtD/mzuf98e4z
         bEFvsamjSHKRijB2dlEV3TOvRawmb3pAmF5b5vpXq5hmksUWaQdx6Hvnoy/qBeAsfbS0
         nh8XIb+XT0M0Xxt14ImEpJfEyiKyEfhbzoR0mstuWy/rTrJs//jBnFBAawpiVYafuvW8
         lCgvRyhwvK0jqb0VQVQaFxH4fYtSALYMJ3VejUiI3KNLRj+jYofpgDSZ8sSoNTMzFNYK
         TX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ajDdEx10UNA/d0Hmk6TgxULxR7a3Rd7frUnZNZh6DsM=;
        b=PSJxO3uiTzD4WMaS7jP5o3vv4jQ/y/MKpzUC1H/e7yjDV26k8GK4Ja+jvdJbZNG1tB
         UWjptBvgqqKBk7eJaEG9rVaii+blNkbgogtVtUWWX6GzOrk+Go6STL+yrZhqJ3LoAaTU
         uqgTwPPts/HV1eQLej4fH87JDgcitXyQJ33XuaaKDbEn4Mr/uTL9W/h79ZDk0Ahafl1S
         LBReB1+XVc103lt7oe/bgecqilk8VaOmMho5/mnJOHzAr/2j6zNt5kHEbEVwz6ZuU2u4
         I8tgen3J3o+BVWqjn9a27gOYWd5IGqgn9O8TZT05jXrA1uGqXX4gWolzWgBnV9ZjODDB
         27pg==
X-Gm-Message-State: AOAM5313MePKCZXsVAZV8BlZFrBpJlk7dOkoMG7PuwDkV9aYZ5HyQJXo
        zW5zn2xeQFOaHC3US5Y9X8oAtfwNJ50=
X-Google-Smtp-Source: ABdhPJxVZNjCnM53yT0RmgJPqhAvyTiMa8JZp6EhEQZQNo54krcWxRBM4lsI5WzKDGqYepoYMx3HRA==
X-Received: by 2002:a05:600c:21c3:: with SMTP id x3mr17523732wmj.81.1604322758255;
        Mon, 02 Nov 2020 05:12:38 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id z15sm21410586wrq.24.2020.11.02.05.12.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 05:12:37 -0800 (PST)
Subject: Re: [PATCH] io_setup.2: SYNOPSIS: return long
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
 <6362993f-88d7-5dd4-91b2-03d31ebc8bab@gmail.com>
 <4de611f0-27e7-164a-bd40-21d276c015be@gmail.com>
 <CAKgNAkjcXEY+Gjstpg-038QeApEaGvW=Z803ZbmSmJ5KXz7vNQ@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <7bba6ced-14f5-75af-933f-73eac0284a39@gmail.com>
Date:   Mon, 2 Nov 2020 14:12:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjcXEY+Gjstpg-038QeApEaGvW=Z803ZbmSmJ5KXz7vNQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-11-02 14:09, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Mon, 2 Nov 2020 at 13:20, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>
>> On 2020-11-02 08:37, Michael Kerrisk (man-pages) wrote:
>>   > Hi Alex,
>>   >
>>   > On 11/1/20 2:59 PM, Alejandro Colomar wrote:
>>   >> The Linux kernel uses a long as the return type for this syscall.
>>   >> As glibc provides no wrapper, use the same types the kernel uses.
>>   >
>>   > I think we need this patch for all of the io* pages, right?
>>
>> Hi Michael,
>>
>> For some reason, no.  AFAICS, only io_setup() really uses 'long'.
> 
> But is not SYSCALL_DEFINEX() producing a prototype with return value
> 'long' in all the cases? (I have not checked, I just presume so.)

Hi Michael,

Well, yes.
SYSCALL_DEFINEx() produces a return type of long
for _all_ syscalls, AFAICS.
(as I said before, that macro is a bit obscure, but I can read that).

Would you like to change all syscall man pages (without a wrapper)
to use long as the return type?

Thanks.

Alex

> 
> Thanks,
> 
> Michael
> 
> 
> 
> 
