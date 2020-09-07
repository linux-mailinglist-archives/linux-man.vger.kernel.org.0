Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAF3425F5E4
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 11:00:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727122AbgIGJAm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 05:00:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728308AbgIGJAl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 05:00:41 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0D7EC061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 02:00:40 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id b12so11965681edz.11
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 02:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FyD1vCa/0vCsPcSyFThbWsyU06y3f90WFUqBlqRtwLk=;
        b=Nl87V8cnWToisc2QOD8X46aFTGFQTaE2rkjRZ5iA/MBqMgq2x+Ylh9elzDriY5F7Gj
         b6zQbq3DmS0TQFB5kcEOP38BwMrL+wlLgPB6i+Kr334ukZd50JVVKisEA3aGxF28laZ6
         AB50pNxnfST9F6sIK45yAzhP1JdWy2uV6TLBN0U6fq81xhsiDHp/DX+Xk7jN/ezfOrIP
         PUmOjpPP6PM/tDfDmvdAh4WsYhEXYj3gPzqvRcGf0U9KVK4oSAuHYfYM+MrcdmB3Fdt7
         5rpAr/nagJwV3H40BbGeSwUGYOfrRLCGFW2V5/cv5ImqimXG+5e82Ktpbw4+h8RJoadq
         9SuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FyD1vCa/0vCsPcSyFThbWsyU06y3f90WFUqBlqRtwLk=;
        b=Tw6OmgyAsXkONQ666sdeI4PEBZGQc9nqkjrwm9x68y9dTgDETtGMAzqcBDMn1QZYR/
         2CMdEGwwyba0Vhn9jqY7GE3alqm8vQ0ndj0Dy8O6aAuiEInFnp182XnzVu173R5XcZ9M
         FCKiEWcUiZNoeOuu4UJ9enVBDXBvXt0hcD9EvYnzG6rEHrcsQt0YA1EEpWfUhEfj0z/x
         h+rcaIr2Nl33TS/RXIQVkKy2AOyg2SKjjo6N1jXQ6ihAj3u4Pw07BcgvkWaC2yNvyXG2
         OAsJXKIpjqNQ8IQ/EjsKOKCx0x1ZyMnLgMfy1moM/LnU14LjaY4NhE/5MZYVu4FYFP0v
         YuIQ==
X-Gm-Message-State: AOAM530q13V49H4jmBBv2UxXBxvLJUV6xkpg++7I6qd+BS2d8QvGE9ED
        TBTh0tdd3q3+ACUzGinhELkyhv9Tp/4=
X-Google-Smtp-Source: ABdhPJx6t9bLgdEeCzXeNw5jNbY67P4/gkxgmT7ajVphC+fpzUAPG4G+wDCWEjvoXHyNOCkC3RZv0w==
X-Received: by 2002:a05:6402:ca7:: with SMTP id cn7mr20287733edb.143.1599469239098;
        Mon, 07 Sep 2020 02:00:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id qu9sm14620731ejb.24.2020.09.07.02.00.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 02:00:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] getline.3: Use %zd rather than %zu when printing
 'ssize_t' values
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200907083527.12201-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f4816426-3bdf-bd02-9c14-c295ffec39ca@gmail.com>
Date:   Mon, 7 Sep 2020 11:00:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907083527.12201-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/7/20 10:35 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/getline.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Thanks, Alex. Patch applied.

Cheers,

Michael

> diff --git a/man3/getline.3 b/man3/getline.3
> index 0dc3a562d..8cd974c05 100644
> --- a/man3/getline.3
> +++ b/man3/getline.3
> @@ -184,7 +184,7 @@ main(int argc, char *argv[])
>      }
>  
>      while ((nread = getline(&line, &len, stream)) != \-1) {
> -        printf("Retrieved line of length %zu:\en", nread);
> +        printf("Retrieved line of length %zd:\en", nread);
>          fwrite(line, nread, 1, stdout);
>      }
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
