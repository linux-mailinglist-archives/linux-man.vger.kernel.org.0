Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24F933E39C1
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 11:09:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230442AbhHHJJb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 05:09:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230309AbhHHJJb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 05:09:31 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98460C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 02:09:12 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id u5-20020a17090ae005b029017842fe8f82so15702263pjy.0
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 02:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JOtAF8soiLKLh1PZXSYcE8sMeib88GELj/sS2uB0vtE=;
        b=h7qPKHyV5QsKpGTOFXKO4rMtfmajnp0nZuQqk3gAXW0dvCDu2ecCDGCvExhwOGgZfx
         BwL1/Bn4zpwkHOE1Rt4r/PMNR0QK8meJFENtkzmH0dBpaxBKkJS6ty9f9JilReqh3GUG
         aOIH/yHhr6QK75JL2UIgbybTsst+EPizH0U0uv2Vtmxyvlz2bknrpgSaQpbfqk50VXwY
         LGIz2Ie/++aiPniNvQ3OYc5TzFVc0MxYUUvjyZ9faIG3T0Oi1acwAFFP0fkpuduu5scR
         NIMalRcYt0d6DD/KgUsZXhaygZX4uNfKjuXLYjix1aHZLTqLAErMhv2vzxnpoQv8yJb9
         MLwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JOtAF8soiLKLh1PZXSYcE8sMeib88GELj/sS2uB0vtE=;
        b=soMlHuPqaPbWOLvOT5I8mxdGnCOMWKXLnHOgJY2LNnCInkoBMSUTcvh6+J+M7d1T62
         lMATvXZu4PVgU/FSuM3dD7NgVeAJteyxbspkhvsXw8gwTpuEKNT+sPrNzDWrZikNAXZs
         LUu+h78KAJ+3vf6y/Z7RRD+2HGtMhkWFG5cUu3tgY2rhtS5n4U8xv/ao4ou8vGLxUi0e
         e/W2NxBLztI8iYOogsBMcM0h+kNEI5pNydpEZgDgIMaC9NIHkxcGKrsA38aXOXAEgPXg
         ssvImM6PUY4ylc2HYSz88bh10W8oFTbfEyF768ertkp8ivwHFAN0ACXAuENWa+qtAY6a
         I11A==
X-Gm-Message-State: AOAM530zwGtfSBdvNb24n+WOS2y3Bx/zSbYvzFhX7H7nw5jT66JEVo8k
        G3uKJuKCD1er5EHhfi5r5ErqMEStY1Y=
X-Google-Smtp-Source: ABdhPJxSlMeln91HRV3Vrb3LPr1RI8XlGeWXtHFzaHPNBA3g50FocduJ64gY9ktPvazZb9n6N9iMbA==
X-Received: by 2002:a17:90b:1d88:: with SMTP id pf8mr247101pjb.152.1628413751793;
        Sun, 08 Aug 2021 02:09:11 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id 1sm13849535pjk.54.2021.08.08.02.09.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 02:09:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Kir Kolyshkin <kolyshkin@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 14/32] capabilities.7, user_namespaces.7: describe
 CAP_SETFCAP
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-15-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f3481664-8aea-14a2-02b5-cfb85d1456ac@gmail.com>
Date:   Sun, 8 Aug 2021 11:09:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-15-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kir,

> --- a/man7/user_namespaces.7
> +++ b/man7/user_namespaces.7
> @@ -577,6 +577,12 @@ or be in the parent user namespace of the process
>  The mapped user IDs (group IDs) must in turn have a mapping
>  in the parent user namespace.
>  .IP 4.
> +.\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
> +If a writing process is root (i.e. UID 0) trying to map host user ID 0,
> +it must have
> +.B CAP_SETFCAP
> +capability (since Linux 5.12).
> +.IP 5.
>  One of the following two cases applies:
>  .RS
>  .IP * 3

So, reflecting on this, I think much more should be said. See my mail
"Documenting the requirement of CAP_SETFCAP to map UID 0" in a moment.
Perhaps you may also have some review comments there.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
