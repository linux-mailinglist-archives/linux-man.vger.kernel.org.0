Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E30CB225B9C
	for <lists+linux-man@lfdr.de>; Mon, 20 Jul 2020 11:27:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727809AbgGTJ1H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jul 2020 05:27:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727769AbgGTJ1G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jul 2020 05:27:06 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7505FC061794
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 02:27:06 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id s10so17039386wrw.12
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 02:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9X2/3kpLJb4RzUdoklGDqZWBtL31CUFWbmLoCQsnaPM=;
        b=ZWU8HN7E24mCiSUMKh9cwEnt8hzOyPC6k8/eOWrB0ur/WN4zBgizhGiQPTsozoRV/Q
         Opc0FTqPA291A6e4yHVnJ9Byu/wWsQXdwdIz5QO9ISEyqyhvSsp813zh5n5fiHQYDTEY
         vSFxFee5TBRZsgOwdIpSsk1cvUTuM4C5r+zi5MZNg4wcC4k5jZ/aLjy2VrQJFjje7Eo+
         mA5HB1PAppXRKsRGbxsxFuCVcEw9s/a4OZ+QZoBPKHZxiThp35AYWZBAP5GI7sHUkkdv
         CjgBz93HpSjQdgBNFd2YEpsSQhwqHwR+nqycXBQ1vA5aEmMX+aT6UvGCa3np4kMH7xzx
         oziA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9X2/3kpLJb4RzUdoklGDqZWBtL31CUFWbmLoCQsnaPM=;
        b=gq2aT8yabCaMF0nWdzxCVInvYtt/1qA6rNUPcs7Y68lrd0/XMYErOL4ZQ6GnoO+SGC
         XX/VGZVZZWuFFqz+IyboD90VeumefQH5P0bdnOghF7rdKF298+AbzaMVyj3+axivnY/S
         ObNP/5OnImfDZVg+YFGOAIVJitpiadKLesBrfpfkEC+0ELij2lhhPFEQLihC2yJ4Ie78
         gOV+u/VSDV9akyzNpybyL7rlh9eRihJFQE4bIRnzbNsDrOsLGJDXm6nGEuo8GPKKFd0C
         1N4IhDn8Mk8tDkj+6GWoDN3dhJ3qr+tCCv8wyJgQlJjhI8pMjyGMbqWezgxPRXAIbdgA
         fVMg==
X-Gm-Message-State: AOAM530l+FUe133za5cq3vY6/kQoBcR8+bhIHtltzMK2qxnovwuDGmh/
        vbTNh+4zIllDNglnzvytrm1qRWiJ
X-Google-Smtp-Source: ABdhPJyn0gcY4Gq4ai3C11Roqg7LdmB4KrtSPQHpSbijYbHxpVGxW3H1mw/sse17hyuLQJRUokedbQ==
X-Received: by 2002:a5d:6692:: with SMTP id l18mr1591528wru.211.1595237225024;
        Mon, 20 Jul 2020 02:27:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id j75sm34802432wrj.22.2020.07.20.02.27.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 02:27:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200720054938.4312-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <52be2b74-db63-d9a6-0c69-1f972cd0f3a9@gmail.com>
Date:   Mon, 20 Jul 2020 11:27:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200720054938.4312-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/20/20 7:49 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael


> ---
>  man2/prctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index d2a52d34c..7658b32ce 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1082,7 +1082,7 @@ otherwise, this value is preserved across
>  The parent-death signal setting is also cleared upon changes to
>  any of the following thread credentials:
>  .\" FIXME capability changes can also trigger this; see
> -.\" kernel/cred.c::commit_creds inthe Linux 5.6 source.
> +.\" kernel/cred.c::commit_creds in the Linux 5.6 source.
>  effective user ID, effective group ID, filesystem user ID,
>  or filesystem group ID.
>  .\" prctl PR_GET_PDEATHSIG
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
