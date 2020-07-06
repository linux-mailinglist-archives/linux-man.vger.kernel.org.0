Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9F15215687
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:41:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728960AbgGFLlc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:41:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728959AbgGFLlc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:41:32 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED9C5C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:41:31 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id n2so25444679edr.5
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vwwnl+Z8XX0h0atHRBSy5qY0WMvd2FT/d7XPvNbaCD8=;
        b=iWhs8EWN63jxlJ4NFmDCeJY41ARHCb/N0TKgz17/K7ml7n+SelH/UxuaAKGRVXp9Xp
         qqYCL1sofHlbjffp4oYszb5SQvzDcSn12zXU45NC3zJc++jW7L3m75Gc3q9vIIMzc4Ws
         Ct2s7Fq0SE/adLAzEBk8z9VDp3MjSfj9j6DoDVJuSb8oIQzaMtyHf2BMp3hRuGHxw5JB
         49tA4NczHTf7wX/vHAr611/8Zom0N3qVpRyvJLjw5PDYRSVP04c45E9R+k18OWucP0kH
         liojxTl1FfbDQkvvV6AQCkFNW3BAHsk6kAYTrvs6CwAZ0GMBW5Ye9tIYRHQ5fJjbUbXp
         oW9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vwwnl+Z8XX0h0atHRBSy5qY0WMvd2FT/d7XPvNbaCD8=;
        b=WYsSWvhQa/6FLK7tdWk/UJW3XiqyNeJ7VhDhk7l9dhs6TPL8VrQnKg/ySV7w9sozwJ
         4/8+fJSyvhgI0shO/63xaVup42jfHNvb9plq970eR3zd3EsPGRB6IBsp5dGaJcqYsU06
         uWEUN2jjy2Fpb+TNCvGgQoB86BeVS7m2Gf2gkCfZqqanfW5LEV8I/arDI0TL9dWVoHte
         SJHtO5b1s+QecRT4S7N37lQR1kLUZffBYaDz43vHLvwbeNwxk/LDKsr5ZVBZJbTti98o
         dfQP26CGjAdQusT39N/ynLJoCSbInI67P6zKUo9sTj4gVAjfM6bfTgutwSKZs3rG7ICr
         LvUA==
X-Gm-Message-State: AOAM532B6LDxfGZ96hTtkhrt8NJUB5TnJQ9gvGgZ9e9bpi9L5ffegtXf
        I7DLgs7TSNlumQCrk9mZSn3pQx09
X-Google-Smtp-Source: ABdhPJwZXhoiT42sphICn03WFXrpuX6FSxt5viVx86I0OmOUTXSDnnBcZ98WGPQ0bTUrW85k9ldfrw==
X-Received: by 2002:a05:6402:c82:: with SMTP id cm2mr45072701edb.293.1594035690536;
        Mon, 06 Jul 2020 04:41:30 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id p20sm16249343ejy.107.2020.07.06.04.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:41:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] prctl.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200706043907.9667-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fe193b3d-91fe-2a76-28f7-8ce4d04815cc@gmail.com>
Date:   Mon, 6 Jul 2020 13:41:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706043907.9667-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 6:39 AM, Jakub Wilk wrote:
> Remove duplicated word.

Thanks, Jakub. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man2/prctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 6c8fdd9f0..99bddd3cc 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1558,7 +1558,7 @@ must all be zero.
>  .IP
>  On success, the mode specified in
>  .I arg2
> -is set for the calling thread and the the return value is 0.
> +is set for the calling thread and the return value is 0.
>  If the arguments are invalid,
>  the mode specified in
>  .I arg2
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
