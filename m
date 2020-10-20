Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54F8A2942FF
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 21:33:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391045AbgJTTdW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 15:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391043AbgJTTdW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 15:33:22 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8435C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 12:33:21 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id i1so3749384wro.1
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 12:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0R9s6CCqlttKU41TbX+W28vSgWQdXGTLy9yLOhRuhSA=;
        b=pGv1Dypn7yvWwHTmmCfIwP9nQHPfRsbyqgHM/8TN61gkqZh0Xgi/8C8ErkR8DFBf05
         cDSuZ+gUz/0PJ77oQ2P2Td11W8P+PKqjWpFxPLKKBKMo7aUJ+iIxGEc0xgoj/VLy4dwT
         lspsikEIOZmro+tHLOy8wuA7E4AMZN03VrjQ0pwqIatjQnARDqwnDpZdEvChSrdB7Rtg
         4ZHuMwSgdV5zbVjC28FgPov0YkU/w1BnIMn+m1Oyh8oFQoPdm7QnhU+pi0NiprIsv3DX
         xyydDysreFwdiK3ZdKilbqHsLlTMqeqwIHACQbAW21PPz7rtB/A28wtm19a/D5TEea8T
         C6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0R9s6CCqlttKU41TbX+W28vSgWQdXGTLy9yLOhRuhSA=;
        b=fpy0Tq/9B/VLALuxNucFF/ekPbKuJoA9ViRjA8ki/AIpbyjBtVWudKmlGGFk6w/f5p
         ThxSQ7nXtRJTvXzH2CwE7EyorATRRIhOkcE2c2QExB0gJ3qlalw467PDdcjjTIgpEy8i
         L4qMEFWppGzbhXjjDyLej77Cgj+T0jHjoAjKaWaGUZXah98nxh5LKRkDtpiWp+GmJgSn
         Vt4y9eZii/GsbbiJbbs+zP6kBXK6eVM960QamcLwoQwd7b8lCxJ1T4+INjDhGnFGL4b8
         4ZXHPWldUTe3aZEvIPwJfRVWZRrG1hdvIwotonV80JkhkOYqkGGHpKXIVrGiSakp/O4i
         0aXg==
X-Gm-Message-State: AOAM533vRxZuRnvlP9u6gs0jmcVS0hbB0P1puKhSFHzWj+zfHME2YQ2t
        SAbMfZuLw85LZ9v+2JwA5OQ=
X-Google-Smtp-Source: ABdhPJwBUyfmfDYCwdDyXjF0T1JaSY/sRxSr6YkTGCTN2gwSYdFcK4yhULiN4K9bC1EmEmAaOfD7ug==
X-Received: by 2002:a1c:3d7:: with SMTP id 206mr4655463wmd.155.1603222400079;
        Tue, 20 Oct 2020 12:33:20 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id o129sm4078015wmb.25.2020.10.20.12.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 12:33:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 00/22] list.3: New page forked from queue.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
 <438e747b-2307-d3f4-546d-5db90317d91d@gmail.com>
 <7ce58fe0-3564-ac04-34d2-d866a33c7777@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d7c7d213-a9bf-deb6-a19c-4505e9389812@gmail.com>
Date:   Tue, 20 Oct 2020 21:33:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <7ce58fe0-3564-ac04-34d2-d866a33c7777@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/20/20 9:21 PM, Alejandro Colomar wrote:
> 
> 
> On 2020-10-20 20:57, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 10/20/20 4:21 PM, Alejandro Colomar wrote:
>>> Hi Michael,
>>>
>>> I finished one of the pages: list.3
>>>
>>> Would you maybe call the page LIST.3 instead?
>>
>> I think list.3 is okay.
>>
>>> I didn't write the link pages yet in case we call it differently.
>>>
>>> Please comment any improvements you may find.
>>
>> Overall, I think the result is fine, but:
>>
>>> There are too many patches, so you may prefer to pull from my repo,
>>> where I created the tag 'list_v1' for this patchset:
>>>
>>> 	https://github.com/alejandro-colomar/man-pages.git  list_v1
>>>
>>> As you can probably guess, if you prefer to pull from the repo,
>>> I'll create similar tags for revisions of this patchset (e.g., 'list_v2').
>>
>> I suppose if I was doing this work I would chunk it up into bigger
>> pieces. I appreciate that you are trying to meticulously show the
>> steps that you took to build the page, but 22 patches does
>> really feel like too much. And I would have combined the
>> "Use man markup" patches into one step at the end, and I'd prefer
>> you do that for future patches (but I can live with things as they
>> are in this patch series).
>>
>> In terms of fewer patches, how would you feel about squashing the
>> patches as per the blank line separators below (and consequently
>> having bigger commit messages):
>>
>>> Alejandro Colomar (22):
>>>    list.3: New page that will hold the (list) contents of queue.3
>>
>>>    list.3, queue.3: NAME: Move code from queue.3 to list.3
>>>    list.3: NAME: ffix: Use man markup
>>>    list.3: NAME: Add description
>>
>>>    list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
>>>    list.3: SYNOPSIS: Copy include from queue.3
>>>    list.3: SYNOPSIS: ffix: Use man markup
>>
>>>    list.3: DESCRIPTION: Add short description
>>>    list.3: DESCRIPTION: Copy description about naming of macros from
>>>      queue.3
>>>    list.3: DESCRIPTION: Remove unrelated code to adapt to this page
>>>    list.3: DESCRIPTION: ffix: Use man markup
>>
>>>    list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to
>>>      list.3
>>>    list.3: DESCRIPTION: ffix: Use man markup
>>>    list.3: DESCRIPTION: Remove line pointing to the EXAMPLES
>>
>>>    list.3: CONFORMING TO: Copy from queue.3
>>>    list.3: CONFORMING TO: Adapt to this page
>>>    list.3: CONFORMING TO: ffix: Use man markup
>>
>>>    list.3: SEE ALSO: Add insque(3) and queue(3)
>>
>>>    list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3
>>>    list.3: EXAMPLES: ffix: Use man markup
>>
>>>    list.3: BUGS: Note LIST_FOREACH() limitations
>>
>>>    list.3: RETURN VALUE: Add details about the return value of those
>>>      macros that "return" a value
>>
>> Squashing as above would yield 10 patches, and I'd kind of prefer
>> that so as to avoid quite so many commits in the history.
>> (For future patches though, I would prefer to split out the
>> "Use man markup" into a single  patch at the end of the series.)
> 
> 
> I can't find the source
> (I think it was some kernel guide for sending patches),
> but I read some time ago that I should separate code movement
> from any other changes;
> otherwise git might not be able to follow that movement.
> 
> So I would reorder and squash the commits as:
> 
> 
> Alejandro Colomar (22):
>    list.3: New page that will hold the (list) contents of queue.3
> 
>    list.3, queue.3: NAME: Move code from queue.3 to list.3
> 
>    list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
> 
>    list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to
>      list.3
> 
>    list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3
> 
>    list.3: SYNOPSIS: Copy include from queue.3
>    list.3: DESCRIPTION: Copy description about naming of macros from
>      queue.3
>    list.3: CONFORMING TO: Copy from queue.3
>    list.3: DESCRIPTION: Remove unrelated code to adapt to this page
>    list.3: DESCRIPTION: Remove line pointing to the EXAMPLES
>    list.3: CONFORMING TO: Adapt to this page
> squash as list.3: Copy and adapt code from queue.3
> 
>    list.3: NAME: ffix: Use man markup
>    list.3: SYNOPSIS: ffix: Use man markup
>    list.3: DESCRIPTION: ffix: Use man markup
>    list.3: DESCRIPTION: ffix: Use man markup
>    list.3: CONFORMING TO: ffix: Use man markup
>    list.3: EXAMPLES: ffix: Use man markup
> squash as list.3: ffix: Use man markup
> 
>    list.3: NAME: Add description
>    list.3: DESCRIPTION: Add short description
>    list.3: SEE ALSO: Add insque(3) and queue(3)
>    list.3: BUGS: Note LIST_FOREACH() limitations
>    list.3: RETURN VALUE: Add details about the return value of those
>      macros that "return" a value
> squash as list.3: Add details
> 
> 
> I'll keep the messages of the squashed commits inside the commit msg.
> This would mean 8 patches.
> 
> Sounds good?

I think that would be fine, but I suspect you might have to fix
a lot of conflicts if you reorder the patches so much, I wanted
to save you having to do that work. I could live with either way,
but I'd prefer to minimize the effort you need to invest to make the
change.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
