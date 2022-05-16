Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C76D3529354
	for <lists+linux-man@lfdr.de>; Tue, 17 May 2022 00:05:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346352AbiEPWFG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 May 2022 18:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238440AbiEPWFF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 May 2022 18:05:05 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 579582C65C
        for <linux-man@vger.kernel.org>; Mon, 16 May 2022 15:05:03 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id h14so2598784wrc.6
        for <linux-man@vger.kernel.org>; Mon, 16 May 2022 15:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LFrsuot8HXshiNNo4sQDRp8BkV3yr6rBqE+a++tl7L8=;
        b=p7ojG7xW6taGlGF4vCN7Sgfmk1unw24VhywTRhfa4VnLcyPEEcRQTv8b/nLNkgTLDL
         iajZv1oWqSlL//h5E+YWyD4UnOcabkCfDxpfDIvbiEsDjo71Aa957RgjWg+cq10sk17H
         aAlLZxCAMacntZLnd21fMPCaIdMqLuyjJz/oJKfXrC27w5utPYk5b+mUm6eD9CBq7BK2
         tmn5hZygQmUbiIPGsnHEgdeEYcroz7Bc2z8dnXBbAM+KoD6JWm14O+ibZ20uA0Bb5APz
         /BLt3sMSr23WXN0ZjAxh7KjzP8z1DqJSLcIxuQw3xEmAti+47xgBC7yzj9gfBlrfXPMv
         pqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LFrsuot8HXshiNNo4sQDRp8BkV3yr6rBqE+a++tl7L8=;
        b=ShHU3sXtztmVIC9pCFmVK9V9rzqBuVMB43OXRK2Dmj1nF2zPpZW/LT2Y6EsFOE/WU4
         7ZoTzjKvIpXITsBOgLWanjWXqYX8Xg71/3dDWXKjBWCfSKDbZmrcZxW8pjJiQMnZ62RH
         dFXvAcp7iio/mj74SM+m0pJdefUKl/fBmMHX+u0fLpUrvJiglZYEIsq5sH0A9X8PLtOp
         61AJT5YTOKRKmtkmKoSOBbUQNkCUTzujG5n7RJRK5xyqeO7BmctRDJM/DgbnVzFfQvHX
         0TG7/GYlher74tkZpzR4eEAqB1xp5JenDJQUX4+9R7iyV0bEG+xF2G00WxbwhOZYD/2P
         SJsA==
X-Gm-Message-State: AOAM531y7r2zJz8us2+jk1LQ7o6jmzF02KIzBwnlWUKsgxxk/XfTNsYa
        HSkeob2a9slguPPdm9t649lOhiArdLA=
X-Google-Smtp-Source: ABdhPJx7dv4Mo8rEehUzCytym84l4o7BFfoQ9jLceGEvec+XZd5e9j3Z3mxH3b+RpdDQYt12yHtIIw==
X-Received: by 2002:a05:6000:18a2:b0:20c:6d0d:10b0 with SMTP id b2-20020a05600018a200b0020c6d0d10b0mr15977037wri.345.1652738701781;
        Mon, 16 May 2022 15:05:01 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e15-20020adfa74f000000b0020c5253d8e5sm10076872wrd.49.2022.05.16.15.05.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 May 2022 15:05:01 -0700 (PDT)
Message-ID: <bac1b13f-eb36-c150-aa01-81c04a4063bd@gmail.com>
Date:   Tue, 17 May 2022 00:04:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] fseek.3: mention seek-past-the-end semantics, defer to
 lseek(2)
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220516195143.kry7o63pmjyiyhpk@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220516195143.kry7o63pmjyiyhpk@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/16/22 21:51, наб wrote:
> If the user is unfamiliar with seeking semantics, they may sensibly
> assume that seeking past the end is invalid
> 
> Reported-in: https://twitter.com/eatijr/status/1526264195808911361
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Patch applied, наб.

Thanks,

Alex

> ---
>   man3/fseek.3 | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/man3/fseek.3 b/man3/fseek.3
> index 01bd34c5b..c19303421 100644
> --- a/man3/fseek.3
> +++ b/man3/fseek.3
> @@ -118,6 +118,14 @@ On some non-UNIX systems, an
>   .I fpos_t
>   object may be a complex object and these routines may be the only way to
>   portably reposition a text stream.
> +.PP
> +If the stream refers to a regular file
> +and the resulting stream offset is beyond the size of the file,
> +subsequent writes will extend the file with a hole, up to the offset,
> +before committing any data.
> +See
> +.BR lseek (2)
> +for details on file seeking semantics.
>   .SH RETURN VALUE
>   The
>   .BR rewind ()

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
