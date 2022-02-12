Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFBBE4B37D0
	for <lists+linux-man@lfdr.de>; Sat, 12 Feb 2022 21:23:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231460AbiBLUSD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Feb 2022 15:18:03 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:43348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231411AbiBLUSD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Feb 2022 15:18:03 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 074051AF1C
        for <linux-man@vger.kernel.org>; Sat, 12 Feb 2022 12:17:59 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id n8so2542848wms.3
        for <linux-man@vger.kernel.org>; Sat, 12 Feb 2022 12:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1JhhVaUjO2yb3AmQjhUImE2dMaEtVyoATaWzkYZIlA4=;
        b=oD2H2a/ACAHYTPg4yhubWfy74Nw9N1mUYvpE5nuioR4+9JPhzA0UJGDohMECkGGX/7
         r7DWW5f0L/GazJ4YVYmgTtzv3LqNce43BlJiADNW7g/1NgW5uetgxVt7ZoQL+FogWAoi
         n6hRvKZZhsCBmMJltJsl8LEnmecPCLB83/9kDhby2RNJk3oG9hi8MG6I8wIpGfeb9IBC
         Clhs2BL5pdXxaOec/hIcUchBZB7J8Zyyfbm1C9QX0qNupeBFZHwAh7OXvwRTzC0o0uiz
         FMECpJoozDY3RrFuy5QzJe1Hbo9uM1eBdGfBMIbfSGabnqGNikMavGkg6fry/cE0WbjM
         zd5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1JhhVaUjO2yb3AmQjhUImE2dMaEtVyoATaWzkYZIlA4=;
        b=ENGYAJu4IZGVC38ANV0hKG5N3nvXXYmh3BN1h9nu1XHca506wCBlby/MtMUp1s6/T9
         ksLOlo8otsixV2Tha6ez20QDQ7nsB5M1pEZUXCJ/xQSDREZ69YLLwJzXlOofkRMoi7YA
         P3iTD4E4SQE8ibvPk9DDIdUkvbCoX2GubXyADOC2ZP07rQyqOeJtPy7zoDDXPNOYlNrd
         aTfhXAuYuqqObOKaelFFFyfgQJTcfjoikbVGDufKYwcBExfiSJEg7fWoHlPDbySgCSP6
         lxnv4tw/5KnifZTATAYraZNvGb3gDzpiS987dv/1SN5ek07FaHxdWtU3PAQuTCQYiWgl
         Y+NQ==
X-Gm-Message-State: AOAM533JN21Gw9zVzHj42FhlkABHNzRBwR/gYO7DQnHwSGFNzRll7tXg
        80A8mfhBaf4a+Xes4dOuWnY=
X-Google-Smtp-Source: ABdhPJzV0jPDEzlk8+IYXHfNeTbmg0HSjxvSPP1a8W8NTiysyiiQAlh/ZIeCpKNKpPhYkRR70lpazA==
X-Received: by 2002:a1c:f719:: with SMTP id v25mr5324738wmh.76.1644697077585;
        Sat, 12 Feb 2022 12:17:57 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s26sm7341714wmh.47.2022.02.12.12.17.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Feb 2022 12:17:57 -0800 (PST)
Message-ID: <43c72c20-4c74-3fa6-71bd-2407ef1536c9@gmail.com>
Date:   Sat, 12 Feb 2022 21:17:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH] packet.7: add description of zero protocol for socket
Content-Language: en-US
To:     Grzegorz Szpetkowski <gszpetkowski@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
 <CAMW=du=-FHHam5P+8M4_jOYk3DjVe0VPECV01qG3tHL7zqW6pg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAMW=du=-FHHam5P+8M4_jOYk3DjVe0VPECV01qG3tHL7zqW6pg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Grzegorz,

On 1/30/22 11:48, Grzegorz Szpetkowski wrote:
> In addtion of preventing unwanted packets (from other interfaces)
> being received between socket and bind, I've found another one. If
> desired usage of the raw packet socket is egress-only, meaning user
> doesn't want to receive any packet, then such a socket created with
> protocol = 0 argument will save both CPU/memory resources of the
> process, since Rx protocol handler won't be invoked upon reception of
> packets and the associated Rx socket buffer won't be populated,
> regardless of ingress traffic load  This can be especially useful in
> embedded applications.
> 
> Not sure if this can also be added to man, though.

I'd say yes.

I'll merge the other patch, and them you can suggest a new one with this
information.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
