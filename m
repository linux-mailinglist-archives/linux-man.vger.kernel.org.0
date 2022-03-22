Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48A6F4E3DDD
	for <lists+linux-man@lfdr.de>; Tue, 22 Mar 2022 12:54:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233072AbiCVLz6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Mar 2022 07:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbiCVLz5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Mar 2022 07:55:57 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65D3C2125F
        for <linux-man@vger.kernel.org>; Tue, 22 Mar 2022 04:54:30 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id j13-20020a05600c1c0d00b0038c8f94aac2so1907116wms.3
        for <linux-man@vger.kernel.org>; Tue, 22 Mar 2022 04:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FON+uDn8YKUI7bjWKycOZcvrprO2h2kNhMnchOpjXBE=;
        b=hSRsSvI/sr5ghIdLJ8vsZUTkF2C1BsthnctrahTzg+7s6YGIkfv+Xe9Rto4B7ul7qX
         +d1sAZBOafKvUbeCt3lAXV2RdxcWhbQL+8ziV6HAxHOBljxejWoxmRlxfq6xW/0vK1ZM
         yx9YC+09r6HUeHP2AjCj98gnDVBF1mPM5JD1SN49l1QatiJ+aFeR+F8myX7ejuddQq9A
         Xc+ffjp4AB4cLobWwD8y3oNSP6+nOsTN0iAVbfgLgbR8bTibOjxUui4zYp9QD45XLq1r
         2KpkbvdR9+CvR5qwdr2tGrCldbvtMlegFh7rbd5e8UtdEBQCISV2hEY5lEkACqqX7XaJ
         Bdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FON+uDn8YKUI7bjWKycOZcvrprO2h2kNhMnchOpjXBE=;
        b=VIoa+R849px2pa+WEqnwhuRhy9OFr3qupPTt6CJZCyd3jdDtDlGtg8aPDBrfAP40hB
         wfWOchKL8AwtObysf7D0pH8E74Qsv/YRSzu/W3yHCnZhzoh+Dq2a8PZRE+LcAxYk8s6b
         pT0L38oujmGkff2Nkj6RnLIUIOU0M5X/kd39aG/VVOSP7pE0mXZoDq+S6RhY9yS4ovU4
         o7d0lNDk7QBWyS0xetarKfKO/ZSSOMaUaWgh3DSwoU7GSXBHULFNOgGxRFfatuife5AC
         AO+XPwUkyEjx4Z09stJ5Cusze8LUmd/XPQeP7vGAR9s/zIdAlfhJMR+/42W0md5Rcd9X
         NiDQ==
X-Gm-Message-State: AOAM533bz0uXjS4E+cVTO/rsXpXB8q22xObwu86RY31KrVDUn4UH1LT9
        6h/kQgHDbuenkftNqD67OoUAXZjpc0i9YsFV
X-Google-Smtp-Source: ABdhPJw6FbK88t7CTRqZ7k9WvTpLqeTjhGfMQsgGMQKCZkMjaEVQf2r/bv86krTrMfLBw5YuYW76BQ==
X-Received: by 2002:a05:600c:17d2:b0:38c:8ff1:97e2 with SMTP id y18-20020a05600c17d200b0038c8ff197e2mr3412572wmo.129.1647950068971;
        Tue, 22 Mar 2022 04:54:28 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v8-20020a1cf708000000b0034d7b5f2da0sm1747025wmh.33.2022.03.22.04.54.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Mar 2022 04:54:28 -0700 (PDT)
Message-ID: <c2c0894e-c798-e803-500f-5c8161364b72@gmail.com>
Date:   Tue, 22 Mar 2022 12:54:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] trig: fix variable use in formulas
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220321221935.177256-1-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220321221935.177256-1-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

Hi Stephen!

On 3/21/22 23:19, Stephen Kitt wrote:
> The cacosh, catan, and catanh man pages include examples using a
> non-existant f2 variable. Replacing the f2 references with f fixes the
> examples.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Patch applied.  I edited the subject line to be:
cacosh.3, catan.3, catanh.3: EXAMPLES: Fix variable use in formulas

Thanks,

Alex

> ---
>   man3/cacosh.3 | 2 +-
>   man3/catan.3  | 2 +-
>   man3/catanh.3 | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/cacosh.3 b/man3/cacosh.3
> index 079a59c5c..2ab7c56b1 100644
> --- a/man3/cacosh.3
> +++ b/man3/cacosh.3
> @@ -81,7 +81,7 @@ main(int argc, char *argv[])
>       printf("cacosh() = %6.3f %6.3f*i\en", creal(c), cimag(c));
>   
>       f = 2 * clog(csqrt((z + 1)/2) + csqrt((z \- 1)/2));
> -    printf("formula  = %6.3f %6.3f*i\en", creal(f2), cimag(f2));
> +    printf("formula  = %6.3f %6.3f*i\en", creal(f), cimag(f));
>   
>       exit(EXIT_SUCCESS);
>   }
> diff --git a/man3/catan.3 b/man3/catan.3
> index f410dd303..d28f84b20 100644
> --- a/man3/catan.3
> +++ b/man3/catan.3
> @@ -79,7 +79,7 @@ main(int argc, char *argv[])
>       printf("catan() = %6.3f %6.3f*i\en", creal(c), cimag(c));
>   
>       f = (clog(1 + i * z) \- clog(1 \- i * z)) / (2 * i);
> -    printf("formula = %6.3f %6.3f*i\en", creal(f2), cimag(f2));
> +    printf("formula = %6.3f %6.3f*i\en", creal(f), cimag(f));
>   
>       exit(EXIT_SUCCESS);
>   }
> diff --git a/man3/catanh.3 b/man3/catanh.3
> index 47d4f17f1..8ef81d998 100644
> --- a/man3/catanh.3
> +++ b/man3/catanh.3
> @@ -80,7 +80,7 @@ main(int argc, char *argv[])
>       printf("catanh() = %6.3f %6.3f*i\en", creal(c), cimag(c));
>   
>       f = 0.5 * (clog(1 + z) \- clog(1 \- z));
> -    printf("formula  = %6.3f %6.3f*i\en", creal(f2), cimag(f2));
> +    printf("formula  = %6.3f %6.3f*i\en", creal(f), cimag(f));
>   
>       exit(EXIT_SUCCESS);
>   }
> 
> base-commit: b7c97d642a4ea5629412a9542d1bef351dc2571d

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
