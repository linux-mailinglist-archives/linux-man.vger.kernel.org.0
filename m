Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 258407CCA88
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 20:19:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234922AbjJQST6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 14:19:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232208AbjJQST5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 14:19:57 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47A1690
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 11:19:55 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6bce254ba56so2335796b3a.1
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 11:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697566795; x=1698171595; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/nxcWtJEps8ubO9U6e0J36K+hqCpTDeOJfnIF0G0uJY=;
        b=GVBTvev9YMGy8vy/obX9ToGfvouZnRYEvnxSme+lbqWWHwQnSSJ1Yv0WxsjqyTYenI
         0r+9ui26LWCbITxYj1yoWlG/QymR7QqTVzQIUYRhPU/iKWfEFAO6NujrENTN9AuVBgJZ
         jfgMTrZ81T41iSYfISscKPCWzfYZsPdauGaSJtZ9HXL7Pg2oOJhQHs8srR8D/lKVebaL
         TqA6QxJgC9ISw5ZzUakSSeg5fRa31/CZ7TVk1yDNstgvgaQNkvXflLwmEWh+orz9sjBo
         gulNf+C39zT85kEYR//gBiHtl0CBAropFrN/BQ4FZA/619v3uDLNworUkK4ZN4W4Vpg/
         J65Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697566795; x=1698171595;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/nxcWtJEps8ubO9U6e0J36K+hqCpTDeOJfnIF0G0uJY=;
        b=mWlZvKYumnrYfuFwhrppFdcZHB7QSuO5BRniUYfHYCPE17lRSZrbwN/SUlMGdTtj9B
         bNm3f76486JKmUWWK0w4M3Ya/Z/qCJhGkDBtuDyQ1YxUmRlULN+JKxTW3/SBOWR7j9TJ
         Wyz9qDlGJZ4yKDwI2GIRb4tO5Zs52D3uEKydnwj8V9QHuzgFEwMPlqsUr6srUT3k59bG
         gWnFbE4tkpfv9W2mA0FA/8T84Of3K4UKNFSy5dukaYe7F6F4QzIrNarvDXvQxYpb5q2z
         PNyZG+qq4VZFoUxV/jMet9FEI/ZrxHz2hU02GGVARgX3s1F/OcVoZ0IZDGvao8tnXpBi
         SzDg==
X-Gm-Message-State: AOJu0Yz+ir6NZP5X/XT9DkZ4cYo6hVp1RikYy8SS4UThdtqi4w9K6x40
        Udb/oN0ST87ffqHw9u2zvigIVA==
X-Google-Smtp-Source: AGHT+IFWLGai7AaS8VKgvbeYc0zKzz10DAFFQuqdrg6E6R8R5tFOEKaBkjjD42WKl+dlf1f9vR6FxA==
X-Received: by 2002:a05:6a00:15d3:b0:6bd:b7c5:f777 with SMTP id o19-20020a056a0015d300b006bdb7c5f777mr3105275pfu.16.1697566794623;
        Tue, 17 Oct 2023 11:19:54 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c3:7f2e:f074:9ef:b31a:5495? ([2804:1b3:a7c3:7f2e:f074:9ef:b31a:5495])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7860f000000b00690cd981652sm1768160pfn.61.2023.10.17.11.19.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 11:19:54 -0700 (PDT)
Message-ID: <4569065f-fa68-4ca6-b09c-47333ca21ac1@linaro.org>
Date:   Tue, 17 Oct 2023 15:19:51 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option
Content-Language: en-US
To:     Siddhesh Poyarekar <siddhesh@gotplt.org>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
References: <20231016061923.105814-1-siddhesh@gotplt.org>
 <ZS0LipiiOBsntjmb@debian> <9af68795-52c0-f376-220c-d13d7adf622a@gotplt.org>
 <ZS07lyyLzTRXO7Ta@debian> <52ea4781-2c94-d9c6-1968-07da6d11184c@gotplt.org>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <52ea4781-2c94-d9c6-1968-07da6d11184c@gotplt.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 16/10/23 10:46, Siddhesh Poyarekar wrote:
> On 2023-10-16 09:33, Alejandro Colomar wrote:
>> Hi Siddhesh,
>>
>> On Mon, Oct 16, 2023 at 09:28:39AM -0400, Siddhesh Poyarekar wrote:
>>>> Should we maybe keep this example, and suggest using it with sandboxing?
>>>> Or is it not useful anymore?
>>>
>>> I don't see the point TBH.
>>
>> The point was to add another layer of security, in case the sanboxing is
>> not perfect.
>>
>>> I wouldn't mind if that example was replaced
>>> with lddtree as the alternative since it is functionally equivalent. However
>>> it would be a safer recommendation to put that too inside a sandbox because
>>> IMO you'd generally never want to run or even analyze arbitrary executables
>>> without proper sandboxing.
>>
>> Sure, I didn't know about lddtree.  Feel free to use it.
> 
> Mike, could you please post a patch replacing the objdump example with lddtree and recommending sandboxing?

Sometime ago I created a tool that tried to mimic glibc loader algorithm [1]
as close as possible, including support to read ld.so.cache directly 
(including its multiple versions and hwcap support), support for ld.preaload 
file, $PLATFORM support, and hwcap support.

I think the only missing support and the kernel addresses and vdso, which 
is not possible without actually loading the binary.

[1] https://github.com/zatrazz/rldd
