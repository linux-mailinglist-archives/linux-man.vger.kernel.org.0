Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B509F29AAFF
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 12:38:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2899193AbgJ0Lia (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 07:38:30 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:44033 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409493AbgJ0Lia (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 07:38:30 -0400
Received: by mail-wr1-f68.google.com with SMTP id t9so1476146wrq.11;
        Tue, 27 Oct 2020 04:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=t8iT8vBhgGfFcPExE13uV2njX3ArLHEUaSwDhfxlKNY=;
        b=OpsDkvfIcIfGCRSQ61h6du5Ie0xB6Jroz5rIhEFuM/nm95WN1mzgySDfiH4zgVA1LL
         FPs2OMoW9Z/1TtEZEZHHJRKZZEXmd4BsAZPABgNv2m2HuMYHK5ot26yB8H9NJh2MAwRc
         A270cFsJH4RNOGKoPd1Gr8BssNkKk7/sO1zagHzxFQQiw0YY1rWY0GJcm6l41nMTdIMJ
         s7BZ3qr3rLsw/TENNcmf4tu8J/1chCfko0kt/cRcvLY74WmEk3EKtFWRpwrzLYAKD50e
         HcSHwW0AGFrxxpZN81sZS0eIleWM8mjpA954PppSZets6d6f9ofkoilrjq5LIKW+yFBY
         xlyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=t8iT8vBhgGfFcPExE13uV2njX3ArLHEUaSwDhfxlKNY=;
        b=NSl14ZS1NhuAZxX+Xg9F1AgMSQi84oI7rEV2M97u2Gc/NppmjPZelqw+PbvE/U0wSq
         uTZxcg3MdMWlffQi/C4ZaPWh/sg241RgnX85xQtH9Ax/z+JfTq3xTi7GV+5Fcml6f2oE
         6Mm/097RedZBS0VcHTgWUboMeK9GxaPRXZbxlA5bWhdogx/TdlqO1w8ORnwoqBILGnvV
         XeogLHEwG4fzT/O78cPYcPsdg59UBRJ7ta2npdqc1B4f/MdwTBuJyLY82pDOy9QPiBw0
         yVuP3v9TmpCJShSrK7KzvPoiuy9l+q3ysezBPUy3RMdNTsl8RKeTnrwN5CSK6JNiuPJb
         7IaA==
X-Gm-Message-State: AOAM531NiNnpt00ICwE5jEcAxrfLP7JBMD0Sn0kAAnsRT3Ad0zt6nGUw
        T5HvGeEaT+JUEjLHZNvkeTY=
X-Google-Smtp-Source: ABdhPJzzdrvXV7uYHSg4jpIFgiX0/oVNeTVHOqapl7/VC1z0Ahywpjhh5pmu0K3CsNRokdo1Pg+yTQ==
X-Received: by 2002:a5d:468f:: with SMTP id u15mr2403894wrq.154.1603798707103;
        Tue, 27 Oct 2020 04:38:27 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id b5sm1616273wrs.97.2020.10.27.04.38.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 04:38:26 -0700 (PDT)
Subject: Ping(2): [PATCH v4] <sys/param.h>: Add nitems()
To:     libc-alpha@sourceware.org, libc-coord@lists.openwall.com
Cc:     libstdc++@gcc.gnu.org, gcc@gcc.gnu.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        jwakely@redhat.com, fweimer@redhat.com,
        ville.voutilainen@gmail.com, enh@google.com, rusty@rustcorp.com.au
References: <20200928191237.32063-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <2bbe4b2f-46c1-4caa-fbd9-6c8efbc0c7e5@gmail.com>
Date:   Tue, 27 Oct 2020 12:38:25 +0100
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

Ping

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
