Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 691512F9535
	for <lists+linux-man@lfdr.de>; Sun, 17 Jan 2021 21:44:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730291AbhAQUnr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Jan 2021 15:43:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730288AbhAQUno (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Jan 2021 15:43:44 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 369DDC061575
        for <linux-man@vger.kernel.org>; Sun, 17 Jan 2021 12:43:04 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id u19so15364795edx.2
        for <linux-man@vger.kernel.org>; Sun, 17 Jan 2021 12:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MhKmeLXTVrwdAHEtGWK8CyjAD+nqojOYs+1n/WXqnfQ=;
        b=V9VUedOfqnXAltEo4u1uaoaVOkqiuQcrBlBZYhoox7zTidisWAXbyjhPGL96rGupSW
         Fm3sGjEpwexj/X1+LFmHIsZPDDPh92xZ3ocbNpPv7LalhTwQ4uHjvn7SKa6DgZVV3J6V
         cNZZtfDf6pGnm3Uh2eDjS2GLd5uaMrkfpJu0zbJvB9A1kxOmjcb5f2IwBXsdOfSg3Qgp
         oLgEaiMhBlCZCKSizF9xxRcr8a50ZYgJmEft0d15pu/54yi4GX5YNSfRYzWJQ7xYo+xT
         vPGjJGU6yEbqE692Rm/uZMxiIzACa2S4nfbmKjjWXog35lOGGkYwA2vMRpv+m6Xfzahz
         vj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MhKmeLXTVrwdAHEtGWK8CyjAD+nqojOYs+1n/WXqnfQ=;
        b=fKcDnAkEDmtIku0VohdPkLUFK8ocREpWtSVxvvL3oh59KhJ8fXhvfW11unmqnKlh0C
         rPpxMoczg8C1AZwowiVyiguKjbHNNzKVXb3DwMmuRr180yOUG3VYEGmvCXZVHy9MqK7O
         xgjVgnYFAwBBTyuPKOlaG8FtENqYaOyJxMlnCkqbWe2tv1AqTPGg9O4M/athBXBbk6nX
         ZF8CHF4k32gIeptJPmhLGgOW3KaWieiSLT8T037nouvjLTFuD3AAAEFHgLpx5c6PBkG/
         C+Rhxh9PJv0FXDVtnrl9cdhmpZnNarHh0xe1FQ7IPOcTF7Lk14BzE7fo676f4Qt3sGhl
         TkXA==
X-Gm-Message-State: AOAM533HdEDKfxQY/0aQv32hpAdtNsrR4Awmazxk3Ir8d/t8jiopzMjK
        Te9s9Q43ckM1OvQ3ggFnhaDokIeKFrM=
X-Google-Smtp-Source: ABdhPJyWjvsL0iRamTxhrqMJbxFEBQjcrb6Sjsc6WgNQI0Al0KyBVzu8tys9L3PAnF8qMf7wROSlgw==
X-Received: by 2002:a05:6402:1b11:: with SMTP id by17mr4333885edb.373.1610916182729;
        Sun, 17 Jan 2021 12:43:02 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id m5sm8481956eja.11.2021.01.17.12.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 12:43:02 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] netlink.7: Fix minimal Linux version for NETLINK_CAP_ACK
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210116150600.8001-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <32c35a0b-b3de-db4b-d665-d99a5998cee9@gmail.com>
Date:   Sun, 17 Jan 2021 21:43:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210116150600.8001-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex and Pali,

On 1/16/21 4:06 PM, Alejandro Colomar wrote:
> From: Pali Rohár <pali@kernel.org>
> 
> NETLINK_CAP_ACK option was introduced in commit 0a6a3a23ea6e which first
> appeared in Linux version 4.3 and not 4.2.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/netlink.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/netlink.7 b/man7/netlink.7
> index b14e981d1..ec5d0e71f 100644
> --- a/man7/netlink.7
> +++ b/man7/netlink.7
> @@ -491,7 +491,7 @@ The
>  .I nsid
>  is sent to user space via an ancillary data.
>  .TP
> -.BR NETLINK_CAP_ACK " (since Linux 4.2)"
> +.BR NETLINK_CAP_ACK " (since Linux 4.3)"
>  .\"	commit 0a6a3a23ea6efde079a5b77688541a98bf202721
>  .\"	Author: Christophe Ricard <christophe.ricard@gmail.com>
>  The kernel may fail to allocate the necessary room for the acknowledgment
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
