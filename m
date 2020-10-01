Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16D1427FE79
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:34:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731767AbgJALeP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:34:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731243AbgJALeP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:34:15 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9F32C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:34:14 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j2so5277813wrx.7
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3Vesx2T+UAp9SDW9bcxK1Qzl9SohBtXP7xVg/2x6Qa8=;
        b=cuKh/C7Fv4iB7vkwcUYiAevdFLB3W1PVDD4Rii0cYwRFs+E6WzoVtt5+psN2S2CsYO
         XwIk2aSPejbq8OsxKsyR6muNvLtQ/CMh+TauRGhTQI0r3wgVY4D9Fu1cTfhNkFrbhjsv
         rQur1AaBdWdsEzLSy+HtKrrYRNv0XK4yzA1NvVhM8mcxb8AHiij5IOPt2o9Os3CqgAjJ
         iyO/GYOCg1InlWq9IXuhL1xW1cMRTFV23iwHCN5HGyGn5rkevulNg9ogg4WYBTDgMckv
         eK9XB7QXobXPxsYIKOxT5vd1oLnGHfFP45eztC6D5UKKlSwTPHqasD2+ifWKyybzxKzJ
         ghkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3Vesx2T+UAp9SDW9bcxK1Qzl9SohBtXP7xVg/2x6Qa8=;
        b=I+gO6RgP/4f901GyZwARx5QLdaeFUs/KiASKk7e9/Qrms3vjGHGz2RphUORDESNfah
         VO+QdE1K2l+fPSeJGgGSoV5NlAjaWeAcudVjiEhjHZDj4qj+awmXjns0CvJg7gRaHoC+
         OeMURyrtJ07Y+/XLtccI1HJXURUCMEnYDZxblkAYgnBFGsB784DzutkmgAW9q8nXuhew
         0ImLR+8Fab5gfl6oWQ5SWxiC8kUg9jdJrNHBafo9mv7xJkSjWBJmJnD8qf13i1olPySy
         hK06by5hVgB6gTu+i0FRftUXDI25JCRPsbfFouNXaSd3VhN5K/fY4C4IrmZxefQoVOf7
         oqGQ==
X-Gm-Message-State: AOAM533EEowty3nW0+hCb5RzNw18+Qui0wooKxOs26YbAhac6YMb/vlv
        ZrONDzp9N1T1cq/Tbr149Nc=
X-Google-Smtp-Source: ABdhPJx8YiL1s7WNFnoyNuBLpteSmSFQoRrYNOfE/V92jnDEpRI+HeerOCctFc/HiCIlu0C8nyQpXA==
X-Received: by 2002:a5d:4e0f:: with SMTP id p15mr9088367wrt.58.1601552053492;
        Thu, 01 Oct 2020 04:34:13 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id x185sm8594942wmg.35.2020.10.01.04.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:34:12 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 04/16] system_data_types.7: srcfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0d328b63-ac9b-c262-a1c2-674c5e3dd309@gmail.com>
Date:   Thu, 1 Oct 2020 13:34:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/1/20 12:15 PM, Alejandro Colomar wrote:
> We used .br to force a simple line break (with no extra blank line)
> after the tag.
> 
> Recently, we added .RS/.RS, and .RS comes just after the tag,
> and I realized by accident that .RS already forces a simple line break.
> 
> Therefore, .br is completely redundant here, and can be removed.
> 
> This way we get rid of "raw" *roff requests in this page.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Great! Thanks for the clean-up.

Applied.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 34 ----------------------------------
>  1 file changed, 34 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index a099c0250..a301c2309 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -52,7 +52,6 @@ system_data_types \- overview of system data types
>  .TP
>  .I aiocb
>  .RS
> -.br
>  Include:
>  .IR <aio.h> .
>  .PP
> @@ -88,7 +87,6 @@ See also:
>  .TP
>  .I div_t
>  .RS
> -.br
>  Include:
>  .IR <stdlib.h> .
>  .PP
> @@ -113,7 +111,6 @@ See also:
>  .TP
>  .I double_t
>  .RS
> -.br
>  Include:
>  .IR <math.h> .
>  .PP
> @@ -156,7 +153,6 @@ type in this page.
>  .TP
>  .I fenv_t
>  .RS
> -.br
>  Include:
>  .IR <fenv.h> .
>  .PP
> @@ -174,7 +170,6 @@ See also:
>  .TP
>  .I fexcept_t
>  .RS
> -.br
>  Include:
>  .IR <fenv.h> .
>  .PP
> @@ -192,7 +187,6 @@ See also:
>  .TP
>  .I FILE
>  .RS
> -.br
>  Include:
>  .IR <stdio.h> .
>  Alternatively,
> @@ -217,7 +211,6 @@ See also:
>  .TP
>  .I float_t
>  .RS
> -.br
>  Include:
>  .IR <math.h> .
>  .PP
> @@ -260,7 +253,6 @@ type in this page.
>  .TP
>  .I gid_t
>  .RS
> -.br
>  Include:
>  .IR <sys/types.h> .
>  Alternatively,
> @@ -293,7 +285,6 @@ See also:
>  .TP
>  .I id_t
>  .RS
> -.br
>  Include:
>  .IR <sys/types.h> .
>  Alternatively,
> @@ -318,7 +309,6 @@ See also:
>  .TP
>  .I imaxdiv_t
>  .RS
> -.br
>  Include:
>  .IR <inttypes.h> .
>  .PP
> @@ -343,7 +333,6 @@ See also:
>  .TP
>  .I intmax_t
>  .RS
> -.br
>  Include:
>  .IR <stdint.h> .
>  Alternatively,
> @@ -400,7 +389,6 @@ type in this page.
>  .TP
>  .IR int N _t
>  .RS
> -.br
>  Include:
>  .IR <stdint.h> .
>  Alternatively,
> @@ -484,7 +472,6 @@ types in this page.
>  .TP
>  .I lconv
>  .RS
> -.br
>  Include:
>  .IR <locale.h> .
>  .PP
> @@ -534,7 +521,6 @@ See also:
>  .TP
>  .I ldiv_t
>  .RS
> -.br
>  Include:
>  .IR <stdlib.h> .
>  .PP
> @@ -559,7 +545,6 @@ See also:
>  .TP
>  .I lldiv_t
>  .RS
> -.br
>  Include:
>  .IR <stdlib.h> .
>  .PP
> @@ -584,7 +569,6 @@ See also:
>  .TP
>  .I pid_t
>  .RS
> -.br
>  Include
>  .IR <sys/types.h> .
>  Alternatively,
> @@ -631,7 +615,6 @@ See also:
>  .TP
>  .I ptrdiff_t
>  .RS
> -.br
>  Include:
>  .IR <stddef.h> .
>  .PP
> @@ -671,7 +654,6 @@ types in this page.
>  .TP
>  .I regmatch_t
>  .RS
> -.br
>  Include:
>  .IR <regex.h> .
>  .PP
> @@ -697,7 +679,6 @@ See also:
>  .TP
>  .I regoff_t
>  .RS
> -.br
>  Include:
>  .IR <regex.h> .
>  .PP
> @@ -731,7 +712,6 @@ types in this page.
>  .TP
>  .I sigevent
>  .RS
> -.br
>  Include:
>  .IR <signal.h> .
>  Alternatively,
> @@ -780,7 +760,6 @@ structure in this page.
>  .TP
>  .I siginfo_t
>  .RS
> -.br
>  Include:
>  .IR <signal.h> .
>  Alternatively,
> @@ -817,7 +796,6 @@ See also:
>  .TP
>  .I sigset_t
>  .RS
> -.br
>  Include:
>  .IR <signal.h> .
>  Alternatively,
> @@ -847,7 +825,6 @@ See also:
>  .TP
>  .I sigval
>  .RS
> -.br
>  Include:
>  .IR <signal.h> .
>  .PP
> @@ -880,7 +857,6 @@ in this page.
>  .TP
>  .I size_t
>  .RS
> -.br
>  Include:
>  .I <stddef.h>
>  or
> @@ -981,7 +957,6 @@ types in this page.
>  .TP
>  .I ssize_t
>  .RS
> -.br
>  Include:
>  .IR <sys/types.h> .
>  Alternatively,
> @@ -1052,7 +1027,6 @@ types in this page.
>  .TP
>  .I suseconds_t
>  .RS
> -.br
>  Include:
>  .IR <sys/types.h> .
>  Alternatively,
> @@ -1080,7 +1054,6 @@ structure in this page.
>  .TP
>  .I time_t
>  .RS
> -.br
>  Include:
>  .I <time.h>
>  or
> @@ -1118,7 +1091,6 @@ See also:
>  .TP
>  .I timer_t
>  .RS
> -.br
>  Include:
>  .IR <sys/types.h> .
>  Alternatively,
> @@ -1142,7 +1114,6 @@ See also:
>  .TP
>  .I timespec
>  .RS
> -.br
>  Include:
>  .IR <time.h> .
>  Alternatively,
> @@ -1177,7 +1148,6 @@ See also:
>  .TP
>  .I timeval
>  .RS
> -.br
>  Include:
>  .IR <sys/time.h> .
>  Alternatively,
> @@ -1210,7 +1180,6 @@ See also:
>  .TP
>  .I uid_t
>  .RS
> -.br
>  Include:
>  .IR <sys/types.h> .
>  Alternatively,
> @@ -1241,7 +1210,6 @@ See also:
>  .TP
>  .I uintmax_t
>  .RS
> -.br
>  Include:
>  .IR <stdint.h> .
>  Alternatively,
> @@ -1297,7 +1265,6 @@ type in this page.
>  .TP
>  .IR uint N _t
>  .RS
> -.br
>  Include:
>  .IR <stdint.h> .
>  Alternatively,
> @@ -1384,7 +1351,6 @@ types in this page.
>  .TP
>  .I va_list
>  .RS
> -.br
>  Include:
>  .IR <stdarg> .
>  Alternatively,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
