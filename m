Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8690D272156
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 12:39:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726430AbgIUKjB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 06:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726353AbgIUKjB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 06:39:01 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29D10C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 03:39:01 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id j2so12184872wrx.7
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 03:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gK2fJu35Z2qX01cKlnEu2+b1MFtCF2XdGa3f9j9hoi4=;
        b=t00JW96avICA3ZjMmTaXlwwd38jEvLcWdQ35SOOAxtyQY1CnpkuKArkJz58nRDx+4M
         anbu9QxltxV62NH2ERehBVnZzJwan+6MqwjwFU3uRREii5gfsAaiENswuOe2Eg9eXZh7
         iiffJ3iHjCirBv4ybuF1wIq/CVw+r3QZ5EzeP35xkpFW6dJ8w7eykwez34pLHuTDElZ6
         o/biZdgISWgcf6zj4QlllJQBjYLu1iV8iAFngQMyZF5l598Tj4hHMIfHUISOoHeE8u3A
         kWHpuMki7970L5Rzg22pzZtTo+jzYFkxWoDZRV0KhqO7qAwDybE1usjkWKW3zhFeOmHH
         FxuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gK2fJu35Z2qX01cKlnEu2+b1MFtCF2XdGa3f9j9hoi4=;
        b=qpy3hASADV+9MTlEjUP3KZuEy6px34u01dJIHFIQ8gsbdIgaz1GNYnW6qMn6STFCYV
         fiLoTDUHLTGif2dbun41BkiuADxGneEgTCrAfp/G+kVzBMawqdpdfXRd/QFBF33lVEi3
         CHf6hxf6a/jxlXIF1ieFRsv74Ksgc8QoAjHXjcJlsGIvd+2nEs+NNEZRAcxEZwp/1bqp
         awNn6QlnEGz2TrN8oNhgt/WLrOXN5UXoh+fKFT9DMIxzq+aZaY6lkHWm+JmHe3l/8kdL
         RkLKFmSKqaE77Oqc3+o4mb5/v595iDdG0GgoQkGoiR4d57LQqAJzqx1Tvtc8TnVTdwVU
         6JAw==
X-Gm-Message-State: AOAM530bfJFvdEOu7MFOh41Wf44iNZA85bLerYcWTCovHS4MBFWZTIgf
        dO1KbDXf9WGn7qn7GnbyC6c=
X-Google-Smtp-Source: ABdhPJyTH9/OqAueny5esS1g4op2dYvDJSv7ApFePGxqn+ocZ10KPk1oXBwhHWSMSxndRai35kqFjA==
X-Received: by 2002:a05:6000:124d:: with SMTP id j13mr54848372wrx.182.1600684739770;
        Mon, 21 Sep 2020 03:38:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id p1sm35722803wma.0.2020.09.21.03.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 03:38:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, eggert@cs.ucla.edu, fweimer@redhat.com
Subject: Re: [PATCH v2] system_data_types.7: Add note about length modifiers
 and conversions to [u]intmax_t, and corresponding example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <20200921081933.24196-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e48de555-d07c-3ecc-c0eb-1184d89035f3@gmail.com>
Date:   Mon, 21 Sep 2020 12:38:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921081933.24196-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/21/20 10:19 AM, Alejandro Colomar wrote:
> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> I added the part about range checking, and used a type with defined
> limits to show a complete example.

Thanks! Still a few coments.

> Thanks,
> 
> Alex
> 
> 
>  man7/system_data_types.7 | 62 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index dd1d01aab..ba1338179 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -629,6 +629,68 @@ See also:
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
> +To scan into a variable of a type that doesn't have a length modifier,

s/a type/an integer type/

> +an intermediate temporary variable of type
> +.I intmax_t
> +or
> +.I uintmax_t
> +should be used.
> +When copying from the temporary variable to the actual variable,

s/actual/destination/

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

I think the first part of the check here should be 'tmp < 0'.
(Yes, the defined range for the type must allow -1, but speaking
of -1 microseconds is nonsensical, right?

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
>  .SH SEE ALSO
>  .BR feature_test_macros (7),
>  .BR standards (7)

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
