Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14B8D52FE85
	for <lists+linux-man@lfdr.de>; Sat, 21 May 2022 19:17:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344050AbiEURRb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 May 2022 13:17:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344022AbiEURRb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 May 2022 13:17:31 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BBCE6A419
        for <linux-man@vger.kernel.org>; Sat, 21 May 2022 10:17:30 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id h5so14145381wrb.11
        for <linux-man@vger.kernel.org>; Sat, 21 May 2022 10:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lo6F78ArRGNczwJR+gJVqHFNirERpK6lldBXVRWeGV0=;
        b=YsQyvdniQ+YOO+91qZxw7YhpsZkXomEHgMqZ3sjbaJEOn5VgTw6+Zzp0msqm9VgJDp
         N3DwpWqQddRLwCBsmlqpKNlltF5LfiLuuW2S33HeSlR/KiJ6P1BM8fOSdW71f/Odh95Y
         nkiofGrDQisnsxJfkF9FCYjk2INVR631huo4OLzsPBrYs2hI/nnGv/O89bAjMORL8F9p
         84CrCEYP3ZTEs45G2NEMrFjg5GWHmG5+dlowc1xjPdWZvcPUHLTcArcm33jfjLHuGMvt
         2dDm4rddCqIgk/b6ektIKRRAodpA7P16sIPkhTLmIMM6u705Snu91JXw9oqmcCZ2MmGt
         Sxsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lo6F78ArRGNczwJR+gJVqHFNirERpK6lldBXVRWeGV0=;
        b=p2f+N0j6lQJ9edzE7UOA4U5X0Tgdc8XTnrDnit+RaaXTJq88dpE/Q0JvFThEj8LEIY
         7Ot6jJLI/pDtVbv5BUAA0CEsV4wiuYJRjdvHJ2HF91UnRGZ3OASkvxvwK+VTTqpMKzf4
         4mGj3GMRYUf+8NBQupVBGcA/FTNHYoSx+cjNB7wiPZ3HQdOIJRGoWRvaGZOL9hnMra/l
         5j4yzZ7005dbWTtr6Z42XdxtA3bc+TQ90IdL8BHcYtQo/FWTB2gwOXHBAtjp2CyO6d8L
         lp5JCjHBj/RndrG38KCTB8CeLBQ042TYD1niH2VEhqxAhl3w4VNKoVRUU36IIFXnxRKu
         8t6w==
X-Gm-Message-State: AOAM5337CVjwFXCn8MoqDV+RJH8yLpV/RFmXRrpSvkjkzXOAeQfRG78a
        Zne0cOuRQGfoebsrY8Pt9XdyhRVlRuM=
X-Google-Smtp-Source: ABdhPJyZsjoCwapCiEXQGQaLj3Y8e//zGPtgfBogHEpSpFVmuZY6ikBTPzfP9oISm8M5MNfBn8xydw==
X-Received: by 2002:a5d:618d:0:b0:20d:1294:468f with SMTP id j13-20020a5d618d000000b0020d1294468fmr12844203wru.289.1653153448716;
        Sat, 21 May 2022 10:17:28 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t11-20020adfba4b000000b0020c6fa5a797sm5627759wrg.91.2022.05.21.10.17.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 10:17:28 -0700 (PDT)
Message-ID: <dec8510b-dc1f-63df-0acb-24783872c579@gmail.com>
Date:   Sat, 21 May 2022 19:17:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] printf.3: Document 'l' length modifier for a, A, e, E, f,
 F, g, and G
Content-Language: en-US
To:     Vincent Lefevre <vincent@vinc17.net>
Cc:     linux-man@vger.kernel.org
References: <20220520141040.1136383-1-vincent@vinc17.net>
 <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
 <20220520161121.GA1112518@zira.vinc17.org>
 <f5fef324-4883-197e-1e3d-e3b5b36ceaf9@gmail.com>
 <20220520173043.GC1112518@zira.vinc17.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220520173043.GC1112518@zira.vinc17.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Vincent,

On 5/20/22 19:30, Vincent Lefevre wrote:
> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>

Patch applied!

Thanks,

Alex

> ---
>   man3/printf.3 | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index 4fa1f11f3..a231d626c 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -503,6 +503,17 @@ argument, or a following
>   conversion corresponds to a pointer to
>   .I wchar_t
>   argument.
> +On a following
> +.BR a ,
> +.BR A ,
> +.BR e ,
> +.BR E ,
> +.BR f ,
> +.BR F ,
> +.BR g ,
> +or
> +.B G
> +conversion, this length modifier is ignored (C99; not in SUSv2).
>   .TP
>   .B ll
>   (ell-ell).

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
