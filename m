Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF72929AC9A
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 14:00:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2900386AbgJ0NAm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 09:00:42 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54809 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2440565AbgJ0NAm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 09:00:42 -0400
Received: by mail-wm1-f66.google.com with SMTP id w23so1291407wmi.4
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 06:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bz0s3Qnmt4ju3ef+1d6xzZ5oz/ahHmlehjfC0bo2b/I=;
        b=Owl7tcHNw7HAk48MARV3y8xjI6vAgWDhtbXmq1L3bxU8oH6ULTM1riJ39LB8Mu1zyj
         +JN3OKVWd9+rzdMTedtYE20dx/6aJ839Eyi8T8nfEo9nJceoPDoTUav/n6sasjk2ZhB5
         2/9VZOz2H3njAAAQaEzhgHFPOgleqDhZ9mw0J1t28zs+ALwakbNVD5AaX3m44lVZGOyP
         8NNWSM+a8IPjULW2AKH0x1RTg7k73C8IG3Tr49CDovEr2TIUToJrqtpSIJueN6Kw6hBp
         4nhAgKmoV3zhRVf4QI5O41NRm0oSv6O7uwhNU63aMzgaSNSmvSwKuB7Q2BnStZbQbirl
         A4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bz0s3Qnmt4ju3ef+1d6xzZ5oz/ahHmlehjfC0bo2b/I=;
        b=KqS/iipd2JHXTdOeWIGflrbR2Xx5MqSKv0nL51A86sS0SbpMF52IP8RgJW08i+NETK
         UvW9wrf8QM2te7iHmUDsu4Ous4CdICE3WAiJYSPlxm6WmI4Wcz5y+sZHC01vq6Lvanru
         o1P/Ii74W48ejy53qMWLXJWgsWxgp9qNR1ZDS170e+v3QM2Za8S9vLUBRb2hAjMNiQnU
         ExA/3Rg82tpSxsYOxwo7IQZghKNl7tAgAZZW2g3Jo0G2J++3aqHIWeQEOImHkw1LbtzQ
         56ug6ssX7u3XDyG/ivs91uNqyxZSv+VbWZ9iV/7WMy34Q+Ntzox+3+djUAQsGT13F+dJ
         rt0A==
X-Gm-Message-State: AOAM533zoDWksbFoU5e8s+LP4+iEgOqOE1a2tAoD57QeG8AWv79H010F
        VlKtZk+TZ5dx00/D8SHd+VQEjm0g/2s=
X-Google-Smtp-Source: ABdhPJxzxOMUC8AZ9wJrSB77WYFdlmF96oqUGPR9qSNfQhW0Kzo3G1aHRc814yBbCHXEz6eke0w29g==
X-Received: by 2002:a1c:b6d4:: with SMTP id g203mr2547922wmf.132.1603803640087;
        Tue, 27 Oct 2020 06:00:40 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id 26sm1770972wmk.42.2020.10.27.06.00.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:00:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] system_data_types: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201027104737.26615-1-colomar.6.4.3@gmail.com>
 <40613102-84bf-ea3b-254c-0739998cc40e@gmail.com>
 <a7a213b2-c76f-1f13-d70c-f54a2b6cd6ee@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <db0b025b-e9f9-72de-66bc-1a4e3d2720d1@gmail.com>
Date:   Tue, 27 Oct 2020 14:00:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <a7a213b2-c76f-1f13-d70c-f54a2b6cd6ee@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/27/20 11:53 AM, Alejandro Colomar wrote:
> Ooops, '.7'

Patch applied, and commit message fixed :-).

Thanks,

Michael

> On 2020-10-27 11:52, Alejandro Colomar wrote:
>> I forgot the '.3' in the commit msg again :(
>>
>> On 2020-10-27 11:47, Alejandro Colomar wrote:
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>> ---
>>>   man7/system_data_types.7 | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>>> index e98782545..e1e8f01ca 100644
>>> --- a/man7/system_data_types.7
>>> +++ b/man7/system_data_types.7
>>> @@ -775,7 +775,7 @@ See also:
>>>   .TP
>>>   .I pid_t
>>>   .RS
>>> -Include
>>> +Include:
>>>   .IR <sys/types.h> .
>>>   Alternatively,
>>>   .IR <fcntl.h> ,
>>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
