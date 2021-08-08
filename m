Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 897FC3E37BE
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 02:55:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbhHHAzz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 20:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbhHHAzy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 20:55:54 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A51E0C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 17:55:35 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id t3so12404833plg.9
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 17:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XAkAQjOAACbS7EG7PhJcycssFmphrIp1qCBcSkJSl0U=;
        b=HMX0SMy8YcxtImhFBy+FTPKKpTZgkIXgGdW6sxPNpe4n5meIVriEDeze8OjJZa0QJc
         gEG2XgVrbqgENtP0MzyEIZhhmkM4fpLBnV8U1Xz1oTEFLBw/1fNGp6AJhliM92CKkwFT
         g494kX+v1DJyVrnccVfXe7CoB1+skbqXT+MXJII7DC2/N3a1yU2MAxzLVw9oEIm7ywj4
         yjr1iWhlo3xXwLtnyRRZyMfHFNI5beNTOobn2Ov8GAxbLQxlSk6aasIHoN9/1aR8xGXs
         6tUsuua1ZYZM7gwDxCh1pg6HBNVAF4cP1RespSo2ekW6V1f3Ai5gejQXsMD7AGre5Utb
         qciQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XAkAQjOAACbS7EG7PhJcycssFmphrIp1qCBcSkJSl0U=;
        b=suMMqIxP3D8Eft4iTQVSMiT9UEy2i/CKVE3RNkVUTxaa5pmeuiJYzq/4/YQDyp1FGm
         51+yk5pmxsOm4QZIMDYlzWnn2oA43e3UocwtCNH8X613YjJ3vjow8p2on4yh6S2BMk+a
         v0J9xvlreWVGltnSPgyDpiUAgWJxIxRxRqov+dULk9dKfEATdThAuBOUpLlyG6pDIVyg
         j0wRONtwUKb2/CCtJgxGtfftqkFFaL+UpvsT9+St+KCm8f2joLprMgKJ/JIwANxNMSyQ
         OsN8q2WnyhdkRGskwuv6MIL1JXJoGR2JsRQx1no61q/DEs63rxMX4UmWFlMFTkUbyEae
         X7ew==
X-Gm-Message-State: AOAM532ovD8+vkAIWhfnbrASBVui/KDj3jSozMdHgaWmZFk3W4vYicM2
        MT423T1c1hf76w8s1AzKFLA=
X-Google-Smtp-Source: ABdhPJyYNNzIkwnPmJTzcIGXKnMBOyGrbdPlX7Hk4JwaqKo/XY3BQhtDU7006Ug8d4CKd+XwJFfHog==
X-Received: by 2002:a17:90b:1d8c:: with SMTP id pf12mr27327498pjb.130.1628384135285;
        Sat, 07 Aug 2021 17:55:35 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id q19sm17058029pgj.17.2021.08.07.17.55.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 17:55:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Alan Peakall <Alan.Peakall@helpsystems.com>
Subject: Re: [PATCH 05/32] posixoptions.7: Fix legacy functions list
 (s/getcwd/getwd/)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8ba21ccb-03c2-401d-74aa-fee1e81a4409@gmail.com>
Date:   Sun, 8 Aug 2021 02:55:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alan, Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Alan:
> 
> [
> The on-line copy of the manual page "posixoptions(7)" dated
> 2018-04-30 has an entry for "getcwd()" in the section headed
> "XSI - _XOPEN_LEGACY - _SC_XOPEN_LEGACY".
> I believe that entry should be "getwd()" as that is the API call
> which was present in X/Open-6 but withdrawn in X/Open-7.
> ]
> 
> Reported-by: Alan Peakall <Alan.Peakall@helpsystems.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/posixoptions.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/posixoptions.7 b/man7/posixoptions.7
> index d2ee10302..d6882fe05 100644
> --- a/man7/posixoptions.7
> +++ b/man7/posixoptions.7
> @@ -968,7 +968,7 @@ The following functions are present:
>  .IR fcvt ()
>  .IR ftime ()
>  .IR gcvt ()
> -.IR getcwd ()
> +.IR getwd ()
>  .IR index ()
>  .IR mktemp ()
>  .IR rindex ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
