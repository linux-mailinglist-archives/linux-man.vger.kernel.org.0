Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D11DA657008
	for <lists+linux-man@lfdr.de>; Tue, 27 Dec 2022 22:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232096AbiL0Vht (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 16:37:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230256AbiL0Vhs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 16:37:48 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5B042620
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 13:37:47 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id z10so13413451wrh.10
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 13:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qRpQFfup0uRBxEE23pf/m15lRU6TuD2QUgdymS1m3J0=;
        b=U+5Z9p7VH4bLitlQMUF4sr4JX5V/+evQWP69BJSRjpwI047FD4fHVtVhR7FZC5af5g
         hYUm3JIEmm3D5o6VA4LuxmUaFhKCpWwDSg7TWMdIU2uw7iEjmf9q6fBw6Gfl1zdyBD8i
         0PpeaQLuQs8Wgx65DekQEtg3GKbDRW0K+Aq5hWbQtgNJ04BlhCerZp71hk3Wq8BVdkzz
         S1NHvVniniWk2msuyVULj0D69PG9yMhZA4mjf8BICxj9tqr4akaSl6qaAz3NlYjeYFPm
         +VBTcr5MbXy3hlplQe8UiKOlAMF1OUCZQVoOAUQ6z4eD7igs5yYmdH1osEF6VkGyI0vI
         N/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qRpQFfup0uRBxEE23pf/m15lRU6TuD2QUgdymS1m3J0=;
        b=wCk8dOdpLUzizAPYYWoGVyKUrTnXuUL+VlO5xhqQglqXmuiJzBai9ylAPx87peh9s0
         9K7SzIaK/17zZ3M6kCiFctDJtaMYIsEu5Ndn+lYTVKjvAPImnoJPw2rbUIH71ccAae1X
         6/yBLHa4+0tYgTNU3XLeuK3jNpiJ4o499A43AJmLNq0OmMdsIf8gcOEp9vN4e5eWSKJv
         we4bvVXEUvUHtTUhjU7DGfTfAnEWUck7cYhf+wUGnCECEH1macFPdmuC5JTAeT6iKu0v
         l7wci4Brn184msiWVHO8xcFtDvTMcRUlU0XyIvIyOXXs+Em3l+WaKg8G/SVs/3OEK/+E
         mj/w==
X-Gm-Message-State: AFqh2kqasjJKvAt9jxesr0QpfZGFB3/YxIPDSF3G4aQKVpXVgwzkLNQC
        wGKi6akUU23KyF2UYKIJy8/z9w==
X-Google-Smtp-Source: AMrXdXvUaYgkuTb6moeOPrC9xHeng/CXxBHkQdENtFKE1dIpP7QbgJkrvXjADELJioyvnhA9ANDltA==
X-Received: by 2002:adf:d4c7:0:b0:241:bc33:b188 with SMTP id w7-20020adfd4c7000000b00241bc33b188mr15309657wrk.18.1672177066279;
        Tue, 27 Dec 2022 13:37:46 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id h18-20020adff192000000b002422b462975sm13592603wro.34.2022.12.27.13.37.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 13:37:45 -0800 (PST)
Message-ID: <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
Date:   Tue, 27 Dec 2022 21:37:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-GB
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex

On 26/12/2022 22:29, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On 12/26/22 22:50, Jonny Grant wrote:
>> Hi Alejandro
> 
> Please send also to my email.
> 
>> Please find below a patch.
>>
>> 2022-12-26  Jonathan Grant <jg@jguk.org>
>>     * man3/rand.3: Add example to rand.3 seed with time(NULL)
>>
>>
>>  From 2d4501354ea6c465173fe6c089dfbcc80393a644 Mon Sep 17 00:00:00 2001
>> From: Jonathan Grant <jg@jguk.org>
>> Date: Mon, 26 Dec 2022 21:48:17 +0000
>> Subject: [PATCH] add rand.3 example
>>
>> Signed-off-by: Jonathan Grant <jg@jguk.org>
> 
> time(NULL) is not too good.  If you call it several times per second, you'll find that it only changes the seed every second.  There are better ways to produce a good seed.
> 
> However, I prefer suggesting arc4random() rather than workarounding rand(3) to get good results.
> 
> Florian, did you already merge arc4random() to glibc?

Hopefully arc4random will come soon. Maybe rand.3 could then be updated to SEE ALSO that.

I would only mention to call srand once to seed, but you're right there are lots of other ways to get a seed.
Jonny
