Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA172291216
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 15:37:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438161AbgJQNhq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 09:37:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438160AbgJQNhp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 09:37:45 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6E61C061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 06:37:44 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id i1so6561051wro.1
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 06:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BTbKEAyLRHVp3K9LjQShwobCf9EjIHKddF8d5LNJ9Go=;
        b=CtETlhe6X1TqW49MzJIzzWlCpvvIXgt0ZHUcN4mzG7Kemvy0U52yp8eciVFJ4+6N19
         CYvMQpCU7RhkUncVs6FnNOn7FdiERSJB9ThHBC8IZH2gNvfpLtz5eBavqLIhc0mrKYrz
         9xATetol0RRfO4p76H83tjD5icubLVV5/0QXjTwkVEHB5vjHv2XvpnHe4MnKwENNb2DS
         MD9K8UP2CzUNq04cZlMIQ4pmId/La8lf65jWBHhvLk2OyAsx0vZ9xZX3L2WPlqDsW66/
         SsmNmGmQ0FN/yh1GT+UKUodgGmlkI6UZ84R7ucclA+SJPgRbyJBeaJINDRSSFmbLjOin
         Norw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BTbKEAyLRHVp3K9LjQShwobCf9EjIHKddF8d5LNJ9Go=;
        b=hndkX1p/8Etlt19xBznu9C6NYWzRCcayDNwELPv2l6BhB5VH12mOv6ZrDb6O2m1Vgt
         jBxK7Pk6v1h/Sr3bt83W1kItD6z2lCwHH8+C6Mt40nJTTs2TdNdNyuC/obx8/yxelr6V
         rwI4/x3j7Sfo4fgCW5UjqUUUAndWI+yUNjeQghTxOdkKCmvCze5Bzun3q7+BNst2VyYk
         K/YPGDeoLEvN0aMVyPTAvBB3R5D8lrggFi51vIcHJbm6PCbv6HVCOznL+HGnBC5EYHrQ
         JKlkySPaAKGpx3sDNl7VttikvcoTzf+BVevZuFvWlWsFY8zcua8S7WaDFnSatunTLvV+
         RG1g==
X-Gm-Message-State: AOAM533ts74ipFFbv6KPa1Z2M7tXcjE6jNU9mR9u2gGsF+qO/Tw6qBMT
        lfukkOldSZQa1kMRnXHkpzIkMuL5EYA=
X-Google-Smtp-Source: ABdhPJwZ1aXEdO2lqbb9rWrGwZ+r9DtelFfFuV7MQGDI1PMw1vK67II+kEqRku4YM8J7lRmMuJT7dQ==
X-Received: by 2002:a5d:6cae:: with SMTP id a14mr10606859wra.187.1602941863486;
        Sat, 17 Oct 2020 06:37:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id i9sm7577201wma.47.2020.10.17.06.37.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 06:37:42 -0700 (PDT)
Subject: Re: [PATCH v2] regex.3: Add example program
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <efc1c2c5-3cf9-e755-cab3-c19e100f210b@gmail.com>
 <20201017132748.150322-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <6d7ea902-357d-9581-83dc-fdeb14a592b4@gmail.com>
Date:   Sat, 17 Oct 2020 15:37:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201017132748.150322-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Oops,  I should've used \e instead of \\ (see below).
Please fix that :)

Thanks,

Alex

On 10/17/20 3:27 PM, Alejandro Colomar wrote:
> $ gcc -Wall -Wextra -Werror -pedantic regex.c -o regex
> $ ./regex.3
> String = "1) John Driverhacker;
> 2) John Doe;
> 3) John Foo;
> "
> Matches:
> #0:
> offset = 25; length = 7
> substring = "John Do"
> #1:
> offset = 38; length = 8
> substring = "John Foo"
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> Now it's much better :)
> 
> Cheers,
> 
> Alex
> 
>  man3/regex.3 | 42 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/man3/regex.3 b/man3/regex.3
> index 7c5132995..72e576cc6 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -337,6 +337,48 @@ T}	Thread safety	MT-Safe
>  .TE
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008.
> +.SH EXAMPLES
> +.EX
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
> +    regoff_t    off, len;
> +
> +    if (regcomp(&regex, re, REG_NEWLINE))
> +        exit(EXIT_FAILURE);
> +
> +    printf("String = \\"%s\\"\en", str);


Here (twice)

> +    printf("Matches:\en");
> +
> +    for (int i = 0; ; i++) {
> +        if (regexec(&regex, s, ARRAY_SIZE(pmatch), pmatch, 0))
> +            break;
> +
> +        off = pmatch[0].rm_so + (s \- str);
> +        len = pmatch[0].rm_eo \- pmatch[0].rm_so;
> +        printf("#%d:\en", i);
> +        printf("offset = %jd; length = %jd\en", (intmax_t) off, (intmax_t) len);
> +        printf("substring = \\"%.*s\\"\en", len, s + pmatch[0].rm_so);


And here (twice again)

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
