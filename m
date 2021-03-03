Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9068432C75C
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386548AbhCDAbk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388250AbhCCVG5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 16:06:57 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155F6C061761
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 13:06:09 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id p8so18687832ejb.10
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 13:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6zXgEDKriSl5n5Q0ds1U5PGi9bvEKwmNO/jfGxaidTk=;
        b=qpMJGfQSvu0W/hEjf/d9IEwVwQI76D+6qfTBpMjrdvD8y7Fi7TlCDF2SR0uiFH32uQ
         DvFfTCBK5PhToNO+aQxzDHnv+uC9AyTaKnlgeW0Eraac5XZKxjPny7UW86aMsrkvyP4w
         pSFb2e7obKllafH4TZVhy96gLwPN9YpM25yduPoRp0E9w9Hnxcj6tiBnh8TWaMMqOVbz
         +0Q7/5X84yKX3KTQtz6g2OQvjl1m3rL63ByJ222auT1ElpBIJ89PtzneJUBeTzvslRXZ
         9wcr3wZW+8wNdqdrR3bJSqWUeOMk90HtYGZmFL+GxV8O2/9sX9cG1PQ2gP/oKjtC4AVb
         Dg1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6zXgEDKriSl5n5Q0ds1U5PGi9bvEKwmNO/jfGxaidTk=;
        b=LDYKrMy9la3ur6OAyFfl175YJ5IwfO/5t3aA9uK/AytbOqn52o8SceKHhcqWkIYV6k
         xWtlpC0+Dn7jNVoEXkRejzFNpTJHkZ3pKaOkUaRk4vxRQPn8/ICE2qGVwwbGmmBZNYX9
         Xe42K6gfP8i1wsrwsP7TakI+hEyq/U2An9X/DCEh0UJlPI190PR8X+K976YKhII59DXI
         8OelMDj9qWR4CoGtL1ERZg+L/znUeamaiO5xRCZm0wad1A/Bs6/2kb34Np4l2BMWLjpU
         +tHbCESoNABL8jR1QJr0TeOETKRNIgE/ywMsSPSI8Pr7e2qfmA0YPIHbJkN2m4Ly1RV1
         26aQ==
X-Gm-Message-State: AOAM530leYHh/js2lUsOtFKAKSIbr68QVsBtLZrYlaNSLMa52UWhJoG6
        vZ4sWVbaa8nN/keIlmbK5+gW3S05CEpKiQ==
X-Google-Smtp-Source: ABdhPJy4UUEyzgl4gPSZPw6xDSFSl3+UFeyttuC3PBDsndGuy3MC4TCuiPoAzJQTx0PYVNqNbYJzTA==
X-Received: by 2002:a17:906:68c5:: with SMTP id y5mr628734ejr.371.1614805567633;
        Wed, 03 Mar 2021 13:06:07 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id kz4sm22572491ejc.38.2021.03.03.13.06.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 13:06:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] getopt.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210228005024.122579-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2081681b-f058-dd7a-c913-6e2092d50636@gmail.com>
Date:   Wed, 3 Mar 2021 22:06:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210228005024.122579-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/28/21 1:50 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/getopt.3 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/getopt.3 b/man3/getopt.3
> index d83f8693e..b628a0b4d 100644
> --- a/man3/getopt.3
> +++ b/man3/getopt.3
> @@ -47,7 +47,7 @@ optarg, optind, opterr, optopt \- Parse command-line options
>  .nf
>  .B #include <unistd.h>
>  .PP
> -.BI "int getopt(int " argc ", char * const " argv[] ,
> +.BI "int getopt(int " argc ", char *const " argv [],
>  .BI "           const char *" optstring );
>  .PP
>  .BI "extern char *" optarg ;
> @@ -55,10 +55,10 @@ optarg, optind, opterr, optopt \- Parse command-line options
>  .PP
>  .B #include <getopt.h>
>  .PP
> -.BI "int getopt_long(int " argc ", char * const " argv[] ,
> +.BI "int getopt_long(int " argc ", char *const " argv [],
>  .BI "           const char *" optstring ,
>  .BI "           const struct option *" longopts ", int *" longindex );
> -.BI "int getopt_long_only(int " argc ", char * const " argv[] ,
> +.BI "int getopt_long_only(int " argc ", char *const " argv [],
>  .BI "           const char *" optstring ,
>  .BI "           const struct option *" longopts ", int *" longindex );
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
