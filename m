Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4368A4D85E6
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 14:29:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233096AbiCNNaa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 09:30:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230349AbiCNNa3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 09:30:29 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 539ED2637
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 06:29:19 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id j17so24062581wrc.0
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 06:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=9MEF5+6M4upzgKcig1fLl6MtWxsOUQJAiBAu9VW5Tss=;
        b=I7AntcaPB4+kjtXyq1rAzEmo2F8XmlC2Z90sgw8FNmtA72YFPhb+uqk/6lwtqZneVm
         wohc7RC7XQNbSxoYXEGS0NHOyBT/jeLW/Mg7nrS53++M6Zpk4M6RuFWlWfx6L8Jpr3iA
         yIgZgIrOwWGLQ44JNi4I+KG2XsqtE0qVsNDLKOi+aH9DcVzJ0uhDCfE1XD0bTN/kQOWF
         7n4o+bXsgAdBK/8zRwOCTU3XK4giNI5hzF3cNOYGw2FUScZ5St7XcEzZPZ6HR9WqJzNK
         BRt6guEvIKH/4obtg8tlruI9RpUSjrnPCtKgx50W9Z59eKIeWMWSEAljWwY5fr52VOvb
         LSsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=9MEF5+6M4upzgKcig1fLl6MtWxsOUQJAiBAu9VW5Tss=;
        b=4rQMTienm9sbmJCqBU1Ap7PAhPHHBGk4z3bmlRoAdcuORc/yRAGPqUVlVBL4ZHF7zN
         8vJfE87UoFCHdpChBMJwKbe3cfWubZhwKd8H9aKXeLaxQhXjbcUHnXjGxkkpWHpJ3hxt
         V6IrvemGiJQNvGydos4LYKZs6V4lh/K1WPzyqAp8kuNszLIOm80uKGWyUksNWJ1QQ+B2
         B1ZJv3MPejFsdr0Z8GCfHhgJwfi434EVNceIinYF77/khIkjhEGKNWMT+WIxhmlU1yfK
         UerjkGm0gPOoQP/UdaEzIYdb4u7XAmsh5B8g1iML/foAF6VmWBlurN+uuqnch7uAs0Dv
         TmuQ==
X-Gm-Message-State: AOAM531viP5CKKH0x5TL5jrvSYSSg7zXKFyixQjLHgOCOAxbyWmXtEIV
        rgsMHmYP69fDWOod0D63ERk=
X-Google-Smtp-Source: ABdhPJwp7xbrwXK9hnhnAztxIv0+thBLWkW+an4PGXXmopEZdlR9T9SXPULH8IRWJTfA06R9u6Lspg==
X-Received: by 2002:adf:df92:0:b0:1f1:dc99:fb00 with SMTP id z18-20020adfdf92000000b001f1dc99fb00mr16838316wrl.103.1647264557946;
        Mon, 14 Mar 2022 06:29:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x14-20020adfffce000000b001f1dfee4867sm19736394wrs.99.2022.03.14.06.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 06:29:17 -0700 (PDT)
Message-ID: <c4e2b47f-d2a4-fbfe-4665-b3dad873ade2@gmail.com>
Date:   Mon, 14 Mar 2022 14:29:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] nscd.conf.5: Add debug level description
Content-Language: en-US
To:     Christian Aistleitner <christian@quelltextlich.at>,
        linux-man@vger.kernel.org
References: <20220311082650.GA22399@lirum.at>
Cc:     mtk.manpages@gmail.com
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220311082650.GA22399@lirum.at>
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

Hi Christian,

On 3/11/22 09:26, Christian Aistleitner wrote:
> With only the default debug level documented, neither the possible
> range of the debug levels nor their purpose was apparent. This made it
> hard to use debug levels. So we add a short description of them.
> 
> Signed-off-by: Christian Aistleitner <christian@quelltextlich.at>

Patch applied!

Thanks,

Alex

> ---
>  man5/nscd.conf.5 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
> index 7356bf7..c84d79a 100644
> --- a/man5/nscd.conf.5
> +++ b/man5/nscd.conf.5
> @@ -47,6 +47,10 @@ Specifies name of the file to which debug info should be written.
>  .I value
>  .RS
>  Sets the desired debug level.
> +0 hides debug info.
> +1 shows general debug info.
> +2 additionally shows data in cache dumps.
> +3 (and above) shows all debug info.
>  The default is 0.
>  .RE
>  .PP

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
