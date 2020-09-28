Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5688A27A72B
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 07:59:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726477AbgI1F7U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 01:59:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725290AbgI1F7T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 01:59:19 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80670C0613CE
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 22:59:19 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id w2so5466412wmi.1
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 22:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JI2YTezJj4x2l7XXO9SBrjHgTd1v/ga7PlcE5RFGsFw=;
        b=u0jZR/uyVqNu0C2CrJH0TTe+Ti5O1/LsqSictz5mWKxspkqU8pZXlrHokd8XtmS/sY
         DU0dcAQ9vkyUfOB56LzvSQW8YXQCSHN5NXl/VjKMEmw4uWZibhHETtZ05OFFB/2KEwk8
         UsX54GnKDfo6U6J/0QeEoK3OYk/gQMBH9Tchz4LCy7lBsLSyT5f9mV1rMkIVzD4GhfpX
         +i72HR8BUuULJfuovamh3IxNwqaT8Wk5g5u/PQ44y0CpZswJJVLaUMT8reyDJuG9QKPi
         NIE1+nWsinVoygOJrO2PSbA4jaez2zRvqxjGQp1JM3ayNuZFqlAhfgL4QvzysU7HAaYP
         WF+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JI2YTezJj4x2l7XXO9SBrjHgTd1v/ga7PlcE5RFGsFw=;
        b=q1cQ+5gQdqMED8YRTQlEr+IS13ibDKejpYRBIcABKWGGtrgFUL0KHLDVL53apkjY8Q
         igy9rr81nimHdEhlGktDbgmxEOk9PEdYKDwnaGDqlCojIpgQpSjXV7LfU5PGFq2hTVZN
         A4V1ZoN+QL/VPo4hc4kMf9sec93Wu7kEtx/uwG7NTyQFbj07Nx0TIsYtJOpoz4bJUV3i
         gD5BgnC0jq7z5Q33MT84vqZqSh97/A4uIrxTRzlcdhwnnrJoZqxsvkhqVUs4i/9VY2HU
         HMp4Xd9KfO5WFXdI4WM9K03U3n/XGmu085dBLWdTAUtP/t+V7u7XCHVNq+eUsWQeYsKF
         4kJg==
X-Gm-Message-State: AOAM531+CLujuxZZrpCCsVj+HPkH62SgCLeWRv3OcSy6CVdJzdvX/sqd
        GMeI2H6Ke3BvgyR2Ootd9MBUBL4bibY=
X-Google-Smtp-Source: ABdhPJyWybEufuvEuFK3IGvqc4ILKK7cd+g3iZC5VTNcnw6A+Xgs+RiAH07rsjuT0rbg8KJQ9psqAw==
X-Received: by 2002:a1c:3505:: with SMTP id c5mr10292791wma.65.1601272758136;
        Sun, 27 Sep 2020 22:59:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id c16sm12746677wrx.31.2020.09.27.22.59.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Sep 2020 22:59:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH 1/3] system_data_types.7: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
Date:   Mon, 28 Sep 2020 07:59:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/27/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

I do think this requires an explanation saying what you are
trying to do with this change (and then perhaps a more expansive
"Subject" also).

I can visually see what you are doing with this patch, 
but I do wonder if there is a better way of doing it.

I've dropped Branden into CC. Perhaps he has a comment.

Thanks,

Michael

> ---
>  man7/system_data_types.7 | 58 ++++++++++++++++++++--------------------
>  1 file changed, 29 insertions(+), 29 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 361e8d411..ff0403df9 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -66,7 +66,7 @@ system_data_types \- overview of system data types
>  .TP
>  .I aiocb
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <aio.h> .
>  .PP
> @@ -101,7 +101,7 @@ See also:
>  .TP
>  .I div_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <stdlib.h> .
>  .PP
> @@ -125,7 +125,7 @@ See also:
>  .TP
>  .I double_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <math.h> .
>  .PP
> @@ -167,7 +167,7 @@ type in this page.
>  .TP
>  .I fenv_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <fenv.h> .
>  .PP
> @@ -184,7 +184,7 @@ See also:
>  .TP
>  .I fexcept_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <fenv.h> .
>  .PP
> @@ -201,7 +201,7 @@ See also:
>  .TP
>  .I float_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <math.h> .
>  .PP
> @@ -243,7 +243,7 @@ type in this page.
>  .TP
>  .I gid_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -280,7 +280,7 @@ See also:
>  .TP
>  .I id_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -304,7 +304,7 @@ See also:
>  .TP
>  .I imaxdiv_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <inttypes.h> .
>  .PP
> @@ -328,7 +328,7 @@ See also:
>  .TP
>  .I lconv
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <locale.h> .
>  .PP
> @@ -377,7 +377,7 @@ See also:
>  .TP
>  .I ldiv_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <stdlib.h> .
>  .PP
> @@ -401,7 +401,7 @@ See also:
>  .TP
>  .I lldiv_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <stdlib.h> .
>  .PP
> @@ -425,7 +425,7 @@ See also:
>  .TP
>  .I pid_t
>  .RS
> -.PP
> +.br
>  Include
>  .IR <sys/types.h> ;
>  or
> @@ -481,7 +481,7 @@ See also:
>  .TP
>  .I ptrdiff_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <stddef.h> .
>  .PP
> @@ -520,7 +520,7 @@ types in this page.
>  .TP
>  .I regmatch_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <regex.h> .
>  .PP
> @@ -545,7 +545,7 @@ See also:
>  .TP
>  .I regoff_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <regex.h> .
>  .PP
> @@ -577,7 +577,7 @@ types in this page.
>  .TP
>  .I sigevent
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <signal.h> ;
>  or
> @@ -626,7 +626,7 @@ structure in this page.
>  .TP
>  .I siginfo_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <signal.h> ;
>  or
> @@ -662,7 +662,7 @@ See also:
>  .TP
>  .I sigset_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <signal.h> ;
>  or
> @@ -691,7 +691,7 @@ See also:
>  .TP
>  .I sigval
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <signal.h> .
>  .PP
> @@ -723,7 +723,7 @@ in this page.
>  .TP
>  .I size_t
>  .RS
> -.PP
> +.br
>  Include:
>  .I <stddef.h>
>  or
> @@ -846,7 +846,7 @@ types in this page.
>  .TP
>  .I ssize_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -922,7 +922,7 @@ types in this page.
>  .TP
>  .I suseconds_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -949,7 +949,7 @@ structure in this page.
>  .TP
>  .I time_t
>  .RS
> -.PP
> +.br
>  Include:
>  .I <sys/types.h>
>  or
> @@ -992,7 +992,7 @@ See also:
>  .TP
>  .I timer_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -1015,7 +1015,7 @@ See also:
>  .TP
>  .I timespec
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <time.h> ;
>  or
> @@ -1053,7 +1053,7 @@ See also:
>  .TP
>  .I timeval
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <sys/time.h> ;
>  or
> @@ -1086,7 +1086,7 @@ See also:
>  .TP
>  .I uid_t
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <sys/types.h> ;
>  or
> @@ -1120,7 +1120,7 @@ See also:
>  .TP
>  .I va_list
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <stdarg> ;
>  or
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
