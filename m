Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58FEA2DD508
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 17:18:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725930AbgLQQSf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 11:18:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728081AbgLQQSe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 11:18:34 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EA07C0617A7
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 08:17:54 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id n16so4263141wmc.0
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 08:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7URiNQpNjLd/s4Ko7fBWyJL3BqNgUKL+Js0IbZaJ3gw=;
        b=kp+GZxPnQNMrq+yp+qlB5cYe7pRsFZKWeLvUEMoPc2TCgjFX9yrcolj5FmyWnvOtx7
         3JwMujVuI2t+eEJA3uc2/O+mEiG/yBvdQkXjpkpdwYPF4f1rn3vRYS0HBkNRuE1YL88M
         NwxBQsS2hm7FlYp/D8OIfnpRsGAC9OUEG7c/O79SXJWECxYfi0YZoK6a25FSKqYQdWyi
         RaW6Fb3zQj1dEdl55o6KfbResPbw/ON8PaZ8MyWVeAEzSN+6QDE8KiNYXplLomtRHB+X
         ivV/cQ7QLZG6D1bQbYtaSh1zhMLNml0JfMTZpE4qWdUmwJ7Z3rbATAa7RrJsnm5ZkaEi
         I64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7URiNQpNjLd/s4Ko7fBWyJL3BqNgUKL+Js0IbZaJ3gw=;
        b=bxEC1T3WhcfdxspMNfhwte78UnlTAufc74hCRN7hPFv7BYiNVUSaBh2zcvBKdLQy6X
         bt3S7LdOQlQGweTswOXIAnKaQJZVZvjbnjPW65cHwtTuhS6HUq2v/LZJ/J+hdAfi4U3d
         d8AK3goGuvn7gzRj11OMXQ8+uEztYjaoxuwvAh1OXqJU8UZa6wlWBMqgubVTwTa4RBWj
         qSJXsb32uPUBCsRIqOuTMFhFsLzUBaj9/wK+ff+ERnHHpyMQ1XQBYB5K/P0SW1rWUoKm
         L10kgSPFslMzHHbQR4eXedEHLOubmOOSd8v0Hb4Skuehc3u2EoTWlgnlhFbOIvMrYZt+
         fk0A==
X-Gm-Message-State: AOAM533vpKlSIO/qh2351WpRaE/KozLm6friQ7ba3r4HUopLNuVXSTW7
        f7DvLZ86N5DTGhyUBsXvup4=
X-Google-Smtp-Source: ABdhPJwl+0H9J6a+qPryJpFMDuZvsMB5aILOwG3qDTKgQyzI3dqR1XnTHi0mEinN0eWbYFvKBoRLMA==
X-Received: by 2002:a1c:9d8b:: with SMTP id g133mr31267wme.189.1608221872975;
        Thu, 17 Dec 2020 08:17:52 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id m4sm8130403wmi.41.2020.12.17.08.17.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 08:17:52 -0800 (PST)
Subject: Re: [PATCH] filesystems.5: rephrase NTFS description to avoid awkward
 (and wrong) possessive of MS Windows
To:     =?UTF-8?Q?Ahelenia_Ziemia=c5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <7b8f5a9ada6202a3f9882e06a0a3ca9c193c9000.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9374ff73-4562-c5c1-29e9-c347730f49a0@gmail.com>
Date:   Thu, 17 Dec 2020 17:17:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <7b8f5a9ada6202a3f9882e06a0a3ca9c193c9000.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Ahelenia,

I don't know much about MS,
but AFAIK, it was MS who designed FAT32.

I'll quote Wikipedia, although it may be incorrect:

[
Microsoft designed a new version of the file system, FAT32
]

[
VFAT (for "Virtual FAT") after the Windows 95 virtual device driver
]

If those two quotes are correct,
I think the current manual page text is also valid.

Thanks,

Alex

On 12/17/20 4:28 PM, Ahelenia Ziemiańska wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>  man5/filesystems.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 1eda05b22..ce8db326c 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -169,7 +169,7 @@ filesystem was removed from the kernel in 4.17-rc4.
>  is the network filesystem used to access disks located on remote computers.
>  .TP
>  .B ntfs
> -replaces Microsoft Window's FAT filesystems (VFAT, FAT32).
> +replaces FAT filesystems (VFAT, FAT32) in Microsoft Windows.
>  It has reliability, performance, and space-utilization enhancements
>  plus features like ACLs, journaling, encryption, and so on.
>  .TP
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
