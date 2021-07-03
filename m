Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9F863BAA00
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:34:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbhGCSgx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:36:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhGCSgx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:36:53 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8B05C061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:34:17 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id i2-20020a05600c3542b02902058529ea07so709711wmq.3
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pgKdth9xXoJdKv0BSdHMBVfT1sarX4IK2y2wLBRREGo=;
        b=nGU52tn7GeMm5c813n1ClvVn4Xomkj2nBL4+c3fyYD94TN9I1o0bPCglUtOwDOxr2z
         szQxti0xDeiJ5gJTfFTwU+NYpNb27usfOoeoYXsUtsSyLPfnVCI574/JUDRQrqMQKJ1n
         mFY2yGSlmXZnyy3cudQ4T+b5brL7XDOYTHU8RhVYH4gKxq7KPVuugpl2FcOgxhItH+O/
         TMGFySu7D0MpkNY0Q2FqknkM+wjX7ajlFmIH2FGT42sXyHvLiB3qABgFDv0f5JwFIwD0
         TWKRdCQXLtDiw4fgWPB1bg+mxhiHhxSgIyBtC75MSNG9DV5s3BFz53RWQbNrzop84dDc
         TJNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pgKdth9xXoJdKv0BSdHMBVfT1sarX4IK2y2wLBRREGo=;
        b=sNz2byFIRYp1BCoaT4g+EPnbn+U58kujilqinUHJoVzQWUsdgMnFkzzifZMdVko3Jl
         /6C5zhw2x6UR07y/C/Ls//cdRLgmyaHQLYwbfVy4C7iPx2DdtfA+SumgGCN8B5rZJPHA
         y6HckwscB0A1b80DDIuAw4NUMCjKw2h1luWjmwM2C74bbbUgiVBkOiOk5Ijesefymg+/
         5viavC9a5U5rpXCXWQyLEuSb5bd7XEL/0ENetbbFB6/geduTzB2kGvIaz5zsprZRgRBM
         nuQEG2Jhfusgc5WmOqYs21UatX6jm8eoJT7qAnz71dxqxsQz7khILnuiqKkaePO9akbw
         JCbw==
X-Gm-Message-State: AOAM531Ca+WY1mO7SYxybBg/svJK4z97FDngdWz5bTKQJPb63WyTekKP
        NscEeeoOr1BD/tDLJgAkXiI=
X-Google-Smtp-Source: ABdhPJyc8bgqeelfKswOVyJ6hS7n5fwcegyQBaHEZIMrDX+l44we+DxCXWubblwcbekDZZTJi8xz9A==
X-Received: by 2002:a7b:c191:: with SMTP id y17mr5696300wmi.25.1625337255730;
        Sat, 03 Jul 2021 11:34:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y8sm7071906wrr.76.2021.07.03.11.34.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:34:15 -0700 (PDT)
Subject: Re: [PATCH] printf.3: wfix
To:     Sergey Petrakov <kr@spmail.info>
References: <OS__dSBxRx5DHJbgzyVTGxQ5GDBYmp9SjHoKTnxdL-t-y60vMFJUa9J7wrZIUrvgOcROHoSowVhKznMQJ7lOqbb1rv9M8vB8RdzXhp9Q-zA=@spmail.info>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4da79252-7916-d9b8-860e-a41bd7a56765@gmail.com>
Date:   Sat, 3 Jul 2021 20:34:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <OS__dSBxRx5DHJbgzyVTGxQ5GDBYmp9SjHoKTnxdL-t-y60vMFJUa9J7wrZIUrvgOcROHoSowVhKznMQJ7lOqbb1rv9M8vB8RdzXhp9Q-zA=@spmail.info>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

I applied a different patch.  But thanks for the report!

Cheers,

Alex

On 6/24/21 7:38 PM, Sergey Petrakov wrote:
> Signed-off-by: Sergey Petrakov <kr@spmail.info>
> ---
>  man3/printf.3 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index fcc3bd6f3..28435af62 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -114,9 +114,8 @@ is the same as
>  .BR fprintf ()
>  except that it outputs to a file descriptor,
>  .IR fd ,
> -instead of to a
> -.I stdio
> -stream.
> +instead of to the given output
> +.IR stream .
>  .PP
>  The functions
>  .BR snprintf ()
> --
> 2.20.1
> 

From: Alejandro Colomar <alx.manpages@gmail.com>
Date: Sat, 3 Jul 2021 20:31:04 +0200
Subject: [PATCH] printf.3: wfix

Reported-by: Sergey Petrakov <kr@spmail.info>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/printf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/printf.3 b/man3/printf.3
index fcc3bd6f3..1074626e1 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -115,7 +115,7 @@ is the same as
 except that it outputs to a file descriptor,
 .IR fd ,
 instead of to a
-.I stdio
+.I FILE
 stream.
 .PP
 The functions
-- 
2.32.0



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
