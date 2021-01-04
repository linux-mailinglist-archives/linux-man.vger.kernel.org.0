Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B1AE2E95CA
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 14:23:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726560AbhADNWU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 08:22:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726124AbhADNWT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 08:22:19 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2C0DC061574
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 05:21:38 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id i9so32154391wrc.4
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 05:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Kzo4SR6w9hJ4IilH26FqpUv1bNO5xNbcwqKZIkjx8cU=;
        b=gKE8hyrfn9n2FpVKPuR7TiGgyljCaR7H1RC05puuNmLIM3IDp5p8DW19iSexeeMgL6
         6X0HVfmV0EMl0nCsbMFXkfbbhNcurWr2vMN9zuG36KdrBq8XQETtZMl9gMwAouhKUT3d
         IwFkVluL9xjlEsVwjL4lh5841svKnypooaBkGgwAQL7AmEBZTLLXZhDcqYwDPro+n7dQ
         DWcefYr40H5KrWgcol2drrCE22IUOtgQ7mDCqsZufKosQfgY+dsM1ZdwX5HhU1j1mZLM
         IilSPzIy0iqPEsbdPeoXzYTFhWUQwvhA0VMpeCoU9E8xHqiD40SbqjBf8KpEcStVs7Z4
         xwyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Kzo4SR6w9hJ4IilH26FqpUv1bNO5xNbcwqKZIkjx8cU=;
        b=E5GX3mf2bA/FNEw/77afmJXFn9uNN3vHHy1xU+IynpQpAWr2uoM9KbkjJ1GEDZxr53
         750Sv7riI5qgihJX0r9Cef4IT/cCrSatvAOTAIlV2jIDwKO16SVcONiCn4TdBHyBoCrL
         6xomLF7zI8CIc8vZZRc1RfskwEt34LfTElw4kRwVAILFD58pBRNl6Ns1tzFPMHi5dqiJ
         zQ0F5Gtsa3JHwwL2+enGXHOemlDQ501+n3/M5vb2+UieDFJ5WK9KbfgizvOllpZYEqV7
         hYAc0bH2yQ5W5cQ+6kwzhVOn8TUJiXePzBCW70Xf3lHbmnv6acseXw/DKz7smh3DyCPK
         L1nA==
X-Gm-Message-State: AOAM532X/pXpiW/O7ZQmfahLOv0wFpxTiV2WjGOVvv1f8bA/j/FjbVyT
        nzptig4A+W2VCSllFClKBMlrdlprnYE=
X-Google-Smtp-Source: ABdhPJyzUih23x22StvLX2Si0xqQDxZ1yjwkL8vUE6csnK2DYWtOpZ+fKwDcefFv6xrGqHZZKaPQOg==
X-Received: by 2002:adf:c109:: with SMTP id r9mr68365880wre.261.1609766497389;
        Mon, 04 Jan 2021 05:21:37 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id n9sm90036980wrq.41.2021.01.04.05.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 05:21:36 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
 <952d3e06-d5fb-db69-f8e0-ee97d5ad2159@gmail.com>
 <4611ff34-2322-1e66-7b14-dc61200404f9@gmail.com>
 <8c66c28d-2ff1-b629-33f9-df057998f80e@gmail.com>
 <40f1140a-496b-5b2b-c1de-4522b1ea5043@gmail.com>
 <CAKgNAkiUZoV1aE10=6ehkqCKwpzrmbYt_fTjGGBEGi9=HZh7Gg@mail.gmail.com>
 <31e06e88-808c-2212-9853-f8e7bd9262a8@gmail.com>
 <d2fca8e4-3677-faba-cab3-e1b50f1880c5@gmail.com>
 <a2fc82ef-1c08-b7bb-bbcc-f95e44472b79@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dc1f381b-9f9f-9145-f794-d73eab90f601@gmail.com>
Date:   Mon, 4 Jan 2021 14:21:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a2fc82ef-1c08-b7bb-bbcc-f95e44472b79@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/4/21 1:59 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 1/3/21 1:11 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 1/2/21 10:40 PM, Alejandro Colomar (man-pages) wrote:

[...]

>>> circleq.3, list.3, slist.3, tailq.3, stailq.3: group?
>>
>> I've taken a shot at that. You may have improvements to
>> suggest, or even reorderings to suggest (as patches).
> 
> I'd group _FIRST, _LAST, _NEXT, _PREV; or at least _FIRST with _LAST.
> And I don't know which ordering to use within that group.
> Any ideas? FLNP? FNPL? FPNL? FL NP? NP FL?
> To be consistent with the ordering you used for _INSERT_,
> we could use 'NP FL',
> and put those 2 groups after the 2 _INSERT_ groups.

I'll go with whatever you think is best. Maybe FLPN?

> 
>>> exec.3: consistency with commas; execvpe can be joined
>> Done; done
> 
> wsfix: g/char  */s//char */

Fixed.

[...]

>>> xdr.3: wsfix: g/) (/s//)(/
>>> 	(See if there are any other pages with this
>>> 	 that I may haven't seen.)
>>
>> Done.
>>
>> Plus: error.3, ftw.3, glob.3, pthread_create.3, rpc.3
> 
> A few more:
> signal.3 (NOTES)

For better or worse, I think the author there was using extravagant
white space to make the signature easier to read. I'll leave as is.

> malloc_hook.3 (EXAMPLES)

Fixed.

[...]

>>> isw*.3: Rewrite into one page similar to isalpha.3?
>>> 	Does it really need so many pages?
>>
>> There sure is a lot of repetition across those pages...
> 
> I'll add it to my TODO list.

I took another look at those pages, and decided they are not as
repetitious as they first appear. I'm not sure there's anything
actuilly yo do there.

[...]

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
