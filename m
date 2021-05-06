Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F33FB375366
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 14:02:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232010AbhEFMDS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 08:03:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231560AbhEFMDR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 08:03:17 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6B37C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 05:02:19 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso5166810wmh.4
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 05:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=K78jauPL+oz2OifEvRL+HcW1XU1HBPbx49wf+hdkkRo=;
        b=qSzFTVY07miVep9ovs18Yd1m2zhjfzYWBkZmDkEHHHPW6zierkdYnUBcMPDvT3lSwR
         ukZ0oUJ8X/ot5OiFWFR1FcDxyMjtg7SfUgS+i9c2DHBUXCl2WasT+C2pa9UUoADgwOCn
         6LCrXEakP4SYdfMOsrv0uW89yn+iTANCTK5lF2IsxHHcy4L9PnPmAtLuZMf7+hPjykSR
         CrDGATF5VTovf5eGcwkY1csUhYEAGrSe1zL8qviZSLf7pLcwNzqovtkUB/nbinzv81ZW
         y2r9A7LV0JyLxxgiViiyBZS2gWbkuDetsd8FI8Mf8oeXkxJl/tIYf4Qd2IvdwIoy4ZX9
         yvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=K78jauPL+oz2OifEvRL+HcW1XU1HBPbx49wf+hdkkRo=;
        b=eHNWtZyic/i3OGVdLvnkzptYr8kM2bRQHHGhwB30OC7fwhW7oZNM2s/LPPNts2FRCe
         30/zARlzbD+TJGP+aGaomENzW+EuxDnahaabhv0FdnX1cqXK/MeeFtYmRb9g6OYJEepb
         hV3+9mfbqJp7u0e2U+Kavok2+P+MPACyBcZPi5Rni2B/BQmvoj94vY8sg7Ahwygyg+UL
         Dh9dKAYjJFFT1q+cZDw/kiXw75p/38pi7HHVDMIbFfawjbpOL59vOr8nrI0lc/EnU6MG
         Kmkb3vG82GhW59PsDuNZFQlXIxOuPBNYCTG+FUZ8BTifgTVvAapZcGUYltV5Wo5SyCRS
         xrLA==
X-Gm-Message-State: AOAM5330SvH5RK3kv2QgKr5g+CtcQZsbj/9oOZo/sa64jWryAsXH+WM8
        gM4/v3nGmu89HS4TsRoLcO4=
X-Google-Smtp-Source: ABdhPJxyrUda6DlzBLyxjRvmPhRSnzZLlBlYBmUvt1IgJw+MLnC15VLlExYyLiHchsdvlUG6PfAIqA==
X-Received: by 2002:a1c:1d41:: with SMTP id d62mr14537482wmd.76.1620302535351;
        Thu, 06 May 2021 05:02:15 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z14sm4494261wrt.54.2021.05.06.05.02.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 05:02:14 -0700 (PDT)
Subject: Re: [patch] move_pages.2: ffix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <CALhU9tm0xfJOKu1Zpn7ckQ6jV61vBh9eB6vwycgAsm5-4qedvA@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4ac5d856-ca4e-e8de-1aff-e20fb2feba1e@gmail.com>
Date:   Thu, 6 May 2021 14:02:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CALhU9tm0xfJOKu1Zpn7ckQ6jV61vBh9eB6vwycgAsm5-4qedvA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Akihiro,

Patch applied.

Thanks,

Alex

On 5/6/21 1:43 PM, Akihiro Motoki wrote:
> diff --git a/man2/move_pages.2 b/man2/move_pages.2
> index 279de7568..8350b699c 100644
> --- a/man2/move_pages.2
> +++ b/man2/move_pages.2
> @@ -180,6 +180,7 @@ The number of nonmigrated pages if they were the
> result of nonfatal
>   reasons (since
>   .\" commit a49bd4d7163707de377aee062f17befef6da891b
>   Linux 4.17).
> +.TP
>   .B E2BIG
>   Too many pages to move.
>   Since Linux 2.6.29,
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
