Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11EE8406D27
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 15:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233564AbhIJNxG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 09:53:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233632AbhIJNxC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 09:53:02 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9CB4C061574;
        Fri, 10 Sep 2021 06:51:51 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id u15-20020a05600c19cf00b002f6445b8f55so1472410wmq.0;
        Fri, 10 Sep 2021 06:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H6x5LRiOVF3GV6fj6cpEctTbkHJofu5J4FIfBf/F6uM=;
        b=pJDFDi+eGBw+YaKT5EUQBFqa6A3hogyZeigvfjJDNWMqPanbj1XJDx3+gPpbZLcc4C
         pzj7yfaXvEkWgCaM4bs0V1zxDvjh53jlh556/X5IfMc9CbH7tfiTWp+5NhBSqF83Nox4
         sMH568WlGDA2PrTb6JHNFGiEQvrR64iL7YgvE37XAr6K7hERnEoTSjcYN36QUpuzlLsk
         BJzLTGTM8v8Fujj4XKKa7vzli5WwbGEro+cHU2suzeAr291hVcEHGrd/k4Fl3rYrqoIm
         twQn1Aic2a8jCts/ymCUwLh2li4UGKhLlRRW9+tP631xRKKq33QoMORlfqMnR/sLcRyy
         qFlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H6x5LRiOVF3GV6fj6cpEctTbkHJofu5J4FIfBf/F6uM=;
        b=eoFsR2xaNp2eOMhRWtbdjraGHGRqRjV8m4IEOiu54U2kv2u8FO6Wz8h+ecK6y7Rqvp
         kM0rDDx2m3OJ8edh5Pw2zhpiTzMieflq7wqbp4Gl76h3kBqEOnDJgkht2XbunrIXk6Eg
         5bRNf9fxARp6EcEtO+x89EsDTnhwH3cSd7waQV69CzKpdm0lKLhYWn3WBzrh8CuhxHh5
         TLeKVvBgLGa/XS7bh7tB6wsLmNkFTjEM9GlJgJQptIRwhap8gvoewg0v0Ordfz4YoFOd
         QJyKTx+e0YajOq4WyE9AsdfDu1gaqgFMIDqbQTVv5oYSqwvzWs5VLqjc7AZ3lDndUel9
         12yQ==
X-Gm-Message-State: AOAM530LvdPfYtuHUqL7bdGTs5CDDdEkjFKrj0dHqfw5yTspM3idqhYA
        kCGj3lq4RZkIc3O8oBumuV4=
X-Google-Smtp-Source: ABdhPJwhlnFxg5sxl8FddqKJTl7vBPJeFsnZSnCjI9NH5cSGVWLG2E5dne5PaukzXYPN+4xqOGQPIQ==
X-Received: by 2002:a1c:f314:: with SMTP id q20mr8323150wmq.154.1631281910333;
        Fri, 10 Sep 2021 06:51:50 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c23sm4402923wmb.37.2021.09.10.06.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 06:51:50 -0700 (PDT)
Subject: Re: [PATCH] process_madvise.2: Add MADV_WILLNEED to process_madvise()
To:     zhangkui <zhangkui@oppo.com>,
        Suren Baghdasaryan <surenb@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-mm <linux-mm@kvack.org>
References: <20210805044411.18966-1-zhangkui@oppo.com>
 <CAJuCfpFC=LT70ug4iu+yrUvX9o81mMvP8rYrgEibD3YJmowwiQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4e28e934-84fe-005c-1035-c8954d6b90f5@gmail.com>
Date:   Fri, 10 Sep 2021 15:51:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAJuCfpFC=LT70ug4iu+yrUvX9o81mMvP8rYrgEibD3YJmowwiQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Zhangkui and Suren,

On 8/9/21 7:31 PM, Suren Baghdasaryan wrote:
> On Wed, Aug 4, 2021 at 9:44 PM zhangkui <zhangkui@oppo.com> wrote:
>>
>> Add MADV_WILLNEED to process_madvise() for read-ahead swapped
>> out memory immediately when the app switches to forground.
>>
>> https://lore.kernel.org/patchwork/patch/1472006/
>>
>> Signed-off-by: zhangkui <zhangkui@oppo.com>

Patch applied!

> 
> Reviewed-by: Suren Baghdasaryan <surenb@google.com>
> 

And tag added.

Thank you both,

Alex

>> ---
>>   man2/process_madvise.2 | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
>> index a6c8724d4..caa8bc0b3 100644
>> --- a/man2/process_madvise.2
>> +++ b/man2/process_madvise.2
>> @@ -112,6 +112,10 @@ See
>>   .BR MADV_PAGEOUT
>>   See
>>   .BR madvise (2).
>> +.TP
>> +.BR MADV_WILLNEED

This should have been:

.B MADV_WILLNEED

I fixed it myself, don't worry.
And also the surrounding cases, which led to this.

>> +See
>> +.BR madvise (2).
>>   .PP
>>   The
>>   .I flags
>> --
>> 2.25.1
>>
>> ________________________________
>> OPPO
>>
>> 本电子邮件及其附件含有OPPO公司的保密信息，仅限于邮件指明的收件人使用（包含个人及群组）。禁止任何人在未经授权的情况下以任何形式使用。如果您错收了本邮件，请立即以电子邮件通知发件人并删除本邮件及其附件。
>>
>> This e-mail and its attachments contain confidential information from OPPO, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately and delete it!


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
