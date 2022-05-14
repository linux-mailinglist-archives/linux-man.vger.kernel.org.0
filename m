Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1237A527165
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 15:52:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232747AbiENNwA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 09:52:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232692AbiENNvv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 09:51:51 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADBB831538
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 06:51:48 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id i5so14707152wrc.13
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 06:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=eLf70r9Kw+lThfy3DWkUZwgDVTnuYJs6jre5MFu6RKo=;
        b=Fn3s2r1p1RFsnw0d+t6/8NdqNTeqPveY8AsCTgPy5u5WdMLAPQhNO2E4/N/rd6xn+h
         N+dPPuo1WUOprbLLZ7Xz38c7WtAxARH/tmxVZ2RD1xO41L/0lXf98DhaT6T+pgDUUua6
         autoYQ8gvZcTkouAEXndagN4FiJq/6324oZC9BtSY2WzRsa0guQJmmnvaN3sNy/gCXGU
         OWf2wXw7W+TGnBtN1Pm/nGOZrz3F+k3HXZbibJku4VuRbpqFbPSmyPmwux0H3icIB5rx
         PSmT8yA4aLym4rAUFnZ2CqfDCdicuJj8bM8S/oljB4vKh4SPh10/dbzHjHm1eRXaYxsy
         7FKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=eLf70r9Kw+lThfy3DWkUZwgDVTnuYJs6jre5MFu6RKo=;
        b=YUlTYQMNl+Ad9YdDMaXklZ3A+ShukLjqz1s9IytxKd+OTFGnBAhGCt4mvxTv4SHmyZ
         +WYH+eWSL+yN3431mguX0/QvelA7hV/tc7mFAO7xeZqQfnDtwuQT6PFKb/Ej/M15n+9R
         RUO4bOsXoamboypYR5TgsH6tyz0ZTpKFj+vyo2/uKApgEXJYMpaxZtOlwIAVgZj6srJu
         yWEZWAbgmYiLjJCtoueYtedplQd3F5C5TNeUSXYCle3a0ZHA1nUVAAXCopa5E6QaCg/Q
         A4u5hSFIpeGK8hq0OuIxwi4l0t2rqqVpLL5K/H1ScPMfAhYwzwcp2Yf/+R9jChCK/DfC
         qIqw==
X-Gm-Message-State: AOAM532XDxkQFv3ygejHFBTtoWHHNuAqDlTLckb4mujk8AkP8Np0JgoZ
        VG84cTRUefAB0e4YtmtlzmYx8SRyvXs=
X-Google-Smtp-Source: ABdhPJyhk/eCpWhkmXGmZ3fXNryD3vwu1WtfORW6UXfcpgk7L7jwlCt3EQvhGj0wNXZRaqX5CE3Wrg==
X-Received: by 2002:a05:6000:1ac7:b0:20c:6c81:c8e5 with SMTP id i7-20020a0560001ac700b0020c6c81c8e5mr7976899wry.580.1652536306530;
        Sat, 14 May 2022 06:51:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i7-20020adfa507000000b0020d012692dbsm1128914wrb.18.2022.05.14.06.51.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 06:51:46 -0700 (PDT)
Message-ID: <062e284d-59c7-33ee-565b-5be160e3ba27@gmail.com>
Date:   Sat, 14 May 2022 15:51:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] clock_nanosleep.2: tfix
Content-Language: en-US
To:     Tom Levy <tomlevy93@gmail.com>, linux-man@vger.kernel.org
References: <CAMtU5-i2HzCOqNfvOOrD9mKzmYPNxJPs6524=LcqqAY94EWtAA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAMtU5-i2HzCOqNfvOOrD9mKzmYPNxJPs6524=LcqqAY94EWtAA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Tom,

On 5/9/22 12:59, Tom Levy wrote:
> Hi,
> 
> I've attached a small patch to fix a spelling mistake (CLOCK_BOOTIME
> => CLOCK_BOO*TT*IME).

This has already been fixed recently.  See 
<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/man2/clock_nanosleep.2?id=09f28a311617143990a577571016141a19d632fe>.

Anyway, thanks for reporting!

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
