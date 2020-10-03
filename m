Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CE442823F4
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 13:45:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725770AbgJCLpq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 07:45:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725767AbgJCLpp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 07:45:45 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 639F0C0613D0
        for <linux-man@vger.kernel.org>; Sat,  3 Oct 2020 04:45:45 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id j2so4606773eds.9
        for <linux-man@vger.kernel.org>; Sat, 03 Oct 2020 04:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/1Z06gaigniXeMXf8jjRm7zXmwpgc7V5bHf0shx4o78=;
        b=Nuz5wYJpisgadE3COjNCcC0lG/byg+FFQ0qnE3ogWwx2Ck7ABueFKdWG/3l0NP60oR
         H1oEF1XVm5PubCb0yQovjl4UdVgeKkMOwdagnRwSpITqui8cE8Xl3NQoPVcjexa0U6KD
         Tn5eUpQrBoEaEk59YRTCaWWIOIbke/AwP+pNFiXypjw1PZipKsa6FXYRXRqoHEQ94gaF
         T5h1lhKlW4akBugq0l08lDbysoG3b5Mt6qi4ets0MCLdDPxIcBY2lM+IJE1ZFLiJIAqp
         ipe3l79eRtGfS1A/pmtKg3zyO5Jm38GZcZDi66RFuiaSDvkMe8hnJWmiwBh4pCUq7cDU
         u9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/1Z06gaigniXeMXf8jjRm7zXmwpgc7V5bHf0shx4o78=;
        b=l5gZPZDW6fvTL/Q2xWKy7lZeviobAZa7Rv0iSUeiQCfsCUgIlIqQbL2c3TBDYFpgAb
         JGhNMUkE/ph7f+WBtzfGW1g4KNU1r0S3BGXihQRHoXcFwy0Xro91awcvrmrzh8zHBHrl
         IrGL6qZQWW0dLB6DTTmUCblfYR64i7Vpp4pcyApUBMWIHntGiukPqk+mA6vqAnWilYxn
         41R0LcKKA0ZPelqqfK6YPkWLEiu/FzyITEdbfZGkm2IzUNZFUTz8WoEGDw5QD8dEljSn
         5umhrEfD1XuE8J7BVl7zRBZlvb2FQmSJtFucpNDu0KI7pcER+hfdlMimt8in5Wsmqi5f
         pH5Q==
X-Gm-Message-State: AOAM533g/rNcr1vtVh9JCaeVjv8MWf7uH/egDWpKdWW6bEkXAcn+2x84
        QwHZznkKvUANHTnYLdCKlb8=
X-Google-Smtp-Source: ABdhPJySt2yYvhI7f8FfLbSTpaFmqhBUAQOsiIRotZ0ye7godn8Vc0FNgAUsGz1myujxXXfatJiKgQ==
X-Received: by 2002:a50:bc01:: with SMTP id j1mr7248507edh.66.1601725543937;
        Sat, 03 Oct 2020 04:45:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id x25sm4080809edl.63.2020.10.03.04.45.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 04:45:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        eggert@cs.ucla.edu, jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: Re: [PATCH] Revert [u]int_*astN_t commits
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201003094846.7853-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f54ac812-5fc9-b4ed-fced-28e5c738263b@gmail.com>
Date:   Sat, 3 Oct 2020 13:45:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201003094846.7853-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/3/20 11:48 AM, Alejandro Colomar wrote:
> Revert "uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3, uint_leastN_t.3: New links to system_data_types(7)"
> This reverts commit a5d13a32b79508c3224b678c67c1d5bcec0dd78e.
> 
> Revert "system_data_types.7: Add uint_leastN_t family of types"
> This reverts commit 3450a5621e2a0bbba96add77002d5bf92412fd80.
> 
> Revert "int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3, int_leastN_t.3: New links to system_data_types(7)"
> This reverts commit 876838354df6f32a3ba6c91698bdd8fb25e8167b.
> 
> Revert "system_data_types.7: Add int_leastN_t family of types"
> This reverts commit f9b54d3a2eb5da554f9c6979b588fec534082586.
> 
> Revert "uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3, uint_fastN_t.3: New links to system_data_types(7)"
> This reverts commit 496b1aad79db5662cac02b4a2c51851c8b37a5c5.
> 
> Revert "system_data_types.7: Add uint_fastN_t family of types"
> This reverts commit 3c9ae6e5a264f1346260931132661cceb74f2539.
> 
> Revert "int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3, int_fastN_t.3: New links to system_data_types(7)"
> This reverts commit 9df81a23e563ca1e65aafaaec981321816e35f25.
> 
> Revert "system_data_types.7: Add int_fastN_t family of types"
> This reverts commit 8f12d3f6838e1b65e872211286cb33418953a94d.
> 
> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex! Applied, and pushed.

Cheers,

Michael

> ---
>  man3/int_fast16_t.3      |   1 -
>  man3/int_fast32_t.3      |   1 -
>  man3/int_fast64_t.3      |   1 -
>  man3/int_fast8_t.3       |   1 -
>  man3/int_fastN_t.3       |   1 -
>  man3/int_least16_t.3     |   1 -
>  man3/int_least32_t.3     |   1 -
>  man3/int_least64_t.3     |   1 -
>  man3/int_least8_t.3      |   1 -
>  man3/int_leastN_t.3      |   1 -
>  man3/uint_fast16_t.3     |   1 -
>  man3/uint_fast32_t.3     |   1 -
>  man3/uint_fast64_t.3     |   1 -
>  man3/uint_fast8_t.3      |   1 -
>  man3/uint_fastN_t.3      |   1 -
>  man3/uint_least16_t.3    |   1 -
>  man3/uint_least32_t.3    |   1 -
>  man3/uint_least64_t.3    |   1 -
>  man3/uint_least8_t.3     |   1 -
>  man3/uint_leastN_t.3     |   1 -
>  man7/system_data_types.7 | 304 ---------------------------------------
>  21 files changed, 324 deletions(-)
>  delete mode 100644 man3/int_fast16_t.3
>  delete mode 100644 man3/int_fast32_t.3
>  delete mode 100644 man3/int_fast64_t.3
>  delete mode 100644 man3/int_fast8_t.3
>  delete mode 100644 man3/int_fastN_t.3
>  delete mode 100644 man3/int_least16_t.3
>  delete mode 100644 man3/int_least32_t.3
>  delete mode 100644 man3/int_least64_t.3
>  delete mode 100644 man3/int_least8_t.3
>  delete mode 100644 man3/int_leastN_t.3
>  delete mode 100644 man3/uint_fast16_t.3
>  delete mode 100644 man3/uint_fast32_t.3
>  delete mode 100644 man3/uint_fast64_t.3
>  delete mode 100644 man3/uint_fast8_t.3
>  delete mode 100644 man3/uint_fastN_t.3
>  delete mode 100644 man3/uint_least16_t.3
>  delete mode 100644 man3/uint_least32_t.3
>  delete mode 100644 man3/uint_least64_t.3
>  delete mode 100644 man3/uint_least8_t.3
>  delete mode 100644 man3/uint_leastN_t.3
> 
> diff --git a/man3/int_fast16_t.3 b/man3/int_fast16_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_fast16_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_fast32_t.3 b/man3/int_fast32_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_fast32_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_fast64_t.3 b/man3/int_fast64_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_fast64_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_fast8_t.3 b/man3/int_fast8_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_fast8_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_fastN_t.3 b/man3/int_fastN_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_fastN_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_least16_t.3 b/man3/int_least16_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_least16_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_least32_t.3 b/man3/int_least32_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_least32_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_least64_t.3 b/man3/int_least64_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_least64_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_least8_t.3 b/man3/int_least8_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_least8_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/int_leastN_t.3 b/man3/int_leastN_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/int_leastN_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_fast16_t.3 b/man3/uint_fast16_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_fast16_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_fast32_t.3 b/man3/uint_fast32_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_fast32_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_fast64_t.3 b/man3/uint_fast64_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_fast64_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_fast8_t.3 b/man3/uint_fast8_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_fast8_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_fastN_t.3 b/man3/uint_fastN_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_fastN_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_least16_t.3 b/man3/uint_least16_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_least16_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_least32_t.3 b/man3/uint_least32_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_least32_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_least64_t.3 b/man3/uint_least64_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_least64_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_least8_t.3 b/man3/uint_least8_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_least8_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man3/uint_leastN_t.3 b/man3/uint_leastN_t.3
> deleted file mode 100644
> index db50c0f09..000000000
> --- a/man3/uint_leastN_t.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/system_data_types.7
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 07864ad1e..bcc97d19d 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -331,155 +331,6 @@ C99 and later; POSIX.1-2001 and later.
>  See also:
>  .BR imaxdiv (3)
>  .RE
> -.\"------------------------------------- int_fastN_t ------------------/
> -.TP
> -.IR int_fast N _t
> -.RS
> -Include:
> -.IR <stdint.h> .
> -Alternatively,
> -.IR <inttypes.h> .
> -.PP
> -.IR int_fast8_t ,
> -.IR int_fast16_t ,
> -.IR int_fast32_t ,
> -.I int_fast64_t
> -.PP
> -Usually the fastest (see Notes) signed integer type
> -of a width of at least N bits,
> -N being the value specified in its type name.
> -According to the C language standard, they shall be
> -capable of storing values in the range
> -.RB [ INT_FAST N _MIN ,
> -.BR INT_FAST N _MAX ],
> -substituting N by the appropriate number.
> -.PP
> -The length modifiers for the
> -.IR int_fast N _t
> -types for the
> -.BR printf (3)
> -family of functions
> -are expanded by macros of the forms
> -.BR PRIdFAST N
> -and
> -.BR PRIiFAST N
> -(defined in
> -.IR <inttypes.h> );
> -resulting for example in
> -.B %"PRIdFAST64"
> -or
> -.B %"PRIiFAST64"
> -for printing
> -.I int_fast64_t
> -values.
> -The length modifiers for the
> -.IR int_fast N _t
> -types for the
> -.BR scanf (3)
> -family of functions
> -are expanded by macros of the forms
> -.BR SCNdFAST N
> -and
> -.BR SCNiFAST N,
> -(defined in
> -.IR <inttypes.h> );
> -resulting for example in
> -.B %"SCNdFAST8"
> -or
> -.B %"SCNiFAST8"
> -for scanning
> -.I int_fast8_t
> -values.
> -.PP
> -Conforming to:
> -C99 and later; POSIX.1-2001 and later.
> -.PP
> -Notes:
> -Where there is no single type that is fastest for all purposes,
> -the implementation may choose any type
> -with the required signedness and at least the minimum width.
> -.PP
> -See also the
> -.IR int_least N _t ,
> -.IR int N _t ,
> -.IR uint_fast N _t ,
> -.IR uint_least N _t
> -and
> -.IR uint N _t
> -types in this page.
> -.RE
> -.\"------------------------------------- int_leastN_t -----------------/
> -.TP
> -.IR int_least N _t
> -.RS
> -Include:
> -.IR <stdint.h> .
> -Alternatively,
> -.IR <inttypes.h> .
> -.PP
> -.IR int_least8_t ,
> -.IR int_least16_t ,
> -.IR int_least32_t ,
> -.I int_least64_t
> -.PP
> -The narrowest signed integer type
> -of a width of at least N bits,
> -N being the value specified in its type name.
> -According to the C language standard, they shall be
> -capable of storing values in the range
> -.RB [ INT_LEAST N _MIN ,
> -.BR INT_LEAST N _MAX ],
> -substituting N by the appropriate number.
> -.PP
> -The length modifiers for the
> -.IR int_least N _t
> -types for the
> -.BR printf (3)
> -family of functions
> -are expanded by macros of the forms
> -.BR PRIdLEAST N
> -and
> -.BR PRIiLEAST N
> -(defined in
> -.IR <inttypes.h> );
> -resulting for example in
> -.B %"PRIdLEAST64"
> -or
> -.B %"PRIiLEAST64"
> -for printing
> -.I int_least64_t
> -values.
> -The length modifiers for the
> -.IR int_least N _t
> -types for the
> -.BR scanf (3)
> -family of functions
> -are expanded by macros of the forms
> -.BR SCNdLEAST N
> -and
> -.BR SCNiLEAST N,
> -(defined in
> -.IR <inttypes.h> );
> -resulting for example in
> -.B %"SCNdLEAST8"
> -or
> -.B %"SCNiLEAST8"
> -for scanning
> -.I int_least8_t
> -values.
> -.PP
> -Conforming to:
> -C99 and later; POSIX.1-2001 and later.
> -.PP
> -See also the
> -.IR int_fast N _t ,
> -.IR int N _t ,
> -.IR uint_fast N _t ,
> -.IR uint_least N _t
> -and
> -.IR uint N _t
> -types in this page.
> -.RE
>  .\"------------------------------------- intmax_t ---------------------/
>  .TP
>  .I intmax_t
> @@ -1420,161 +1271,6 @@ See also:
>  .BR getpwnam (2),
>  .BR credentials (7)
>  .RE
> -.\"------------------------------------- uint_fastN_t -----------------/
> -.TP
> -.IR uint_fast N _t
> -.RS
> -Include:
> -.IR <stdint.h> .
> -Alternatively,
> -.IR <inttypes.h> .
> -.PP
> -.IR uint_fast8_t ,
> -.IR uint_fast16_t ,
> -.IR uint_fast32_t ,
> -.I uint_fast64_t
> -.PP
> -Usually the fastest (see Notes) unsigned integer type
> -of a width of at least N bits,
> -N being the value specified in its type name.
> -According to the C language standard, they shall be
> -capable of storing values in the range [0,
> -.BR UINT_FAST N _MAX ],
> -substituting N by the appropriate number.
> -.PP
> -The length modifiers for the
> -.IR uint_fast N _t
> -types for the
> -.BR printf (3)
> -family of functions
> -are expanded by macros of the forms
> -.BR PRIuFAST N,
> -.BR PRIoFAST N,
> -.BR PRIxFAST N
> -and
> -.BR PRIXFAST N
> -(defined in
> -.IR <inttypes.h> );
> -resulting for example in
> -.B %"PRIuFAST32"
> -or
> -.B %"PRIxFAST32"
> -for printing
> -.I uint_fast32_t
> -values.
> -The length modifiers for the
> -.IR uint_fast N _t
> -types for the
> -.BR scanf (3)
> -family of functions
> -are expanded by macros of the forms
> -.BR SCNuFAST N,
> -.BR SCNoFAST N,
> -.BR SCNxFAST N
> -and
> -.BR SCNXFAST N
> -(defined in
> -.IR <inttypes.h> );
> -resulting for example in
> -.B %"SCNuFAST16"
> -or
> -.B %"SCNxFAST16"
> -for scanning
> -.I uint_fast16_t
> -values.
> -.PP
> -Conforming to:
> -C99 and later; POSIX.1-2001 and later.
> -.PP
> -Notes:
> -Where there is no single type that is fastest for all purposes,
> -the implementation may choose any type
> -with the required signedness and at least the minimum width.
> -.PP
> -See also the
> -.IR int_fast N _t ,
> -.IR int_least N _t ,
> -.IR int N _t ,
> -.IR uint_least N _t
> -and
> -.IR uint N _t
> -types in this page.
> -.RE
> -.\"------------------------------------- uint_leastN_t ----------------/
> -.TP
> -.IR uint_least N _t
> -.RS
> -Include:
> -.IR <stdint.h> .
> -Alternatively,
> -.IR <inttypes.h> .
> -.PP
> -.IR uint_least8_t ,
> -.IR uint_least16_t ,
> -.IR uint_least32_t ,
> -.I uint_least64_t
> -.PP
> -The narrowest unsigned integer type
> -of a width of at least N bits,
> -N being the value specified in its type name.
> -According to the C language standard, they shall be
> -capable of storing values in the range [0,
> -.BR UINT_LEAST N _MAX ],
> -substituting N by the appropriate number.
> -.PP
> -The length modifiers for the
> -.IR uint_least N _t
> -types for the
> -.BR printf (3)
> -family of functions
> -are expanded by macros of the forms
> -.BR PRIuLEST N,
> -.BR PRIoLEAST N,
> -.BR PRIxLEAST N
> -and
> -.BR PRIXLEAST N
> -(defined in
> -.IR <inttypes.h> );
> -resulting for example in
> -.B %"PRIuLEAST32"
> -or
> -.B %"PRIxLEAST32"
> -for printing
> -.I uint_least32_t
> -values.
> -The length modifiers for the
> -.IR uint_least N _t
> -types for the
> -.BR scanf (3)
> -family of functions
> -are expanded by macros of the forms
> -.BR SCNuLEAST N,
> -.BR SCNoLEAST N,
> -.BR SCNxLEAST N
> -and
> -.BR SCNXLEAST N
> -(defined in
> -.IR <inttypes.h> );
> -resulting for example in
> -.B %"SCNuLEAST16"
> -or
> -.B %"SCNxLEAST16"
> -for scanning
> -.I uint_least16_t
> -values.
> -.PP
> -Conforming to:
> -C99 and later; POSIX.1-2001 and later.
> -.PP
> -See also the
> -.IR int_fast N _t ,
> -.IR int_least N _t ,
> -.IR int N _t ,
> -.IR uint_fast N _t
> -and
> -.IR uint N _t
> -types in this page.
> -.RE
>  .\"------------------------------------- uintmax_t --------------------/
>  .TP
>  .I uintmax_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
