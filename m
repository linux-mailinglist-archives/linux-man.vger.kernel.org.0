Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F016298192
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 13:08:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1415615AbgJYMI0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 08:08:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1415611AbgJYMIQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 08:08:16 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB84AC0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 05:08:15 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id g12so9365011wrp.10
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 05:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mYzksf1O5P4B2FlwMB13FVO9/sGSyNLCtEx0Jb8ZMQo=;
        b=mwPkBlP3IjVYyXmqFPUbW/vmdNjbAndl2SVUxOVFYzUO/wHKCffrvYcg6jU4QmcUG2
         BoT01dxE2BjTXKHBFVDzJTv1fZjUL8+HbMfCb2yF6GkbODqN2qoucJGxMHqB9eFkcHVw
         5ClyTGGW74gwpHcZDaYjl14fSIlarGZDUPNHFySptTMtM0QX+bfBe0YF7QaVF8SJccFH
         wlbZj4sFH5HyQsXRsAFiAYDsSqpgvPjkkqux7dPI2pqOdj8gijyBrngEzk83V+T/AW53
         +ApWswgF9AfSKm0ZvXCWxpqbWZLqs1cT/Pdv7zkeYiOkI/m2hKkZ00f7f4bCji4oISyJ
         EWRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mYzksf1O5P4B2FlwMB13FVO9/sGSyNLCtEx0Jb8ZMQo=;
        b=mQ7lkXkJj+O21a7t1CHBGMMgXMrJ2ENegtQ4/mqqml29C0gHvma0E7ISJNIoKeY3N+
         zsa/9QHM1A9rfL518dYcSYb3gEM/hiCx4HgSButTxHscl1lOPuNlcJwOOi2FeCCfVMUG
         u8N9ot7GcYhioJquUcrjW7LAW89S0uPyFchWzyEzMzQxxDQm+wnbcbju/wq0MkZ5Duzs
         cdiB5wxxh6nFiUwIv2FDWihCwcFG2J5yyNpGprsGjXrmr00TsUMBWMqJ5YVo/m3z6Xye
         2cTjstjKmqzKq+zSEoFVZRtK5+K3xwFW/Mw9BlNExqFlKSY0YAJHWwlKoqU79jkyjaYy
         9Mjg==
X-Gm-Message-State: AOAM531UT+eRYFs9B4PMqXYahZtVVT7NhlTWv4PU383K6g7GxOs8sM9b
        dFC7azGlqI4tlbLiob3LPVRKy6DAFNA=
X-Google-Smtp-Source: ABdhPJy+hBlB2s0E9sweSvK3N/CmTtZf4T0rL0IIvUYeWj1Xb1VQpHtIL6TVusWxDnsI8qGHTn8sog==
X-Received: by 2002:adf:8b1a:: with SMTP id n26mr9878984wra.407.1603627694363;
        Sun, 25 Oct 2020 05:08:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id a3sm17737625wrh.94.2020.10.25.05.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 05:08:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] tailq.3: tfix
To:     "Dmitry V. Levin" <ldv@altlinux.org>
References: <20201025120331.GA9442@altlinux.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4572de1c-13ad-2e6d-7f3f-ddf51705e8f7@gmail.com>
Date:   Sun, 25 Oct 2020 13:08:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201025120331.GA9442@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/25/20 1:03 PM, Dmitry V. Levin wrote:
> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>

Thanks, Dmitry! Patch applied.

Cheers,

Michael

> ---
>  man3/tailq.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/tailq.3 b/man3/tailq.3
> index 73e28e7fc..a782a51e2 100644
> --- a/man3/tailq.3
> +++ b/man3/tailq.3
> @@ -58,7 +58,7 @@ TAILQ_REMOVE
>  \- implementation of a doubly linked tail queue
>  .SH SYNOPSIS
>  .nf
> -.B #include sys/queue.h
> +.B #include <sys/queue.h>
>  .PP
>  .BI "void TAILQ_CONCAT(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ","
>  .BI "                TAILQ_ENTRY " NAME ");"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
