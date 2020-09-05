Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC63125E9DF
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 21:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728426AbgIETnI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 15:43:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728423AbgIETnG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 15:43:06 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 727C5C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 12:43:04 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m6so10744564wrn.0
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 12:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vHpII1Yd40pgOxZBInrn86QhE1N+9KJlFvpZiSoaVsY=;
        b=HeD6AgEF6hNL0LNbbc49a//rh7t9twkDr9PJyof9zU+a6Wol8UdM65MA2h1H/Wf/Lw
         cQB4t+8gC6rMfdxcTVQnw9aM0DPgRoTi8aCcxbM+hhNmchQ/btI2vaYWwflzXoUVN3F/
         R0LHuM0UP5hUET/XeKhCuTFjrmWGEX/xe4PqRIsxt1fuS9naO9b6VYzATiYz+imE977+
         3zqivyYV4/Y/vdbF7ZDMPJzC4Y7DQ87Pkx67RlIbIeHwbwEFiX2dJYM9/GeWcJQtoclx
         wbtysK7fWVbk9hN8k0196gdRUoewp0oyAzaQrAgjhWDIfLgAxf811DImfEj5Dy+bBHsU
         PGAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vHpII1Yd40pgOxZBInrn86QhE1N+9KJlFvpZiSoaVsY=;
        b=d7iXqLUc3PI2GV2EjjYy8nu1o97bimPjh6umwZ9fNtsTpIbiXc4naqXITPaL5rt/s9
         X02VcYsEG6Bdb5DM4UoZQFy334tyt7KA0yOKcB2hITucabrg8pPx+BzJD67bfjKGzSfH
         lGbBZX1KlFgWw7KQAIkvsLdxkxRjoQVkFFirnVG5GypxkcTlY2H6FiriN59BhTpYa4cw
         ENPSGqGkDgXTkaiIk5B9s5+ne84IyFf5WIdvEVpN2uiCr10h8KXCyGV7kZ7lxXaI8SB3
         1P6Z1ZL0ZXz0onw5rSjZSQ0t3lwH/MxHU4JS8K7kYccMNQI7rCvJKER8yrkHbuEzCvmO
         CG3Q==
X-Gm-Message-State: AOAM531fA3fiUELnWbE8aFwXn12HpFiLKIcIWTSuqJW8zSI+dpSEi6tV
        +HQ/QcASsvYvRTtY3XeH6rCMhO50ROo=
X-Google-Smtp-Source: ABdhPJyr8Rf+dplyI1IjrlpXdBik1hbZ3XPfF5+TscMGkqbC3GUWk+aGdkX7VJKcB7RDDF9uoE7E9Q==
X-Received: by 2002:a5d:4710:: with SMTP id y16mr13929951wrq.203.1599334982990;
        Sat, 05 Sep 2020 12:43:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id r14sm18959668wrc.41.2020.09.05.12.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 12:43:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] tsearch.3: Simplify type usage and remove unneeded
 casts
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <5f25c03b-9b34-e4cf-2b70-69472bcfcfd2@gmail.com>
 <20200905161050.711839-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c27b577c-b8b6-4267-78f4-eba030a8ea48@gmail.com>
Date:   Sat, 5 Sep 2020 21:42:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200905161050.711839-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/5/20 6:10 PM, Alejandro Colomar wrote:
> The type of `val` is `int **`, and it will work with tsearch()
> anyway because of implicit cast from `void *`, so declaring it as an
> `int **` simplifies the code.

Thanks, patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/tsearch.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/tsearch.3 b/man3/tsearch.3
> index 2e8403130..7b82d9bd3 100644
> --- a/man3/tsearch.3
> +++ b/man3/tsearch.3
> @@ -323,7 +323,7 @@ action(const void *nodep, VISIT which, int depth)
>  int
>  main(void)
>  {
> -    void *val;
> +    int **val;
>  
>      srand(time(NULL));
>      for (int i = 0; i < 12; i++) {
> @@ -332,7 +332,7 @@ main(void)
>          val = tsearch((void *) ptr, &root, compare);
>          if (val == NULL)
>              exit(EXIT_FAILURE);
> -        else if ((*(int **) val) != ptr)
> +        else if (*val != ptr)
>              free(ptr);
>      }
>      twalk(root, action);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
