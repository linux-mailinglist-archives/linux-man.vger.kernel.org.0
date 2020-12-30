Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABAC22E7CFB
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 23:37:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726388AbgL3WhW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 17:37:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726247AbgL3WhW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 17:37:22 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23570C061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:36:42 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id w5so18697334wrm.11
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HDEfUJBPw9GyVup59FSDOsknkgzf6/81wsfK6ct/wkc=;
        b=HnCcJ1JtcV5EZ65Qu2XsO2quHT7JBBjwNLhO937o0fSrMrxaEqgODVhovAWlqBRU5I
         gCbiUyd5Xh1UMTQroUHT20t2pbWFmdID0lKuuQYZFefZTaqQesJTvV5QbwJdcJ5DM2kK
         6SQzqLVEnnGkQ3z87sZ7WOvsxWxlXbQ1b2NRJAvN01zW4Xo1SxNCB1FcmHsthqC3r1kP
         nPdeE5M6W5mBMmuz0XOca/CjJtU2Dfa2tpP47SrZMYCkVaEDuZOr5FQspcYKwtG/edRY
         zAovt7pkkFIxxplFbvB98ZxL2AJQrCE7jO4GtOI40JnxFMpcWIeaLFzS9Z/F8JtAfW5J
         YK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HDEfUJBPw9GyVup59FSDOsknkgzf6/81wsfK6ct/wkc=;
        b=cPJkTAqQ2192bSdEeLFJYXwhnpa5WRdpRJGNu4nrsxJFnbntNSB65B0G8I5/HnSYRw
         t+oIME+mFLisRiUbSHKo636pMTSQhibkj2p/MmCNVdBaBDXzqodeB6yC62xEt6LJf49B
         av0La4lZ4/dWXwVGn5oVvf2mvJjyl+580ZPHrfxpovr1iTNcM1ZTgKnOcaIFmNLIVojR
         iLEcye6HpA4hc08cvAfFz06TzPRErufYiF1ph+RmHlq7lKOmR1Mczl3YLcGWKzekwglx
         Za/enF0Eqh4awgu5HVK7WRd5IQo1GR6OM74IgtN5vO8jFN/kikiIryxLtRh32QoioYcK
         c2vg==
X-Gm-Message-State: AOAM530PolQZSAZH0zTg9jCbFgIydIcLQ1yU/1F1r81BCmpSy5m70g6W
        z7MCkn9wQKZT7cujHE6192TtkQZQ/S8=
X-Google-Smtp-Source: ABdhPJznKND66DyOEDH0Ed5JiZS+nCKPBiISJIN0z47FPbb+nx+ECi7iROimpv1M5si8nHs9Xyhifg==
X-Received: by 2002:adf:f88d:: with SMTP id u13mr63911129wrp.161.1609367800572;
        Wed, 30 Dec 2020 14:36:40 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id h13sm65076709wrm.28.2020.12.30.14.36.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 14:36:39 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] delete_module.2: SYNOPSIS: Fix prototype parameter types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201230214147.874671-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <45b040a9-35f3-e087-97ac-33ef25e9a37f@gmail.com>
Date:   Wed, 30 Dec 2020 23:36:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201230214147.874671-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 12/30/20 10:41 PM, Alejandro Colomar wrote:
> The Linux kernel uses 'unsigned int' instead of 'int' for the
> 'flags' parameter.  As glibc provides no wrapper, use the same
> type the kernel uses> ......
> 
> $ syscall='delete_module';
> $ find linux/ -type f -name '*.c' \
>   |xargs pcregrep -Mn "(?s)^[\w_]*SYSCALL_DEFINE.\(${syscall},.*?\)";
> linux/kernel/module.c:977:
> SYSCALL_DEFINE2(delete_module, const char __user *, name_user,
> 		unsigned int, flags)
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/delete_module.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/delete_module.2 b/man2/delete_module.2
> index e63545d51..1030e9698 100644
> --- a/man2/delete_module.2
> +++ b/man2/delete_module.2
> @@ -27,7 +27,7 @@
>  delete_module \- unload a kernel module
>  .SH SYNOPSIS
>  .nf
> -.BI "int delete_module(const char *" name ", int " flags );
> +.BI "int delete_module(const char *" name ", unsigned int " flags );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
