Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 137AAB1DC9
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 14:38:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729801AbfIMMi0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 08:38:26 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43881 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726771AbfIMMi0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 08:38:26 -0400
Received: by mail-wr1-f67.google.com with SMTP id q17so27239332wrx.10
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 05:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GzmR9CBVkbiWm0QeGJ/9lk0eU01eZrz9Yoryc28jwg0=;
        b=OTSLl9TklWNJ+c8sM5Ztlp36IfbdWmAf/XiOVCE864OFIMiFTeO21H7usiSTXhhHVE
         LBrgCPpPxE7UmnbwrKCIhYEo7KSkyb0tN/iQI+5G/SMfIAha1sI7RgdcmYH7PSpN/aXD
         ef2otK4d2wcNELRwxSubs3S55Q42azziowAl+4pM4oKpcDFp2I7Plsd9wp7yGxNKt3R8
         rxd6iLPlsLL1MSjqMvPjeZghShi6vMb0iFlOeIu/Fs1Eh4LS5DhM1mvCqI6wBADXVdv7
         +UCbSX4ceepUq/prU7Wa5Qunqlqt51FfZZ9o7VFL6v2CgdLHiEPI0T2oMLU6RCl5zEPB
         G4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GzmR9CBVkbiWm0QeGJ/9lk0eU01eZrz9Yoryc28jwg0=;
        b=cg0HAZUoFiMPp0d4Z69eib7XhHkb38CHGMDmj4eH4TivmQuQydJE6y68XcwQN+fVB4
         jAP9fPpqc8eivbDEsoWKPciMVTCIgpBjxfwrHKr6q/zXZj9SYY4ohQ7LBgABB6xIQvbn
         UuIxM0BqzjoFdhlaeLFIupjrhChKDkfiCB8r6zPmW3NdO60ufyorz25u6au9JbTck45m
         Um/ouIqFGEvSAvVs27UkVnurILki4U4zhCrIitR/q/gpst2UwBK5Ja8KESPaCKJ40GID
         x/xyrAd/P+QY27htvMQUcO8Q1fEbY8X+Anas1CNC+FQddUZsLC3OcGd1bEmk+LnzrqBo
         eKJA==
X-Gm-Message-State: APjAAAXsfFvWhY5zMDzAX4qK7Maekqlt+DlK5ZxkM6GIqD5Ttq4OAE/H
        nAzvJl+ZFC9bCbL8b2+ZB+4+kR+V
X-Google-Smtp-Source: APXvYqxjaSlCbtNCn9POBtnvYEnijsIPfbH1oaweI2iq1p7vF43rxJiroyjad8g9x5v648/jiUzpLw==
X-Received: by 2002:adf:f790:: with SMTP id q16mr26942220wrp.164.1568378303708;
        Fri, 13 Sep 2019 05:38:23 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id n4sm2496042wmd.45.2019.09.13.05.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 05:38:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: Add detail on the first digit with the %e
 format
To:     Vincent Lefevre <vincent@vinc17.net>
References: <20190820133504.GA30665@zira.vinc17.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5b14fb36-26b2-ba24-b4a3-54dd00e66e5a@gmail.com>
Date:   Fri, 13 Sep 2019 14:38:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190820133504.GA30665@zira.vinc17.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Vincent,

On 8/20/19 3:35 PM, Vincent Lefevre wrote:
> This requirement on the first digit with the %e format comes from
> the ISO C standard. It ensures that all the digits in the output are
> significant and forbids output with a precision less than requested.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
> ---
>  man3/printf.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index fb40b7077..66ad6af02 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -658,7 +658,8 @@ The
>  .I double
>  argument is rounded and converted in the style
>  .RB [\-]d \&. ddd e \(+-dd
> -where there is one digit before the decimal-point character and the number
> +where there is one digit (which is nonzero if the argument is nonzero)
> +before the decimal-point character and the number
>  of digits after it is equal to the precision; if the precision is missing,
>  it is taken as 6; if the precision is zero, no decimal-point character
>  appears.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
