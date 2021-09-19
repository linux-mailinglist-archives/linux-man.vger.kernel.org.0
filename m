Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 425EB410D23
	for <lists+linux-man@lfdr.de>; Sun, 19 Sep 2021 21:39:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231849AbhISTkq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Sep 2021 15:40:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231848AbhISTkp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Sep 2021 15:40:45 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D0D8C061574
        for <linux-man@vger.kernel.org>; Sun, 19 Sep 2021 12:39:20 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id q11so24832292wrr.9
        for <linux-man@vger.kernel.org>; Sun, 19 Sep 2021 12:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cKigd1YNgIIHoq8UaJnkjEx2bY1teBrkACrlWI5+8jg=;
        b=XA7LLjXf7F3xnqr/6W1OzrAnJsrXXyWzfDjNDG3jg2otHkWP8oIA9C8wX0FnV+MmXe
         2Ursio3mnmnegqTNq+Nj8KcaBUlfBXt7WEQG7Z0a4C1pjCTgrDwAop/xukc69YwBNtns
         b1dby+GXy09vx7tqeTmgjf/X8xmucb4WIw56uc23knpDNQUZPCM/VFAQowREuURzB+zo
         25hidfaQKRX/Mvz2PydAwY7f0Kj53SKxsmJF4LwCJykI80ZZdzxsfnqH+T6dxrlNPfiL
         uHwTKm8FyjF1scXvo+5TbVVCj2OZbtMw1RvTA8KfMMbEUA/ytANt9agWmPVCAatEjKdi
         ufzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cKigd1YNgIIHoq8UaJnkjEx2bY1teBrkACrlWI5+8jg=;
        b=jurEa+3ipG7i10AI2O3YHmNApRi2wu/IyOYRsELy1/JJ9a9D89GHouKZxBJ3l7Tr8I
         qkPh0XfPCpFmtZMhzu/LoO2GHd2ZS03vqerP+O5YbliOD8Q6kcGv/ZV1GUGlK3wFFCKx
         xn9A8iOXJIRdi7I84c/HdUCerLMgpvrOhU+07kONXrwlAWS/A516LhakIMLMRqGDXXMo
         Ntp7VksU3wcPfhRFrU+yB0e4XrlVR+FZzs0a08O2Ns1R2bl14lQVHQbGsAjx8F2sKzuv
         3QL7+HNVlR1B2jTFU2f+xqcfp+K0c0qdvSFnB7dmN3hX3KDnI+pcPUxd9PLJ8oG3SNe/
         KQvg==
X-Gm-Message-State: AOAM530OQTtPjJR9FkJXXvAGARfqt6id7P9apt1MqsWEnUZTDrm2GUX2
        rcFUTx+zdUXjgwD1+5h1hNJxP/O18K8=
X-Google-Smtp-Source: ABdhPJyjCtJ9/yqZqbFBQAN0foF5LGJHjyAoimvmdcKjeIJ359Jqf8pZAw2qGFiiYna1xP/c0D+W9g==
X-Received: by 2002:a5d:6c67:: with SMTP id r7mr8069613wrz.29.1632080358587;
        Sun, 19 Sep 2021 12:39:18 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q11sm17338403wmc.41.2021.09.19.12.39.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Sep 2021 12:39:18 -0700 (PDT)
Subject: Re: [PATCH v2 4/5] alloca.3: remove GCC faffling from NOTES
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <fadbb957726f6d70ec87ca7f27fdf41c3042533e.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <15f837fb-1212-d974-5102-7b8075153761@gmail.com>
 <20210917204530.3i2ctkt52gyfu7x7@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3cdc683a-b026-0e76-d039-738cb46142c7@gmail.com>
Date:   Sun, 19 Sep 2021 21:39:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210917204530.3i2ctkt52gyfu7x7@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 9/17/21 10:45 PM, наб wrote:
> On Wed, Sep 15, 2021 at 09:48:14PM +0200, Alejandro Colomar (man-pages) wrote:
>> On 9/14/21 2:41 PM, наб wrote:
>> [...]
>>> +is required, lest a symbol dependency be emitted.
>> Sorry that I'm not a native English speaker.  I tried to learn what "lest"
>> means, but it's difficult to me, and I'm not sure I understand this line.
>> Could you maybe please reword it?  :)
> 
> I stand by the "lest" version because it gets less noodly,
> but rewritten as "in which case a symbol dependency will be emitted
> unless <alloca.h> is included", see updated scissor-patch below.


Hmm, the wording with 'lest' seems more precise, now that I learnt what 
it means.  I applied the first version.  I also applied the rest of the 
patches in this set (v1).

Thanks,

Alex

> 
> And, well, neither am I, but that's hardly here or there.
> 
> -- >8 --
> Chunks of glibc headers have no place in documenting an interface,
> and (__builtin_)alloca() is an intrinsic, not code; those days are,
> thankfully, long gone
> 
> Also, clarify standards behaviour (and remove the (outdated!)
> list of cc(1) switches) regarding when alloca() is allowed to not be
> ODR-usable
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>   man3/alloca.3 | 52 +++++++++++++++------------------------------------
>   1 file changed, 15 insertions(+), 37 deletions(-)
> 
> diff --git a/man3/alloca.3 b/man3/alloca.3
> index 20761b079..913cbe56a 100644
> --- a/man3/alloca.3
> +++ b/man3/alloca.3
> @@ -122,46 +122,24 @@ Do not attempt to
>   .BR free (3)
>   space allocated by
>   .BR alloca ()!
> -.SS Notes on the GNU version
> -Normally,
> -.BR gcc (1)
> -translates calls to
> +.PP
> +By necessity,
>   .BR alloca ()
> -with inlined code.
> -This is not done when either the
> -.IR "\-ansi" ,
> -.IR "\-std=c89" ,
> -.IR "\-std=c99" ,
> -or the
> -.IR "\-std=c11"
> -option is given
> -.BR and
> -the header
> -.I <alloca.h>
> -is not included.
> -Otherwise, (without an \-ansi or \-std=c* option) the glibc version of
> -.I <stdlib.h>
> -includes
> +is a compiler built-in, also known as
> +.BR __builtin_alloca ().
> +By default, modern compilers automatically translate all uses of
> +.BR alloca ()
> +into the built-in, but this is forbidden if standards conformance is requested
> +.RI ( "\-ansi" ,
> +.IR "\-std=c*" ),
> +in which case a symbol dependency will be emitted unless
>   .I <alloca.h>
> -and that contains the lines:
> -.PP
> -.in +4n
> -.EX
> -#ifdef  __GNUC__
> -#define alloca(size)   __builtin_alloca (size)
> -#endif
> -.EE
> -.in
> +is included.
>   .PP
> -with messy consequences if one has a private version of this function.
> -.PP
> -The fact that the code is inlined means that it is impossible
> -to take the address of this function, or to change its behavior
> -by linking with a different library.
> -.PP
> -The inlined code often consists of a single instruction adjusting
> -the stack pointer, and does not check for stack overflow.
> -Thus, there is no NULL error return.
> +The fact that
> +.BR alloca ()
> +is a built-in means it is impossible to take its address
> +or to change its behavior by linking with a different library.
>   .SH BUGS
>   Due to the nature of the stack, it is impossible to check if the allocation
>   would overflow the space available, and, hence, neither is indicating an error.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
