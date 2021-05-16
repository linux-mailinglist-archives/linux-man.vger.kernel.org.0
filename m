Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC32E3820B3
	for <lists+linux-man@lfdr.de>; Sun, 16 May 2021 21:53:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233132AbhEPTyl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 May 2021 15:54:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbhEPTyl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 May 2021 15:54:41 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8E9FC061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 12:53:25 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id d11so4243606wrw.8
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 12:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=FC24Usjt9j/Q9GxAITK0+Yo6k3bTMnxlUQLqS05NoM8=;
        b=XSYk+CL+WRGs1yoZz7nFpVPyyQmOFVpKvfZGtCsOreOzVG2eIszuadpw9vDP1z33x/
         5t+r32o98quzmaxLS3DMpwlIyZH0efbfdBWUKuJ92PsgW2j6kTTQUAWetU1nLo3NKrqD
         GgDyv9JKAyRISnFaiu5pwRMgYNU/UlKQfjqbZOwXSzOvFaTX25xLkJaqW5wWRRZ2nGJm
         p5RfQslBoNWRbBMYW50Kpo/O29N8FyBEr+0+o8KfQVfUFKV5fkK+junstp67Jda9BYRE
         tmPWUl03AL9do5rm1GUNX5ICrsd14PnFtCjG1EXOCB7a6GgL4NnLZqJOrFopcSSZSGTF
         xz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FC24Usjt9j/Q9GxAITK0+Yo6k3bTMnxlUQLqS05NoM8=;
        b=i/8EG2JjtlEA5qjMd2xQwu/Qqt6ggIEzrX/UXkFfrYqvs+s7quz+amDpN/n1tj6k59
         lYfeMBVN43ujX70f7qHel5CyOLHEytXGryYn9jDrCtJ8kKoy526eUkLFASDuBk/xADwB
         LEjXNVPE4Lqnvbl788I8rxEGAPFTqwjrZmLhzOJMyzl334pSr6PPxssWkhALLcG+R+Zt
         Nxtf7MH6I/63vyh89Vpoklqcz87OmUuaQUqzo1/VwAvrsePzFdXI9EstZUD/XRIp9/9A
         bgbCB0d4F2r9lp3UI7TH/D/rmWruGqXZWtQiiiUmbI2+mnNPZ3sJGy5hy8gqQcmYbL4b
         anVA==
X-Gm-Message-State: AOAM531QLe08ztSUpG2ZHv2zySuXho5zWXLCAVzcCH943IG0SnEho4he
        0tWhYzrOo0l2K3LWHz6Tq5ZKBrr8DOc=
X-Google-Smtp-Source: ABdhPJyDgxWw+fOW7NVJk4upHfIa4yw+QZxgvWEYHdDaQMIx4FEKa9oj2pv9o8YdrtVUgkT+ffMNoQ==
X-Received: by 2002:a5d:5250:: with SMTP id k16mr1292505wrc.211.1621194804507;
        Sun, 16 May 2021 12:53:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a21sm18599130wmj.34.2021.05.16.12.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 12:53:24 -0700 (PDT)
Subject: Re: [PATCH] gamma.3: Add reentrant functions
To:     Radisson97@gmx.de, linux-man@vger.kernel.org
References: <60a0296c.dU4x7sEqgjTKmQ6Y%Radisson97@gmx.de>
From:   Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <9ea78d04-fb9a-b2ff-2152-0471ff9a8c73@gmail.com>
Date:   Sun, 16 May 2021 21:53:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <60a0296c.dU4x7sEqgjTKmQ6Y%Radisson97@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter,

Thanks for documenting this.  However, please see some comments below.

Regards,

Alex


BTW, could you please ping me about anything that we have pending from
you?  Thanks!

On 5/15/21 10:05 PM, Radisson97@gmx.de wrote:
> From f91e8087a394e32fe8d7bffd3ceff7af0c05baa3 Mon Sep 17 00:00:00 2001
> From: Harms <wharms@bfs.de>
> Date: Sat, 15 May 2021 21:28:26 +0200
> Subject: [PATCH] Add reentrant functions for gamma.3

Please use the following format for commit subject:

page.3, anotherpage.3: msg

See the subject I used for this email.

> 
> Add reentrant functions for gamma.3
> Signed-off-by: Harms <wharms@bfs.de>
> ---
>  man3/gamma.3 | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/gamma.3 b/man3/gamma.3
> index 003964158..b0e0a68c5 100644
> --- a/man3/gamma.3
> +++ b/man3/gamma.3
> @@ -8,7 +8,7 @@
>  .\"
>  .TH GAMMA 3 2021-03-22 "GNU" "Linux Programmer's Manual"
>  .SH NAME
> -gamma, gammaf, gammal \- (logarithm of the) gamma function
> +gamma, gammaf, gammal,gamma_r, gammaf_r, gammal_r \- (logarithm of the) gamma function

s/,g/, g/

Also, please break the line, so that it fits in an 80-col screen:

s/ \\-/\n\\-/

>  .SH SYNOPSIS
>  .nf
>  .B #include <math.h>
> @@ -16,6 +16,9 @@ gamma, gammaf, gammal \- (logarithm of the) gamma function
>  .BI "double gamma(double " x ");"
>  .BI "float gammaf(float " x ");"
>  .BI "long double gammal(long double " x ");"
> +.BI "double gamma_r (double " x ", int *" sig ");"

Could you please use the same syntax of other similar pages (I've seen
that you could mostly copy lgamma.3), to maintain some consistency, and
only differ from them when needed.  However, if you think the other
pages could be improved, then go ahead and propose a very different
syntax, noting that we could probably improve the others too.

Also, don't add unnecessary quoting ("):

s/");"/);/

Please fix the old ones (non-_r) too :)

> +.BI "float gammaf_r(float " x ", int *" sig ");"
> +.BI "long double gammal_r(long double " x ", int *" sig ");"
>  .fi
>  .PP
>  Link with \fI\-lm\fP.
> @@ -45,6 +48,11 @@ These functions are deprecated: instead, use either the
>  or the
>  .BR lgamma (3)
>  functions, as appropriate.
> + .PP
> +The functions with the "_r" suffix are the reentrant version
> +of the corosponding function. The sign of the intermediate result
> +is stored in the the variable pointed to by
> +.IR sig .

See comment above.

>  .PP
>  For the definition of the Gamma function, see
>  .BR tgamma (3).
> --
> 2.26.2
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
