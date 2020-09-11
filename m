Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3F64265CA1
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725730AbgIKJjc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:39:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgIKJj1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:39:27 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36635C061573;
        Fri, 11 Sep 2020 02:39:27 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id a65so3785854wme.5;
        Fri, 11 Sep 2020 02:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5hHhevKkSsgdftQx56ODr43cbiFX1hQApEa0oVESpDg=;
        b=gXA0WTqp3UsDDGMuHpjHxusHJVqLz8Lq+KtDVBI6/Z3tGapO8nP24nfQLJLA8z3s3O
         TEccDhTCOwsX1wPPqD4U4Xuh+EoC4LihMkjt61ezq0O3wH9LptoUlQBJmxPUB1kwTENM
         xIu5sdwe9y/s1S09in3NvyFsptzxfAnxdqFbbhDVet7a7rkIfbkyTvodHbSCt+DdMDYL
         MYae5XH+Fz2T/MoMfwE/sbjNrpUWPOF1c8xyeYgukkkcs1HPPU2IGdIUT5gZg0g0g4nC
         3K6tkS/FhEU8PrvkE6BZs/qBJaIUzE8Rago+ynn4EEQtro9bvQrPIPwiFprZPlOF4uLd
         0m6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5hHhevKkSsgdftQx56ODr43cbiFX1hQApEa0oVESpDg=;
        b=uM4R4yvNXe1xB3EpHhw70FsIKlHJ2IBrplSmU8rAKrHeEYwyMyOnT6zyC1sPyD/Q+s
         zZP4/hyCmxY8WXeatZUAuvQlne1vhKjQwaqDim2hRvnUCSGFrAi9uMgzalDssMOu6Opp
         R/hQYi/C8PfysFVK7iT5cpR3QECaOXQ/8cuf2mqzo9xWwCxqjwZcEgBOal4Itson8Py3
         l0eMwhmvAKctE8qEeFQwgj/lDdaRbXSiIQTFzQhaaRHVHhMqXqfmPaxUwaleyv4deQgx
         uHVleZYnYAWqokhX7QKGwXanLScQ8r9L1QQviYGnxlyUWS6F+3mXhUOuWgWVnK5+xI5c
         Ld+A==
X-Gm-Message-State: AOAM5317l50GZKgWqJjWoZ3F1CixV9Y6xnLXIFZdG/ZoXv6Oucx8dQ//
        oXTbXahVr7kySdgSXL7dwc2Rt0Z3+MM=
X-Google-Smtp-Source: ABdhPJyPmK+V32DnUdvtk52Joh6rZv8jqXWWSup3REwqjAhKYXcxQHMfPNYQRUvZDZOAjsGKHbdbiA==
X-Received: by 2002:a7b:c14d:: with SMTP id z13mr1289383wmi.19.1599817165561;
        Fri, 11 Sep 2020 02:39:25 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l10sm3117129wru.59.2020.09.11.02.39.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:39:25 -0700 (PDT)
Subject: Re: [PATCH 01/24] inet_net_pton.3: Use 'PRIx32' rather than "%x" when
 printing 'uint32_t' values
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-2-colomar.6.4.3@gmail.com>
 <928d25b7-7f97-f9b9-80ce-0550c18131c2@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <050c5399-8f08-5ae6-2546-0cafd055780a@gmail.com>
Date:   Fri, 11 Sep 2020 11:39:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <928d25b7-7f97-f9b9-80ce-0550c18131c2@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-11 11:31, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man3/inet_net_pton.3 | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/man3/inet_net_pton.3 b/man3/inet_net_pton.3
>> index 00f94b9d4..d74a33d74 100644
>> --- a/man3/inet_net_pton.3
>> +++ b/man3/inet_net_pton.3
>> @@ -332,6 +332,7 @@ Raw address:              c1a80180
>>   /* Link with "\-lresolv" */
>>   
>>   #include <arpa/inet.h>
>> +#include <inttypes.h>
>>   #include <stdio.h>
>>   #include <stdlib.h>
>>   
>> @@ -381,7 +382,7 @@ main(int argc, char *argv[])
>>          may not have been touched by inet_net_ntop(), and so will still
>>          have any initial value that was specified in argv[2]. */
>>   
>> -    printf("Raw address:              %x\en", htonl(addr.s_addr));
>> +    printf("Raw address:              %"PRIx32"\en", htonl(addr.s_addr));
>>   
>>       exit(EXIT_SUCCESS);
>>   }
> 
> So, I'm in a little bit of doubt about patches 01 and 02. Does
> this really win us anything? On the one hand, %"PRIx32" is more
> difficult to read than %x. On the other, does it win us anything
> in terms of portability? At first glance, the answers seems to me
> to be "no". Your thoughts?
> 
> Thanks,
> 
> Michael

On 16-bit systems 'unsigned int' might be shorter than 'uint32_t'.
There it would make a difference, I guess.


Thanks,

Alex
