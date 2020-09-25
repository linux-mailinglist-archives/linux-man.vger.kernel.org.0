Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8311D278A76
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 16:10:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728662AbgIYOKH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 10:10:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727290AbgIYOKF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 10:10:05 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98CFCC0613CE;
        Fri, 25 Sep 2020 07:10:05 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id k10so639522wru.6;
        Fri, 25 Sep 2020 07:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=A6nmPi2VnwT8MaI+xI5cT+LK3idB+EBisTZecbs9Hhk=;
        b=sDbbSiIGUYnty0IHz6R3dCr1ts10I6phTv3Xona6t4gOLaG3CjDAuKdyqH8PQqjih+
         S7mVMGEU2ha3liaPgnSblrcHNWkv1i0Wcku5gFylqEBiLJTMxDi4/xbl0Il4L9TyXHAs
         CqVefKvTTdJcMmE0mPNlaS7+OL5A8g386Kid7/RZpqOyG1jVKmZnCJ6eaiVmuOnUMO7L
         RDU6GzIBqJzgh2m3m73KA49MeS3SUDE+V//GFxVjc7xVVePy2++kEPSw1CsHKYsgaF6V
         mpdIVDt7RjDxPZcwjYrD0ncOtH7wa9hP+lI4pTEXBdrjza4h3Vuj+A2QZBkuIqHl76re
         ye9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=A6nmPi2VnwT8MaI+xI5cT+LK3idB+EBisTZecbs9Hhk=;
        b=dGjCzNHc6YMxQBAYm20LHbNxZ6q6fP0KtW+s7O09MlEZ4LpJrbzMSdj2/W/3xtZMrn
         kDiuU0yQkJfMt6g+Nnlc1sdpR0b0kuYlTwLp/K4upXhaU6mHrpsazhda+DFlS1gnArKo
         F/wasK/C4W4X0GNINX3bHwDb+vlJKGyhLqPCf038e5H0cA5bTgG8p5+0ITg1M1vKL8hi
         4dkRoOPt5z4CD0MDIalr20mnlo/E3EYBQ9XjxbMo7wbB3xTlm5yYbyIsW/XGqsalXT/2
         yBto1iu6gx48Hph3zZD5and0Yp2RZn7hGQVfZflrocWWwTK70vPI4vBnR5hcs73r77dm
         zuGA==
X-Gm-Message-State: AOAM530pijQWc9uEL3OSpRQTo9hC2n11c2RPBkZMystSIgOfRxdGcUIp
        nX/pr/JzIKj5kojvqMGr3og=
X-Google-Smtp-Source: ABdhPJwlhZFGTSd5lHeFglnSkh5rBWxV3sLX143XooL3f+AixAV5TFqCSteP5Qh4rx06vpOxPnh0IQ==
X-Received: by 2002:a5d:444e:: with SMTP id x14mr4545170wrr.235.1601043004289;
        Fri, 25 Sep 2020 07:10:04 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id p3sm2839786wmm.40.2020.09.25.07.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 07:10:03 -0700 (PDT)
Subject: Re: [PATCH v2] <sys/param.h>: Add nitems() and snitems() macros
To:     libc-alpha@sourceware.org
Cc:     libc-coord@lists.openwall.com, libstdc++@gcc.gnu.org,
        gcc@gcc.gnu.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, fweimer@redhat.com, jwakely@redhat.com,
        ville.voutilainen@gmail.com, enh@google.com, rusty@rustcorp.com.au
References: <20200922145844.31867-1-colomar.6.4.3@gmail.com>
 <20200925132000.235033-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f6257d7d-1cea-b45c-a858-b80bbc1f18b1@gmail.com>
Date:   Fri, 25 Sep 2020 16:10:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200925132000.235033-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-25 15:20, Alejandro Colomar wrote:
 > 'nitems()' calculates the length of an array in number of items.
 > It is safe: if a pointer is passed to the macro (or function, in C++),
 > the compilation is broken due to:
 >   - In >= C11: _Static_assert()
 >   - In C89, C99: Negative anonymous bitfield
 >   - In C++: The template requires an array
 >
 > 'snitems()' is equivalent to nitems(),
 > but it returns a 'ptrdiff_t' instead of a 'size_t'.
 > It is useful for comparison with signed integer values.
 >
 > Some BSDs already provide a macro nitems() in <sys/param.h>,
 > although it usually doesn't provide safety against pointers.
 >
 > This patch uses the same name for compatibility reasons,
 > and to be the least disruptive with existing code.
 >
 > This patch also adds some other macros, which are required by 'nitems()':
 >
 > __is_same_type(_A, _B):
 > Returns non-zero if the two input arguments are of the same type.
 >
 > __is_array(_Arr):
 > Returns non-zero if the input argument is of an array type.
 >
 > __must_be(_Expr, _Msg):
 > Allows using _Static_assert() everywhere an expression can be used.
 > It evaluates '(int)0' or breaks the compilation.
 >
 > __must_be_array(_Arr):
 > It evaluates to '(int)0' if the argument is of an array type.
 > Else, it breaks compilation.
 >
 > __array_len(_Arr):
 > It implements the basic sizeof division needed to calculate the array 
length.
 >
 >
 > P.S.: I'd like to put this patch in the public domain.
 >
 >
 > Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
 > ---

I patched my own system's <sys/param.h> with this,
and while 'nitems()' works fine,
I had to include <stddef.h> in my main.c to be able to use 'snitems()',
because I didn't have 'ptrdiff_t',
eventhough <sys/param.h> already includes <stddef.h>.

I completely ignore the mechanisms behind system headers including
other system headers.

Moreover, I didn't find 'ptrdiff_t' defined in any of my systems headers
I used 'user@debian:/usr/include$ grep -rn ptrdiff_t'.  Does GCC do magic?

What's the problem with that?  How should I fix the patch?

My system:  Debian bullseye/sid; x86-64; gcc 10; libc 2.31-3

Thanks,

Alex


 >   misc/sys/param.h | 60 ++++++++++++++++++++++++++++++++++++++++++++++++
 >   1 file changed, 60 insertions(+)
 >
 > diff --git a/misc/sys/param.h b/misc/sys/param.h
 > index d7c319b157..88e95c2dba 100644
 > --- a/misc/sys/param.h
 > +++ b/misc/sys/param.h
 > @@ -102,5 +102,65 @@
 >   #define MIN(a,b) (((a)<(b))?(a):(b))
 >   #define MAX(a,b) (((a)>(b))?(a):(b))
 >
 > +/* Macros related to the types of variables */
 > +# define __is_same_type(_A, _B) 
__builtin_types_compatible_p(__typeof__(_A), \
 > + 
__typeof__(_B))
 > +# define __is_array(_Arr)	(!__is_same_type((_Arr), &(_Arr)[0]))
 > +
 > +/* Macros for embedding _Static_assert() in expressions */
 > +# if __STDC_VERSION__ >= 201112L
 > +#  define __must_be(_Expr, _Msg)  ( 
          \
 > +        0 * (int)sizeof( 
          \
 > +          struct { 
          \
 > +            _Static_assert((_Expr), _Msg); 
          \
 > +            char _ISO_C_forbids_a_struct_with_no_members; 
          \
 > +          } 
          \
 > +        ) 
          \
 > +)
 > +# else
 > +#  define __must_be(_Expr, _Msg)  ( 
          \
 > +        0 * (int)sizeof( 
          \
 > +          struct { 
          \
 > +            int  : (-!(_Expr)); 
          \
 > +            char _ISO_C_forbids_a_struct_with_no_members; 
          \
 > +          } 
          \
 > +        ) 
          \
 > +)
 > +# endif
 > +
 > +# define __must_be_array(_Arr)	__must_be(__is_array(_Arr), "Must be 
an array!")
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
 > +
 > +template<typename _Tp, std::size_t _Len>
 > +  constexpr inline std::ptrdiff_t
 > +  snitems(const _Tp(&)[_Len]) __THROW
 > +  {
 > +    return _Len;
 > +  }
 > +
 > +# else /* __cplusplus < 201103L */
 > +template<typename _Tp, std::size_t _Len>
 > +  char
 > +  (&__nitems_chararr(const _Tp(&)[_Len]))[_Len];
 > +
 > +#  define nitems(_Arr)          (sizeof(__nitems_chararr(_Arr)))
 > +#  define snitems(_Arr) 
(static_cast<std::ptrdiff_t>(nitems(_Arr)))
 > +# endif /* __cplusplus < 201103L */
 > +
 > +#else /* !defined(__cplusplus) */
 > +# define __array_len(_Arr)      (sizeof(_Arr) / sizeof((_Arr)[0]))
 > +# define nitems(_Arr)           (__array_len(_Arr) + 
__must_be_array(_Arr))
 > +# define snitems(_Arr)          ((ptrdiff_t)nitems(_Arr))
 > +#endif /* !defined(__cplusplus) */
 > +
 >
 >   #endif  /* sys/param.h */
 >
