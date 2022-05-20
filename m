Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C93D052F067
	for <lists+linux-man@lfdr.de>; Fri, 20 May 2022 18:19:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351541AbiETQTC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 May 2022 12:19:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351479AbiETQSx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 May 2022 12:18:53 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E78E17DDC9
        for <linux-man@vger.kernel.org>; Fri, 20 May 2022 09:18:51 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id r9-20020a1c4409000000b00397345f2c6fso2350176wma.4
        for <linux-man@vger.kernel.org>; Fri, 20 May 2022 09:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LT4c9mFEimwzE0ru3Qejhjpb5lH9DBUkZaa6AnD0xJg=;
        b=Ys9meUzLGViRKNhXMx+ijIEta3/74jdn3Lb2xMwFXpvm/8ePHcHdnEPBxKN45iACuD
         shqAsImsSENcW6j95hI7uKcMuLqhDUsrWfHTjWUOmqnfbrK8AnnwVZEv7CeMzg7Sn7Az
         ywNxNdoISdlZ7Of32BRMjnHl3sXbaV+86LHyHtfaTfFgjzmWqEkKrwU3s9th24Vx65Ud
         kBIXO/6C0N7is9XQRm7oJgzO49ZyKuk1SfX+Jb0jLhnQM3T66b6GxhUmBKVDaDNhW8h7
         N2lrJrzVSDNa3KGhMkCc7oiYX3N66HGOA5YW+Qqi4t5Vs0rcb/3UurD/lprmjh1+yFrq
         jKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LT4c9mFEimwzE0ru3Qejhjpb5lH9DBUkZaa6AnD0xJg=;
        b=rbnIKWS6RBHbkHF5igqEDmJeZ3O2QZGAmmTv3REWJ7YFBsiBudRC6yrQuJ2+JQgQ9O
         MDfHlSKOW/McVhVoKReBVFrQytV15/Vgy7BIqvt3f4UHjgLofRFZ77ttZVgyw1Z6vxl3
         WQIpnz8vVnyNlya/MjLoCXvzJ1uWA+n3Km6GszssK0wfI+SC4Sycu4my85dZkn/3eFjT
         aHR3jP8m0kAqxloqS2WjQJyeOyC0FKSfPffzGTqEKvkX1Y6wcZNp8ckLGsFYLQova5mJ
         ighOLjQ1y6YGGpRmMLrACTUYEhDEja+QBCp5K0PmXCZc5UIDYLcNHq1VbvClGT25CuW8
         I4Ew==
X-Gm-Message-State: AOAM53032UVGAzyMhqdD5A4vHu5qMymQGFfPcuh1sjwIN2B7nlgLO/Yq
        oLAK025/98sxE6GI9UzH9lGBAXH7rc8=
X-Google-Smtp-Source: ABdhPJzK1pW4VtSkeHCv4OIIYCW7lcQTmYuVrlBBabsJtStKqsdWGwqafiTJhWmK7AxGUfzk6xK5Sw==
X-Received: by 2002:a05:600c:3509:b0:394:84bf:96c0 with SMTP id h9-20020a05600c350900b0039484bf96c0mr8954728wmq.11.1653063530035;
        Fri, 20 May 2022 09:18:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q14-20020adfab0e000000b0020d0c9c95d3sm2838912wrc.77.2022.05.20.09.18.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 09:18:49 -0700 (PDT)
Message-ID: <f5fef324-4883-197e-1e3d-e3b5b36ceaf9@gmail.com>
Date:   Fri, 20 May 2022 18:18:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] printf.3: Document 'l' length modifier for a, A, e, E, f,
 F, g, and G
Content-Language: en-US
To:     Vincent Lefevre <vincent@vinc17.net>
Cc:     linux-man@vger.kernel.org
References: <20220520141040.1136383-1-vincent@vinc17.net>
 <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
 <20220520161121.GA1112518@zira.vinc17.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220520161121.GA1112518@zira.vinc17.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Vincent,

On 5/20/22 18:11, Vincent Lefevre wrote:
>> Why "in C99"?
> 
> According to GCC with "-Wformat -pedantic", this is new in C99:
> 
>    warning: ISO C90 does not support the ‘%le’ gnu_printf format

Ok.

> 
> The printf(3) man page already mentions features that appeared in
> C99. For instance: "a, A   (C99; not in SUSv2, but added in SUSv3)"
> That's why I mentioned that for consistency.
> 
> I could also check that this is not in SUSv2:
>    https://pubs.opengroup.org/onlinepubs/7990989775/xsh/fprintf.html
> 
> Perhaps this should be rephrased. Something like:
> 
>    On a following a, A, e, E, f, F, g, or G conversion, this
>    length modifier is ignored (C99; not in SUSv2). >
> What do you think?

Makes sense.  Since SUSv3 should be identical to POSIX.2001, which 
itself should be aligned with C99 (see standards(7)), we can just ignore 
it, or we can add it if you want.


> 
> I don't know about SUSv3 (I could just see that this feature was
> also supported in POSIX:2004).
> 

Please send a new patch.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
