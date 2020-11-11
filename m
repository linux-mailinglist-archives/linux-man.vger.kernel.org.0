Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDDFC2AF52E
	for <lists+linux-man@lfdr.de>; Wed, 11 Nov 2020 16:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727329AbgKKPj2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Nov 2020 10:39:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726920AbgKKPj2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Nov 2020 10:39:28 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FB5CC0613D1
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 07:39:27 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id 23so2938245wrc.8
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 07:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZsoQ0H29R3ufmgsKQn3zBjF919vXFb732vblf3k3LOc=;
        b=Nsp9Xj3BEsGtZSJPHKqbuj1nDEbs0OfZFy3Tmbev88JVx96fJb1JYn3TgRzJWsPiqy
         1XMPBidiGZX2ALmDyPtgAjO1p99CjA6VoZado2/84kdWZ67zADhVacP44Us7aRDRYQCO
         HwuPnyWo3cUsOYzJEYR1ZMTZJUgaVcFAu7s/GQ5hZzNHSqUwBi+pSvJ5lVkP+xz2arZc
         aC6vv2cVq8e6vgiBDCdltn5VCu3U1x+ltZvU20IKtGcVgPn3tBV/G3PuBfz5R3Ngv6au
         zIltQvGo0lglexXhepLg8tqHMlhcoUEnuVqYDp37Or1uxpLC78TiPPh7P4vqJnKTkNvB
         Br+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZsoQ0H29R3ufmgsKQn3zBjF919vXFb732vblf3k3LOc=;
        b=BIqAsKGWw88FxTT0VGXjTNqT5J4nwjYr/Z+pVlUxV5lKFa48HihapSYP7HJjojDegD
         ZeeltpWO4RU05t7vivU7DSgPSTvd47tAP5f3G6WCi+YdeBbeggpvIFF7ccG+hTTuvLdA
         Nb6+6iCP8nMwO/tFLNgXD5o2ZM8Pf/2i8jbKl4tT4YQB02Ss8hcJ2XHRb7VPMGhywdjy
         nnaZAAQNCegZw2kla1TAkp0Tz5TKzTaaOBj8v4bQ0WYZz3JQ8PVZD6qsUA2t6lvQdadi
         18jPP2a7uVTP7uyQ0+dD/loTroigHeEeTjgYi42lhyYMUtT1FeFSwRfJ402zI8emp1Qg
         LitQ==
X-Gm-Message-State: AOAM533rw12a9u6gi/w94AbSpYD5uGAWChSJ32fIGR0bY5idcHNZFeTP
        L9FKd62XTKwtHtMRiSrcX1h8RqYqDV4UJw==
X-Google-Smtp-Source: ABdhPJxMV9bfdZDiLa6pOYhqmersl3WQNOoLxK914YVqT0LT03PvLOxP9t/jppoEvhyzWj7VqVWpPw==
X-Received: by 2002:a5d:4612:: with SMTP id t18mr6060632wrq.401.1605109166045;
        Wed, 11 Nov 2020 07:39:26 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id y185sm3023335wmb.29.2020.11.11.07.39.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:39:25 -0800 (PST)
Subject: Ping: Re: [PATCH] io_setup.2: SYNOPSIS: return long
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
 <6362993f-88d7-5dd4-91b2-03d31ebc8bab@gmail.com>
 <4de611f0-27e7-164a-bd40-21d276c015be@gmail.com>
 <CAKgNAkjcXEY+Gjstpg-038QeApEaGvW=Z803ZbmSmJ5KXz7vNQ@mail.gmail.com>
 <7bba6ced-14f5-75af-933f-73eac0284a39@gmail.com>
Message-ID: <e2463d0c-9fa7-6e8e-3adf-0439408f2593@gmail.com>
Date:   Wed, 11 Nov 2020 16:39:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <7bba6ced-14f5-75af-933f-73eac0284a39@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping.

On 11/2/20 2:12 PM, Alejandro Colomar wrote:
> 
> 
> On 2020-11-02 14:09, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Mon, 2 Nov 2020 at 13:20, Alejandro Colomar
>> <colomar.6.4.3@gmail.com> wrote:
>>>
>>> On 2020-11-02 08:37, Michael Kerrisk (man-pages) wrote:
>>>   > Hi Alex,
>>>   >
>>>   > On 11/1/20 2:59 PM, Alejandro Colomar wrote:
>>>   >> The Linux kernel uses a long as the return type for this syscall.
>>>   >> As glibc provides no wrapper, use the same types the kernel uses.
>>>   >
>>>   > I think we need this patch for all of the io* pages, right?
>>>
>>> Hi Michael,
>>>
>>> For some reason, no.  AFAICS, only io_setup() really uses 'long'.
>>
>> But is not SYSCALL_DEFINEX() producing a prototype with return value
>> 'long' in all the cases? (I have not checked, I just presume so.)
> 
> Hi Michael,
> 
> Well, yes.
> SYSCALL_DEFINEx() produces a return type of long
> for _all_ syscalls, AFAICS.
> (as I said before, that macro is a bit obscure, but I can read that).
> 
> Would you like to change all syscall man pages (without a wrapper)
> to use long as the return type?
> 
> Thanks.
> 
> Alex
> 
>>
>> Thanks,
>>
>> Michael
>>
>>
>>
>>
