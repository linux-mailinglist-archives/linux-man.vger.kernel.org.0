Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C9C93FA21F
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 02:20:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232682AbhH1AVN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 20:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232616AbhH1AVN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 20:21:13 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1C7CC0613D9
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 17:20:23 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id ew6so5002883qvb.5
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 17:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=FOfmX+nJRnJmoW4wkrE8zCdDNIqpU4f+6nZYJ9+LMuM=;
        b=JraUWmaWUU2kzZB5say5ti6vfWhQf3D2zvgmmBGeL5Wp/SEli3xfCpyG8n6wJO2aoR
         2QoGka3FUEnaE3R9Fr39PKrAiFg+R3zprFs5PXdlTMM4PdDYpG2KZa4BDvk8QbNB2kBD
         YRLCjC6mExuKCHE9T2jl3afypPoXZKcb3hDZtciRBJfcclmyQBK6ZiPq5hoA6Ew3VTuw
         +yGVCeftYON41pckYGL1ryF74ZiyH+JBpO2+9xzHiOtgwaBq21OnOqIh9GLokMH8JPIk
         9mvGWAxcCUoLfc7BG44qhJgfZNmBN1zfMPBRQjlLGJZ7CAe2grM/F8yjDeDT28xRcvvn
         2xjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=FOfmX+nJRnJmoW4wkrE8zCdDNIqpU4f+6nZYJ9+LMuM=;
        b=QnwZcQ4uCdYAwawSQgMhKz4Fz3QaTqg3aW84DyLTSYfY8HsfPs4K4eNLxJFJxpXrSZ
         sDthQ5t6VVBSjCOi69DCQeXNhx8eC8K3h1sIgJfK8809HebBaA6W8A26BgFJhqubYjaH
         o1jMS8wjOhoCEgYbryPxxLsQCVUzWF8bIL1zLG+Kc7Lst0ujURZrkHoeNoksyzfWWWUf
         Y5l61i8MOnk8JnMkS1PEly5pyyzT+M02mwQTQHzA9V+AwBwgX0p1m7CBXAToc3O4H2f3
         kdNH3Gbw9hShImEkcyMex/f175Ju7ZcGnfGYdn3Wl8bhglJPIiobaEu87UPtx3OMiv3O
         fv4Q==
X-Gm-Message-State: AOAM531RsWqorjkFRWTQuk/FUXuwBQVJw/MMBQB+tO2MnMKuSjBrqErK
        xqLAwoi6rsqXkQw0gtLc0aVKx+6c9xFPnA==
X-Google-Smtp-Source: ABdhPJwpEfDr+Zo1dzYa6HDzME9E8o9sHNk0eqRkgsJo1HkzHWgmEMfUPKVrsKPxgXWiCgZC7fPY8g==
X-Received: by 2002:a0c:be85:: with SMTP id n5mr12074720qvi.59.1630110023074;
        Fri, 27 Aug 2021 17:20:23 -0700 (PDT)
Received: from [192.168.1.18] (c-73-152-9-216.hsd1.va.comcast.net. [73.152.9.216])
        by smtp.gmail.com with ESMTPSA id w20sm5454010qkj.116.2021.08.27.17.20.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 17:20:22 -0700 (PDT)
Subject: Re: Error in 'man operator'
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
 <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
 <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
 <6666465a-ad5d-d8f7-92b1-35733f645961@gmail.com>
From:   David Sletten <david.paul.sletten@gmail.com>
Message-ID: <2c0b0fb7-1f52-4e7f-86a7-65ec2bf2887d@gmail.com>
Date:   Fri, 27 Aug 2021 20:20:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <6666465a-ad5d-d8f7-92b1-35733f645961@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ha. Nice work.

On 8/27/21 8:17 PM, Alejandro Colomar (man-pages) wrote:
> Hi David,
>
> On 8/28/21 2:01 AM, Alejandro Colomar (man-pages) wrote:
>> I mean:
>> !(int)x
>> (int)!x
>>
>> The precedence doesn't matter there, as they apply one after the 
>> other, right to left.
>>
>> So, I'll keep casts in row 2.
>
> Hmm, I just came up with some very stupid piece of code that can show 
> the different precedence between "unary operators" and "cast operators":
>
> sizeof(int)x;
>
> Which I hope no-one on earth would ever want to be valid C.
>
> If casts had the same precedence as unary operators, this would be:
> First, cast x to int, then apply sizeof to the resulting int (since 
> sizeof can be used without parentheses on non-types).
>
> But since sizeof has greater precedence than the cast, it would be:
> First, calculate sizeof(int), then... x?  Invalid expression!
>
> And luckily, the second thing happens, and the compiler yells:
>
> sizeof.c: In function ‘foo’:
> sizeof.c:3:20: error: expected ‘;’ before ‘x’
>     3 |  return sizeof(int)x;
>       |                    ^
>       |                    ;
>
>
> So I think this deserves a new row.
>
> Thanks!
>
> Alex
>
>>
>> Cheers,
>>
>> Alex
>>
>
>
-- 
Have all good days!
David Sletten

