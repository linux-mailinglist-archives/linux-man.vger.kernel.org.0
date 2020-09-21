Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 878E8271DEF
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 10:29:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726318AbgIUI3L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 04:29:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726211AbgIUI3L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 04:29:11 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A1C9C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 01:29:11 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id t10so11759570wrv.1
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 01:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=13wRNeuV8HMTJAR9DMGEIHIu414FmlVMfcCMbIU8kHY=;
        b=Xx79IJamhH2ZuowuDidjCdZH1/ZPDjg6VgIyAno74lF9m8l2FU6Rqdc7dgt2+yQ6TY
         fN3mFpTwQU7D9vxBAAKDHen67CIdOKRlBNglLW3MmTd7B3+OG67yR3lps821tHxLFD+J
         NoqXUlIR7/wq5KPHP9ynQZd98z+2aKqpPsjBTEUHykEaDU1Yo3t1hGbai00kaXirEto2
         xO7Ptf+4XidZscB55dRQLP+sM6mksTL2Zmv0WFB4iXpi4TxrJsENqeSlZx1NjOhuSdFx
         OUSjnaC6VvckImGMuH6wT85WW0J1P/z7269MRXpQGp5eQdwcWk5D8BWU+iaJXfh6FQ8+
         AYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=13wRNeuV8HMTJAR9DMGEIHIu414FmlVMfcCMbIU8kHY=;
        b=CV6UteyPg5oxJ1n6F6bxOdYQoTsT/RKxsJ68uX9ygIcJxo5pcKjYi5GauYg5HbGWPc
         H1Oz2lWJxyQWmOgV7yVm2g7kac3c7sO6jKsfjgVPqFuKlX07FIngs8o23bKlZ6numxSl
         Wd0cH2WdZBGudKRjy6c1eg5L36DIxqCbcbax9Qn5RaTzZP3Fct+4ku8wRv8Uht9c7V0t
         mlaU8Qum5+0nqF+HKmbpDeWLcKkEFfBXK8Cyr2D3Jk9j9a1V2BvkBJRQ4jKbtwaKLUC0
         qDrmrPn4nlDYXJpbWaD4zJtuZOO++0B9UYb6RfldhGMMa55ScUXmTf/g2N9w0LrFyS/E
         Ub3w==
X-Gm-Message-State: AOAM532TtKw3MZc02e7rEM4bwKUlxz7o1Zm+RCj6iPSF4oN9rhd0HSa2
        HySWJV89lLBwtbux/gm/fOM=
X-Google-Smtp-Source: ABdhPJy1fJsGujjwtnREQFVFYkaaHWKmZ0gZ4S9fnNBgUETGr+ltYIvzuHHoP+HRINyxksI7oF55QQ==
X-Received: by 2002:a5d:5583:: with SMTP id i3mr49605283wrv.119.1600676949946;
        Mon, 21 Sep 2020 01:29:09 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id s11sm18980824wrt.43.2020.09.21.01.29.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 01:29:09 -0700 (PDT)
Subject: Re: [PATCH v2] system_data_types.7: Add note about length modifiers
 and conversions to [u]intmax_t, and corresponding example
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        eggert@cs.ucla.edu, fweimer@redhat.com
References: <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <20200921081933.24196-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f47b4049-e2d0-c787-5ef0-f70903148aba@gmail.com>
Date:   Mon, 21 Sep 2020 10:29:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200921081933.24196-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Corrections below:

On 2020-09-21 10:19, Alejandro Colomar wrote:
> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> I added the part about range checking, and used a type with defined
> limits to show a complete example.
> 
> Thanks,
> 
> Alex
> 
> 
>   man7/system_data_types.7 | 62 ++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 62 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index dd1d01aab..ba1338179 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -629,6 +629,68 @@ See also:
>   .SH NOTES
>   The structures described in this manual page shall contain,
>   at least, the members shown in their definition, in no particular order.
> +.PP
> +Most of the integer types described in this page don't have
> +a corresponding length modifier for the
> +.BR printf (3)
> +and the
> +.BR scanf (3)
> +families of functions.
> +To print a value of an integer type that doesn't have a length modifier,
> +it should be converted to
> +.I intmax_t
> +or
> +.I uintmax_t
> +by an explicit cast.
> +To scan into a variable of a type that doesn't have a length modifier,
> +an intermediate temporary variable of type
> +.I intmax_t
> +or
> +.I uintmax_t
> +should be used.
> +When copying from the temporary variable to the actual variable,
> +the value could overflow.
> +If POSIX provides lower and upper limits to the type,


Actually, I should have said:

If the type has upper and lower limits,

or something like that.


> +the user should check that the value is within those limits,
> +before actually copying the value.
> +The example below shows how these conversions should be done.
> +.SH EXAMPLES
> +The program shown below scans from a string and prints a value stored in
> +a variable of an integer type that doesn't have a length modifier.
> +The appropriate conversions from and to
> +.IR intmax_t ,
> +and the appropriate range checkings,
> +are used as explained in the notes section above:
> +.PP
> +.EX
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/types.h>
> +
> +int
> +main (void)
> +{
> +    static const char *const str = "500000 us in half a second";
> +    suseconds_t us;
> +    intmax_t    tmp;
> +
> +    /* Scan the number from the string into the temporary variable */
> +    sscanf(str, "%jd", &tmp);
> +
> +    /* Check that the value is within the valid range */
> +    if (tmp < -1 || tmp > 1000000)
> +        exit(EXIT_FAILURE);
> +
> +    /* Copy the value to the suseconds_t variable 'us' */
> +    us = tmp;
> +
> +    /* Print the value */
> +    printf("There are %jd us in half a second.\en", (intmax_t) us);
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
>   .SH SEE ALSO
>   .BR feature_test_macros (7),
>   .BR standards (7)
> 
