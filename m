Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26A966586FE
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 22:20:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbiL1VUD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 16:20:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbiL1VUC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 16:20:02 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC5814083
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:20:01 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id n3so15130321wrc.5
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dJLJcG7RjRjtMyyMjHTp/R/Xo9zDps9H/459ABUkHj4=;
        b=Pzud3cnYE5DQ14BHLHG2q11oy5tzOwUSVNx5jL1Saw6P/MI2z5yv4NkSxb+xv8eqGH
         mUGvaQgb5PCVUMDEcI7GmWlgdFggNBm7nKx42wKTumAAAX/J9stwuE0yJ5mWmzXDkF4q
         rKOwzR78SOGYhEJHhZQq0i7VRo+ZwPIVr20QkG+wIubyUHJLd2PXyNAtGMWazIHN/Ly+
         yJ8bSd7jFj/nDocjFj4NBNRG8B/+apJ20OiROvtBWDg9E60bLuso30OKhC6tmjwQXDXx
         pStRNKbIeAROf52KyiRd1SBAXM0CzZxFMtkHAIDssILSdT3XWciJH6izROzN24iEUB5A
         yeHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dJLJcG7RjRjtMyyMjHTp/R/Xo9zDps9H/459ABUkHj4=;
        b=Qu0DG+cZKcZDU/Hu4pWMOKZ6CQAtyNzsOiR9Dfz+hH2j1dFjl61ITuNweAF5IMMxIr
         S+kExsAXll44gpa/Hn85RYmyDpasRsMe476FbwY02TTWw0ETBc6M8HOSmc6cDvnvkIZs
         Dyr3nxFTHe3qqgkuL8hdfaNmKjDP/QmycSKLZbJV3CF50Q7qIaMzcT12OSwGjQXfUrQS
         1z7NVrRzibvGriqe086OjJfSXVH7rxce/RPDP8nbeiKg/RQ0V4BJWIH5XwEgFv454TnQ
         ahu0DZlE9B2oFlr55cqYbvCBTNpkXs3fv6ytzpm04iYkTZr2r7etUEjd7m/KlwyQkMSV
         cjpg==
X-Gm-Message-State: AFqh2krpnHV6JgRJJWsziXyYuKIP09nFeREaifV4ypx2KuDEpAzoD1Cz
        XhQMscX3u53gEAopkPeH0GK05KQxHJiRDeqa
X-Google-Smtp-Source: AMrXdXucOj4pi/Qi2Tnf74Khb++QK4YAa6vS6Xs+Gte59qJypjFZBLvwEufR8UMh71bVKVyspDROhQ==
X-Received: by 2002:a5d:5908:0:b0:279:4938:eb98 with SMTP id v8-20020a5d5908000000b002794938eb98mr9490797wrd.11.1672262399667;
        Wed, 28 Dec 2022 13:19:59 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id z8-20020a056000110800b00241dd5de644sm15971090wrw.97.2022.12.28.13.19.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:19:59 -0800 (PST)
Message-ID: <59b2c1b3-4a53-a497-673a-c4e53647a74f@jguk.org>
Date:   Wed, 28 Dec 2022 21:19:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-GB
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>
 <d1fcf042-6032-5000-af6b-96bd5b256616@gmail.com>
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <d1fcf042-6032-5000-af6b-96bd5b256616@gmail.com>
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



On 28/12/2022 21:11, Alejandro Colomar wrote:
> Hi Cristian,
> 
> On 12/28/22 22:04, Cristian Rodríguez wrote:
>> On Wed, Dec 28, 2022 at 5:57 PM Alejandro Colomar via Libc-alpha
>> <libc-alpha@sourceware.org> wrote:
>>
>>> Ahh, I didn't connect the dots the other day!  We don't need to wait for glibc.
>>> libbsd already provides arc4random on GNU/Linux systems, so I can already
>>> recommend using arc4random to seed srand(3).
>>>
>>> I'll prepare a patch...
>>>
>>
>> I would suggest avoiding that, as it suffers from all the problems
>> previously discussed on this list , on the relevant arc4random thread
>>
>> tl;dr , it can't be safe without kernel support, as you need to know
>> when to drop the buffer. (on fork, on resume plus on $deity knows
>> condition for which there is no kernel notification about)
> 
> I don't consider rand(3) anything safe or really random, but rather a tool for simulations or debugging where repeatability matters more than anything else.
> 
> For anything where randomness matters, arc4random(3) is the way to go.  But randomness is not always what you want.  What would you recommend for some software where you need to test/simulate many different cases, where you want to be able to repeat the tests?

Can generate our stream of randomness values in a file and then the software can just run with those (like a one-time pad (OTP)).
 
> Maybe we should make clear that rand(3) should never be used unless you want repeatable results.  And when randomness matters in some cases, you could add a macro wrapping both rand(3) and arc4random(3), and use the appropriate one.

Sounds reasonable to have the ability to run both ways if useful.
Jonny

