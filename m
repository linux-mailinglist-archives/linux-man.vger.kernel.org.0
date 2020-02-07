Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8B43155AC6
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 16:34:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727031AbgBGPeI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 10:34:08 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:42435 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726874AbgBGPeI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 10:34:08 -0500
Received: by mail-wr1-f66.google.com with SMTP id k11so3168394wrd.9
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 07:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=23QwbIqUlswZBBPhCv9NVK/zuoZZRUcGUtjezygdbnY=;
        b=GBQFjBQd3WbOebLq7eJI2DgN0UwjQEc+FsTRUSp606fGYIKNQY9mttZ+U8DgU+UfoO
         TCe6foyZb8FHd0BJpxYexbYCB1mJ3MdmAt6bpZPSdoHG3a7HvDiWmQ2yJ/xPsgo+vwNC
         4lf4JtX7Tjd39A3MOGS+hBCmO8E6s1IHPX0VK+UPVXEt6ks7FmTOvO/9mwI4LATU9+1u
         Yir4rUpBulmJAKHiXJC38L36Hq7Np7ZIEVasLKIXgsGog8ibJudG5w2y9glNevr8j9+C
         UTMwHH2n8ccFJMIOa1/ZpMie8jytpuEaPUCnMGA/jqZ0TEAYSOg5WkQDPoxf6b9KXuL1
         w0Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=23QwbIqUlswZBBPhCv9NVK/zuoZZRUcGUtjezygdbnY=;
        b=uPp2rBVT/OwgJVQODPUtduSYOGOh1g98AOs1UpDkB+8hkGlM7YysZ2N2GhF2sS60Py
         DRZV42itpf4mZcRHJ4FQgpEZjemhyPeCJX1QJe6KZD7dXtkaA3/lwUIGsLYNz5egu1S1
         7nz/fJQJpdNdf07G/u00A7UXXnZ640mv69ZeToQd7wVTk4p1+/rycHs0KeWbCs5Lo+CL
         qltG3+DrjdJPdVLxdD4vzANb8G99Cs/JHco/Q6FKgrB54MkJgkodXivbKjstWyNlLghB
         QG7y/OJCWmSRNsz9GhzM7NSI2wSVu1CT5oV/cn6tA/Ot/oyCOfp5q7D7NbE7hJfcPaFm
         sUuw==
X-Gm-Message-State: APjAAAUPg7KASsEPsnffQX5cy5zycRxZg1x7clobUjavLaxXJGia/oSU
        XbZnejhZcvkpEHbKYvQl0Q37IShZsjI=
X-Google-Smtp-Source: APXvYqwWJk+Vp6Rn2z7/zTIN/QW8qQLWVjA2O+mVGtPN/GtfiC8biAoE9fv4AKNkqbz2cH6e/hcuig==
X-Received: by 2002:a5d:6151:: with SMTP id y17mr5227441wrt.110.1581089646372;
        Fri, 07 Feb 2020 07:34:06 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id l15sm3781845wrv.39.2020.02.07.07.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 07:34:05 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH 2/3] console_codes.4: \e[38m and \e[48m
To:     Adam Borowski <kilobyte@angband.pl>, linux-man@vger.kernel.org
References: <20190308194059.9560-1-kilobyte@angband.pl>
 <20190308194059.9560-2-kilobyte@angband.pl>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b4d77b97-5cc2-6a46-8c8b-1ee609291b60@gmail.com>
Date:   Fri, 7 Feb 2020 16:34:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20190308194059.9560-2-kilobyte@angband.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Adam,

On 3/8/19 8:40 PM, Adam Borowski wrote:
> Supported since cec5b2a9 (3.16).
> 
> Signed-off-by: Adam Borowski <kilobyte@angband.pl>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man4/console_codes.4 | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index d605b058d..4283efe45 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -271,8 +271,8 @@ T}
>  35	set magenta foreground
>  36	set cyan foreground
>  37	set white foreground
> -38	set underscore on, set default foreground color
> -39	set underscore off, set default foreground color
> +38	256/24-bit foreground color follows, shoehorned into 16 basic colors
> +39	set default foreground color
>  40	set black background
>  41	set red background
>  42	set green background
> @@ -281,9 +281,20 @@ T}
>  45	set magenta background
>  46	set cyan background
>  47	set white background
> +48	256/24-bit background color follows, shoehorned into 8 basic colors
>  49	set default background color
>  .TE
>  .PP
> +Commands 38 and 48 require further arguments:
> +.TS
> +l l.
> +;5;x	T{
> +256 color: values 0..15 are IBGR (black, red, green, ... white),
> +16..231 a 6x6x6 color cube, 232..255 a grayscale ramp
> +T}
> +;2;r;g;b	24-bit color, components go 0..255
> +.TE
> +.PP
>  .B ECMA-48 Mode Switches
>  .TP
>  ESC [ 3 h
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
