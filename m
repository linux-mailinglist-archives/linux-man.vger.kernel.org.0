Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C38C2DF5B5
	for <lists+linux-man@lfdr.de>; Sun, 20 Dec 2020 15:45:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727474AbgLTOpE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Dec 2020 09:45:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727396AbgLTOpE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Dec 2020 09:45:04 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83D40C0617B0
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 06:44:22 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id y23so8174082wmi.1
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 06:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=a+/dWoWvztOfoDcgttpdJbuVg3HWjaFnBnVLTRp1myU=;
        b=bqHI21840Zv1DCyqAF9zajQ9GfYbXLkRkzQ/VBSF3uisF6KqzvLDEqCb6WeGeK4itB
         cYg0S6Il/vkg83RmkbWXb08e/9DrTLnBKDTci/X1NXKbAa6spht0ptm1KtpU1+s+O046
         Lt1Q62pOFJAPpDHjguoMNht4SiHjYegEpO0IzRQQrdlqHmPMKBFmM7WUDX2ecGx+n7pG
         xCMStavEdDqplF6xxR5h6JO9QO8cV7jEG5rUa+Xt21RwE5i3c6Kj06YP1Acg2vhPYYmn
         NtSVBY4NgYm+R7SLtVQzuWip3OqQh4+/tGWfy9WMzOC+vv+9nxlh7ESYPd2iecPp5U+z
         MQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=a+/dWoWvztOfoDcgttpdJbuVg3HWjaFnBnVLTRp1myU=;
        b=OPO3KFbq8WsYHmgmWcR+7qUAf+R96M8jmeRT2gJI8GL868HBt6QoS6fPJiyhuYXNJE
         DmCa1QJ9gXw4wlbLtVbDhAMevJfb7Ua/edH5SSlvaQORmLZaD3WkcCJe217fO15wC40c
         nLwzbQN9Ev7+ggGmi2CcD/mx18bIM1BnZ1uYmecNJwUcBByUlqII+YRNYtdeM0R3CPRz
         g1EMI07YjENVgH/nj4paRfyXDU4ewMfrkMxBQ+86u3LIRNKXTse1N1EtL6lEDNzxz+dA
         oyAi7LN2VlgWD4m7lWTOuD5DU7pRWiWv6OaJg7Li7slxa8A3nlo+kJ/UJk+oCXkBHCrv
         vhcA==
X-Gm-Message-State: AOAM530nMCi9EbxJ3wlUFGGULhZhnU58WPCsVg84kqyQ4FR2unTiDk1C
        hwdEesqNc+8oS7pjft5UkIk6ZhToUxGE5A==
X-Google-Smtp-Source: ABdhPJwTVnEo5pDs/mM90sIo0m08EtnBVxcsAcLqFB9intobUiCEmuBzR/biZlTMiOU8TZoRKih9Pg==
X-Received: by 2002:a1c:2e88:: with SMTP id u130mr11069622wmu.83.1608475461046;
        Sun, 20 Dec 2020 06:44:21 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id f9sm25082077wrw.81.2020.12.20.06.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Dec 2020 06:44:20 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Ahelenia_Ziemia=c5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Hemminger <stephen@networkplumber.org>,
        "David S . Miller" <davem@davemloft.net>
Subject: Re: [PATCH 2/3] filesystems.5: note ncpfs removal from kernel
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201218153036.25244-1-alx.manpages@gmail.com>
 <20201218153036.25244-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cbdf13ba-8ea2-0654-9275-e3bf0b9a3c70@gmail.com>
Date:   Sun, 20 Dec 2020 15:44:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201218153036.25244-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/18/20 4:30 PM, Alejandro Colomar wrote:
> From: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> 
> Relevant Linux commits:
>  * moved to staging in 1bb8155080c652c4853e6228f8f0d262b3049699
>    (describe: v4.15-rc1-129-g1bb8155080c6) in Nov 2017,
>    described as "broken" and "obsolete"
>  * purged in bd32895c750bcd2b511bf93917bf7ae723e3d0b6
>    (describe: v4.17-rc3-1010-gbd32895c750b) in Jun 2018,
>    "since no one has complained or even noticed it was gone"
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man5/filesystems.5 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 6ec2de9f0..71be05230 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -152,8 +152,9 @@ filenames can be no longer than 8 characters, followed by an
>  optional period and 3 character extension.
>  .TP
>  .B ncpfs
> -is a network filesystem that supports the NCP protocol, used by
> -Novell NetWare.
> +is a network filesystem that supports the NCP protocol,
> +used by Novell NetWare.
> +It was was removed from the kernel in 4.17.
>  .IP
>  To use
>  .BR ncpfs ,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
