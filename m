Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E0A628A846
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 18:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388220AbgJKQnv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 12:43:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388209AbgJKQnv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 12:43:51 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9B83C0613CE;
        Sun, 11 Oct 2020 09:43:50 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id f21so14918501wml.3;
        Sun, 11 Oct 2020 09:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yzAgWgF9mhKy/kKX/y0fHZo8Q5uJhEcMBBl1raABagk=;
        b=mbckgpCWcwoXi7aoGXQm3s/pUQ3QuiKfNkIO2QS5nfm0Fg+FIi9aC1YqHFr0ASHyap
         bHcYybdzghSxuSSV71MksShoOhJ1H01WlkZe5GEb/cktowsBuQ8gcCuVEXEAlFhgCfWm
         H1LW+pko4ZEPUNpZeRr0sVeRlxSOHnuk4vnTJ5EjITKTlmDOAClHumMW2eOOq79wmvOm
         1BjqwteAT7TBkdU67BvUKloZZXvAEWTcIFM4FKIh7YjBJeL0+Ns/0z2EtWGGmOShnKCc
         WU9HzearsmrWRjKMn9uBCm8oxjJ5H6Xud8jOSXz9b0uwC0fs63uHklxw9BYnHvDS5+rl
         ovjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yzAgWgF9mhKy/kKX/y0fHZo8Q5uJhEcMBBl1raABagk=;
        b=UT32u6CzibgMGInkZjlvXQdva4FdU4dVlJfimGlZUYM3C7gCftbmA79F6QmAItKZUR
         21olMFjw1RGVyHpAi6ZpRqYR5QuRLYZSi7l3nbC5unKj9siTpsYTLIbebNmEoYuSTdqg
         fyvJw/TM0fohqOeuUS7wTDWPDpNrrZ4FiMC5w00E7xiNIgw3CA+lTSDqBZsL64+hpWW5
         StRDdlj+w+hxPvInEV7Wm/UK/iwmH9yH+UAxovmwbS8Nb6r5NtGZBWIIVj68QEi4enJe
         GXAdFHWNG7x872vAxy/0gkjjuPCAWjCsPyjOYy3wZM7HxDCdJcvPBZ2hZxG2UA/yU8c7
         uCVg==
X-Gm-Message-State: AOAM531byp5OkVxfcTnR9qfL3u85pBD1DxrhNP8sa4EK7AQqAh/xZWfQ
        vzwvTn7RacGY46X1jixOv4Q=
X-Google-Smtp-Source: ABdhPJwMlUbeD2gRfxPdD32kFrNM5R3CniGrqAwCxx//4ML9IX0CVXg5RyUNHxugPq+5LdRQB131VA==
X-Received: by 2002:a1c:6788:: with SMTP id b130mr7733457wmc.91.1602434629239;
        Sun, 11 Oct 2020 09:43:49 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id c8sm22597111wmd.18.2020.10.11.09.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2020 09:43:48 -0700 (PDT)
Subject: Ping: Re: [PATCH v4] <sys/param.h>: Add nitems()
To:     libc-alpha@sourceware.org
Cc:     libc-coord@lists.openwall.com, libstdc++@gcc.gnu.org,
        gcc@gcc.gnu.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, jwakely@redhat.com, fweimer@redhat.com,
        ville.voutilainen@gmail.com, enh@google.com, rusty@rustcorp.com.au
References: <20200928191237.32063-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <e4986448-ab01-a8cd-96ab-905a0e5ab701@gmail.com>
Date:   Sun, 11 Oct 2020 18:43:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928191237.32063-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping.

On 2020-09-28 21:12, Alejandro Colomar wrote:
> 'nitems()' calculates the length of an array in number of items.
> It is safe: if a pointer is passed to the macro (or function, in C++),
> the compilation is broken due to:
>   - In >= C11: _Static_assert()
>   - In C89, C99: Negative anonymous bitfield
>   - In C++: The template requires an array
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
>   misc/sys/param.h | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 47 insertions(+)
> 
> diff --git a/misc/sys/param.h b/misc/sys/param.h
> index d7c319b157..08d4093961 100644
> --- a/misc/sys/param.h
> +++ b/misc/sys/param.h
> @@ -102,5 +102,52 @@
>   #define MIN(a,b) (((a)<(b))?(a):(b))
>   #define MAX(a,b) (((a)>(b))?(a):(b))
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
>   #endif  /* sys/param.h */
> 
