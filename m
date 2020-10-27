Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27F9429B6CB
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 16:32:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1798431AbgJ0P0t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 11:26:49 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:34553 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1797737AbgJ0PZJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 11:25:09 -0400
Received: by mail-wr1-f67.google.com with SMTP id i1so2411071wro.1;
        Tue, 27 Oct 2020 08:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/gvpz0sZiGT+1Kv8y/VGFCyB/HnHXTwYLrBX1sFI/Yk=;
        b=bY79v72yF3Tes//7cmXIf6qe4+vMktjuf6HMr+c1wX5Wi3Kmv7jLxJ6lYVcQehynq5
         enj1byot9HZfnu8pk1UxLcsGVCx6IVLmOCwmGdKsDzlKABsF8mUFZYvIQLwiddqcjFgc
         B41p/FxGmF0zvopf51ajs4iTkHNaSVV4/lL8P8Df5cmip9XRUDGZ6n3oBO8vDPFHTnMT
         4/hhrF0SfFl9oYTtKryd1TcPUW3mPEWVvmSCB/l9uobPAqTk2HA3LGo+uHG1VNnpuYxD
         lhblCfCNU5GsvZINLaO8+wSFoxbvIm3IlMRj81qrkSerJ3D9zkTOOcTgwGbY41dI4Kug
         6J9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/gvpz0sZiGT+1Kv8y/VGFCyB/HnHXTwYLrBX1sFI/Yk=;
        b=NmtMGNuzVumL/fTzeUUkVY7mnIh/OfRwJxQ5mHoEPPpC532jAfd6ERZqfGoerRSkwK
         spRzQUgllIU227I7BhN6AZuzOQ8ZDAZWcCD/iDRZRnTt1lYhbH/Fj6GESN/eTr4Jkn0/
         InoxGooZY9f9y5BGebudeonZwUWneIsTSNR3wKCfaYkYisYUDD9ft+rzjQ3Pnt37QWw1
         rBqn+orvHIgxPdxFI1Nahv1KQjwMFpRPOyhO6QZJXrEBKGLQQ7qUkHvBfNVOF5mtfRlM
         K79JACRfnAsPzqFjWkLmNcRH8SsPmFrybrlbelbkqtuEHyPQJNWY51dthm5B0fmgzqoX
         CRkA==
X-Gm-Message-State: AOAM531c1VlxC9l8yaQKa8WuzpaqtEvVJCMkQApL+wrLOsvadVu8DS4K
        X41I7oT7KyWmZ1tHwMZfvLuYrWWO0n4=
X-Google-Smtp-Source: ABdhPJz2VfcZhk3Ve0oTAGiNBwTV7ir9WqmXfWfXWKTG21lkR1jLcPgSugqH5HAUjYuUGV19OOprvw==
X-Received: by 2002:adf:da4b:: with SMTP id r11mr3477155wrl.130.1603812306471;
        Tue, 27 Oct 2020 08:25:06 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id y201sm2274875wmd.27.2020.10.27.08.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 08:25:05 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'off_t'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org
References: <20201005221247.13065-1-colomar.6.4.3@gmail.com>
 <b24d9f74-d07c-5d07-0788-eb8f1711d71d@gmail.com>
 <87faeeeb-f2e0-7f1e-5692-78b43242f20b@gmail.com>
 <bcfbf8ec-ca90-b736-1516-e096ef03222f@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <1e587ddc-99a3-f05a-857d-9d221c0818b1@gmail.com>
Date:   Tue, 27 Oct 2020 16:25:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <bcfbf8ec-ca90-b736-1516-e096ef03222f@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-27 14:47, Michael Kerrisk (man-pages) wrote:
> On 10/27/20 11:23 AM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> On 2020-10-07 08:53, Michael Kerrisk (man-pages) wrote:
>>> On 10/6/20 12:12 AM, Alejandro Colomar wrote:
>>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>>
>>> Hi Alex,
>>>
>>> Thanks, patch applied. And I trimmed the "See also" a little.
>>> I'd hold off on documenting loff_t and off64_t for the
>>> moment. As you note in another mail, the *lseek* man page
>>> situation is a bit of a mess. I'm not yet sure what to do.
>>
>>
>> I saw a TODO in the page about loff_t.
>> Just wanted to ping you in case you forgot about it (I did).
> 
> I didn't forget it exactly. I just don't know that I have the
> inclination to do anything about the messy *llseek* pages.
> 
> Thanks,
> 
> Michael
> 
> 


Hi Michael,

I've been reading them to add loff_t and off64_t to sys_data_types.
Now that I've read them (not too deep),
I think that lseek64(3) is good enough,
and maybe we should look for small details
missing there but present on the others,
and merge those to lseek64.3.
And then keep links in the other pages pointing to lseek64.3.

Any thoughts?

Cheers,

A
