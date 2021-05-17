Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A0243825A5
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 09:47:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234274AbhEQHtA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 May 2021 03:49:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232040AbhEQHtA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 May 2021 03:49:00 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 558FCC061573
        for <linux-man@vger.kernel.org>; Mon, 17 May 2021 00:47:44 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id h4so5266514wrt.12
        for <linux-man@vger.kernel.org>; Mon, 17 May 2021 00:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=x176tbFT9cUHJo2f0o/hLbqCW3eLFYG4xomTWVFN39k=;
        b=oGfP5pRR/5Wng9horwZTBtcqXCOh9B8yG+tbW5+bc+RdTTtXZMZM4TmzFUX9c8aGaD
         qDjisNRptO7fQWRbMXJW2cVBuztjcFy9Dd1hdTuwc5Ssf84gM1JfeaqZcY2gMTXYke4s
         xN4C3yVRM7Rb74gFShyP5JBwp5G1PigL+hNGoj8J0QxWD79vaYeVDasKQ+EgfR/EzvEc
         uWctKMbwundXdFXqRuYyVuwcpWP4wJalpzFFTXLATMEPAmDVBG3KBbaQmzp54WMw8mPu
         NEu2sLYRRHvt7QwNIi0pvEEXYwfZLECg+/W2aWUjzgQIotUV8n+QxBym8tDx02Aq6L2j
         9/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x176tbFT9cUHJo2f0o/hLbqCW3eLFYG4xomTWVFN39k=;
        b=rZPYkT+LOxk2lactrlEUVhT1pTYeDqqqipo7IWUk5frGJH4u1YVDpgWfRS3V0+0eDH
         9UYRWoINenYf+ZiRYsdRwhRIklBcGFtbJJ1H/BQhvz4/Rsn873hxDvuoXp/qqInQFkoQ
         6g1CB5ailpPRGYnkGlx2TC5+EgdMeBLAabES8NNLQT3UR8lOO7gP28WVmUcfyYYD7yYL
         FfuspC569DieWGvLNjmcDFItvssJD1mAaWNPKY2w+uqc6XGQQPK0DCvD94htbpwHOpir
         mqd6NYvdiDBu0A2N7LkbD0lDuEZaFyv4jYC15nCAxWSrq+2SMP54WS63pT0ku35hlZYT
         CXxg==
X-Gm-Message-State: AOAM532iKFnmDet6RHDx1kzpKngGwZCkZODmmTDDYwB4aTtqb14XOsaw
        3EfXaL5PGaIxUVHAUQ4XxYXKrJ2bp5g=
X-Google-Smtp-Source: ABdhPJyP++DnTHur863ZQU9hIjtOiCcHFtDTSBTIIfPgq3f1cqYjK1WHoqjXsX+oOkdVoklt/AKviQ==
X-Received: by 2002:a05:6000:22f:: with SMTP id l15mr13132927wrz.316.1621237663123;
        Mon, 17 May 2021 00:47:43 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id y2sm22704494wmq.45.2021.05.17.00.47.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 00:47:42 -0700 (PDT)
Subject: Re: system calls not intended for user space
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <cb816b17-df1e-8cb9-5847-1626571f7929@gmail.com>
 <CAKgNAki3XKdOdNrs9cG6P0A=ggSATeAGfXob1Ct1dy83SuLjeQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c7dcc24d-3c7a-39cf-48a9-2357299e8b93@gmail.com>
Date:   Mon, 17 May 2021 09:47:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAki3XKdOdNrs9cG6P0A=ggSATeAGfXob1Ct1dy83SuLjeQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/17/21 3:04 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Fri, 14 May 2021 at 07:25, Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Hello Michael,
>>
>> There are some syscalls that are not intended to be used from user
>> space.  See restart_syscall(2).  Should I document those as
>> syscall(SYS_...) or not?
> 
> Yes, this function is an odd case. (Are there others? Perhaps
> sigreturn(2) also.)

rt_sigqueueinfo.2 maybe, for which, by the way, I sent a patch recently, 
so you may prefer to ingore it.

> 
> I think I would just ignore these two. (That is, no changes.)

Agree.  I sent the patch for rt_sigqueueinfo.2 because in NOTES it 
already talked about syscall(2), and by the DESCRIPTION it looks like 
it's used by library writers (that's user space).

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
