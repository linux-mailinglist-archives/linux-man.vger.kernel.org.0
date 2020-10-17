Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7EEA2911F7
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 15:17:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438038AbgJQNRQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 09:17:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438014AbgJQNRP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 09:17:15 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78B3EC061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 06:17:15 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id f21so6064071wml.3
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 06:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zpJUmioS9/DrZ/9LUM5ynB7UbO5Px9UbYxYwjCO+7d8=;
        b=PaTDweLd0xtE9dgOUqeFDb64b+qoegh0zU6rWHxy1phZEkqKv633rVac+G24gJp6/v
         WBUzJA0VAN+m9qhe1I5w4Z9fv28v6Fs9L71PyMOIgPAgXP08sQZKWuCv6IebmJr/hPBV
         lBKFTK1DAUF2AQF3E35XXMxLnhbZZa2/ZFIC9AJPAsWzZCvh2MT748m6MmXsmOwMGutF
         X42XpBhJ69LmmeOQLJhcX9RKu9SMpGyVW9SwSpOglj9SVho8jPazg35ivS527EAmorDu
         cgnkWmHMRpOl51cUNPeaRquwZHkjx5zIIkxcxmyl9SRz6dST3viJ2+XhPVLKEkYoZF2k
         qy+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zpJUmioS9/DrZ/9LUM5ynB7UbO5Px9UbYxYwjCO+7d8=;
        b=s0zU/GAqwDhJApOiaWG5Adbc9+2paY/2hxRayTW9Tv4ZLVbSr1of0FmycM+PEOjVJ+
         BmO57yyMdAwq0uwA0XbhAKdHJeEZU5QETnciMTdr7LjobX+AM6mkS7gfHTdAWjIpCQC3
         db7mhLiSkrtDYSf1jEjITjSiiq+ZkADYMtYIdyWchJ44/n5gai/9RcLxiPsJCTInNs5i
         y6v+pAiScOQz91zOrK7afXcSQxYKnP4Y7vSQ07mm6akc31fHMc05uYRVmFTdHSN8bp2L
         d8IaKyGWg+r4OO7EjrotvGv89F4xmepPXrYQD0S67XJeUC3fMvVN2zF/rR1+8DwB0OoM
         JIZg==
X-Gm-Message-State: AOAM530gWWggWWU2ij4yXW4b3ZOm5JZocgYufxMKDBlqrXuHUC7Mzvfu
        EmqIzNTcqXWi2t48WUYBC3p0WFNHdQw=
X-Google-Smtp-Source: ABdhPJyR9RTYZHHw2mvL2vBuY+WUg1zJ3fimN9r9VSn4aSC/QpSeL/1ZzNRVgOunGhjghY1tsKkuoA==
X-Received: by 2002:a05:600c:2211:: with SMTP id z17mr8888778wml.92.1602940634057;
        Sat, 17 Oct 2020 06:17:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id z191sm7627004wme.30.2020.10.17.06.17.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 06:17:13 -0700 (PDT)
Subject: Re: [PATCH] regex.3: Add example program
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20201017131324.123039-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <efc1c2c5-3cf9-e755-cab3-c19e100f210b@gmail.com>
Date:   Sat, 17 Oct 2020 15:17:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201017131324.123039-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I realized now that the output is a bit weird:
I'm printing the offset incorrectly (except for the first match).
I'll fix it in a few minutes.

Thanks,

Alex

On 10/17/20 3:13 PM, Alejandro Colomar wrote:
> $ gcc -Wall -Wextra -Werror -pedantic regex.c -o regex
> $ ./regex
> String = "1) John Driverhacker;
> 2) John Doe;
> 3) John Foo;
> "
> #0 match:
> rm_so = 25; rm_eo = 32; len = 7
> substring = "John Do"
> #1 match:
> rm_so = 6; rm_eo = 14; len = 8
> substring = "John Foo"
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hello Michael,
> 
> Here's the example for regex.3 :-}
> 
> Best regards,
> 
> Alex
> 
> 
>  man3/regex.3 | 44 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/man3/regex.3 b/man3/regex.3
> index 7c5132995..94da88b7e 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -337,6 +337,50 @@ T}	Thread safety	MT-Safe
>  .TE
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008.
> +.SH EXAMPLES
> +.EX
> +#include <stddef.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <regex.h>
> +
> +#define ARRAY_SIZE(arr) (sizeof((arr)) / sizeof((arr)[0]))
> +
> +static const char *const str =
> +        "1) John Driverhacker;\en2) John Doe;\en3) John Foo;\en";
> +static const char *const re = "John.*o";
> +
> +int main(void)
> +{
> +    static const char *s = str;
> +    regex_t     regex;
> +    regmatch_t  pmatch[1];
> +    regoff_t    len;
> +
> +    if (regcomp(&regex, re, REG_NEWLINE))
> +        exit(EXIT_FAILURE);
> +
> +    printf("String = \\"%s\\"\en", str);
> +
> +    for (ptrdiff_t i = 0; ; i++) {
> +        if (regexec(&regex, s, ARRAY_SIZE(pmatch), pmatch, 0))
> +            break;
> +
> +        len = pmatch[0].rm_eo \- pmatch[0].rm_so;
> +        printf("#%td match:\en", i);
> +        printf("rm_so = %jd; rm_eo = %jd; len = %jd\en",
> +                (intmax_t) pmatch[0].rm_so,
> +                (intmax_t) pmatch[0].rm_eo,
> +                (intmax_t) len);
> +        printf("substring = \\"%.*s\\"\en", len, s + pmatch[0].rm_so);
> +
> +        s += pmatch[0].rm_eo;
> +    }
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
>  .SH SEE ALSO
>  .BR grep (1),
>  .BR regex (7)
> 
