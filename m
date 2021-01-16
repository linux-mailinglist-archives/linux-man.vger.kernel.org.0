Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5225D2F8DD7
	for <lists+linux-man@lfdr.de>; Sat, 16 Jan 2021 18:12:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728326AbhAPRKd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Jan 2021 12:10:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728252AbhAPRK0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Jan 2021 12:10:26 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0275CC061794
        for <linux-man@vger.kernel.org>; Sat, 16 Jan 2021 05:02:34 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id q18so11967248wrn.1
        for <linux-man@vger.kernel.org>; Sat, 16 Jan 2021 05:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jBu+9TQFN4SgxYB9KDbHMpBMC5PWn5Fx/sZ1Zf/sia0=;
        b=AjbE1l0ZRWgR0aSz2BZi2YpuOIGdngO97QEBZy1MrdiCCnrI1bn72w/w/ZqJCtoXu5
         VwqhinKRe6R/SNML63N8zlskIzUfc9SIuxP2AE3On4yjydCOJI7JHDHRzxOA4UJePNkG
         jvK1H8kiR5y1f2W+XP2NYkWHUYu+pp0PCXRSZnkoq6ps/0IV/D9a8/jP0Qi9p+lE7zxS
         ase7KFQ0DwcGRH3sNFnnGmnlB80ZQ6oNAm1HlIWE03RxB6P8o8FGkvM6xAGWaMEFHWj3
         sDlXD/NJlzHcrkBwKmOfhVpuh/8eotCYjvKTima0JLxC4Na3089hi6AMjKxqjJbCdnmZ
         4HBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jBu+9TQFN4SgxYB9KDbHMpBMC5PWn5Fx/sZ1Zf/sia0=;
        b=bwcUJsB2EUhgmQT6jAD7/RNUquLPXWHyD9s+1MAToWnEfnJBabyUcz8R8Y3Z8YJhJI
         CRCCa6sbhBUEBcieib6CxAICYV36wGq4j6iV7sYbcaYry6tF1M23vpQxZSJlKJG/dRK9
         j4ahb8VE+hdaD22wcCfnqh8ggEMwNJy0/qWqnJNoC3h1KkjRg9uVNA7KLyfa/NbNTqRl
         CHVkS6F5kh0voDUOJBM0OO1oZOcrk3emUo4EhSdA0vOBOr4Cs9HbhaL37D0G7/ovEXxt
         V7pbmQLAaV3SS862in8X/rVbu6tiJCl2RBXNKXWdq/52QbsnFDe9o42O+dJFKI5eJCxV
         4D9Q==
X-Gm-Message-State: AOAM532uOqrY9dSzWnMxEtIeQJzLNYNjusTAzWUz6ItL8LODvbAbrlyo
        iZ3hFq1JL9xkEPPBxOdTwZ3KU0QltPg=
X-Google-Smtp-Source: ABdhPJzqZZgL6kRy+1NuuM1T8bAic8Mff+gtl+tkzi6qDpgOCx8XThWoIDiprWtC5opVfXYOeeI4Nw==
X-Received: by 2002:adf:e552:: with SMTP id z18mr18609027wrm.29.1610802152791;
        Sat, 16 Jan 2021 05:02:32 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id h9sm17326051wre.24.2021.01.16.05.02.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Jan 2021 05:02:32 -0800 (PST)
Subject: Re: [PATCH] ulimit.3: wfix
To:     Alyssa Ross <hi@alyssa.is>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20210116125155.23815-1-hi@alyssa.is>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c633bed9-28d9-1542-195a-9d8b8493ef1a@gmail.com>
Date:   Sat, 16 Jan 2021 14:02:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210116125155.23815-1-hi@alyssa.is>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/16/21 1:51 PM, Alyssa Ross wrote:
> The parentheses here make it look like a function rather than a
> command.
> 
> Signed-off-by: Alyssa Ross <hi@alyssa.is>

Hi Alyssa,

Thanks for the patch! Applied.

I fixed a minor formatting issue (see below),
and changed the message to be tfix instead of wfix.

Regards,

Alex

> ---
>  man3/ulimit.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/ulimit.3 b/man3/ulimit.3
> index b6d0b3250..eb028f97c 100644
> --- a/man3/ulimit.3
> +++ b/man3/ulimit.3
> @@ -42,7 +42,7 @@ and
>  .BR sysconf (3)
>  instead.
>  For the shell command
> -.BR ulimit (),
> +.BR ulimit,

+.BR ulimit ,

>  see
>  .BR bash (1).
>  .PP
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
