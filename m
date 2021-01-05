Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A7E92EB589
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 23:54:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729295AbhAEWy2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jan 2021 17:54:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729263AbhAEWy1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jan 2021 17:54:27 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FBDAC061574
        for <linux-man@vger.kernel.org>; Tue,  5 Jan 2021 14:53:47 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id i9so753897wrc.4
        for <linux-man@vger.kernel.org>; Tue, 05 Jan 2021 14:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9YAvM9qlAD3ZdPoH8q3SY/fK56huRhsBXFa14lGIz3U=;
        b=NT2nu4uy0VcGL4HBW53L9Ew+mtqQUtSnP5MlSSgfEPgmKLggUgojHVwDdsaXYAcX9v
         Mh6au8FRKWkA/SGTCO9Vioyz2CgxNpj8sh7gi5DgsmyeXC1FVpM6+3NmC+1LIjBPAFUO
         m3KhKWYuoLCM4bbtp5cT9z8pToVNCICfhrySgSuSE4E9Lt7DVj6qaSY5nRrv8SoER3T1
         uR+KXqPJhog7UaXNFFvgDpNH40i2HzPxEj/O2D1/21LOhQIKGCwAPsF5rGMzD1gBqxoE
         zqMJcXP+HI3VEI19NVUH9jwX28UwKsRwc7ljjZgyMYPD+Mv3OAPGzgyuamyfO7S4jZub
         uREg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9YAvM9qlAD3ZdPoH8q3SY/fK56huRhsBXFa14lGIz3U=;
        b=LkNn68QRBiQpRGLiicwnkxvwY2KEhXMf9MeFo5uhmr/gNPOy51CALkbWU2GIMQJcv8
         zj6SPuH0CvJaVWBIZz+3qXjMRmQOmbyJ+t9v7DI/HjsfvSz8334LDuADPvGEff0RJ0xq
         iNo3QykFY/tVA7YwXpvwcf7KsC2beIDiZtFPyC5bu7esduQ+jlaVcY/IiqkCb+h336kd
         jQfxGyLQec6QBlxEAVrt7jef1Uq4Va3WCsESQwj9+KoCfPnKducGbGPj9HnKsVJ+Qiec
         KZBwoUKwrL5igGwx0dxwDlE8KTDNhuBlsqv2o6cKcIhPAaM8sVZhsxZNkVRtT0lntKcy
         gkVw==
X-Gm-Message-State: AOAM531rRRrza9k1oXxuims5rbmf/ZcWiACVWJKOABTdXiL/8j2v0IjY
        EIQlyolv0dpGZvYX/9f6fP3x5EvG+rA=
X-Google-Smtp-Source: ABdhPJy7JkufKIEApSob4m+VtHuMseg6627lmA5NpTetZnRiceTJHjIpCUt+GAyxhxORMwV7kLgi/Q==
X-Received: by 2002:adf:ee51:: with SMTP id w17mr1615882wro.97.1609887226072;
        Tue, 05 Jan 2021 14:53:46 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id s3sm640991wmc.44.2021.01.05.14.53.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 14:53:45 -0800 (PST)
Subject: Re: [PATCH v2] circleq.3, list.3, slist.3, stailq.3, tailq.3: Improve
 readability, especially in SYNOPSIS
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <21860ed2-c519-aff1-5d1d-ee2e76ead61a@gmail.com>
 <20210105223955.63678-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4ec7cc66-fe37-30d7-cc03-a93438fad0cd@gmail.com>
Date:   Tue, 5 Jan 2021 23:53:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210105223955.63678-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


A minor correction below:

On 1/5/21 11:39 PM, Alejandro Colomar wrote:
> - Group macros by kinds.
> - Align so that it's easiest to distinguish differences
>   between related macros.
>   (Align all continuations for consistency on PDF.)
> - Fix minor typos.
> - Remove redundant text:
>     'The macro xxx() ...':
>         The first paragraph already says that these are macros.
>     'circular|tail|... queue':
>         Don't need to repeat every time.
>         Generic text makes it easier to spot the differences.
> - Fit lines into 78 columns.
> - Reorder descriptions to match SYNOPSIS,
>   and add subsections to DESCRIPTION.
> - srcfix: fix a few smantic newlines.
> 
> I noticed a bug which should be fixed next:
> CIRCLEQ_LOOP_*() return a 'struct TYPE *'.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/circleq.3 | 199 ++++++++++++++++++----------------------
>  man3/list.3    | 159 +++++++++++++++-----------------
>  man3/slist.3   | 159 +++++++++++++++-----------------
>  man3/stailq.3  | 184 +++++++++++++++++--------------------
>  man3/tailq.3   | 241 +++++++++++++++++++++++--------------------------
>  5 files changed, 433 insertions(+), 509 deletions(-)
> 

[...]
> diff --git a/man3/slist.3 b/man3/slist.3
> index 6868a63c2..1b041773e 100644
> --- a/man3/slist.3
> +++ b/man3/slist.3
[...]
> @@ -200,30 +218,21 @@ turn to
[...]
> -.PP
> -The macro
> -.BR SLIST_NEXT ()
> -returns the next element in the list.
> +from the head of the list.
> +For optimum efficiency,
> +elements being removed from the head of the list
> +should explicitly use this macro instead of the generic
> +.IR SLIST_REMOVE ().

s/.IR/.BR/

[...]

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
