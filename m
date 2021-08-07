Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 571B63E3773
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 00:48:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhHGWtH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 18:49:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGWtG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 18:49:06 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA4AAC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 15:48:47 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id k2so12135464plk.13
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 15:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZPU3nyRiSN8g5Zlw077+MvMBpg6cPEcZGUdImY64wys=;
        b=fZ9DJB+cvGucXwYfakOqnWgVqWD1rFjxWSSOQxU3EqRIqehJPrA9AE9CgJsHWBcqmC
         5vDPZThv7lUwe8n/lOJZzBtJ94xsVSwcR5FHbOQLZdZThXwC7pedsOa9HyVOn5LfO81f
         Cbfh1RRFCJh/5NE6ZozZwCyltqtWW8/Aw9UwEerHnOhR4PT+g7LATNaxGzp3xYeqr91C
         syLE9Juhe7lKevWVSlyiaMasaVfrIPF+ZNtbFPF9w/bt1H7PZT6ptnOgavN32IdTURfS
         1j/Br3FYwavoReQ04KRW87Wg+tVovq+Xg7p39kEFQOX1IVNKs+JubC44Wsr6wmjyRQOU
         5gRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZPU3nyRiSN8g5Zlw077+MvMBpg6cPEcZGUdImY64wys=;
        b=EVePZ3qvyXVFRt/OdByVQ/GouSVZo+Uq08O+U2qo1kfe0u5wjMClw8BRGb3avQbjYO
         MVPD1zcXwsaCWtPsY9NYMO/+69knzK/7D9Nli/QV8nA8Ns4I0p1MaSOTQiR20AxMS5v+
         WumCRUz2705RjjvaIjd5IuC1heSbCWlKdlP6Zml9LVnuHeH1j/YP/ki/0E0A36pY4C/c
         wUvF3C5zZDfNVDf2qcH3IJajj7JRv925olJ3p8Ici8bI8mDcIutf+Vqfbg11AM+5E3Bl
         +n7rvjgoHjkUuTEfkytaB12yefndNPKxNmfVLKGT/JsqPYo97pRtdUzS6/4RsHWpBP+k
         61aw==
X-Gm-Message-State: AOAM5303N2/ZdYwH8eLHelf+GB5tGH7b5gaRNLyTxM0EGMl/VB+RvbdZ
        xkBBWla3924406Y8zUry/Xt7EqvTYO0=
X-Google-Smtp-Source: ABdhPJzaZJWpNsOb87O4IRB8dEK3EDEooMub4JQwEcOx2+Fe0jE9wAxrk56KKaaLIWTYrXIEiV8Y3g==
X-Received: by 2002:a17:902:db08:b029:12c:4619:c643 with SMTP id m8-20020a170902db08b029012c4619c643mr14466690plx.26.1628376527287;
        Sat, 07 Aug 2021 15:48:47 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id f16sm11880465pfv.73.2021.08.07.15.48.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 15:48:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Sagar Patel <sagarmp@cs.unc.edu>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 26/32] tkill.2: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-27-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3bc02a05-2c21-bafa-1a38-8cf4c7a93a7d@gmail.com>
Date:   Sun, 8 Aug 2021 00:48:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-27-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sagar and Alex,

On 7/28/21 10:20 PM, Alejandro Colomar wrote:
> From: Sagar Patel <sagarmp@cs.unc.edu>
> 
> Correct function signature by adding missing parenthesis.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/tkill.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/tkill.2 b/man2/tkill.2
> index 6ff930e17..6e1afcd36 100644
> --- a/man2/tkill.2
> +++ b/man2/tkill.2
> @@ -39,7 +39,7 @@ tkill, tgkill \- send a signal to a thread
>  .PP
>  .B #include <signal.h>
>  .PP
> -.BI "int tgkill, pid_t " tgid ", pid_t " tid ", int " sig );
> +.BI "int tgkill(pid_t " tgid ", pid_t " tid ", int " sig );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
