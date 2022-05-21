Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3E1752FE22
	for <lists+linux-man@lfdr.de>; Sat, 21 May 2022 18:36:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbiEUQg3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 May 2022 12:36:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230071AbiEUQg1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 May 2022 12:36:27 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D0462DA96
        for <linux-man@vger.kernel.org>; Sat, 21 May 2022 09:36:26 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id f2so15223278wrc.0
        for <linux-man@vger.kernel.org>; Sat, 21 May 2022 09:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SWjWreOJO4ujoGoHWOK8vvNLeQ4Bpehj6GOuqfBDPwQ=;
        b=iinqxVMMDJRfqmxE0wlYJlOINXlojizBROsW2FM6uVGOE0jfV7c+2fjehU9p2heGor
         9gvPl33JX5fduYXqUy6sVN4UrzKBKsXvpGd3F9IpFiuKLdIX31jT5lJjYsgN6haUgyuM
         5X6kXVUYn7Rxq2f1ec+3la74q+TXNMXiTCfT2b6jouVRtAPUEqcXCXZoMAy8SljrRHSC
         RRkDtdUnJMW2vF+8M/ObbxCXuyLf4O+SLKmb5yme1vuAsfJI2l/bKweQGf51xhYb/LLO
         6kFEZHgnXqX9/zPor5AGdaDB9ZZgXmvVo1x1wPhpvGpR/JqrYglWi9CJgCskspIof7Zh
         DEjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SWjWreOJO4ujoGoHWOK8vvNLeQ4Bpehj6GOuqfBDPwQ=;
        b=1JATjJIFJx8iO33Z4C16j37OEAGabOlvND79pQfaEq9jyMym/kTUXdAymvKaubTSFX
         hcDOyzk7c3UKOiY2AFKmAQo4gCFdYg+UVlPyB8qU4ig+yx/+bjE6hmhiwJIu1bXATdwJ
         1KoXs0hsuBs+Zm1Cogn07+xfPekqv4MtPi+dhhwEjrS2r2RIaNrXzttK1N4erqeoA7wv
         9IIJcmdyR6j/ZNELNwOviDmlQsnimnCQb7iY/s6UWiLCVJIjTozDHnFPTNjLBTpVFaAo
         bEMkWN69xZvk6eP7v0fa6N4lMZum8aVtIPg0Iakr9/+YgYh078qKA+UPA1xT5/gKBaP0
         SNPg==
X-Gm-Message-State: AOAM531GdscQhF0tXzbjaQVCx9R5FfGhkSexf6gSbAea2Px3rZ7Hco5U
        vdDMyppLsRfQfxGWClRAqmY=
X-Google-Smtp-Source: ABdhPJzERiv9MvSv+D8iz9yo0JMVk1h2K7efVgfTOfNg1zakrBntIk8yx1vjKG2rEKGCxNj9UvhV3g==
X-Received: by 2002:a5d:48c1:0:b0:20c:52e9:6c5b with SMTP id p1-20020a5d48c1000000b0020c52e96c5bmr12151818wrs.233.1653150984887;
        Sat, 21 May 2022 09:36:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e8-20020adfa448000000b0020c5253d8e5sm5591726wra.49.2022.05.21.09.36.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 09:36:24 -0700 (PDT)
Message-ID: <da6caa45-590a-ed28-905d-741d8e8b27e5@gmail.com>
Date:   Sat, 21 May 2022 18:36:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [RFC] Various pages: srcfix. Replace .PD 0 with .TQ.
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20220521150040.45966-1-alx.manpages@gmail.com>
 <20220521152824.knp272wwl7qzpjmg@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220521152824.knp272wwl7qzpjmg@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 5/21/22 17:28, G. Branden Robinson wrote:
> I am uncertain about this change.  I like the idea of getting rid of
> `PD` calls, but I think there in value in having `TQ` possess semantics
> of "here is another tag that is related to the previous one after a TP
> call".

Agree.  I prefer to keep the meaning of TQ as a continuation of TP.

> You are (ab)using TQ here to avoid inter-paragraph space.  As I noted in
> a message of a few minutes ago on the groff mailing list[1], it might be
> better to wait for what settles out of a discussion of the `BL` /`EL`
> macro pair I have (not yet formally) proposed for a post-1.23.0 groff
> man(7) extension.

I tend to agree with the necessity for a list macro, and I never liked 
lists written as

.TP
item1
.TQ
item2
.TQ
item3

Because that looks like an abuse of tagged paragraph macros, where they 
completely lost their original meaning (there aren't even paragraphs in 
that list!).  And yet we have that code in the Linux man-pages.

I like your idea of BL/EL[1].  Will wait for your release :)

Regards,

Alex


[1]: <https://git.savannah.gnu.org/cgit/groff.git/tree/man/groff.7.man#n225>

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
