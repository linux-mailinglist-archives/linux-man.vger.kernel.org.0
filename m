Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D06425FBC5F
	for <lists+linux-man@lfdr.de>; Tue, 11 Oct 2022 22:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbiJKUrK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Oct 2022 16:47:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbiJKUrJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Oct 2022 16:47:09 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66DB47FE62
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 13:47:08 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id b4so23407318wrs.1
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 13:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=DY5el2sUZLQiBv1qNVSnZpYbI4S2HZnWMz6RcgnA2lE=;
        b=MWY/ouGcoCnIgXLcPvze4ODHB1vzVqpyU62KEzk1nl242m7jBxuAMW5bZvjjoBiT+z
         3qmYHd2Yyn28Fl7CkwOWQsEh4m/hjyXjhVgeZYORmDBU08pBiIcod4JHlvmUvZnfHIvs
         Tq+czz5Lj3CKt+l9BcfaIgCw5Qg0BOzGFG5jZLB5XoNTPadZKWprfdBiWNL0WHYWVesN
         HiJY3ktKCo8uRRpRSht7ICzuDuhFJMEvUcE4r8Y+p3/1JuDVAWT4ajFfuKRG+Nbx8ped
         BZG4WBSUDTt3gZWP9pEBdY0LKAGF5lAMGXr3R/XDv50Vbgk37R4B8Y6I/b0vn4qBkByI
         H5qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DY5el2sUZLQiBv1qNVSnZpYbI4S2HZnWMz6RcgnA2lE=;
        b=4TuTS7xH96aTUfMrOUKVromOgAgvRWvK2nLzPzusRnfv+3DE1zhp/8bF085vzDrVZD
         DWEz/61NUARu0atXYLh/zxc7y9iuz2B3qCKw3Jc4gnZxXS/Yv/65WMKv3f+GzkMGtTNx
         tuN/sBTQOyZR1qyel5ZKrW1srJ+sWGMqb8wFiZ67m/KVsktkKBg8wP1Znj9ig1SOV7uI
         9M3vjOr6Z2kpRvq/KUTfPG4i1xD+ltKJX/DMwfMN3MQUBkmC/63s7x0xRkPZ+l4PMWbC
         4msTyHd2IXJX3FfZ6EVwzL9MtCONKZrvVv4l28TWNB0QDgYyHEAWeiDPjNbnnehx/+sN
         NmgA==
X-Gm-Message-State: ACrzQf05mBWKsEpVQkesHnA+GfMIvQ4KRekd1+TWF3wEyJ033qlGfAtL
        zY6xnIiBAjgVGErD9ubpdlPbOGZBoc8=
X-Google-Smtp-Source: AMsMyM4rgHBK6sxMP52QZrtlTd+/vOrDT8q17E9xxNYRqoI01iP25QA0A+Aut7iXZqQQWdAUPM5K1A==
X-Received: by 2002:a5d:4f10:0:b0:231:1c7b:e42 with SMTP id c16-20020a5d4f10000000b002311c7b0e42mr5405825wru.568.1665521226822;
        Tue, 11 Oct 2022 13:47:06 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a3-20020a05600c224300b003b49bd61b19sm25772wmm.15.2022.10.11.13.47.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 13:47:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
Message-ID: <7c567161-070d-5c5f-17c7-fd7fd5295493@kernel.org>
Date:   Tue, 11 Oct 2022 22:47:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2] fanotify_mark.2: Document FAN_MARK_IGNORE
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
References: <20221007061328.1326041-1-amir73il@gmail.com>
 <96aeae1d-ee98-4bc4-6e82-60f902bdcf96@gmail.com>
 <CAOQ4uxgqdhMgYZT3-6q+_=P_9Y7no9FopQ9nq2acPhSuEss34Q@mail.gmail.com>
 <46c4f13c-c043-8c65-3417-61a51c97d60b@gmail.com>
In-Reply-To: <46c4f13c-c043-8c65-3417-61a51c97d60b@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Amir,

On 10/10/22 22:16, Alejandro Colomar wrote:
> Hi Amir,
> 
> On 10/10/22 20:02, Amir Goldstein wrote:
> 
>>>> +.RB ( FAN_MARK_IGNORE | FAN_MARK_IGNORED_SURV_MODIFY ).
>>>
>>> I'm not sure if I'd format this as code (italics) right?,
>>> rather than separate constant names.
>>>
>>> Please check the below paragraphs from man-pages(7),
>>> and I'll leave the decission up to you.
>>>
>>
>> I kind of like it the way it is, which is also consistent with similar
>> constructs in fanotify_init.2.
>>
>> Would you like me to post v3 for the 2 minor formatting fixes?
>> Or will you make them on commit?
> 
> I can amend it; don't worry.  Let me prepare the repo after the release, 
> and I'll apply this patch.  If I don't in a few days, please ping me.

Patch applied.

Cheers,

Alex


-- 
<http://www.alejandro-colomar.es/>
