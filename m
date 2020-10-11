Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E04B28A5D4
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 07:43:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726470AbgJKFn4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 01:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725882AbgJKFn4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 01:43:56 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD2E6C0613CE
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 22:43:55 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so14011735wmj.5
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 22:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=V127NCwxECWVPkIsZmLMm/6rT6z7iQbFxfPVOm1VZPY=;
        b=kQN7sApcauH7/H1VvaVVy7oibbj/S8GLqdcw9uNCtps3VJaOnvlwR+JKlpA8mCe0MU
         d0wXsxj4UMWwTb2R/TgqVkZ3TxPr6Jk1En1gVs2xZc9h3QQz+Pz5UZj+nIuthb3xjgxk
         djruIdteN+tmNr1XjjD0Jy7WXkhmMatSzbZ90COs5/zRgtCxjV9GFjmVdUVARh3VCVF6
         xxFAJdjVGqLqkla6pdiUL+xdRC4Tv1m7mnRMJot788zPxUIoloK9YwfKUa1dx10VXCor
         Tv08tZzsNxn0/7Xb6Eoa2j6BTkc8TFZq/OD35uZMjhTBkavdsiozvBDLnZWfinnot3nS
         N8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=V127NCwxECWVPkIsZmLMm/6rT6z7iQbFxfPVOm1VZPY=;
        b=cLD9GwdAIXRgb4bp8ZI2xvvyDa9F5bYiqY+fUcA9HFRZIQpEyJwdPeFcimI4HwR/gU
         Br7Qr88D0JGD4NeZ+xce0ySuuB5WX8ckDwFR8O0rv6gKIWrJTT8z8rqJxO+Wv50dEjKR
         FKNaqA6dO5ZuHBIv43HMjSTKNgRIzeUm3SFurXODIisKlLXXJzfc2mb3u8HIOGR/mS6o
         nz5INI8b4qiv7rSKbsb2Pl8RH89gIdoD+eIUubfYyFJ+9YkpamLGaOQoScIpkQKJlVJc
         Qw6lROEf7BdPC5iD6Kdjo34mdmLeBA3XwEgwH+Kfv1kBnatZZsdj+sUbnXnbM3OBZKgT
         EP3A==
X-Gm-Message-State: AOAM530C3YV+CZTJCb4EUwLFOfE9ppHIQWdskzZKP5t4fdRUIB4uP4Rh
        31wVDE6zt1hdIoSk+NrrFlZf/UmjhDM7gA==
X-Google-Smtp-Source: ABdhPJwQfHDvS0GiGDotFvKfejzjxpR6T57vO0VNYFZY1AO05xCLqB+qi/ULwZ/F5IqL4pWkVBCFJw==
X-Received: by 2002:a05:600c:2902:: with SMTP id i2mr5205613wmd.31.1602395034000;
        Sat, 10 Oct 2020 22:43:54 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id d20sm4822014wra.38.2020.10.10.22.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Oct 2020 22:43:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: Remove unnecessary include
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201010175001.3818-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <56cbf4c7-6a5c-2e36-1c58-6f452e4f8097@gmail.com>
Date:   Sun, 11 Oct 2020 07:43:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201010175001.3818-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/10/20 7:50 PM, Alejandro Colomar wrote:
> POSIX requires that the <regex.h> header shall define
> the structures and symbolic constants used by the
> regcomp(),  regexec(), regerror(), and regfree() functions.
> 
> Therefore, there should be no need to include <sys/types.h> at all.

Thanls, Alex. Patch applied.

Cheers,

Michael

> The POSIX docs don't use that include:
> https://pubs.opengroup.org/onlinepubs/9699919799/functions/regcomp.html
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/regex.3 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man3/regex.3 b/man3/regex.3
> index d4f7a09e7..414011d91 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -32,7 +32,6 @@
>  regcomp, regexec, regerror, regfree \- POSIX regex functions
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/types.h>
>  .B #include <regex.h>
>  .PP
>  .BI "int regcomp(regex_t *" preg ", const char *" regex ", int " cflags );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
