Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E74DA1F7D99
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 21:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726317AbgFLTaV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Jun 2020 15:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbgFLTaV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Jun 2020 15:30:21 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3E8AC03E96F
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:30:20 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id l10so10931872wrr.10
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nKMmZ/C6DeMWbxHuhUMWvMr9RUd/zBp0OruJiA+hl0E=;
        b=vRtm+VYX8YU7MDXdWZW3ND4k0IFVkCkRCnNp5pQ12UzGdE+MX9qUv1g/PfO2qE9lcd
         jeHqeLBqPUo9wvZZ0UxRdk8HGNDmzRF/S926l0VjnFlHKo0A97m0gVToFRxzWpFfNDEk
         iEk5WKdAAU9tChFhjskDtJfwRb6lrRBWNDS3GfdyG2MBx+yQCrS5cV0J73+j3w77zUQZ
         tXqFCdSNMvCFK1IjJoJrmfoMvfFA7OzWzalElKN/SQGFQ2cKm7HWqRsWkZ+WdU80OayL
         Q/lgoGOSwatRKmyjfedVTF3OFbe8i9xcdORZeEJk55WLDHOz7qBBNhzN6LM9B20shkgh
         b2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nKMmZ/C6DeMWbxHuhUMWvMr9RUd/zBp0OruJiA+hl0E=;
        b=VVdjc/LMHTo4BhnZ7FhhzRWRj+vHpGCMkfmu0At+uGtSUjl1y8O+jr9eHVHJ6gMKcf
         g2/DxKuTybWLx4/2B/FXlwiMgQjHMJZAzYhFxQ+6fPlwwRZcX7sWbMlmtSwgRuyu+k1q
         byMJN1KUWy6tD4+LBHKfJv1pshnQJlr1TdYWx7jU1o6Lwk4tsouXGyfNuJXJoW/lXwqb
         KQ1yP9v60QQaX94at5hmNg/STfbr64qdPaM8Bk52XBgH+EIhR1sbGhM4qwDvNi/+Lmws
         RPP8skcyRL++90XMldG6dJj32pwjMfHZj1xF+VS1VGMePQUl6/9rFGUJSVp7jBFCCeNP
         BA/g==
X-Gm-Message-State: AOAM532jAh67+XQ3MY605K19Z2qchM9biiu7HxBOAzCKZ6g9RgCsdQf0
        Ck8NZM8S1PoA4zdg+Kd5SsGbSIh5WCk=
X-Google-Smtp-Source: ABdhPJyFFLIVFWLlRoj9EqmZ56ntZ1IEexSihoorDjIdDG77zIUs8xEOghNy77hobRxOHkOYQHm0tg==
X-Received: by 2002:adf:aa94:: with SMTP id h20mr15476121wrc.327.1591990219252;
        Fri, 12 Jun 2020 12:30:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id y132sm10892603wmb.11.2020.06.12.12.30.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 12:30:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] time.1: ffix: correct a three-fonts line in SYNOPSIS
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200612022231.GA14582@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2bb5389d-714d-72e2-3e88-c500575a0bad@gmail.com>
Date:   Fri, 12 Jun 2020 21:30:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200612022231.GA14582@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

On 6/12/20 4:22 AM, Bjarni Ingi Gislason wrote:
>   The current version shows the square brackets, '[' and ']', in
> boldface.
> 
>   Use the '\c' escape sequence (function) to join the output of two
> macros.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man1/time.1 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man1/time.1 b/man1/time.1
> index d9a9717e0..f274aa9d8 100644
> --- a/man1/time.1
> +++ b/man1/time.1
> @@ -10,7 +10,8 @@
>  .SH NAME
>  time \- time a simple command or give resource usage
>  .SH SYNOPSIS
> -.BI "time [" options "] " command " [" arguments... "] "
> +.B time \c
> +.RI [ options ] " command " [ arguments... ]
>  .SH DESCRIPTION
>  The
>  .B time
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
