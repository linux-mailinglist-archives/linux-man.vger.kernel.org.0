Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7349932C76C
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355593AbhCDAb6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231816AbhCCWVD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 17:21:03 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2351EC061756
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 14:20:23 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id jt13so45440481ejb.0
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 14:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6se0NdvR5s6CDWt5ko7mjfcu50ks9MFAFcuUNOwj1KE=;
        b=cyEHtMVyJZZCch0IRSfVj0j1GOhYmzbKRDlgUqDuyNi2n7w/J32LYxre8a2wi5n53m
         iiPashopSS7xnAPahDd5ZoXRxAKtmL8Z74/90PbmAm+kNMkypnjaUXJrJ3PisXGVyt8Y
         hqHK3XLjIHl2WJiKGVmW1iy4x1hDIDzjr4NgWg4+jfxEfgr3WYlvom9nZ7QPS2CfcXF5
         FACcCTRMIGvrXelYgNDQaGzzdd/KFDMw8pHz2Pjy3q6wB5FrFo0SMYHOgHwM8/dvE9ze
         lQvB+CT708kLXNNt5yBQ/XDn2TlaCMLuhU7+ZPAgxPNAQZdZBNhIqMrjvIghMWqTOutR
         xQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6se0NdvR5s6CDWt5ko7mjfcu50ks9MFAFcuUNOwj1KE=;
        b=BksNU5ZT0N25dITV5yhmV3LlGVUBlmo1/XyLrpwpne+LKcJBo/HomqMvbc/WGhLvp1
         nYeBjYRnd+Wl66YHTFdW6+40/yeSDJywpRg6ClfCapzoPUt6KNBRheTtsoTQAeGQNAG3
         rtpIWIlbJDxFfhkzVkoJQY9msFoBspbCWjK0QaeLgbl2vgj8mSJ047UhqfAsTlsd2AjY
         8H+c1GOYU1RHzwciiNhpjyg/A4qsAA3mb9/G17C2GfVkFj8TKpvIhUt/twglCGcFKWHZ
         BF6S8UYL1odg0BgdR0nbzGu6K89BdXMFvDnRrWRzJ1MT0iZOEsJlDLucc/Ht/rkN/vZA
         CuwQ==
X-Gm-Message-State: AOAM533bZQTlRLAZwDegckghwoSlVpy92b4xM670xG8LG098N3C1d9g2
        bMlvLJSZkZ6StZbIQ94bTUkkLShsmw6G4g==
X-Google-Smtp-Source: ABdhPJz6VDkvhzyXurizi1hdsu99/p1LHfIhwMxYkwxx7PyZvQ0KYp1ZN/b0NJWF29PUPygxkD5duA==
X-Received: by 2002:a17:907:9709:: with SMTP id jg9mr840978ejc.276.1614810021553;
        Wed, 03 Mar 2021 14:20:21 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id fw3sm18659359ejb.82.2021.03.03.14.20.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 14:20:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] fflush.3: SEE ALSO: Add fpurge(3)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210223231713.124003-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ebd5b29a-6130-b7e8-d1d4-83ff92781a8d@gmail.com>
Date:   Wed, 3 Mar 2021 23:20:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210223231713.124003-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 2/24/21 12:17 AM, Alejandro Colomar wrote:
> fpurge(i_stream) does the same as fflush(i_stream), AFAIK.

I don''t think so. fflush() of an output stream forces
a write() of data to the kernel. fpurge() discards the data,
as I understand things.

But I still think the patch is useful. fflush(3)
and fpurge(3) serve related purposes.

Patch applied.

Thanks,

Michael


> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/fflush.3 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man3/fflush.3 b/man3/fflush.3
> index 26b91e618..bbe3c453e 100644
> --- a/man3/fflush.3
> +++ b/man3/fflush.3
> @@ -133,6 +133,7 @@ or
>  .BR sync (2),
>  .BR write (2),
>  .BR fclose (3),
> +.BR fpurge (3),
>  .BR fileno (3),
>  .BR fopen (3),
>  .BR setbuf (3),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
