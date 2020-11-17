Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9332B717B
	for <lists+linux-man@lfdr.de>; Tue, 17 Nov 2020 23:23:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726035AbgKQWXW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Nov 2020 17:23:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725823AbgKQWXW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Nov 2020 17:23:22 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3844DC0613CF;
        Tue, 17 Nov 2020 14:23:22 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id a3so183240wmb.5;
        Tue, 17 Nov 2020 14:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BU/2+3u+luBOSXVp26vtF5n5fKDVDjUKSzy/0F4KkWs=;
        b=McsHoyqeY80me+1FIBowkh72trNtTMsAYvE2LKLn57Zvl7/96S+thZ4gsRNkuvsQan
         V15/M6VJy0jWDH8Zeo7481kHykA0zBpg8x13eLhGSWtdsUS72W40tfTos6rXQVy86C9K
         5zwIzTh6i2rGD/uDHg+8K1jhA2uMEdMaWPf8y4gEPrZmxtApdvoARSgvKhGpVYLuj62f
         mV+qxkRkj7d485rAi2lYewkCytkLeNi5HYVuo7rLE0s4PPgU56F+jLtbUQfkuSKrU2dt
         mFXk3uRBQgUKZi1O70stLikRK/4t6bejXw6R7VU7UdzXZfQXskB9DeC9rGIWCt3O+cWt
         B2vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BU/2+3u+luBOSXVp26vtF5n5fKDVDjUKSzy/0F4KkWs=;
        b=tAHJ/dd7RAH6LCn5hoi1UsQbyiFykrsP7nOloJ0PaopAJUjY59Jf1fFmKbxt+GhLbH
         S0pdyQ749uI1uGDT5nTBCpDKInWeFTYCsunyrBXppkDR0UCWRCz4YnqH3DYEu14qnf4m
         WI+g2G6Ky9YCsl73OVn1OWhAAc2oZ/IH4AIpdTDXqytkYUqtCihih5UO6WDTvejtcNkf
         YPZkIBaYrpRcXTzoJF2zkpJOMV7zIuPyTTX69EZ4nirIJ3lvTbDEqi07oqb4wVaNsOtB
         vddutAuqw632Wbtg5oREAw+B1H+2fpnUmm4Ea64iF/9WvnTAnW7IrBCHUobFgrURzlZQ
         k+6g==
X-Gm-Message-State: AOAM533PiiHQCG+N31Xg6gkXwi2Zsnkh2D9yiB3hRoZ32FWTAg58NuBn
        RrEf2S8NmV4BviD7QDfwfVw=
X-Google-Smtp-Source: ABdhPJwq5jr42ekRr2apUJ9sQM02jL4V/btNO/erGaRO2KrnB0jVHlqKui51RV/CU3w8xnrIBGbWHg==
X-Received: by 2002:a1c:a70b:: with SMTP id q11mr1251771wme.90.1605651800944;
        Tue, 17 Nov 2020 14:23:20 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id u203sm176958wme.32.2020.11.17.14.23.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 14:23:20 -0800 (PST)
Subject: Ping(3): [PATCH v4] <sys/param.h>: Add nitems()
To:     libc-alpha@sourceware.org, libc-coord@lists.openwall.com
Cc:     libstdc++@gcc.gnu.org, gcc@gcc.gnu.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        jwakely@redhat.com, fweimer@redhat.com,
        ville.voutilainen@gmail.com, enh@google.com, rusty@rustcorp.com.au
References: <20200928191237.32063-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <e23782c8-2bee-a4dd-1bcc-d67cfd9f47d3@gmail.com>
Date:   Tue, 17 Nov 2020 23:23:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928191237.32063-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Do you think the patch is ready,
or is there anything else I should do before merging it?

Thanks,

Alex

On 9/28/20 9:12 PM, Alejandro Colomar wrote:
> 'nitems()' calculates the length of an array in number of items.
> It is safe: if a pointer is passed to the macro (or function, in C++),
> the compilation is broken due to:
>  - In >= C11: _Static_assert()
>  - In C89, C99: Negative anonymous bitfield
>  - In C++: The template requires an array
> 
> Some BSDs already provide a macro nitems() in <sys/param.h>,
> although it usually doesn't provide safety against pointers.
> 
> This patch uses the same name for compatibility reasons,
> and to be the least disruptive with existing code.
> 
> This patch also adds some other macros, which are required by 'nitems()':
> 
> __is_same_type(a, b):
> Returns non-zero if the two input arguments are of the same type.
> 
> __is_array(arr):
> Returns non-zero if the input argument is of an array type.
> 
> __must_be(expr, msg):
> Allows using _Static_assert() everywhere an expression can be used.
> It evaluates '(int)0' or breaks the compilation.
> 
> __must_be_array(arr):
> It evaluates to '(int)0' if the argument is of an array type.
> Else, it breaks compilation.
> 
> __nitems(arr):
> It implements the basic sizeof division needed to calculate the array length.
> 
> 
> P.S.: I'd like to put this patch in the public domain.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> A few changes since v3:
> 
> - Macros don't need reserved names in their parameters,
> so I simplified those names.
> 
> - I fixed some wrong indentation levels.
> 
> - Renamed __array_len() to __nitems() for consistency.
> 
> 
>  misc/sys/param.h | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/misc/sys/param.h b/misc/sys/param.h
> index d7c319b157..08d4093961 100644
> --- a/misc/sys/param.h
> +++ b/misc/sys/param.h
> @@ -102,5 +102,52 @@
>  #define MIN(a,b) (((a)<(b))?(a):(b))
>  #define MAX(a,b) (((a)>(b))?(a):(b))
>  
> +/* Macros related to the types of variables */
> +#define __is_same_type(a, b)                                                  \
> +	__builtin_types_compatible_p(__typeof__(a), __typeof__(b))
> +#define __is_array(arr)	(!__is_same_type((arr), &(arr)[0]))
> +
> +/* Macros for embedding _Static_assert() in expressions */
> +#if __STDC_VERSION__ >= 201112L
> +# define __must_be(expr, msg)   (                                             \
> +        0 * (int)sizeof(                                                      \
> +          struct {                                                            \
> +            _Static_assert((expr), msg);                                      \
> +            char _ISO_C_forbids_a_struct_with_no_members;                     \
> +          }                                                                   \
> +        )                                                                     \
> +)
> +#else
> +# define __must_be(expr, msg)   (                                             \
> +        0 * (int)sizeof(                                                      \
> +          struct {                                                            \
> +            int  : (-!(expr));                                                \
> +            char _ISO_C_forbids_a_struct_with_no_members;                     \
> +          }                                                                   \
> +        )                                                                     \
> +)
> +#endif
> +#define __must_be_array(arr)	__must_be(__is_array(arr), "Must be an array!")
> +
> +/* Macros for array sizes */
> +#if defined(__cplusplus)
> +# if __cplusplus >= 201103L
> +template<typename _Tp, std::size_t _Len>
> +  constexpr inline std::size_t
> +  nitems(const _Tp(&)[_Len]) __THROW
> +  {
> +    return _Len;
> +  }
> +# else /* __cplusplus < 201103L */
> +template<typename _Tp, std::size_t _Len>
> +  char
> +  (&__nitems_chararr(const _Tp(&)[_Len]))[_Len];
> +#  define nitems(arr)	(sizeof(__nitems_chararr(arr)))
> +# endif /* __cplusplus < 201103L */
> +#else /* !defined(__cplusplus) */
> +# define __nitems(arr)	(sizeof((arr)) / sizeof((arr)[0]))
> +# define nitems(arr)	(__nitems(arr) + __must_be_array(arr))
> +#endif /* !defined(__cplusplus) */
> +
>  
>  #endif  /* sys/param.h */
> 
