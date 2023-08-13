Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 132E677AEFA
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 01:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbjHMXwl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 19:52:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229648AbjHMXw3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 19:52:29 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB84D7
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 16:52:28 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3fe32016bc8so33932585e9.1
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 16:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1691970747; x=1692575547;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JN74ILAAhXieTQc5iqhwKvzlTTHfuCDdp+wHa/BMFAQ=;
        b=FNFd4turW+7v9LMW+ARFdmem1JJIu4G1yYZDjrDjECu1Ozx0htYhR2nTPu4Qmr+ORz
         +Houj5wH+QPhwcI3Ribwh0FdqXF7VAL2AJaA8ro38VL/AOSsv1RE6Pl6X6d7t3ZN+OVp
         +6w5k0oGNFilnjwzcfbrr7/7yT/LnsoKIa7oJvB3ne7KOuH4aGNnxUZLpjSkEjfg9Lds
         Eatnocn3MO00YDHjEessIehPxxSruITeLPEsx/O28kWHMONoqzstVVSnwbFtScKKIhvT
         K+2q9hIfpP2lKuT4fzI/aWCUu6UUbyxh/HV+6RHliV56yCMr3Fgg1tIR5BuK/68EtaXi
         HEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691970747; x=1692575547;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JN74ILAAhXieTQc5iqhwKvzlTTHfuCDdp+wHa/BMFAQ=;
        b=eGBtjRK9EWR30D636By1YCAM6zOnq2s1BsFohiIjCOjf03Spf0WhCoUqSEfJCSAykt
         UUN3Mo4VhmzARO+OWzohlT062Q4svjjB/SbZtmjUzwzKEf6zB+dyQXJMjQp39/2qKO9a
         zcZXPgtMKvNwNusfiLgZoiOE2Lt777bWZDG4wVEL+Qnlq+viv8iK+n8yfzfeMCojoLOj
         1UPmqrZre7O6g1IsA8BfmWS+TBpQ8oSlxTbLOPcdWLYZIh1Vc66WjTZjuxDngAWykQfO
         W7dPohKoSaWUolPYA6C2iYRwKh1g81PeitykCNIJcGfpKEgsN4HKEjWmnp6+Wk9Yb49w
         9hrA==
X-Gm-Message-State: AOJu0YwutRRGM2G3VMGiFP6yuGyPUTue7Jern90tDoj5w8CVP8tkKxpa
        dWx6GN1iZ9lug5ORTdzeaEFteg==
X-Google-Smtp-Source: AGHT+IFI0z38Jsx1WmJMZ4rBiDkXvCcQAxFWvRkDwC8DX4GFXM3TlJjzl0dAOFTROuWLyvxTbuXKZA==
X-Received: by 2002:a05:600c:420b:b0:3fe:3521:d9ca with SMTP id x11-20020a05600c420b00b003fe3521d9camr5795937wmh.3.1691970746844;
        Sun, 13 Aug 2023 16:52:26 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id g13-20020a5d698d000000b003180027d67asm12679931wru.19.2023.08.13.16.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Aug 2023 16:52:26 -0700 (PDT)
Message-ID: <30fb11f6-f01a-ce6b-4ef2-e2a08806cd9c@jguk.org>
Date:   Mon, 14 Aug 2023 00:52:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: =?UTF-8?Q?Re=3a_=e2=9f=a8_vs_=3c_in_hostname_man_page_of_hostname?=
Content-Language: en-GB
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230810032558.bkottjfi47b2mi2j@illithid>
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <20230810032558.bkottjfi47b2mi2j@illithid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 10/08/2023 04:25, G. Branden Robinson wrote:
> Hi Alex & Jonny,
> 
> At 2023-08-09T12:16:12+0200, Alejandro Colomar wrote:
>>> other times '⟨⟩' .
>>
>> When you see that, the page was written properly in man(7) (or
>> mdoc(7)? I expect both produce the same glyph; Branden?).
> 
> https://git.savannah.gnu.org/cgit/groff.git/tree/tmac/an.tmac?h=1.23.0#n1121
> 
> At present, mdoc(7) hyperlinks don't render similarly, but I plan to
> make them do so for groff 1.24.
> 
> Here's an example.
> 
> $ cat EXPERIMENTS/use-Lk.mdoc
> .Dd 2023-08-09
> .Dt use\-Lk 1
> .Os
> .Sh Name
> .Nm use\-Lk
> .Nd demonstrate a hyperlink
> .Sh Description
> What do man pages look like with
> .Lk http://example.com hyperlinks ?
> 
> use-Lk(1)                   General Commands Manual                  use-Lk(1)
> 
> Name
>      use-Lk — demonstrate a hyperlink
> 
> Description
>      What do man pages look like with hyperlinks: http://example.com?
> 
> GNU                               2023‐08‐09                         use-Lk(1)
> 
> Except for font styling differences, mandoc(1) renders it the same.
> 
> At 2023-08-09T11:39:32+0100, Jonny Grant wrote:
>> I'd change the groff configuration to generate the web version of
>> those UR on man7.org to be <>. Maybe that's just my preference :)
> 
> You can express your preference in groff man(7)'s site-local
> configuration.  Its installation location for your system is documented
> in groff_man(7).
> 
> On my Debian system, it's in /etc/groff/man.local.
> 
> Adding the following should do the trick:
> 
> .if '\*[.T]'utf8' \{\
> .  char \[la] <
> .  char \[ra] >
> .\}
> 
> Regards,
> Branden

Many thanks for your reply with the steps to follow

With kind regards
Jonny
