Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23CBD425031
	for <lists+linux-man@lfdr.de>; Thu,  7 Oct 2021 11:36:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240600AbhJGJhx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Oct 2021 05:37:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240541AbhJGJhw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Oct 2021 05:37:52 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45F2AC061746
        for <linux-man@vger.kernel.org>; Thu,  7 Oct 2021 02:35:59 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id e12so17106024wra.4
        for <linux-man@vger.kernel.org>; Thu, 07 Oct 2021 02:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mwoQcM5LVXvkREQWdaGwtg8PjCtzq1wX9wXNB9i2+z0=;
        b=YMgHvuOHsJWdF6UvNSky2BGRDQv9AqFpnYeeDzxoGQ90DX9sRQT0MAN0zHmTV07DLZ
         iLJolC2ImZ6VV3BmPcQ5yOAch/tW4U6sAPlPVyMWXLg8HPPB/zEM0tgFvX7W9D4im+c/
         Scr1tfNteTnBY0UM/jIP2QHzjEA5jK3SaCVBhJPk+yxkdpVzxuJPtKVrtRezYVBQdWF0
         a2pv6ohChLO8PXIHA6NO68js+1nr52WTyZan9Q0TyyHxqfBLdiQKsK82SEN6VhsF46sp
         zdkVFgH5taBkwOExh4Yh7zPafli4vssln6Bw4m1Ave1YuiCMuhDcvJlAqqA++jYqpkIA
         M7CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mwoQcM5LVXvkREQWdaGwtg8PjCtzq1wX9wXNB9i2+z0=;
        b=yld6EjaVqqlVLRKLdjM8cIqAmQTvY5fEd+XXg9EhNMRX7vw1/Mh3mDQZ/mX/ayum0k
         kbjHWh0YAZ6t401C3tkRKQN5fauKUcNC/oVzUI+TBFAawr2V+1jBQ0KJta36HvJXtvDa
         yOY6R/Kd0yKDFo61qPeZEFRZes3u9XS06d5wiBSX7bbVu6VQJSTiS+NIJ2JoljoDSgc6
         sh0wO9ZMnTqtLWCGRfgwSes9qeEax6sCJrHi2s/tGdbWCmjLIld63i2pAl4xhw0OUMtA
         UMXHhWOryAho7sAyajzmCZ2yTu0Iml5X8j5EtJ26SN6h5F38jTpE69H8uqmKbzTauiek
         yLFw==
X-Gm-Message-State: AOAM533Sbw2ieVIpx3eRaHm9R3j71iNkPjfkSyPZ+d8QUUZ+Jfgu/60x
        IXrKMV9/UZSkgp56R2mjkd700QTYgO0=
X-Google-Smtp-Source: ABdhPJz22vXq/E6BHbXIxd9ONv4XVZ0jJJ0UHkBuV6Tl818qHb1naDdfG6TDl8meRteGXVBBaNmoZA==
X-Received: by 2002:a7b:c3cc:: with SMTP id t12mr15154529wmj.34.1633599357926;
        Thu, 07 Oct 2021 02:35:57 -0700 (PDT)
Received: from [10.8.0.18] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z6sm12333653wmp.1.2021.10.07.02.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Oct 2021 02:35:57 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH] tzset.3: ffix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20211007090914.8318-1-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9912ab07-b4ea-47f0-4b9e-1de93af95a55@gmail.com>
Date:   Thu, 7 Oct 2021 11:35:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211007090914.8318-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub!

On 10/7/21 11:09 AM, Jakub Wilk wrote:
> Use \- for minus sign
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied!

Thanks,

Alex

> ---
>   man3/tzset.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/tzset.3 b/man3/tzset.3
> index c80da53f8..694cd0ea9 100644
> --- a/man3/tzset.3
> +++ b/man3/tzset.3
> @@ -111,7 +111,7 @@ There are no spaces in the specification.
>   The \fIstd\fP string specifies an abbreviation for the timezone and must be
>   three or more alphabetic characters.
>   When enclosed between the less-than (<) and greater-than (>) signs, the
> -characters set is expanded to include the plus (+) sign, the minus (-)
> +characters set is expanded to include the plus (+) sign, the minus (\-)
>   sign, and digits.
>   The \fIoffset\fP string immediately
>   follows \fIstd\fP and specifies the time value to be added to the local
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
