Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B493F585B77
	for <lists+linux-man@lfdr.de>; Sat, 30 Jul 2022 19:59:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231625AbiG3R7q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Jul 2022 13:59:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbiG3R7p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 30 Jul 2022 13:59:45 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88B2A13F0E
        for <linux-man@vger.kernel.org>; Sat, 30 Jul 2022 10:59:44 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id z17so4666385wrq.4
        for <linux-man@vger.kernel.org>; Sat, 30 Jul 2022 10:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=MdYbMkiJmOYWYfs0DRUXKNiA7nNLq/Pm+ZoV3xj2w5w=;
        b=CI5pa7EznA4F6ykhszuXofmfr2yup/P/4HFHDrsl43gnDejF1mDmtJy/fC9pypQSZb
         4KZ0qW7e9/mFzSjExcpHvBU/RvqScKWPB1rS0+Oeb6vzYRn6TJHOJYxCJJ/47jWkrn1W
         kNOMVVwGTLRLzhh6IpDvHSoDR+dz+TwWdMY6FlsErV59eLamjTKP2txGEpFmKPEuJ9gB
         C+bxI4FZmxoozga/6QfJ2evobdkeZDmKOJOlkwhvsW+D336GjHtryg3Z3qq3VHncDt59
         VOsal9GI1xGGGKy2T1MDUCRq50SfNhH0HEorxVfj/DC84lK30vUGGzwVc3WzSxmh35su
         s6Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=MdYbMkiJmOYWYfs0DRUXKNiA7nNLq/Pm+ZoV3xj2w5w=;
        b=rd8xzuOtVtNgbOutNnF1kbfN+7Y96MwAkWzNG+rw80GOvM9CMgReMsCKkds9rdAzut
         TeCCgaqOKTSwoLUbGbkhSPRzAuY3BDX5d57CrhmbKuTZOQRgFnox6KOyA9b74EQJ2/Jc
         4e8FwiAQPRdSIkale+gLeTFw2tNMX3Un2b3x/sBG9yIl4wBOcsVK1SAOItMQV3CxLlp7
         jsYmXIhj+FEFf+R0/PnLguAfXFWZ/Xg4W1sg+bDprF+c/C3JHaLW79rSVEMG6l+1FGk3
         8plF6EaIeItLUFkouyvM3Dm+7pwkT1m1IW9NOQml1nQNCTXNLckWfnPJHmJQOWF2QWvD
         psUQ==
X-Gm-Message-State: ACgBeo0PwABBPvDHzZUHmVO3FYCcqJuQWfvtM/jRtjOiACFgqFDDVxy8
        yjW1GBSyNqrhexbHRffSTaeL5KKskIo=
X-Google-Smtp-Source: AA6agR5YMytRW8b6i2MEGP0LG0lxP3GP6U6E2/eFe5w9qi7bpcceBWwY8q1wAXyo5QeGBYbqj9UlMQ==
X-Received: by 2002:adf:f20e:0:b0:21e:e2e0:7b08 with SMTP id p14-20020adff20e000000b0021ee2e07b08mr5773688wro.79.1659203982708;
        Sat, 30 Jul 2022 10:59:42 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i16-20020a05600c401000b003a305c0ab06sm12647605wmm.31.2022.07.30.10.59.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jul 2022 10:59:42 -0700 (PDT)
Message-ID: <05d650dc-231d-f7dd-e32f-9b9bdb6d3807@gmail.com>
Date:   Sat, 30 Jul 2022 19:59:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 4/6] xattr.7: wfix
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
In-Reply-To: <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/30/22 19:53, Alejandro Colomar (man-pages) wrote:
> 
> Even when the value of a quantity is used as an adjective, a space is 
> left between the numerical value and the unit symbol.  Only when the 
> name of the unit is spelled out would the  ordinary rules of grammar 
> apply, so that in English a hyphen would be used to separate the number 
> from the unit.

Although, I missed this small paragraph.  According to that, it would be 
255\~bytes but 64\ kB.


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
