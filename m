Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34C0627D299
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 17:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728215AbgI2PVM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 11:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725497AbgI2PVM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 11:21:12 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AC1EC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 08:21:10 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k10so5862095wru.6
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 08:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=j6CWfSuHx4oEV7t3DuKOs4RFZl0O4aRaCU4fbuz96zQ=;
        b=FiW0+JA1PsXPIa/hXrzE9T7uujm7fuwyjoJ69QUDJJqy8jYUPchRXM2XuqR2KS8itg
         EOh+S5T1lYB5/mwTt9AACaypWUdZXkZcYCVO0EkoiTQ9wXibFPXl29/WaEGZ6jTTx40s
         v3fhfQkzhUE5pbbIfZwxtIcAYXGkB8Z2tWP14Sxkock4qeJHF5kXl9OqgoCqR2RoxN2g
         4p2BLJJdvoizHAUvoOyjacJPJR9tahbuc87/NTLAhm3oh7iLUbh088sKuereGRUkj68e
         mqUL3pRR/qUOM9Msydq/iVCaRKUkhb9gQiCSoKV8NxamJxdwnpN8l3LZ1cPEJF2oOZwY
         kseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j6CWfSuHx4oEV7t3DuKOs4RFZl0O4aRaCU4fbuz96zQ=;
        b=czB8xZ2p6K1vKwmGrsEycpKPF9ISfh99YgJ8ipbydgXE4vL3N3BQ0RPhuiBL/tATAA
         nKBNC5U+hVbouocOGnr8wN3PYZ+ntiomLms4Dbp8ad6zj7LWnG6qVReLq24jeIqtZm54
         JpXHoHUPweAGsmzM5QfYSLfV6ojtFs7c7VXphlbj4NjzZ3gm+e7zvSjaW/jtqxbFP6cG
         I3vVD72RzcJU0lhoTE8nbLwCkaJ4/wl5K1hzqTpJfJFkrCeXmTQKeSIxyjXTesJBGXhT
         TiIlljE9d672qfI+kh+b1Mbhjz5Gqb8Dhofq3ZJwxIl3z97BiqdAkzq27f4813J8i5XR
         +5Ug==
X-Gm-Message-State: AOAM531m1P+3mQ7di+ghPSDIJZXymwAltMR2CDbR7moPJ0US3IjG5PNm
        gMjq3AYqtBtsEMtmvtYiqSA=
X-Google-Smtp-Source: ABdhPJzVE0WREXQgC2QSKignPOOM83m9ScVBy8f1U84WIvmdIuATsAU/CR9/gyIb1rxpvF5pDL6E9A==
X-Received: by 2002:adf:eb86:: with SMTP id t6mr4918285wrn.411.1601392868961;
        Tue, 29 Sep 2020 08:21:08 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id d18sm6215343wrm.10.2020.09.29.08.21.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 08:21:08 -0700 (PDT)
Subject: Re: [PATCH v2] system_data_types.7: Improve "Include" wording and
 format, and explain it in NOTES
To:     Dave Martin <Dave.Martin@arm.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        g.branden.robinson@gmail.com
References: <d714d0e3-e9fd-0f31-4d5c-4f9232a6b55b@gmail.com>
 <20200929142219.72683-1-colomar.6.4.3@gmail.com>
 <20200929144324.GM6642@arm.com>
 <3dae4d7f-3c08-4f1c-47ce-8815255ca24c@gmail.com>
 <7b4bcd7f-8e60-943d-b127-6926a53a29d3@gmail.com>
 <20200929151339.GO6642@arm.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <6be305d9-4fef-59ee-6552-f86cf2dc5267@gmail.com>
Date:   Tue, 29 Sep 2020 17:21:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200929151339.GO6642@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-29 17:13, Dave Martin wrote:
> On Tue, Sep 29, 2020 at 05:06:27PM +0200, Michael Kerrisk (man-pages) wrote:
>>
>>>   > Can we not just annotate each header listed with the originating
>>>   > standard, say:
>>>   >
>>>   > 	<stddef.h>	(C)
>>>   >
>>>   > 	<sys/types.h>	(POSIX)
>>>   > 	...		(POSIX)
>>>   > 	...
>>>
>>> That may be a good idea; I've thought about doing that in the past;
>>> but also thought that it's still too much noise.
>>> Let's see what others think about it.
>>
>> My thought is that maybe we can add this kind of info later,
>> providing we find a concise way to do it. But, for now, already
>> the info in the page is useful as is, and I don't want to stop
>> the momentum of Alex's work. So, for now, I think let's carry
>> on the current style.
>>
>>> The downside is that it adds a lot of lines,
>>> being harder to read for types with too many headers (e.g., size_t).
>>
>> That is also my concern.
> 
> OK, that's fair -- I agree that the page makes a valuable contribution
> already, so it makes sense to merge it in its current form and think
> about improvements (if any are warranted) afterward.
> 
> Apologies for the noise!
> 
> Cheers
> ---Dave
> 


Hi Dave,

No problem, suggestions are welcome!
Actually, I want suggestions for that page.

Actually, I should apologize for the noise...
I don't know, but I may have sent a few hundred emails to this list in 
the past 4 weeks :p

Cheers,

Alex


