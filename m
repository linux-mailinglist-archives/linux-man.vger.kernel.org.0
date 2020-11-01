Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE5FF2A204E
	for <lists+linux-man@lfdr.de>; Sun,  1 Nov 2020 18:24:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727120AbgKARY1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Nov 2020 12:24:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727119AbgKARY1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Nov 2020 12:24:27 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B27F2C0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 09:24:26 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id s9so11899195wro.8
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 09:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Liu7HBDJBmhuQXO0xfb2Gxw6mah4L0uhG2c8CI74ywI=;
        b=PSK+gm2sjbK9q/bqzprDZBlCF60v1sRhBW86r1vBso4DKKcvN6I72lOHPfNKPNqQQe
         UvcdLmRpyf+ze9J32qDYZc8iZZbEqb5iYf+pbOk0yCmZIit7JDrKp7fvc+bPbEc68Jee
         4nm89uA+y3FHX1rHcAKifCTmzmSOgUCwfBcPU8IEJdVSYXwvP0XUSb0zl64kfmsp8vmR
         8AYoa4nwQrkVK3YLa5QNwSoX81Mr8ya+VX+UYTKfnWdeN6ebRLRIQ6SnfNr4KrPUWGhx
         lfISdOi4C3Jbq4Pk4mti6FEDwgBJItLvbAdMw8amYpHRnQ+e7AEhxx+6rIp9IH15M4d5
         aJDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Liu7HBDJBmhuQXO0xfb2Gxw6mah4L0uhG2c8CI74ywI=;
        b=FBigAHBtgIuZLwlIo6OjxfhAXaNRZZcQoGigdTbB6hAK+GLeitPwn4AxMQR3WHaA8Y
         8zi7cIjcrO/SD6Wcjt8i71cDcHF8EAldNowMDSO4l+XiRwSA1IFmUJ1Hjyv+TTwc2nAi
         A1vo2uNfycRrg+SBrl+av3hcYuMjRfCxJlQXHVho+TI5I+nk27hPo9qEJ+KD7F6YGeyI
         rLykLboUv2N+BbFGWnRhOXYGSGu037alh5gKRtqd0eyrylP/csSlDgl5qVvRYObBDEaV
         eLVqG1B0/rWYbiTlxSf2kilblWRR/t+4T+6pUd38dqUQyd2dJ6vllzBCsBn9Haat+Zjh
         Ylew==
X-Gm-Message-State: AOAM532y+EC8PY87Ij9Z2rqh8lx9UHXVuMv/E8hObs/u5pmKviv8wDss
        rFw6IswLAEEC06RXr7tPcTpLhxGJRmM=
X-Google-Smtp-Source: ABdhPJznogPR0h2wazhLb5fXuaaD04r251klqNYnT5KRGV5xdP0proJw2qDoEhNztBdQOvmaptcglA==
X-Received: by 2002:adf:e64e:: with SMTP id b14mr15473958wrn.68.1604251465248;
        Sun, 01 Nov 2020 09:24:25 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id e7sm18920431wrm.6.2020.11.01.09.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 09:24:24 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] mq_getsetattr.2: Use 'const' when appropriate
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201101150830.184973-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <95bb85b6-4a80-4457-0403-09110ca20425@gmail.com>
Date:   Sun, 1 Nov 2020 18:24:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201101150830.184973-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/1/20 4:08 PM, Alejandro Colomar wrote:
> The Linux kernel uses the following:
> 
> ipc/mqueue.c:1480:
> SYSCALL_DEFINE3(mq_getsetattr, mqd_t, mqdes,
> 		const struct mq_attr __user *, u_mqstat,
> 		struct mq_attr __user *, u_omqstat)
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man2/mq_getsetattr.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/mq_getsetattr.2 b/man2/mq_getsetattr.2
> index 3878789cf..80db11b7e 100644
> --- a/man2/mq_getsetattr.2
> +++ b/man2/mq_getsetattr.2
> @@ -30,7 +30,7 @@ mq_getsetattr \- get/set message queue attributes
>  .B #include <sys/types.h>
>  .B #include <mqueue.h>
>  .PP
> -.BI "int mq_getsetattr(mqd_t " mqdes ", struct mq_attr *" newattr ","
> +.BI "int mq_getsetattr(mqd_t " mqdes ", const struct mq_attr *" newattr ,
>  .BI "                 struct mq_attr *" oldattr );
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
