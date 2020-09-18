Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E032270862
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726174AbgIRVfq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:35:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726139AbgIRVfq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:35:46 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4638C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:35:45 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d4so6573475wmd.5
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FABMLJzc5l49T4XdDMGn+C/1kxNx4RNOcLsOHmrvUZ0=;
        b=tpHy3NZSSQIouy0ZNsk3slqJbe5XYBW9/6lZ9LmeSqFMljvFUBeK4hbccLQ6ci24aW
         P7vqo/J5GQ/QsHjO/QBIbc5u2Rz7XNywQE6MDWpQKkFLzg+TaBVDWEu9pPJG2i/zwFLv
         jN/Fs+RJOJW9B+kDAbRbtuZF/IIPjq5qv4ETgGg6v6240pILZw3RWdSNIik+04RpU/ZI
         zpDonvmCz8V/1JPSf6NvCs/uP32+BEEaMJqjGTgXl0/FwgsJNpUN7ZF9upm/AzSQ1pp5
         MWbAeHicg8W/C9PPLPcY95MI09qeU2TbFySHbZrd4D+ElhTWWhzI3zD07yJu/gIAnjNH
         svaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FABMLJzc5l49T4XdDMGn+C/1kxNx4RNOcLsOHmrvUZ0=;
        b=lxX9IB1c4MHab1v5RArHoFDRhGRZG3RYsKvMs0dQNchFAf/qEx5pP/8LJeGqRTzK3O
         xMRbmrhT5hTCZHVyznnY8M5SoRsGMZoAOU+c9SqYjmyp+oQoOUhfK9TCTTMvRyunZ4Ff
         sOVxKzYI/3tsHK140Ub7empTP9UYBeIyrAlVWshOuOItXowyB2jlwK63jJf9V/lUL9aa
         rC9d6Omd2VLN2yHZTIAaC94H23Ho0lk4t08hDp40l1Hw1yRnLhNh5ZoIsguZWkJ9hrVZ
         WpJHdEyIn38pxA5CtAnDo/FYJveT/FaiWKOY16jIJiyj7v1TDqSPO0V2kuRQZJ/CXWZF
         L+Rg==
X-Gm-Message-State: AOAM530LjydSkjPSsObtS3xVn2zQ82zqfUfcU6Zlj5XsPZE4sl4Kru/e
        8pefEX58M525mBK7dcXrUXA=
X-Google-Smtp-Source: ABdhPJycLBw5P6DAWTPw7ajquNKsObnZ9N65mqpPp7X28bVi0vNrAqaOdoBlznSsflaYiEqhYFJxow==
X-Received: by 2002:a1c:4c05:: with SMTP id z5mr16692508wmf.47.1600464944494;
        Fri, 18 Sep 2020 14:35:44 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id o129sm7261724wmb.27.2020.09.18.14.35.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:35:44 -0700 (PDT)
Subject: Re: [PATCH 2/9] system_data_types.7: srcfix: Add FIXME note: Add
 descriptions
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-3-colomar.6.4.3@gmail.com>
 <8e140181-ff02-6cb5-a46b-7057436d685e@gmail.com>
 <87b7b1b8-7a37-7ff6-49b5-11a9e7710276@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <4273bd1f-8af2-2fae-3017-e6333a3131af@gmail.com>
Date:   Fri, 18 Sep 2020 23:35:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <87b7b1b8-7a37-7ff6-49b5-11a9e7710276@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-18 23:03, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 9/18/20 10:50 PM, Michael Kerrisk (man-pages) wrote:
>> On 9/18/20 7:04 PM, Alejandro Colomar wrote:
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>
>>
>> Thanks, Alex. Patch applied.
> 
> Sorry -- I misspoke. This pach doesn't apply. It wasn't obvious why.
> 
> But, yes, I think adding a description would be good.
> 
> Thanks,
> 
> Michael
> 
>>> ---
>>>   man7/system_data_types.7 | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>>> index 5352f3ef2..48871e4eb 100644
>>> --- a/man7/system_data_types.7
>>> +++ b/man7/system_data_types.7
>>> @@ -96,6 +96,8 @@ typedef struct {
>>>                           * the end of substring */
>>>   } regmatch_t;
>>>   .EE
>>> +.\".IP
>>> +.\" FIXME: Add a description?
>>>   .IP
>>>   Conforming to: POSIX.1-2001 and later.
>>>   .IP

I added that comment to every type that lacks a description so that we 
can see them easier.  In other types I embedded that comment in the 
patch with the documentation, but in this case, the type was already 
documented, so I had to add an extra commit.

Cheers,

Alex
