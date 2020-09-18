Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCD9B270853
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726192AbgIRVd2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726185AbgIRVd2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:33:28 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60031C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:33:28 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id a17so6946667wrn.6
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bOtSppfEodFSDiablyHU8+FLXGx2UDsUlHyY5Dht2hU=;
        b=bi1fd9QnX2vy/jTzKIQPDVM2QwHG3TQ5siAtCqYPRnzJiXjC3QMYMP+4oDoPZtjRUH
         zcpHKhokJMcOAGjda8s70C9hAs5kGoiU9P/X5G5f5EvzqWumE4uiXQcA68m5t8stesTP
         nVzgyrP+iQap9Eeyljj/bHJ053zntZIUt33QB53g9VLPPRjXy84BLcAj/xGCvK9rUHbL
         CCqMXUXEiXLd7Bt61yb7T/BrY9W+yJtOcZHkhXvSUslzk+yh+rOhpuQPL1priwWUTNFR
         L+05J47apEYxsRpUXGJbIB8gWsGM0cfVflFTItKcSIM4unk2GS2+YjkPYZtYXeKB9Htk
         Mrhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bOtSppfEodFSDiablyHU8+FLXGx2UDsUlHyY5Dht2hU=;
        b=C5m+bjM2XHjO2GdpZ9buvEv0DR+YTrSb4ng6ktHSytbU+XMdpjp1CTnsE27xh3bLFd
         CparevVTx5GbSHvrSqCU7U9jvdqqEIX11K1GwWnRptRgp/xlcw6QH9xFw6QD97cH6PZJ
         RBFjJvmdfoJKuaAU5sSprGXMqxUWKK15J2Gi0BT/crZGwZEy74HGdX4yK2+Nk2KsKyD0
         vFSxs4CKZg3EdOizpc7ACBi3E+Y2AQR2XqpqIcgGsklN4SpE1Fptq9zJxmOsUvCdDiFM
         C8VIJWNSv+p5DljwMcb7A6azNmyTmhWvqn4Aofuw3f86KGTwJ/rTwfEwxeS9DjsXoNY/
         uWJA==
X-Gm-Message-State: AOAM530z9ICk8K3CNWXLszOXpeCqh1ArDyROHcrDFuyci74Gl8AfqNBv
        HI8k513ODoD4/A2K+BIA9fhTHkp/AHc=
X-Google-Smtp-Source: ABdhPJyzfKcvnHrIHnhajNyHMSMiZaAxcmkfCiyAK/n5DzpNYiS6BA285UUWVcvweIHgAyPhfdoz0A==
X-Received: by 2002:adf:f903:: with SMTP id b3mr40852353wrr.142.1600464807040;
        Fri, 18 Sep 2020 14:33:27 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id p1sm21499700wma.0.2020.09.18.14.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:33:26 -0700 (PDT)
Subject: Re: [PATCH 3/3] regmatch_t.3: New page for new documented type in
 system_data_types(7)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
 <20200918132943.55424-4-colomar.6.4.3@gmail.com>
 <4de9a11b-5bcb-4a37-1a15-a476c94277fe@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <6ae8c100-f5cd-7853-1bca-2bcbdc992ce5@gmail.com>
Date:   Fri, 18 Sep 2020 23:33:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4de9a11b-5bcb-4a37-1a15-a476c94277fe@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-18 22:45, Michael Kerrisk (man-pages) wrote:
> On 9/18/20 3:29 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> 
> Thanks, Alex. Patch applied. But title should say "New link...",
> rather than "New page..." (I fixed it).
> 
> Cheers,
> 
> Michael
> 
> 
>> ---
>>   man3/regmatch_t.3 | 1 +
>>   1 file changed, 1 insertion(+)
>>   create mode 100644 man3/regmatch_t.3
>>
>> diff --git a/man3/regmatch_t.3 b/man3/regmatch_t.3
>> new file mode 100644
>> index 000000000..db50c0f09
>> --- /dev/null
>> +++ b/man3/regmatch_t.3
>> @@ -0,0 +1 @@
>> +.so man7/system_data_types.7
>>
> 
> 


Oops! Typo.

Thanks,

Alex
