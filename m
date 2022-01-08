Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBA4B488062
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 02:18:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbiAHBS5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 20:18:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230015AbiAHBS5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 20:18:57 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0477C061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 17:18:56 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id w20so14174422wra.9
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 17:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IpKvRa3CI8AIENRuoZQR6mZwHolkrIsp0KCD5hkolek=;
        b=KpAsjfZPgD6xb4xT1uiKbB0gRG+xRdlFiE3tDf3tHjXuz+IYtK/GfqCwSeLinzKUTM
         aHdvEccE0Ivy2oqGpSa3pP4yUKs4NCrBhAC67gkRDZ8CJxc6AnSlkJnJG88WuNeu6U+x
         ieN1sRZjlX/G3ZNqrW3xkpxIrE6JDCEMJ31QupMUN9xj3y/omcwPi1phbHyhVdQ+eUS0
         XvJ8m6io8Gmub462d6Rfi8QoSm1SII9Ft/JASve+y5Vf6Z26hp9DdRB4rrwVcRgxaYvp
         1mpAL76gnPC3Q63wsyF54jaTZrfrcyAh6+Lm7/rspMI7CQyrvci6PMi7GCC2WtJT6lIG
         VX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IpKvRa3CI8AIENRuoZQR6mZwHolkrIsp0KCD5hkolek=;
        b=DLPP0rTynZZzQtXk/IRKWPZzc1WpCu5pXWIVPNlDtpDywpKlPseBTW43sX8QIIVSEu
         91urttkMbHx1LOAOJFy4d6fAwUJ3A3mRKpTAj5Osc/Z8CqVG13EJPFqiJd9DDK42CmXi
         I6pJXnmuKdSp7feJTBD739GcFqeMwQc3InQBMHopx2Kr9RFnofGQNoxZ8e1ehmZ8pyCg
         BaKNYgI64AQXOI1ZZgJEWxNBWPsO6ZmcftKIOCdmXTL1M0e+dsmGpfWE+eT8mTkhBY89
         92VdA4Vj15nIHcsSx6b/viD7PxX0yfJPY1ujoVOsdXVbxnbLmS7jxJ8raTBJ70XhMhtO
         53AQ==
X-Gm-Message-State: AOAM533x6nVcNOFPL/xXM4K4jOe03CGor33Wh8GF/po82pDXZGGHeA9r
        W3I+jPmxetKkPx7lgdoDYJpiUBHIN3A=
X-Google-Smtp-Source: ABdhPJwzDtj9FEmCTSxWykSSbusoqob5/3Qjx+QwsQGftc9S3YNpxU0dl/knWQUsPdTF9LnDzp1zEA==
X-Received: by 2002:a5d:5887:: with SMTP id n7mr55969609wrf.510.1641604735327;
        Fri, 07 Jan 2022 17:18:55 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k31sm99844wms.21.2022.01.07.17.18.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 17:18:55 -0800 (PST)
Message-ID: <c747e51b-654f-38d0-4158-014c7773dc73@gmail.com>
Date:   Sat, 8 Jan 2022 02:18:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 2/9] seccomp.2: Use syscall() in the example code
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-2-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-2-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
> Since seccomp() doesn't exist in glibc, avoid relying on it, and use
> syscall() instead. This updates the example program to match the
> documentation, which was updated in commit 5945cd7bd3c3 ("seccomp.2:
> Use syscall(SYS_...); for system calls without a wrapper").
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Patch applied.

Thanks!

Alex

> ---
>   man2/seccomp.2 | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index a3421871f..67928ed3f 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -1133,6 +1133,7 @@ cecilia
>   #include <linux/filter.h>
>   #include <linux/seccomp.h>
>   #include <sys/prctl.h>
> +#include <sys/syscall.h>
>   
>   #define X32_SYSCALL_BIT 0x40000000
>   #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
> @@ -1190,7 +1191,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
>           .filter = filter,
>       };
>   
> -    if (seccomp(SECCOMP_SET_MODE_FILTER, 0, &prog)) {
> +    if (syscall(SYS_seccomp, SECCOMP_SET_MODE_FILTER, 0, &prog)) {
>           perror("seccomp");
>           return 1;
>       }

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
