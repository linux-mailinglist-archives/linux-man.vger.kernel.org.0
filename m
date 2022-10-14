Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 549195FF413
	for <lists+linux-man@lfdr.de>; Fri, 14 Oct 2022 21:25:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbiJNTZy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Oct 2022 15:25:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231194AbiJNTZx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Oct 2022 15:25:53 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02040CF19D
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 12:25:51 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id t4so3740619wmj.5
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 12:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oSRl0BlgarHjVHPPiOuXXR1An+2dPDn9/z/dYoFqwgA=;
        b=jknYCi3vTOQeGOuVDfV7GeHFMVKG2AgsdIqMkPgV/WUpCY1KcNRxbTLt96yn4v+Y+4
         s800KSK4SaNDDd8brBXCqpM6W34MW2w9CDDWxAGuIAP/bYTjQr0xjTDZDvkvTkyorqM7
         O9fGoxtfPpkjdjWXWlCEutornnVuOb+cWp7UE3kQuDdMwoV13J5cpORuICNrNz/TjfnX
         eWAYlMpMradIK6DI+8XVk5TZeEHSyBJk5Sxsw+sNoLlYxFYGwDkOf4bx1g6dC1qsdSsu
         WFNEkr7bj5FaaW6eI6dPsJTPOi/i8Qad/EVubcpotOYBj8ZDakNfLI117NqTAaIjptWk
         Yn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oSRl0BlgarHjVHPPiOuXXR1An+2dPDn9/z/dYoFqwgA=;
        b=DYOpWWVS+eAjuAJbogi2jblHbCi5pZ0QUpGAItE68oHEbLPQeRPbBqS3z9sYPYBtnY
         zi+Hrq1PFRQ4J3XtlCLMU8DVl4x3LPrgkhJkPI4rWCm+5XG5cFZSJtr9/C8nT1nK4bQv
         NnyHS6+ggPBKPTm1C+yy/l1iZsbZf2wweL3QG2ptgw/Dgnr2B+IBOhb5l13n7fHpFTDv
         P51OHNZ7RSsQmF8qqO3DJ8RTm0ApdVXEQeD1O4nmE+6hmNvF1GUfS2l/Z6+37brEvfqL
         pHJt+SLSZdk+xxmPeDZ4siK7pJaBHLxi0L2AQh6st0ySW1xV1w1yhqDQHcXHe3vs01Pf
         9MQg==
X-Gm-Message-State: ACrzQf3YKegMcXpMzS88AWKpziSSe4LuBYgfuBEBxXeBU6N/JI9lPzht
        uN3kMyCHYXxMICrGpNKIsglFFMZhKUk=
X-Google-Smtp-Source: AMsMyM6XAgTJx1a2rHzIAAB+EEzBNkR3gUgqWDaSc562b8N5YyMU9VomK+XKT6GBkTu5E4BaFKUVGQ==
X-Received: by 2002:a05:600c:35ce:b0:3c6:809a:b5c3 with SMTP id r14-20020a05600c35ce00b003c6809ab5c3mr4666312wmq.206.1665775549409;
        Fri, 14 Oct 2022 12:25:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c1-20020adfed81000000b00226dba960b4sm2603317wro.3.2022.10.14.12.25.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Oct 2022 12:25:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
Message-ID: <6c20e24e-eb3c-b1b8-e765-9f1e87fc2cde@kernel.org>
Date:   Fri, 14 Oct 2022 21:25:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] EOF.3const: Add documentation for EOF
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20221014191804.26914-1-alx@kernel.org>
Content-Language: en-US
In-Reply-To: <20221014191804.26914-1-alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 10/14/22 21:18, Alejandro Colomar wrote:
> Reported-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi Branden!
> 
> How do you feel about this page?
> 
> I wasn't inspired to write an example program.  I welcome any input if
> you or someone reading the list has a trivial one at hand.
> 
> Cheers,
> Alex
> 
>   man3const/EOF.3const | 54 ++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 54 insertions(+)
>   create mode 100644 man3const/EOF.3const
> 
> diff --git a/man3const/EOF.3const b/man3const/EOF.3const
> new file mode 100644
> index 000000000..f59511a47
> --- /dev/null
> +++ b/man3const/EOF.3const
> @@ -0,0 +1,54 @@
> +.\" Copyright (c) 2022 by Alejandro Colomar <alx@kernel.org>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.\"
> +.TH EOF 3const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +EOF \- end of file or error indicator
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc )
> +.SH SYNOPSIS
> +.nf
> +.B #include <stdio.h>
> +.PP
> +.B "#define EOF  /* ... */"
> +.fi
> +.SH DESCRIPTION
> +.B EOF
> +represents the end of an input file, or an error indication.
> +It is a negative value, of type
> +.IR int .
> +.PP
> +.B EOF
> +is not a character
> +(it can't be represented by
> +.IR "unsigned char" ).
> +It is instead a sentinel value outside of the valid range for valid characters.
> +.SH CONFORMING TO
> +C99 and later;
> +POSIX.1-2001 and later.
> +.SH CAVEATS
> +.SS Input
> +Programs should read the return value of an input function
> +before using functions of the
> +.BR feof (3)
> +family.
> +Only when the function returned the sentinel value
> +.B EOF
> +it makes sense to distinguish between the end of a file or an error with
> +.BR feof (3)
> +or
> +.BR ferror (3).

While the 'Output' caveat is a proper caveat of EOF, I'm feeling that 
the 'Input' caveat is more a caveat of feof(3), and belongs to that 
other page.

> +.SS Output
> +Programs can't pass this value to an output function
> +to "write" the end of a file.
> +That would likely result in undefined behavior.
> +Instead,
> +closing the writing stream or file descriptor
> +that refers to such file
> +is the way to signal the end of that file.
> +.SH SEE ALSO
> +.BR feof (3),
> +.BR fgetc (3)

-- 
<http://www.alejandro-colomar.es/>
