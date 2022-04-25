Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52F9150EAD8
	for <lists+linux-man@lfdr.de>; Mon, 25 Apr 2022 22:50:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235598AbiDYUxB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Apr 2022 16:53:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231753AbiDYUxB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Apr 2022 16:53:01 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CCE38930A
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 13:49:56 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id u17-20020a05600c211100b0038eaf4cdaaeso293730wml.1
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 13:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AiZbbAlo2CcmnFtADTBEPzjUQ6zxZu3qlA56cMJxHGA=;
        b=jR4/5YhFspXqfP1MWQHjh97md79NvPY25BMKlpP3BCctkyq3UXAmVOKEceipE6cQUO
         IhJUkn5x76lGxbhObazTPrL5jUHVqCUXQsbMvUbgZZ80bi+Mz7goJWjQhKuKnR9FSnAh
         Fg/5JcHZEHOlGR6qfhTUOVNSCdov8hq7g0CRBor9eTIeNwJ1k5/F9ztqn0sTN2UGgcdi
         7z1c9iV9QB5Y3cHm0kfWmk4j43SVwtAuYun0i1pdwaX2BqXgiOIsZtNRN3PhnRtpKXHZ
         lljpjwhQl6MlqqO+HrI/gJdFGR9VDmhxZR1JLzw9j7s7y1HNEsHNng9Xf+z/y565NwqX
         JVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AiZbbAlo2CcmnFtADTBEPzjUQ6zxZu3qlA56cMJxHGA=;
        b=INO64IWE5C9Zq7rxd81z1ULUh9pH0Rfy7XTCHxYGaymwGNcm39u3z6iraMoMp/Ar3E
         PwQC4uG8EsJg55OMkTaIdjSycy15fOqi8PQJPJEtQdjwauup2PQQjAJj7atYbk3pQCQn
         tSfv4MftGbIp7Qf0tq0ZljruSla16UctbXJDkC9LAmD+x3s1FdCOSLE45BIu84mlS8VO
         gXaXPpkI1deWiSNQIbQdeiZauL4dxCZ7IUfNZtX9W8nuYO+W0mNyC5zbPNeJ75IzzDU4
         uVf2BmrsjAsBNuYDZ2/9dMt6H80QSQH4QCWKyx1MZXbCicPBcLXSbct+RwLdcB4CKuV5
         Qx3Q==
X-Gm-Message-State: AOAM531/PMTymfp/pqz/CLa1qUgFr4u1g6Vkq/X4Q75FDjB/ytB9838Y
        tMaYPQJLvPxSzBCnAphp1aciufXgDujdcg==
X-Google-Smtp-Source: ABdhPJzcXQsgw+G45gCGRrhOwyCA3Fnmnj1sX4gO2PNRBgkCgtuju+tPDZSlUepeBITP1eW5J+ZWCA==
X-Received: by 2002:a05:600c:2d8b:b0:393:e31d:87eb with SMTP id i11-20020a05600c2d8b00b00393e31d87ebmr12495969wmg.115.1650919794864;
        Mon, 25 Apr 2022 13:49:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v5-20020a5d6785000000b0020a792848eesm9367074wru.82.2022.04.25.13.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 13:49:54 -0700 (PDT)
Message-ID: <d36783c3-5f47-4a99-dd46-fd8c59e7ba00@gmail.com>
Date:   Mon, 25 Apr 2022 22:49:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Request for clarification of O_PATH in open(2)
Content-Language: en-US
To:     meator <meator.dev@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20220415194819.5cb80c4b@PC>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220415194819.5cb80c4b@PC>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Meator,

On 4/15/22 19:48, meator wrote:
> Hello. I was reading open(2) and I have noticed an interesting statement: "The argument flags must include one of the following access modes: O_RDONLY, O_WRONLY, or O_RDWR." Must one of these flags be specified when O_PATH is in use?
> O_PATH description says that "Opening a file or directory with the O_PATH flag requires no permissions on the object itself (but does require execute permission on the directories in the path prefix)." I think that this can be a little bit ambiguous. When I first read it, I have thought that this sentence talks about filesystem permissions required on the file, not the access modes.

I agree that it talks about FS permissions, and not access mode.

> O_PATH description states that: "When O_PATH is specified in flags, flag bits other than O_CLOEXEC, O_DIRECTORY, and O_NOFOLLOW are ignored." One could think that you must specify an access mode, but it will be ignored.

This is the only part that talks about access mode, and implies that you 
don't need to specify any RD or WR flags.  It's true that it could be 
interpreted as you say.

> The O_PATH description actually mentions the O_RDONLY flag, but it compares the difference of opening a file with O_PATH and opening it with (only) O_RDONLY, it doesn't mention the need of O_RDONLY flag when opening a file with O_PATH.
> The only part of the manpage that clearly states that using access modes with O_PATH is not mandatory is the code sample included in the O_PATH description, which calls open("some_prog", O_PATH); (but this code sample covers another aspect of O_PATH).

But the code sample clarifies the doubt about the necessity or not of 
writing the (to be ignored) access mode.  So you don't need to.

It's true that the code sample is not talking about that, but it's 
unequivocally saying you don't specify the access mode RD or WR flags.

That's for clarifying it to you.

> 
> Maybe I'm just dumb and I misread some of the text, but I think this can be ambiguous. I would have sent a patch fixing this, but I'm not a native English speaker and I don't actually know how open() works, so I don't want to make a mistake when modifying its manpage.

As for clarifying it in the manual page, I have doubts.  I think it's 
enough as is, but I'll take your report into account, and if I receive 
other similar reports, I'll assume that it's not so clear and will try 
to improve it.

Thanks,

Alex


P.S.:  Internet searches also consistently confirm that you don't need 
to specify the RD WR mode flags:
<https://stackoverflow.com/questions/12416889/semantics-of-linux-o-path-file-descriptors>.
