Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 300124F068F
	for <lists+linux-man@lfdr.de>; Sun,  3 Apr 2022 00:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237149AbiDBWQD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Apr 2022 18:16:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355253AbiDBWP7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Apr 2022 18:15:59 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1364124F34
        for <linux-man@vger.kernel.org>; Sat,  2 Apr 2022 15:14:04 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id h4so8979138wrc.13
        for <linux-man@vger.kernel.org>; Sat, 02 Apr 2022 15:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=EbxoHdlp2V/OlLScnpahya9+3Qm0w66daS6PpG44nUU=;
        b=eX3UCaeG3+CbF6YFV6N5b/4vgpcMUfiu+C4xsZ47H20AdoO80wh8l5WRvjO3TA9xyr
         hIpPfQZaaw2GNKOrl/a6c1CGLLpXtrdYIIW5WvAEFYL1ACih8FaWiYQ9mFdSlctE4XWu
         FVuU539MIKCfVYO9nK6AWC4c4LiI1AqQBt9raG1hoNKsYANezkRCA3GkfV/brCqyhkOy
         oGSdv9wYKNJQ7ZPq1uiMviwPF+ZezjT6H8zTKrTjMy+wdo0xjL9eDLh6QG0gw5e6tCZh
         UTOaZVWPQj0DOs4c/KQzEq/laoPEBiNaIggzyxNZ8n1jkDfTxDc/5DKFGNEGpKWR3Uug
         MgNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=EbxoHdlp2V/OlLScnpahya9+3Qm0w66daS6PpG44nUU=;
        b=XExM9KHiX/bTDotVzqzwNjyaPIvs2Mbu7Fr5lwocNf0/L2NhbZbx18Qx2rjEK3woKU
         g1IJPjS+w6tdvx88a0M+mY6wwX9kK2V1cc6BXeoeW1ZAJ82UIOxQKda9wmrezYtvk9k7
         kZ/Op4wDHIlEJS8A1usNHux9Qm/AHqyjLd0t/luWt7eWKsFECqp6/y9/H/hsD7OYWToF
         l71tDV2KqqifJTbDULy5g/KOrigDOwBCTcV8gGS8AL7sN0cp4liK9ff6xLLck+7+GDuI
         uzkXRrVWSKUE1wS+EFFk23djQg43qhnUslyZygdEwey+Mdf/YUSXep9ww2eZ2qdo8nCE
         fPFg==
X-Gm-Message-State: AOAM533Iy71ZZfPmkf70fXN+32wx5RdJLYnUZSOaDm+sWo4H0E/krBld
        WSzuZO7K+luGT11yaf/AbXxssc+naVO/rQ==
X-Google-Smtp-Source: ABdhPJzp+j4wrJ8rL0xBcCyCj1D1dLGc6AAUId97BdYZVaO52duicKbH3PgU11AKADVXzRWiK4q5sA==
X-Received: by 2002:adf:f442:0:b0:203:e0ef:32c9 with SMTP id f2-20020adff442000000b00203e0ef32c9mr12378840wrp.53.1648937643269;
        Sat, 02 Apr 2022 15:14:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v4-20020adfa1c4000000b00205c6dfc41esm7587674wrv.18.2022.04.02.15.14.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 15:14:02 -0700 (PDT)
Message-ID: <b333db09-5eb9-1b7b-8775-b8ae20da599f@gmail.com>
Date:   Sun, 3 Apr 2022 00:14:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] vmsplice.2: Expand on the absence of SPLICE_F_GIFT
Content-Language: en-US
To:     Joe Damato <jdamato@fastly.com>
References: <1648251315-2837-1-git-send-email-jdamato@fastly.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <1648251315-2837-1-git-send-email-jdamato@fastly.com>
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

Hi Joe,

On 3/26/22 00:35, Joe Damato wrote:
> The description of SPLICE_F_GIFT explains what happens when the flag is
> specified, but it was unclear to whether data spliced into the pipe with
> vmsplice, but without SPLICE_F_GIFT, is copied immediately or simply mapped
> into the kernel and copied by splice(2) SPLICE_F_MOVE later.
> 
> Tests and kernel code reveal that vmsplice(2) maps the memory into the
> kernel and it is copied later; this means applications can't e.g. free the
> memory after a successful call to vmsplice(2) even when they omit the
> SPLICE_F_GIFT flag.

Please paste (if short enough) or link (if too long) to those tests or
kernel code, to make it easier to review this commit (and especially if
someone wants to review it in the future).

Thanks,

Alex

> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  man2/vmsplice.2 | 36 +++++++++++++++++++++++++++++++-----
>  1 file changed, 31 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
> index 9102c4c..b96bcc6 100644
> --- a/man2/vmsplice.2
> +++ b/man2/vmsplice.2
> @@ -116,17 +116,43 @@ otherwise the page cache and on-disk data may differ.
>  Gifting pages to the kernel means that a subsequent
>  .BR splice (2)
>  .B SPLICE_F_MOVE
> -can successfully move the pages;
> -if this flag is not specified, then a subsequent
> -.BR splice (2)
> -.B SPLICE_F_MOVE
> -must copy the pages.
> +can successfully move the pages.
>  Data must also be properly page aligned, both in memory and length.
>  .\" FIXME
>  .\" It looks like the page-alignment requirement went away with
>  .\" commit bd1a68b59c8e3bce45fb76632c64e1e063c3962d
>  .\"
>  .\" .... if we expect to later SPLICE_F_MOVE to the cache.
> +
> +If
> +.B SPLICE_F_GIFT
> +is not specified, the kernel will still map
> +the memory into
> +.I fd.
> +No copy is made during the invocation of
> +.BR vmsplice (2)
> +itself and so the application must take care when modifying the data after
> +successful calls to
> +.BR vmsplice(2).
> +Subsequent
> +.BR splice (2)
> +.B SPLICE_F_MOVE
> +will make a copy of the data that was mapped into
> +.I fd
> +during
> +.BR vmsplice (2).
> +Thus, any modifications to the memory after a successful call to
> +.BR vmsplice(2)
> +will appear when
> +.BR splice(2)
> +.B SPLICE_F_MOVE
> +generates its copy.
> +Once usage of
> +.BR splice(2)
> +is complete and the pipe is closed, the application will be the only user
> +of the data and can freely modify the data as needed (e.g. by
> +overwriting it, releasing the memory to the allocator, etc).
> +
>  .SH RETURN VALUE
>  Upon successful completion,
>  .BR vmsplice ()

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
