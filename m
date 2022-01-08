Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE1F4880A5
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 02:41:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233083AbiAHBlN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 20:41:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233081AbiAHBlN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 20:41:13 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5E58C061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 17:41:12 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id k18so14218626wrg.11
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 17:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SgcT3mvCOM4O3p9I9+SWGMv+m7c490Dux0ZdQxqYqi4=;
        b=crP/YZrXmJZMIbwe3cpQwmYxKB11ILgt6vgFYZBgQS4OdkdVp21YozGD3yb3De1mXP
         ZqUHJREFo2IxakjUeTS4Tra2qxbaunTCezSOoFbiG3NU9QL/7nJFi5Ffieh5dalvayMR
         eKv/52CioniAn+baLQj5iJso94o2QsPbCJE/tImMCpZop01kheqlJ+DqxmTIFWwLz15D
         z1yEg2He9Zz9XJGsu3g1q9OuYzrPZWJXPCNTzlKdJlDrvmiD8f8/a/EbLWs+cj8DNzK6
         LPJCV+wLiK2pF+N3CGv8qj6FlALRzYK/mY0msNwhhIpf2LWPy2KkGUvZR86Yr3ym7Jo0
         9AtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SgcT3mvCOM4O3p9I9+SWGMv+m7c490Dux0ZdQxqYqi4=;
        b=OxkHUl0rAHunkkKUlDk1dOAV1lazDqXxm29/WvkvyfQqEMPjRywmvP1QtUJfnFmCpr
         fWJXwpekzum7/lxBQHvsBu5v1pFbPFeqF1NzCHLCtoC84nDGxngyyAIzl/a73ufVV5Vw
         yUcQhOcTQRsrBdcOBh8Wn3XNgttuqmASjAM0AzLFicWietuEue93KiPRYDO2SAAM1fpF
         NoN5tXL7LB6ln5e+VhDGwZ8c44njHvb2TLt93GG9f0+kRQc0PEH3xAeIht7XOpNF/kUx
         efW+YsJS0ctlU7MpNAqeATqsWS/LKZo211o8jS/PLtcnu2NgUQ3WTpNC/qB/huMYVpso
         zf3A==
X-Gm-Message-State: AOAM5323KKej1u4f8SWRLnKp+EBa1VoNvSiu+PGAUNfWnti1A4i81d2g
        bBSgK/yzFjYGuuH5q9wsx9E=
X-Google-Smtp-Source: ABdhPJxfPvWE9wDQ+X1SXA8aqhzswPtpZds8uc56rPDnVNv7miJWrjUb0xih83uBbvrabVP3fgAhLg==
X-Received: by 2002:a05:6000:118a:: with SMTP id g10mr54307041wrx.533.1641606071558;
        Fri, 07 Jan 2022 17:41:11 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p11sm302370wru.99.2022.01.07.17.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 17:41:11 -0800 (PST)
Message-ID: <ee6f8448-4a84-3a94-d6d0-e9eabc3705a1@gmail.com>
Date:   Sat, 8 Jan 2022 02:41:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 6/9] newlocale.3: Use LC_GLOBAL_LOCALE, not ..._HANDLE
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-6-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-6-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
> Signed-off-by: Stephen Kitt <steve@sk2.org>
> ---
>   man3/newlocale.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/newlocale.3 b/man3/newlocale.3
> index b5960c4c4..dc9406ede 100644
> --- a/man3/newlocale.3
> +++ b/man3/newlocale.3
> @@ -360,7 +360,7 @@ main(int argc, char *argv[])
>   
>       /* Free the locale object. */
>   
> -    uselocale(LC_GLOBAL_HANDLE);    /* So \(aqloc\(aq is no longer in use */
> +    uselocale(LC_GLOBAL_LOCALE);    /* So \(aqloc\(aq is no longer in use */

Why?  Not saying it's wrong, but I'd like a bit more of an explanation, 
since I don't know what this does, and would like to be able to check 
the correctness by just looking at the patch, without having to read 
whole man pages. :)

What was wrong, and in what sense does this patch fix it?

Thanks,

Alex


>       freelocale(loc);
>   
>       exit(EXIT_SUCCESS);

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
