Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AEAD265B10
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:05:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725862AbgIKIFO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:05:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725784AbgIKIEb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:04:31 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E265DC061573;
        Fri, 11 Sep 2020 01:04:30 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id g4so10533446wrs.5;
        Fri, 11 Sep 2020 01:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I4evR+fxuTX9qBk4XdboFDlhUTgd6HdvS5/sAKWnM6I=;
        b=ffwNWujjP+BbTM7+3WMpB1ouoVJyrqeyeYmXGyk6AVAyj0bKcNcLy49/elz5gntPsj
         WpvrQBWUAC21U/RlzdK6DBFCIdeEiLmGflHV+NLsklykgaZpYc51GyzCoDqi4zTKOLSM
         Hif6r4cGMx2JD3QIVHhrX8AZ9yCvQSJE82fwyVuTQzPxG8LyTpc53fkTDK4FuD7Q5+aG
         2fchPhgptxN3AXJxqbzBPI3eeDpBYHXZ7rz44lPJL0XEi7/+dGsG6w+dblmRL/EjoCqa
         YJCFnDzyr8xqM+lXfYzJSwnZy78EaOv6ChOB7r3tmKxL8bCb2hDg5l4JzdSfxxHhTGqQ
         Zf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I4evR+fxuTX9qBk4XdboFDlhUTgd6HdvS5/sAKWnM6I=;
        b=jc9a32A/DzZUYsS/dShj4Ap+WutaR+tk0HRh3G1Rp6bH4feqB1gd0jYP+7/QhvWyMf
         8RTVxWijGGl0wzB7J4pYb3frzELrqozl7ZAq5CFePMwWU4lqHezub17bIBYmJLM4kHbY
         Fh2q8fTPH9SzUvxRtN65AL+FmCvl6is15sgH7v7RVgYHirS53AYxzSj3umfgUWGC2XoF
         3yH4EVW0cB9nZ9fZOlJt2zRGfWEue0ll3bx/0zJfu2uMB43uC137XsVR10rhjnMeR0Eh
         Lw0OEEYfIQNBB6cuGCfvgavPbrpJqyNJ3sSrbFBafkPN8MQSZKqNhO1+rSFVVRPogX6I
         RW/w==
X-Gm-Message-State: AOAM5339eEIM3yav2zXwFyfNtMbkrP2X+J/F+fTrA57V5JWdNlk12AZk
        hhierHP/IceCpWtxPkvM4u3etOh6aMg=
X-Google-Smtp-Source: ABdhPJw/+KrJd8041BOmgdspQYSwqkLCb6HF5HEf9/SXIgzyKLgFfQ14AFxE5aGxm6T0lp9Bg4ljuQ==
X-Received: by 2002:adf:f903:: with SMTP id b3mr823030wrr.142.1599811469225;
        Fri, 11 Sep 2020 01:04:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t188sm2798299wmf.41.2020.09.11.01.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:04:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 14/24] fread.3: Move ARRAY_SIZE logic into macro
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-15-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b6b76d67-6ece-1677-6006-2b7495db94fe@gmail.com>
Date:   Fri, 11 Sep 2020 10:04:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-15-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

I don't have strong feelings for or against this patch. I guess
it does make the code more expressive, which is good. Patch applied.

Thanks,

Michael

> ---
>  man3/fread.3 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/fread.3 b/man3/fread.3
> index 4c5dc3dbc..8e71e620e 100644
> --- a/man3/fread.3
> +++ b/man3/fread.3
> @@ -136,6 +136,8 @@ Class: 0x02
>  #include <stdio.h>
>  #include <stdlib.h>
>  
> +#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
> +
>  int
>  main(void)
>  {
> @@ -147,9 +149,7 @@ main(void)
>  
>      unsigned char buffer[4];
>  
> -    size_t ret =
> -        fread(buffer, sizeof(buffer) / sizeof(*buffer), sizeof(*buffer),
> -              fp);
> +    size_t ret = fread(buffer, ARRAY_SIZE(buffer), sizeof(*buffer), fp);
>      if (ret != sizeof(*buffer)) {
>          fprintf(stderr, "fread() failed: %zu\en", ret);
>          exit(EXIT_FAILURE);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
