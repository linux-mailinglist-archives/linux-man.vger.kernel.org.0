Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C7B3271A77
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 07:39:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726149AbgIUFji (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 01:39:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726104AbgIUFji (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 01:39:38 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4C2C061755
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 22:39:38 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id d4so10845888wmd.5
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 22:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/6UlgLwLCSJ+FheIQSyri7cQ6mMeKE9WPrmA0bG1EZQ=;
        b=hCDG2GRns6J+1ELJcp6lfHAxEv1zfkIsiXtEXUIYHHj+VHHw24e3aTMHc+19Nr+mHA
         syQpWyVEuAuYwTx81DtOhwZX+YLM/YeUJLwU4SbViNDACU6NpH0R0eV/u7Zf3NM0tT0v
         oo6ZSkvxZsWBr3BT5RN6nbl3J0f2Ug1ETcxt+LXb2K9G3dJr3m+0zvsu7rvptokPXQ1b
         J7irzMp/uO2HLz14d0/ygsSDWzKsfG3MWDskSc3/rTAG+JyHIcU4zgrPcnGm2WfhB+ev
         EZAQFxb8WkoljdZA3j8nzUp0zUeAeTLFhi3DA9mMgXY3Jg6nGgkp2dDytpt/KhfScI2T
         r9TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/6UlgLwLCSJ+FheIQSyri7cQ6mMeKE9WPrmA0bG1EZQ=;
        b=VJyjpFMuiCiKGb+tD9Mc+A3E5YR6YHFpmLt6bBpBdEU+vvWl6294wipPZUMzgr4rdm
         eJfxwQTY3MTUdK8Ikxtkr2zLyLdRwE8wHx1YeXAkOPeRSkKcwUDR5UiNeXAieoV58E7X
         qXkjxP99C76YpkVBTCXryhxISOCFh3V6oYBn6Dk0KYa7AMV0WqFjOETa2vNbWcjPBtQW
         eIHhGHtFoN0C10xNDRJkvimaaKd9O46iuNJRHBlTmVbmmxa+8e553mU8LcM1glgC2vEU
         JwPPUXISR1LbuZi8NMI/GxoDp6rDmXc854z2ONEwo7LnIwfztOZnyp4E0bEf52gIu9Sc
         mUrg==
X-Gm-Message-State: AOAM533aWEiPHdeXM897/YKg5adBDnlhfpDsxLAQaVlyl13uKjfYyWTc
        hg6Hs+j0lIkMSzkK3xke5Bc=
X-Google-Smtp-Source: ABdhPJz0mO3lVMT1zQoxuWHDV/VGjR0YMLlmskPY5jeYjY5RFDKPMHM5uuJPwulVOs/MBWVsyHitQw==
X-Received: by 2002:a1c:e389:: with SMTP id a131mr29095145wmh.181.1600666776706;
        Sun, 20 Sep 2020 22:39:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z14sm18583239wrh.14.2020.09.20.22.39.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Sep 2020 22:39:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, eggert@cs.ucla.edu, fweimer@redhat.com
Subject: Re: [PATCH] system_data_types.7: Add note about length modifiers and
 conversions to [u]intmax_t, and corresponding example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
Date:   Mon, 21 Sep 2020 07:39:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/20/20 11:40 PM, Alejandro Colomar wrote:
> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> Hi Michael,
> 
> On 9/20/20 10:20 PM, Michael Kerrisk (man-pages) wrote:
>> PS It occurs to me that this manual page is a suitable place 
>> to explain the general technique of casting integral system
>> data types to [u]intmax_t for the purpose of printf(). Would
>> you like to add this, Alex?
> 
> Sure.  Good idea!
> 
> Hope you like the patch :)

Good in principle, but some tweaks required.

>  man7/system_data_types.7 | 52 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 5128e1f01..1fcc09dae 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -626,6 +626,58 @@ See also:
>  .SH NOTES
>  The structures described in this manual page shall contain,
>  at least, the members shown in their definition, in no particular order.
> +.PP
> +Most of the types described in this page don't have a corresponding

s/types/integer types/

> +length modifier for the
> +.BR printf (3)
> +and the
> +.BR scanf (3)
> +families of functions.
> +To print a value of a type that doesn't have a length modifier,
> +it should be converted to
> +.I intmax_t
> +or
> +.I uintmax_t
> +by an explicit cast.
> +To scan into a variable of a type that doesn't have a length modifier,

s/a type/an integer/

> +an intermediate temporary variable of type
> +.I intmax_t
> +or
> +.I uintmax_t
> +should be used.

Hmmm -- I wonder if we need to say something about range checking.
I mean, what if time_t is narrower than intmax_t in the example below?
(It's not, on my x86-64 system.) The problem of course is how to
construct such a range check in the absence of any appropriate
POSIX constants (e.g., there is no TIME_T_MAX).

> +The example below shows how these conversions should be done.
> +.SH EXAMPLES
> +The program shown below scans from a string and prints a value stored in
> +a variable of a type that doesn't have a length modifier.
> +The appropriate conversions from and to
> +.I intmax_t
> +are used as explained in the notes section above:
> +.PP
> +.EX
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <time.h>
> +
> +int
> +main (void)
> +{
> +    static const char *const str = "There are 60 s in an hour";

Either "60" needs to be 3600 or "hour" needs to be "minute".

> +    time_t   secs;
> +    intmax_t tmp;
> +
> +    /* Scan the number from the string into the temporary variable */
> +    sscanf(str, "There are %jd", &tmp);
> +
> +    /* Copy the value to the time_t variable secs */
> +    secs = tmp;
> +
> +    /* Print the value */
> +    printf("There are %jd seconds in an hour!\en", (intmax_t) secs);

See my previous comment. A change may be required in the line above.

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
