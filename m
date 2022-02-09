Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C47C4AFE7C
	for <lists+linux-man@lfdr.de>; Wed,  9 Feb 2022 21:32:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231739AbiBIUci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Feb 2022 15:32:38 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:34734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229946AbiBIUch (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Feb 2022 15:32:37 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B30F3C002B5D
        for <linux-man@vger.kernel.org>; Wed,  9 Feb 2022 12:32:40 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id k18so5988719wrg.11
        for <linux-man@vger.kernel.org>; Wed, 09 Feb 2022 12:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=N6XHD/xN9kNN08wLMI6k+WUVnmOSEX/mfieyhOUYaBE=;
        b=X9Gqnub2H00OpbCrd7finn6emvwbafZ04nei3OA0s4BShgKgCU/f/8Zz4yivcx1vOg
         qomz0HzJ5pfV0sOzixqwLeLgjt2j6rIC3+8KzchF905zNlY734FV2hKh5ao8u5pfGOqg
         5Up5eetaECTGyh9laO3WSp5w5Ui3JEe2zH0Vg36Ihn9oanQneL7Ob8deff1VMDPFtuCa
         TT7XXE0wLz2NtNkly2kcRoHoF4G+yZWcgA7xdthwcp4icxvSS3fgEDWLfMBVUbKTxdHN
         UmfOpDT8RVD8mKJmjJyhi18+E5aeCAUTFDkJgtMZ2SadtfBi+xSdvjIPR+HWmCDTlORD
         08FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=N6XHD/xN9kNN08wLMI6k+WUVnmOSEX/mfieyhOUYaBE=;
        b=NM+ttsWD2V1lULGZyijEsAANL8Wex9zgN7I0peMkYKqJPbKfIJBTju1SBa0GoINDWa
         G/GTuWuE8KQVull1PgYfdcwn3zPu4f/gKOnmFswn1CuozzUP0aWlI25HV9wnxCY7+Bzz
         Z1Wr7Mb6Cb/xWJAnX0CSm35f13OgYzFrVnV1+i/ibGlnUinTjislCfx5MGD01NLI7BWK
         OyVlIA/3cVhCjrNdkdqNaNjU14zyXX2+U5nNESRrFQuda9rBknLeKa9zv6R+C/VkLR6z
         FSu+7hqxVlGNKuBy6DmcCtroXU5kHObCpAI9MtHRp82osPRMRus8vAYHv1RlcV7v7Nff
         EFIw==
X-Gm-Message-State: AOAM531Z1azg/wc/3TTOh+k/687A9Si+J8NQjgG52P3CAI2tiNQ+QHdx
        C+COgeOZRZz34AKpC47hTwVSVlq1+Fk=
X-Google-Smtp-Source: ABdhPJxAA82P8jZP7GbOK1buvYIT2BcAAxVcFiptdXUKSXDq/gxiYfr9D9MeqkGrKOWb/tQ0cypoJQ==
X-Received: by 2002:a05:6000:188:: with SMTP id p8mr3464325wrx.84.1644438759287;
        Wed, 09 Feb 2022 12:32:39 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c11sm19457544wri.43.2022.02.09.12.32.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 12:32:38 -0800 (PST)
Message-ID: <2f955ef0-283b-92ef-94db-9549bc47f1e3@gmail.com>
Date:   Wed, 9 Feb 2022 21:32:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH] packet.7: add description of zero protocol for socket
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Grzegorz Szpetkowski <gszpetkowski@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
 <40f275ec-d5c5-7228-a1a1-630834a41aea@gmail.com>
In-Reply-To: <40f275ec-d5c5-7228-a1a1-630834a41aea@gmail.com>
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



On 2/9/22 21:29, Alejandro Colomar (man-pages) wrote:
>> +specifies allowed protocol or to receive all protocols.man
> 
> There's something wrong in that line, or I'm not understanding it.
> Could you please review it?

Huh, I don't know where that trailing 'man' comes from.  I think I typed
it accidentally.  However, I still think the wording could be improved
for that line.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
