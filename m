Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFDC825D28F
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 09:42:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726089AbgIDHmV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 03:42:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726127AbgIDHmR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 03:42:17 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA9B8C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 00:42:15 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x14so5665113wrl.12
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 00:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZElUprQ2OyT8sgsN+kBKLFe1kt8IjdrqtLJ9XHshjoI=;
        b=BEUICnjZik4iHzd9pKuWP2SwkDyzx+gbWObl1KgzyD1D81kqpl6Au88OIj7iGqSVfd
         DiLMDpfLWtHwQ5Bo7Dk8/0/Sya4CkVb6guPn+7Xevw3PsH26qfpr44aKW3c2x5T/o2Bo
         oE8CjxYPMJnr6bSRcVPFkVThVNiqOWhm/+23CK9NRFJ/wvrZM4N0usyLWhM0GwUjnOsu
         YkBq8CLFfhUnXMVBBoHPzt28KBEf9BwyTnjzG+38ZC80WzOa+Y2bpKGf7kl9JPJQ6ut3
         UgOAkzlUxi+Rllv43V0nF+szvVazqMS429hwhEuYYUzgqaTOxKFVHiMdV4cXURq87cdb
         32Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZElUprQ2OyT8sgsN+kBKLFe1kt8IjdrqtLJ9XHshjoI=;
        b=Bosxpb2gqIdgnFqJiP/Q5q8NYwpuMng0a++a8Q3wISW+dw7y/jcqI/CCoIrijX6QFZ
         oNxdOdCY/Kff2RFuWPedSFxlPHnLjh8aLE/+OFfmFEufmeZs9TRKUiIdZWO1I4KaZqtN
         d54rs/l64XLhH4CmgJm0iN3xBkrWutyCUqkGCHbzl2r44EQBxG40xLlNF4g6nU88eI1D
         KcjaYQPtHcnDtwS8Ll7kHLHasDbr3OciMRBikQEWL09id2b+mczRmPDlKwMsjVn5pxYG
         /6cvn8091FtNKq+h40ucc8KDDMiDWyGNvurqw+uRD5d1F3eKI5hkI8cYCOxqHwtgxJNf
         PsPQ==
X-Gm-Message-State: AOAM5307Xh94Z4QMISiprCge+pXH2LoZHkMY2J9hfx0G0JY5wL8HK/sh
        Rg5Oamj+NI0/jNPWN361Rq3JZX6yME4=
X-Google-Smtp-Source: ABdhPJy5ejqNO8mrZgT5uI+acvHnyrj0yRKnw/H0ww+K6Qj6IkSlwgDFtwlftRGUTRHWlz4s4KYqQg==
X-Received: by 2002:adf:df0f:: with SMTP id y15mr6205889wrl.127.1599205334402;
        Fri, 04 Sep 2020 00:42:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id q15sm10006731wrr.8.2020.09.04.00.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:42:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Changes.old: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200828155537.1917-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <74e06f81-c6c6-ecec-52e3-958c9c99179b@gmail.com>
Date:   Fri, 4 Sep 2020 09:42:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200828155537.1917-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/28/20 5:55 PM, Jakub Wilk wrote:
> Remove duplicated words.


Thanks, Jakub. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  Changes.old | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Changes.old b/Changes.old
> index fd66a5152..23df1cd06 100644
> --- a/Changes.old
> +++ b/Changes.old
> @@ -51924,11 +51924,11 @@ Newly documented interfaces in existing pages
>  prctl.2
>      Dave Martin
>          Add SVE prctls (arm64)
> -            Add documentation for the the PR_SVE_SET_VL and PR_SVE_GET_VL
> +            Add documentation for the PR_SVE_SET_VL and PR_SVE_GET_VL
>              prctls added in Linux 4.15 for arm64.
>      Dave Martin  [Catalin Marinas]
>          Add tagged address ABI control prctls (arm64)
> -            Add documentation for the the PR_SET_TAGGED_ADDR_CTRL and
> +            Add documentation for the PR_SET_TAGGED_ADDR_CTRL and
>              PR_GET_TAGGED_ADDR_CTRL prctls added in Linux 5.4 for arm64.
>  
>  setns.2
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
