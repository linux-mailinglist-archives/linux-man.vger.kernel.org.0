Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CE4A2D7D98
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 19:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391120AbgLKSE1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 13:04:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388921AbgLKSEE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 13:04:04 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E41F5C0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:03:23 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id a11so2198165wrr.13
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hQrzDvdowpwhJNNCvyCUIdNxFyRlLMfZMHKMP8AJtio=;
        b=ZnPZSQYDwrzqCKFU+E1ffLhtgNiSuBxayLwdF769QxTOTCwZSXfegJgNR5zL57wdQE
         bLBixr129pDeSpVNDweeevCMUT2o4XhDA6V2rkZhH31BRilXq25ujZKJrx76CQnqs1eM
         SXmMJsTRBxPud15mVM5Urs3zoyLUqcBuAYD+HZIdIpovrysDUDNsAKJH0jM47biM2wpY
         ct/Ra0CBpA4rqbNbqoKsRDKP22a77Ku5cKm2MP29/9bF2GpiGmh2ogeXlSnLbid5jB2A
         CO5MoweOw0JBRaivM8aU/5PCRtn7vplEVe/8OjJSgXGd/Ovx4fT1s6bGE0JXCQ6MOVEK
         ALmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hQrzDvdowpwhJNNCvyCUIdNxFyRlLMfZMHKMP8AJtio=;
        b=gE/IrawM6unkRNlgXgHeJwY51t0Oh2+Q3CTkNC8WwE30DqhyxkTvHOAYAKEC1IRSjt
         3jb644Hhn9Ho9TWoOcAzj7MmKJYByq43hA3Sqg9eK07iAUq3wifxkAvlE9Xv1hdboRHG
         5PbOLPNoNYEKNLu5tBnJr01uq3KrL40xRjDVVGbBK1dt67Rr1mjFF3dFo6TV+f4H5YVh
         KA5qLe4OWQIVxIqYnuJclor/hYReb3yQ3JgUElsCyDDsar7IM5MYNM5g+rzunDrfW3Ez
         wrWAlE02vnOAZBRxXSsBAZaeb2Tgneoysg2nmAM7Md+dtCrH2q5TSY/JFiYeecwW1XXO
         i1/Q==
X-Gm-Message-State: AOAM531WmWGFHJNu7ICMfqg8u4bGzaqLWYzyePrASTkSGsfaEex1CM49
        t03dl/9gC7sFjE6799JP5VHcKIJACpA=
X-Google-Smtp-Source: ABdhPJyu9oW06vEgHw/90W7I4x38pbganAYuFdIIsH/ntAD4q832pp2C4ZL5xx4/RDJlBqGIRjdL0g==
X-Received: by 2002:adf:b74d:: with SMTP id n13mr15390752wre.101.1607709802742;
        Fri, 11 Dec 2020 10:03:22 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j7sm15037165wmb.40.2020.12.11.10.03.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:03:22 -0800 (PST)
Subject: Re: [PATCH] tcp.7: tcp_syncookies: It is now an integer [0, 2]
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Philip Rowlands <linux-kernel@dimebar.com>,
        Eric Dumazet <eric.dumazet@gmail.com>,
        Hannes Frederic Sowa <hannes@stressinduktion.org>,
        "David S . Miller" <davem@davemloft.net>
References: <20201207170806.64140-1-alx.manpages@gmail.com>
 <d3cfb2c9-0d23-41b4-a207-87fe62760b3f@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <086c4c44-0443-9e13-0087-fb8c2adcb80e@gmail.com>
Date:   Fri, 11 Dec 2020 19:03:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <d3cfb2c9-0d23-41b4-a207-87fe62760b3f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 12/11/20 9:32 AM, Michael Kerrisk (man-pages) wrote:[...]
>> +.IP 2
> 
> I think it's helpful to let the reader know that this is a more
> recent feature. So, better:
> 
> .IP 2 (since Linux 3.12)

Sure!

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
>> +.\" commit 5ad37d5deee1ff7150a2d0602370101de158ad86
>> +Send out syncookies unconditionally.
>> +This can be useful for network testing.
>> +.RE
>>  .TP
>>  .IR tcp_timestamps " (integer; default: 1; since Linux 2.2)"
>>  .\" Since 2.1.36
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
