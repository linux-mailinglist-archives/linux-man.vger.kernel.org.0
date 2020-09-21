Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 905DC2726B4
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 16:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726436AbgIUON1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 10:13:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726419AbgIUON1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 10:13:27 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FD33C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 07:13:26 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k18so12876241wmj.5
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 07:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dycO7OpHff7ykAgMwatPypZ7q7OrhZkuZjh5lpui8jE=;
        b=KWq2qVFQCtTB0WKAr1C+pRKpXgDFV2GgVLK53xvKxQkf4HtjCJU5TgT/dnsUM1AgCo
         HP9Zr3/rNxQ2FNOOuq5TrT6tR+lLlCDwdKbpuM7yy9psnrQjnWwPfdOILe0if7aY7lY3
         3ITsxlHPLOVhDZ1IEtYfsZDVsuoeC4Qqh9HSTRXVZQIoyfC+l/PVldCB5V/XwWET7lH+
         XPY8UTjpj3iYFg6ZDA/IoCwyjpZTo0KwSizRV5V/sg8byP3tM5D5SUHO+ZiNXKM1ssQd
         AQj+frTfIpQ3aHXM6xqWIqiijMo0q3sSYhuW9dMD8DloONHt8B4J5lOU6EbZz5EbicXW
         xepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dycO7OpHff7ykAgMwatPypZ7q7OrhZkuZjh5lpui8jE=;
        b=QAiRcLzjkm4KScJzrVTgeTGCFizHoxKimOfb7I+gP8TwBIH7zuYl8G9BZr2pniH4a+
         DmS5dijgYfxgFc2iorGfVGICMvv6KKZdlmJ+PaLi6ZIpQeBcd6tMgP71aG0k3UODzNBA
         YfdS25MIB68I8ZTZvmYLQGnXexgTB4IN3D50M/mDTZkYp4eUokg0dSBYukxYjJ+exkve
         xoEe+RlTmLY/1G1R5Xmu2UxRScoD9RCZUMJdm//5HJRGqtcz2nWZN6ZM2Mf4c3LvON3Y
         wvxwef802u4FBzY1m6DLMpFuUrNheqK+8NwDLdRmHh2lnssjjaFzImsfy0ByeOOP3o4U
         01ag==
X-Gm-Message-State: AOAM5320uvPhlvzuj0dztDCe2hZ1kT4EeYp4TsRlXX5tnR4G5NXOpo4N
        Y9p8Q2lkptetFdN40L2J5yc=
X-Google-Smtp-Source: ABdhPJwB6RUsXjJkWq+cQFaGIExHEs2RuB0+uz5pkPgZncx0eZeEBMwiOwnKh58vlUAjNn68MhG3Mw==
X-Received: by 2002:a1c:3985:: with SMTP id g127mr107081wma.32.1600697605038;
        Mon, 21 Sep 2020 07:13:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id y207sm21202505wmc.17.2020.09.21.07.13.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 07:13:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, eggert@cs.ucla.edu, fweimer@redhat.com
Subject: Re: [PATCH v3] system_data_types.7: Add note about length modifiers
 and conversions to [u]intmax_t, and corresponding example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <e48de555-d07c-3ecc-c0eb-1184d89035f3@gmail.com>
 <20200921133256.45115-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <68c401c3-6d4c-92ab-0265-0aed452b6bee@gmail.com>
Date:   Mon, 21 Sep 2020 16:13:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921133256.45115-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/21/20 3:32 PM, Alejandro Colomar wrote:
> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> wfix +
> 
> I thought that checking between 0 and 1M might create confusion,
> so I kept that check, and added another one
> to differentiate the error code from normal values.

Thanks. I've applied this, and done some light editing. Please
let me know if anyting in commit 89c6c2bdd2ea doesn't look okay.

Thanks,

Michael

>  man7/system_data_types.7 | 73 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index dd1d01aab..da57deffa 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -629,6 +629,79 @@ See also:
>  .SH NOTES
>  The structures described in this manual page shall contain,
>  at least, the members shown in their definition, in no particular order.
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
> +To scan into a variable of an integer type
> +that doesn't have a length modifier,
> +an intermediate temporary variable of type
> +.I intmax_t
> +or
> +.I uintmax_t
> +should be used.
> +When copying from the temporary variable to the destination variable,
> +the value could overflow.
> +If POSIX provides lower and upper limits to the type,
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
> +    /* Check that the value is within the valid range of suseconds_t */
> +    if (tmp < -1 || tmp > 1000000) {
> +        fprintf(stderr, "Scaned value might overflow!\en");
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    /* Copy the value to the suseconds_t variable 'us' */
> +    us = tmp;
> +
> +    /* Even though suseconds_t can hold the value -1,
> +       it represents an error code */
> +    if (us < 0) {
> +        fprintf(stderr, "Scanned an error code!\en");
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    /* Print the value */
> +    printf("There are %jd us in half a second.\en", (intmax_t) us);
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
>  .SH SEE ALSO
>  .BR feature_test_macros (7),
>  .BR standards (7)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
