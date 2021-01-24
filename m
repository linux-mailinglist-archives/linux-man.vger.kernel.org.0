Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E6F7301F44
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 23:34:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726630AbhAXWe3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 17:34:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726164AbhAXWe2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 17:34:28 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A753DC061574
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 14:33:47 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id m187so8972785wme.2
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 14:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6V0YVi8pyet+Vqrpu4pavZ6ijja8qJOIEEh0f+lIh9c=;
        b=jjvhUiXXRqi/srCufjFrw12aD8NbcnOjfCQ7YXB7Ts8tk0gkB+34hGCfWfYWABNSHq
         4yr5Jq2RBlkZSeizG9KaNX2yJoLl3t75VkSRAv62sYk+PU29t2M/kjxrD9gDSH4heepv
         74NjeDeNDhYWA81l3i2ns8wjo3mf81Bl49X0gHR5x5LBZtBnGYfU/sK/2lBSisCKuw5Z
         hvq/Q7WuEMQtYcJEiRkcL0ZJFJg59M22KyFVsAVTB9z2oeZJV3l0glaR3ynSXu3KyofD
         YfJibYzs+qFTKNe5YDYJJY18aWD+Hm+WKdP4SM0BzkV3Y/cxA+RzZRuT1VNICwQ4Yq0c
         UhRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6V0YVi8pyet+Vqrpu4pavZ6ijja8qJOIEEh0f+lIh9c=;
        b=EJVvvbH+aHlYAh6Mty06wg+f7dr4lOBXRJ2/AqW09K+87npB6CziojHppV1ZcydeFq
         QL47VqQLqTZZiY3MExvreMpMTXZEIFZfus/TG2/37JCRuwiR31TUpbJrNMaacH6WVYw5
         r/qCxWc1X2puca5YgZg7xMht1TKKuuah/ZwHvzN9a5i0G7z7YZhdARKFdmbbiftCHCJU
         CLRK7Gh/mvaFfgYrV2vIf7iE5AGs+Rnys21oPqCZN/jxZavqfWe5PUDlGAEj9cssAiEs
         zfJomI7y7nuT3UtxMs916BMhqJRUILgurBSJ9+6Xhn6gRVFf9SUMTrM3Ny1/qtYokY48
         GleA==
X-Gm-Message-State: AOAM531FMjP7KSTImLCK7hdV8YcHWSbEqy7hHWKixoe9eFCbUWkpryar
        Uz3APM6I0X1AWZDiDKX64LA=
X-Google-Smtp-Source: ABdhPJxsW7PhhTIJhSuBoj+e0hIBjyyg2fTaNgDskvGPEmW9BBNy4sjRpsMum0ltV5e0cfzrNpCxQw==
X-Received: by 2002:a1c:4984:: with SMTP id w126mr1314671wma.139.1611527626262;
        Sun, 24 Jan 2021 14:33:46 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id a130sm18690059wmf.4.2021.01.24.14.33.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jan 2021 14:33:45 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH] semget.2, shm_open.3: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210124151035.70536-8-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9186ecdc-46a2-c6b4-36b0-a64c9983a8c1@gmail.com>
Date:   Sun, 24 Jan 2021 23:33:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210124151035.70536-8-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/24/21 4:10 PM, Alejandro Colomar wrote:
> From: Jakub Wilk <jwilk@jwilk.net>
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man2/semget.2   | 2 +-
>  man3/shm_open.3 | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/semget.2 b/man2/semget.2
> index 9276a1820..17bad6ca9 100644
> --- a/man2/semget.2
> +++ b/man2/semget.2
> @@ -155,7 +155,7 @@ If the semaphore set already exists, the permissions are
>  verified.
>  .\" and a check is made to see if it is marked for destruction.
>  .SH RETURN VALUE
> -On sucess,
> +On success,
>  .BR semget ()
>  returns the semaphore set identifier (a nonnegative integer).
>  On failure, \-1 is returned, and
> diff --git a/man3/shm_open.3 b/man3/shm_open.3
> index c7d051067..6bc8078f0 100644
> --- a/man3/shm_open.3
> +++ b/man3/shm_open.3
> @@ -170,7 +170,7 @@ was specified, in which case a new, distinct object is created).
>  On success,
>  .BR shm_open ()
>  returns a file descriptor (a nonnegative integer).
> -On sucess,
> +On success,
>  .BR shm_unlink ()
>  returns 0.
>  On failure, both functions return \-1 and set
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
