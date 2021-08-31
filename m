Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A1B63FBFF3
	for <lists+linux-man@lfdr.de>; Tue, 31 Aug 2021 02:28:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232179AbhHaA0v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 20:26:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230523AbhHaA0u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Aug 2021 20:26:50 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A9D8C061575
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 17:25:56 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id g14so13593275pfm.1
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 17:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aN/O1jtOJRMg6qp27Gkj4caOcVBMOgj+ghGkyYVxDqc=;
        b=vftkbwHicJLFjawUZFUG7fKADpFRvb+BxyHcXhNJpmuIIzWG04Y1r6Vn5tE7aw8k1F
         1Lt6WOt76pY1kwALTXV7M/HxtlUYQQJPunxVp1uNkuRd5TuYg7QbE+sr6WEqWvHBmwUQ
         VB0f0FzsEcmECIE4GaxX9L9o0C5AlqquNWNidfSffW/EpMQlVq8yL+wqe8NndUC3l3PA
         BOW7JpSs1Owfpi8nJ1MYVTRligau4f5ssN7AQzXyioOhYG385q7shl1pUor4gCyZ5ikx
         M5QZw5MQLTSXjwhN4FIVJpSj44pXAcIaOcflktnkn/A86mtXqVpvzDZVOzUEe5rC9yrb
         39zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aN/O1jtOJRMg6qp27Gkj4caOcVBMOgj+ghGkyYVxDqc=;
        b=gs7639B1P9FGi8D7Tfu/mJUjSrq43GJ8V71aVBjWsB1IjEGx5JPKrQq5YFJBIjMaIP
         +jpD919TMC2FqfHOReomtnzgVqFAxHTEsugOZnmHea6qkgkeT4LqfhLsmgiac02D9CBC
         53N6h+tEZfzmowHXK0Yws+r0If784yjzZD9hnFNI3j6Z9di1mYvJFPjoD4y+N700An3k
         jQQVGpPD/0iN2qb2L017LDrpccPDMtIYi0+Z1M8aswc/0bGF6KDYHH/fOwvCu0w0vUZw
         wTRRw+9OVj8JoKIJNOflxUYHPKAn08McALpWQPwQB5UpLDo4qgGeGU4rFdrcAFB68FW7
         n1uw==
X-Gm-Message-State: AOAM533JUIizJFbHyFGQ+mchBnPf8qwl2ti+Gm+WF+MnpQqsqsmBbtpk
        me3UxDBkzLyR3HvXP3Ug3P6nron8Fo0=
X-Google-Smtp-Source: ABdhPJyXPGsKP1lr4gab1Pp6e7GiX3bg0bb52KlRw6Z6LEAcsdt5xDU/dP5u2PAm3ppHHfTkOsYt8g==
X-Received: by 2002:aa7:984b:0:b0:404:fd28:1aca with SMTP id n11-20020aa7984b000000b00404fd281acamr882936pfq.34.1630369555514;
        Mon, 30 Aug 2021 17:25:55 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id 141sm18292379pgg.16.2021.08.30.17.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 17:25:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] termios.3: Clarify zero argument for cfsetispeed()
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <5dc2196a-9a2a-1b2e-e6ee-3539a62aad82@gmail.com>
 <20210830112552.18476-1-pali@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <234956c2-74e5-2ca4-d2f6-cfdbc0f244e7@gmail.com>
Date:   Tue, 31 Aug 2021 02:25:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210830112552.18476-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali,

On 8/30/21 1:25 PM, Pali Rohár wrote:
> Zero in this case refers to literal constant 0 and not symbolic constant B0.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man3/termios.3 | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index c96a5c15ec87..f888c15d754c 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -1017,7 +1017,11 @@ which must be specified as one of the
>  .BI B nnn
>  constants listed above for
>  .BR cfsetospeed ().
> -If the input baud rate is set to zero, the input baud rate will be
> +If the input baud rate is set to literal constant
> +.B 0
> +(not the symbolic constant
> +.BR B0 ),
> +the input baud rate will be
>  equal to the output baud rate.
>  .PP
>  .BR cfsetspeed ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
