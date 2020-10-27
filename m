Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E93E129ADB9
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 14:46:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2444525AbgJ0Nqb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 09:46:31 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:42010 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2444515AbgJ0Nqb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 09:46:31 -0400
Received: by mail-wr1-f68.google.com with SMTP id j7so1960002wrt.9
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 06:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UWR7peNlJtJz+LHmSYNG/FwgUOHDEWObq4d9Yy/fS3U=;
        b=WaZMffcW8deckb62P9h58HqsmAT//BrHxe7fjGhK4Lv0+L7tzszxIQiK4dD1SYuzfJ
         XYSK2MGhQbeI0oNb0emuuXECy3+Hmi9q3tsnVseXPfbd8k8BgU62Jnj/+mrDXw7wzopd
         q+NWKObBQW7RDKK3JRg8gORRGgXoBhjLOD39/mqPXQEpNO7ByGk93b3aZx1uc5O8+pdu
         1xV9N6gITa5+IoKDQidqHVXGc4SaxZgQXef5I863SZaIWPLQnB7riq+Ytyd107Tx9OGZ
         8G1HDR5AXFXCXiIdFOxaahBHb8GrZjSclqIHK3VPQ67Uqm1bHmAJMwTE9dhkPeWmZJTx
         rOfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UWR7peNlJtJz+LHmSYNG/FwgUOHDEWObq4d9Yy/fS3U=;
        b=gCJcjagwyR6X2oggE+V8GoI9BDwPU9aUlEW3/iBtIEXHMzVrbVRr6O80WoKKZ3Wa+u
         5+fU8aiJ0SFTO4xgHK0Tj1JSnKKobvE/bBy+Em0Hc38PO75rTt1zlMdr9JFJbedQZG0k
         jAmKDQs5eQmOnxjf+OFghNSGrwB+cgvz1yFvUNGgSOQY0PKASpI7VGb1+cxkMnbn0Zb/
         DVzJb0QrYgwO/JA76fUw+/O+J07qO4ILF8WCSJG/q8OyKoC/dvXGRijon56KTpR+kGCG
         csBjihiy0O12sBx9CO+sbWiz7jq/YNe5gkf3RBVN7Wg8b2WAggek3l8oZZU4n0l0ZlGS
         SBBg==
X-Gm-Message-State: AOAM530y1nyVW/ZdM7+yvhKBs3y9yIOdrg6QNbldYRjJn8aFW5M9YbjA
        rsQUXV8M0J9xAO0sdOxCh+cucQCengc=
X-Google-Smtp-Source: ABdhPJxGfhp2anBULLcE23dppCbF72iUrCtJeP3K29dNfO8t/k48V+OXx8u1nNBwndxWN5TMl/xnPA==
X-Received: by 2002:adf:ef51:: with SMTP id c17mr3213130wrp.301.1603806387799;
        Tue, 27 Oct 2020 06:46:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id b193sm421785wmb.2.2020.10.27.06.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:46:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] system_data_types.7: srcfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201026223450.28183-1-colomar.6.4.3@gmail.com>
 <0a104f3b-fdce-f094-7dee-966378b6f760@gmail.com>
 <38963a74-d34e-03f3-06c2-60df7451327c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c9009ac9-1fc8-0221-8475-81df63675f6e@gmail.com>
Date:   Tue, 27 Oct 2020 14:46:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <38963a74-d34e-03f3-06c2-60df7451327c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/27/20 11:27 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-10-27 06:54, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 10/26/20 11:34 PM, Alejandro Colomar wrote:
>>> Remove comment specifying the layout of the page.
>>>
>>> The page has grown enough to document the layout by itself.
>>> Anything that is not clear enough in the current layout
>>> should follow documented conventions.
>>>
>>> This comment is not needed anymore.
>>
>> I think there's still some value in retaining this comment!
>> IMO, it's not completely obvious how each type should be
>> described from simply reading the existing entries.
> 
> 
> Okay.
> I'll keep this patch in the 'rejected' branch,
> and maybe some day I'll pick it again :)
> 
>>
>> If we retain the comment, the "Notes" piece could
>> definitely be removed though.
> 
> 
> I'm not sure what you mean about this.

I mean, this piece seems redundant:

.\"             * Notes (optional)
.\"

Or did I miss something?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
