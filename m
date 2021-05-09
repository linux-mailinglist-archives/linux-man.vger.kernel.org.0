Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECEE237796D
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:55:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhEIX4l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:56:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229853AbhEIX4k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:56:40 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8240AC061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:55:36 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id b21so8279678plz.0
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ILuCBuufvbcP4iKkbY07igDsA+U1hpnayOtODik9XJU=;
        b=cfQuKlhOnYSh5ZzEi7mRk8H03hb/i3RkmCBsK3rPMmF3Hr92VmAyALi3O1tls3EMEj
         PBo1M1Y5BhFx3p15zGjlGpVuhe2oGHTgqHMw+mA5hppKfU5FjUmRs8cuRN6HPpyKbGS/
         i1B9xY1hATM1xYbGv1VsRV/J2NYI8C5whr3wqYtzH0gjjHJ4Gq/w3Y1I6WjynE6X0kG2
         dK6zTzc6pAuLIGtb3IkGF9xEuP3wUIiydca6hAEpEQgN38e9U3xACeu+1S8ItghykWmB
         NBHxJyL0h2b9OiaQl0+bcuJsLlJW7Ia4zwhrP7xvA45Hl9fzKo6m/x7B4a1UDVuXSaNK
         T7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ILuCBuufvbcP4iKkbY07igDsA+U1hpnayOtODik9XJU=;
        b=VG0N1o/am/Shq8QBNbGgj1a83m6rldwERaeKGR7hAkmfF+DkMyNFc606Wj0fUiXJ8E
         5Nu6U03A0esCDoGxdZNK5dvsjn9GymVNZf4cWeI4gO6fcCnNFuH4U5iJ4pwdznnb9FgV
         k3cta3R/VMVBBpwe8xHrSuder+ri44HYusZiXwH5wEFDmnDof0xrX+UN7iPvLKSOBA2l
         cUQBfpCEjNfJZLsnczA0VHeHG2dbVKIi6bmtg3T7vRbsnQwFq7WFNVIb+RRHQl0FhQe5
         82wFih+Xg3qzjb5QvRedsU5FdUjiH/3JfcdN0KeuQGy9TkDDvs5uYCBNdGC581JvC1Ve
         OR7A==
X-Gm-Message-State: AOAM5321mJarhxbrulvnhiwPOytnF0EMFiuX9V+yHusKq7aL0BzVo0bU
        TwO82cx4Tiq8Et4e/ujqKWdY+fpUsaM=
X-Google-Smtp-Source: ABdhPJxc1nW0kU4M1i81NEeYm3f6irXOWxyNik3vcFnnxHL+ysYzR+fimLrwukZo4U0uAuDLi3nctQ==
X-Received: by 2002:a17:902:ab95:b029:ee:f899:6fe8 with SMTP id f21-20020a170902ab95b02900eef8996fe8mr21772448plr.81.1620604535831;
        Sun, 09 May 2021 16:55:35 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id t1sm9423116pjo.33.2021.05.09.16.55.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:55:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] bswap.3: bswap_*() are implemented using functions
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-29-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1699c4b3-b6a4-5b97-888d-3da22ee4f030@gmail.com>
Date:   Mon, 10 May 2021 11:55:32 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-29-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> See <bits/byteswap.h> in glibc.
> These macros call functions of the form __bswap_N(),
> which use uintN_t.
> 
> Eventhough it's true that they are macros,
> it's transparent to the user.
> 
> The user will see their results casted to unsigned types
> after the conversion do to the underlying functions,

^do^due

> so it's better to document these as the underlying functions,
> specifying the types.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Applied. Thanks! (Typo in commit message fixed.)

Cheers,

Michael


> ---
>  man3/bswap.3 | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/man3/bswap.3 b/man3/bswap.3
> index 937ef0416..369daa411 100644
> --- a/man3/bswap.3
> +++ b/man3/bswap.3
> @@ -29,19 +29,19 @@ bswap_16, bswap_32, bswap_64 \- reverse order of bytes
>  .nf
>  .B #include <byteswap.h>
>  .PP
> -.BI bswap_16( x );
> -.BI bswap_32( x );
> -.BI bswap_64( x );
> +.BI "uint16_t bswap_16(uint16_t " x );
> +.BI "uint32_t bswap_32(uint32_t " x );
> +.BI "uint64_t bswap_64(uint64_t " x );
>  .fi
>  .SH DESCRIPTION
> -These macros return a value in which the order of the bytes
> +These functions return a value in which the order of the bytes
>  in their 2-, 4-, or 8-byte arguments is reversed.
>  .SH RETURN VALUE
> -These macros return the value of their argument with the bytes reversed.
> +These functions return the value of their argument with the bytes reversed.
>  .SH ERRORS
> -These macros always succeed.
> +These functions always succeed.
>  .SH CONFORMING TO
> -These macros are GNU extensions.
> +These functions are GNU extensions.
>  .SH EXAMPLES
>  The program below swaps the bytes of the 8-byte integer supplied as
>  its command-line argument.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
