Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79F3129DB0E
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 00:43:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731325AbgJ1XnG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 19:43:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390464AbgJ1Xdh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 19:33:37 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BFBDC0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 16:33:37 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id v5so829024wmh.1
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 16:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4GUhV67b3Yr8fHVPswi7ZePcc4/VD7XMYf2aF2/3vZQ=;
        b=g2qGV66LVYJ7OvbhWbrAI7oH/c89xPiUS7BL4c7PYdNGrtlxMajxzae23b+zSGVMD4
         B8vk5lteUGFJRWhDUO24hq2eTifY/rYkPqusRkBIHIy3HePaRPok9JSF+VXJL+M5mmVQ
         kmLIBf8zFCRdjY8I/8FPXfOI2JMtqsWNK9cjEfJZ2TDlPd6s6t4Q/mq9QUF+8xOrPQhB
         nC6Sqnk2QVuJOGNTyPiIJraf+JQiYfMHFVJofZe8xN9bdeqvR0XKMSMqUlT6QBxCtuVP
         xNqybTwIduC0o92NpLUqFbk0va/le2Lmw9427E07YFmy6iEGkIRFDEjMSgOBsVAXQb7y
         Nrlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4GUhV67b3Yr8fHVPswi7ZePcc4/VD7XMYf2aF2/3vZQ=;
        b=IPzvLZL1UL1h9hiR5fCa/7wOs62LK0svqUfsKJsgZvNisIhNconnZNXiwZmrC3+0Rj
         sEeOMHhfyArK2IiRJ3mBjy2Cy2oX2mgpuFnpqXhm7VaAkes7ib22AUvgoT5x4FCsGAvB
         udodWIMQfl0koIL5NZ17AeMZlg0lROUMRWmgPvigFZv9ZYO74dDvCl8PNad7dqxou7Rr
         6i2a7+sNWlXQpaVtbA6dkIH0kKhn07ohUFIYRHUABppWvuDXj2B7udDo7BlhJqrkUe3T
         eHiKgfG7bGvo3Qnm+0shVwrhHSFnQqHI7xrpNRnQMUPwjY2ftR1fBI7JeEVnFr+LYyUn
         bMfw==
X-Gm-Message-State: AOAM532xYhlS+hlKm8tRyORl4hUqna6eC90W88puU95R8DhkHzTPm+Vo
        E8TmRHoQR8IU+nuaUYD9K9C3b1+PqmE=
X-Google-Smtp-Source: ABdhPJzs1S/BMpGFmKn6SAiwKkqKMqDSNUluUQLbhCgeJyPHVYrgJn5c4+a2v4NNcYrOnlwv+zr8UA==
X-Received: by 2002:a1c:9d08:: with SMTP id g8mr2140277wme.171.1603880017139;
        Wed, 28 Oct 2020 03:13:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id o4sm6172602wrv.8.2020.10.28.03.13.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 03:13:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] Improve strtol(3) example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <781c3f01-2a9d-34c8-f543-45cb772f2282@gmail.com>
Date:   Wed, 28 Oct 2020 11:13:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/28/20 10:33 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Here are a few improvements for the strtol(3) example.

Thanks, Alex. I've applied all of these.

Cheers,

Michael

> Cheers,
> 
> Alex
> 
> Alejandro Colomar (3):
>   strtol.3: EXAMPLES: Delimit output string using ""
>   strtol.3: EXAMPLES: As the default base, use special value 0
>   strtol.3: EXAMPLES: Simplify errno checking (no expected change in
>     behavior)
> 
>  man3/strtol.3 | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
