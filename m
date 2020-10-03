Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 877BA2823EF
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 13:40:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725772AbgJCLj7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 07:39:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725767AbgJCLj7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 07:39:59 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44BA4C0613D0
        for <linux-man@vger.kernel.org>; Sat,  3 Oct 2020 04:39:59 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id nw23so5279280ejb.4
        for <linux-man@vger.kernel.org>; Sat, 03 Oct 2020 04:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tNlj6eEVEzKshjE0afDXP7rCLC+JoIwMZyTR4D7WSls=;
        b=sakx+Ot3HE7ix7glpcO/YErVyDk832jZyMxutCqKGl//kk3mvXF5zPBJqK4hH2onwd
         gRFNpmPVQ74dXPcm7MzCevFApdRqwzapuem+g62A12AfUCL4AOuZFMjYHhXrfuTQXal8
         uXJL57FXfl5JzjWiTgZ5TJiovw82gf60Upm1PI+Mtfel/gRmw7f1GR02F1hA67nYInke
         43UNjyK4c8bOW0OT+iUqToXrsZLouYI6i8dFXmc1IKO9Ek4OvSrodKaXpuv11arteWSF
         A31m9eOYPrcoauK1Z3ExMldzub9EgQccJsqVEz6Kl7BYW1izs0kRT8MUoxTR4HIk5ug8
         IblQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tNlj6eEVEzKshjE0afDXP7rCLC+JoIwMZyTR4D7WSls=;
        b=VThGV5wVhCMWK/udfsiGv2648SJ/r/aZ9fimpuORS3RVBZzeKy4PE38P0wXbyroWcn
         M9qzTwblNrcrGyyuBbS4UafpXpXUxiTz1N3r/70oHLtHoB+EDOlYghXtUZdCHHTj1BVu
         mkO001aXsQ2/AqvSIawOJhNeGKlJPxb9Yt1RJAtoYSvUKjrSSRL+N0MJcohu8/YeQe1R
         qadm9KKCTVhmnQePw1sk1DI8rT7ZfSCjJqjtkurgbrU8ThYpO4ghffNeoatLGHecLWBh
         5dPbTx2DLC5pR0ChRxxYREuv069Y9+1xTZY67zVvBLrDpN9O82C3yok/LgpjUy84ThTK
         xxxA==
X-Gm-Message-State: AOAM530eBqRHsnuf1UuaaHe6OenM/uSTt3jkoukzysPM9ec6NpX16uQR
        xi2cRrZInequk5f64yNdaav6q9XxTBs=
X-Google-Smtp-Source: ABdhPJwQr5q36py0mYL4O0mcJAchxslbPSO3ajwW32g6zWKukDtM4YSJH/zPbGAg8HUKoHGMSFDt6w==
X-Received: by 2002:a17:906:2962:: with SMTP id x2mr6110953ejd.188.1601725197747;
        Sat, 03 Oct 2020 04:39:57 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id cn21sm4029386edb.14.2020.10.03.04.39.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 04:39:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] system_data_types.7: Move notes about versions to
 "Versions"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201003092847.6644-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <81b954a4-2300-2860-dbf8-3e8233375c4f@gmail.com>
Date:   Sat, 3 Oct 2020 13:39:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201003092847.6644-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/3/20 11:28 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> Yes, we were at a sync-point.
> 
> This is the only patch I had remaining, which I think I hadn't send you.

Thanks, Alex. Applied.

Cheers,

Michael


>  man7/system_data_types.7 | 34 ++++++++++++++++++----------------
>  1 file changed, 18 insertions(+), 16 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 8e3dd956e..07864ad1e 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -40,6 +40,8 @@ system_data_types \- overview of system data types
>  .\"		* Description (no "Description" header)
>  .\"			A few lines describing the type.
>  .\"
> +.\"		* Versions (optional)
> +.\"
>  .\"		* Conforming to (see NOTES)
>  .\"			Format: CXY and later; POSIX.1-XXXX and later.
>  .\"
> @@ -902,10 +904,7 @@ type or a
>  .I ssize_t
>  type.
>  .PP
> -Conforming to:
> -POSIX.1-2001 and later.
> -.PP
> -Notes:
> +Versions:
>  Prior to POSIX.1-2008, the type was capable of storing
>  the largest value that can be stored in either an
>  .I off_t
> @@ -913,6 +912,9 @@ type or a
>  .I ssize_t
>  type.
>  .PP
> +Conforming to:
> +POSIX.1-2001 and later.
> +.PP
>  See also the
>  .I regmatch_t
>  structure and the
> @@ -948,10 +950,7 @@ struct sigevent {
>  For further details about this type, see
>  .BR sigevent (7).
>  .PP
> -Conforming to:
> -POSIX.1-2001 and later.
> -.PP
> -Notes:
> +Versions:
>  .I <aio.h>
>  and
>  .I <time.h>
> @@ -959,6 +958,9 @@ define
>  .I sigevent
>  since POSIX.1-2008.
>  .PP
> +Conforming to:
> +POSIX.1-2001 and later.
> +.PP
>  See also:
>  .BR timer_create (2),
>  .BR getaddrinfo_a (3),
> @@ -1132,10 +1134,7 @@ for printing
>  .I size_t
>  values.
>  .PP
> -Conforming to:
> -C99 and later; POSIX.1-2001 and later.
> -.PP
> -Notes:
> +Versions:
>  .IR <aio.h> ,
>  .IR <glob.h> ,
>  .IR <grp.h> ,
> @@ -1149,6 +1148,9 @@ define
>  .I size_t
>  since POSIX.1-2008.
>  .PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
>  See also:
>  .BR read (2),
>  .BR write (2),
> @@ -1284,15 +1286,15 @@ or
>  Used for time in seconds.
>  According to POSIX, it shall be an integer type.
>  .PP
> -Conforming to:
> -C99 and later; POSIX.1-2001 and later.
> -.PP
> -Notes:
> +Versions:
>  .I <sched.h>
>  defines
>  .I time_t
>  since POSIX.1-2008.
>  .PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
>  See also:
>  .BR stime (2),
>  .BR time (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
