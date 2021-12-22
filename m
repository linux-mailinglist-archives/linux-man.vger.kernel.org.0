Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3C3747D741
	for <lists+linux-man@lfdr.de>; Wed, 22 Dec 2021 19:59:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236247AbhLVS7B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Dec 2021 13:59:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236238AbhLVS7A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Dec 2021 13:59:00 -0500
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A10AC061574
        for <linux-man@vger.kernel.org>; Wed, 22 Dec 2021 10:59:00 -0800 (PST)
Received: by mail-qk1-x736.google.com with SMTP id r139so2364302qke.9
        for <linux-man@vger.kernel.org>; Wed, 22 Dec 2021 10:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=H3CfFzplzNB1a/UenCBQsbX7US7gragnAy+iw9SXK8c=;
        b=CuLQGRHQ2bqMFm7V7hgRqTQlTNn5/tffxlNZUwRRvreTrj8WT7ngJt1JdllxMFmMNb
         5x23IixwXiShLy2leYdM5OU1JhyizEUFSNddapckansZqJ479PYEdtXZG5DcmNyy/sNg
         rkPk8mLB53FskqK5+84D2AxuFnQpBaAfoipFPTkOS7oebnp2X+D34qTpNsOMWB8V0E14
         eU4J8VO0eZRBOxIbBTIoycdkHvd0xs9lD03K4em1LUmAnYtsUj7rUdkwLvxQx7LIxBPQ
         77JQlj27BeQ26+uRrfky05R8SAStp6itnVRQ67rJlC6omFzgzT6ZuivIlSIYBia1GhI4
         iOug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=H3CfFzplzNB1a/UenCBQsbX7US7gragnAy+iw9SXK8c=;
        b=tlTlRWSGYfM3MkyOhAz02IJO8GG5gDxWBwuu9CgctoBD+A62Vqkjvj1AXVY+yqu1IX
         jc+I0ZlXqbSENl+swXdRNwUge8MxKmlxnZJEof1LZaJs45AWRSgtTPGfltdDOM2evCcc
         TRRX7bROqEj7iYkfaLUGAfuDzUJ3CEQX6fijDSiJf15RVySJLdk025/WZf7+PGVdLbrO
         uQ4iRQ55zrZm+KNx+RU8kWKb8W+jrk8phygyvXulrS736msRKalm21rTPHr35/mtU9Tj
         D2v2XsVLfGZsAXLZRoH0+F11BaO+bPo7PlwfyW7m3kzKFldOc+1937AURWgZDtaKJdWL
         Jdnw==
X-Gm-Message-State: AOAM532fwl64QnOv8+uw2koJ+lf5jBp9QulR/Bfxf6w2E2sriVOep8/B
        2ihL8L5bzk0XeDedNioH+xH1nQ==
X-Google-Smtp-Source: ABdhPJype1e57AxOMt2VrFbBSp0y8MMEIYIn9ujB5EFHu2h7hIeMxyTkb/vUz8CGm0Rtb3gbZwpfxQ==
X-Received: by 2002:a37:a78b:: with SMTP id q133mr2869821qke.729.1640199539561;
        Wed, 22 Dec 2021 10:58:59 -0800 (PST)
Received: from ?IPV6:2804:431:c7cb:3b1e:1ba8:c11f:6224:efe1? ([2804:431:c7cb:3b1e:1ba8:c11f:6224:efe1])
        by smtp.gmail.com with ESMTPSA id c25sm2600632qkp.31.2021.12.22.10.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Dec 2021 10:58:59 -0800 (PST)
Message-ID: <0e5a0463-2d8a-2daa-481c-92d7b7dc2d25@linaro.org>
Date:   Wed, 22 Dec 2021 15:58:57 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH] printf.3: Document %#m as strerrorname_np(errno)
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, Florian Weimer <fweimer@redhat.com>
References: <20211222181539.3262-1-alx.manpages@gmail.com>
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
In-Reply-To: <20211222181539.3262-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 22/12/2021 15:15, Alejandro Colomar wrote:
> Reported-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: libc-alpha@sourceware.org
> Cc: Florian Weimer <fweimer@redhat.com>
> Cc: Michael Kerrisk <mtk.manpages@gmail.com>
> ---
> 
> Hi Adhemerval and Michael,
> 
> First of all, happy new solar year! :)
> 
> I added documentation for "%#m".  Could you confirm I got the
> glibc version correct, and also have a look at the changes?
> 
> Thanks for the report!
> 
> Cheers,
> Alex
> 
>  man3/printf.3 | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index 4fa1f11f3..1e2bac4df 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -301,6 +301,17 @@ and
>  .B G
>  conversions, trailing zeros are not removed from the result as they would
>  otherwise be.
> +For
> +.BR m ,
> +if
> +.I errno
> +contains a valid error code,
> +the output of
> +.I strerrorname_np(errno)
> +is printed;
> +otherwise, the value stored in
> +.I errno
> +is printed as a decimal number.
>  For other conversions, the result is undefined.
>  .TP
>  .B \&0
> @@ -853,7 +864,10 @@ any flags, a field width, or a precision.
>  .B m
>  (Glibc extension; supported by uClibc and musl.)
>  Print output of
> -.IR strerror(errno) .
> +.I strerror(errno)
> +(or
> +.I strerrorname_np(errno)
> +in the alternate form).
>  No argument is required.
>  .TP
>  .B %

Maybe add that strerrorname_np is only support on glibc, since on the same
section it states that 'm' is a Glibc extension supported by uClibc and
musl.

The rest look ok, thanks.

> @@ -974,6 +988,13 @@ and conversion characters \fBa\fP and \fBA\fP.
>  .PP
>  glibc 2.2 adds the conversion character \fBF\fP with C99 semantics,
>  and the flag character \fBI\fP.
> +.PP
> +glibc 2.35 gives a meaning to the alternate form
> +.RB ( # )
> +of the
> +.B m
> +conversion specifier, that is
> +.IR %#m .
>  .SH NOTES
>  Some programs imprudently rely on code such as the following
>  .PP
