Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 392F52678DC
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 10:32:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725814AbgILIc4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 04:32:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725813AbgILIcx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 04:32:53 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 046F4C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 01:32:53 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id w5so13596161wrp.8
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 01:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=a6t6JCxDHPZ/D6v0Vs0W5EedXLS5g5xFyCZN4wMq+T8=;
        b=btDMakPpFXr/uyiqDltd8KdYp5xEfQWOYtjm9B6RGu5id0Jlt9jQjXgf5Wgjai+8bl
         GwFJH9wirLQS5FXDCNnVCN9RapLdAboxN6F+STetSra9sU9rMVDahpDC5MTj6SpwCVPs
         QxVpbawQcefVuorhGy1EznY5KPRv9JnNFh5w6u8M3fcXQ4q8xNcLG/nDL+dwDjDym8JB
         AxqiKtUF7SappeXAvbTT9xAe62apn0hWpBadlm7KLe47tjB8Vzev2TlfknbZfravuPH1
         jBstrzYDRPYCZJE4k39N2PxpS3+hBrk4ndp9klLMUguv6FMv3Y2rem91IwHx9O2uf/JL
         TDoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=a6t6JCxDHPZ/D6v0Vs0W5EedXLS5g5xFyCZN4wMq+T8=;
        b=n6U0VI5+8HS83n2ECl5s/UifctA6MSmFZEBnwLX33RvAifjgwFH+/ZKMDA35RAwiKR
         BEwUddqLXSGsZgP4RdDrPHD7TmFoZwlbdevqDNe37QV4vJ77Sb4/LuaWsGEIS4SMLboa
         gTEd4DHOl37HctQooSZQLnMYK4zAv5RvqKPdf6bCCyvkKWnaR+3RFWg037/Uu4KbX5RM
         Fna2uoPyHHWICDjEkd7/3payms5f6Wv4YWMYQ8cqMQnpbZFukzZh6eKKrB1pS59KEUrt
         V3Ebqkb8VjMC+BWEleq+C9HUbSH4WMaWOVDcEje1mEQ5klMPauhJXtst5npk35lb65Zu
         wudQ==
X-Gm-Message-State: AOAM531LjgWXBEVtOl7WX1mZnmmEXKtavHjI8bqv9Pxs7JiLsVRbOJoO
        TK2/OG8RV1jdJpawcnCp7vqbXfsH9J4=
X-Google-Smtp-Source: ABdhPJyf9tHEy3sD7WsFJ8JAn3hbgva4ORLr3NwzGGTbdWe8v1D0ZMSnTugG7yIrvce+SjahhxMgbg==
X-Received: by 2002:adf:f986:: with SMTP id f6mr5620396wrr.270.1599899571522;
        Sat, 12 Sep 2020 01:32:51 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id k6sm8736270wmf.30.2020.09.12.01.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 01:32:51 -0700 (PDT)
Subject: Re: [PATCH 08/12] clock_getres.2: Cast 'time_t' to 'intmax_t' for
 printf() and fix the length modifiers
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-9-colomar.6.4.3@gmail.com>
 <20200912055538.sihehmrxj6xwlwxx@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <39788961-f3d2-af73-f6fe-9bdd79c1ca14@gmail.com>
Date:   Sat, 12 Sep 2020 10:32:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200912055538.sihehmrxj6xwlwxx@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-12 07:55, Jakub Wilk wrote:
> * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-12, 01:14:
>> -    printf("%2ldh %2ldm %2lds", (ts.tv_sec % SECS_IN_DAY) / 3600,
>> -            (ts.tv_sec % 3600) / 60, ts.tv_sec % 60);
>> +    printf("%2jdh %2jdm %2jds",
>> +            (intmax_t) (ts.tv_sec % SECS_IN_DAY) / 3600,
>> +            (intmax_t) (ts.tv_sec % 3600) / 60,
>> +            (intmax_t) ts.tv_sec % 60);
> 
> All these numbers are small, so %d and int casts would do the trick.
> 


True.  In this specific example '(int)' would be better.

Thanks,

Alex
