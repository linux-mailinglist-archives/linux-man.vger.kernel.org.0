Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2319427FEA4
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:51:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731816AbgJALvc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731767AbgJALvc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:51:32 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 418BAC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:51:32 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x14so5332335wrl.12
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=g/u6YUWYsNvQqtAfJeCAweM6aFX/C7fgxmT7w66m54w=;
        b=HV4nW1kFumzkX0ow5d+0Zq7j1KO70zZJa3Ogdu+EPGxzZUpdGDlHbtTDo/XxXL5OxN
         ZfDJddXrF9W/Ao81Xsvv102idchaRL1BvDlAtcsqJtQTNyQi6/FVbnptPyH/eNSfJErU
         upIM2ZmBuMjTbRw1inn2pj3po9+gdTuXPj7oUOsCnKrbp68Wapo07PGa1hpTqjn8/KhU
         W7xybyJ21WeS1JOJtORR1qdHu23q9bwYhjSP9DRVN/ehkCUpkhXgtb/IxW01EC2oi1iQ
         chzVm8aAUVHdk5oF1aImF/04hjBXDRlr9rXeDg6PSBIRCzXb4mDaoQUT/BbnSB7x9XQ8
         2DKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=g/u6YUWYsNvQqtAfJeCAweM6aFX/C7fgxmT7w66m54w=;
        b=thcnY7Fn58fOF9iuf5WU8jenEuOnMNqfHf/EhrYBXgKyVLXOuL1rUDcnPaodOXFqzF
         lWJsLUeA0zNFRz7+rRqGr//31uxYG1BKCsC0qQ8suGShMZQFH804N4zHoVpyFs9vzhpU
         xZdNxH1QaNJ04ukK6xm0f15uC/oREk+u75GNHJvYywmNot9y2Te5Du0YnJG954AM+/Y0
         okFRiuDEIfgvWNhtA5H4VbVgrEAKq1GRKXi4LLIQh4J3yLOov6L9rOM/PdADp/FCml85
         KZ7W7wEbTSe/uV9JECXosJYSlnnqmkmmz4Mh+Avq1duRt6AYzBjnFu6U+Apk2gNC7aQB
         45Ng==
X-Gm-Message-State: AOAM530r56YOIlfe4LJq+oYVwVao5nOkxsauFlzJ6UXCmg/QotFQ8XVc
        de8TEoxm7jakbChH2rbXYPc=
X-Google-Smtp-Source: ABdhPJyEpSTK34OedRCkSg3725/VMOQm/DZKke/82ZnVPAZpY2Z3Qcl0dZQqG9padRGg87BVikIVtg==
X-Received: by 2002:adf:fed1:: with SMTP id q17mr8252687wrs.85.1601553090981;
        Thu, 01 Oct 2020 04:51:30 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id o4sm8719927wrv.86.2020.10.01.04.51.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:51:30 -0700 (PDT)
Subject: Re: [PATCH 00/16] Fixes; Document remaining stdint.h types
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <754766a8-6749-1d95-f0ba-999f1a123405@gmail.com>
 <2dc7f5d7-c134-9209-67c2-7aeda0ad651b@gmail.com>
 <d7538743-be82-3ad1-7139-31000a49e7dc@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <886f5647-2911-951a-b62a-4f9b1ed8850f@gmail.com>
Date:   Thu, 1 Oct 2020 13:51:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d7538743-be82-3ad1-7139-31000a49e7dc@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Okay then :)

Thanks,

Alex

On 2020-10-01 13:50, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 10/1/20 1:41 PM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> I did it this way because then you have a clearly ordered list
>> of the commits, and in which order they go,
>> so I thought it might be easier for you (creating less conflicts).
> 
> Yes, I understand the rationale. But when I get a series of
> loosely related patches in a series of 20, and multiple
> conversations start about independent topics, I'm finding
> it quite some effort to keep track.
> 
>> And also, I can hold any more recent patches, such as __int128,
>> for when you finish applying the previous set, so I fix the
>> conflicts before you ever see them.
>>
>> Don't you think?
>>
>> I don't mind fixing for example patch 5,
>> and then rebasing the rest (and also the patches I didn't send yet),
>> and resending them as an answer to v1 00/16.
>>
>> But if you still prefer smaller sets, I'll send you smaller sets.
> 
> I do prefer smaller sets. And yes, occasionally things may
> go wrong in terms of patch conflicts, but I think that may be
> a smaller than the problem I note above.
> 
>> It's just that these patches are usually very dependent of the
>> previous ones, and therefore prone to conflicts if you
>> don't apply them in the same exact order.
>>
>> Your thoughts?
> 
> As you can see, there's no perfect solution here. In such
> situations what I try to do (where possible) is order the
> patches from least contentious to most contentious.
> That way, the patches that are almost certainly going to
> be applied are loaded at the front and the chance of having
> to rebasing later patches in a series is lower.
> 
> Thanks,
> 
> Michael
> 
> 
> 
>> On 2020-10-01 13:32, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On 10/1/20 12:15 PM, Alejandro Colomar wrote:
>>>> Hi Michael,
>>>>
>>>> Here are a few fixes (including one removing .br),
>>>> and then the remaining stdint types.
>>>
>>> These very long patch series are a bit overwhelming for me.
>>> I'd have preferred a few smaller patch series. For example,
>>> I think I would have preferred 3 series like this:
>>>
>>> 1-4
>>> 5-12
>>> 13-16
>>>
>>> One reason is that the multiple parallel reply threads that
>>> sometimes occur can sometimes be rather difficult to track.
>>> (Your patches have started some quite useful conversations!)
>>>
>>> For example, I suspect Jonathan's comments may trigger changes
>>> for patches 5-12.
>>>
>>> For now, I'm applying 1-4 and 13-16. It looks like some reworking is
>>> going to be needed for the others. When you do resubmit them, please
>>> start a new thread (rather than replying into this thread).
>>>
>>> Thanks,
>>>
>>> Michael
