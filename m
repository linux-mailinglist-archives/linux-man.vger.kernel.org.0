Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89C5D27A403
	for <lists+linux-man@lfdr.de>; Sun, 27 Sep 2020 22:24:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726603AbgI0UYW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Sep 2020 16:24:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726309AbgI0UYW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Sep 2020 16:24:22 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 568D1C0613CE
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 13:24:22 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so9646534wrx.7
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 13:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vmEkO6TFlQfynUGb+WLncI4IjVNJi3a5naoQXIaqVsw=;
        b=Z9maTow46peShHR4+hYXzyY5zda1Wg5ZE+sgp/FUZTqjVRPBcejaLW3siJWGer0Sr5
         SsbI+4IQc7QKGGgWuBKB2HSIlnp05iT0pSX6dVULU6FSYbOoE/11rS2WABYRvzoNSIyW
         5AdUJMD/jIj7XnCAmeUc8f9oN8q0FxIpv69Z9l68AixrYFdnut9OCdGv2b13cBDFqMk2
         tx6EBXStLDbCSycSwYZccRPtoRqMqtRSyt9EIBDWzD0IDS4eIwCzI7E2xCOeZenI56Ki
         MXxmmW/AUosiHkjsg6DjIoxliIBM7jG6GHH1qFcFLlG9Df7HxRtdAtvzaeFrnsDdKI1b
         biJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vmEkO6TFlQfynUGb+WLncI4IjVNJi3a5naoQXIaqVsw=;
        b=fFElC1NGXl365uLFg86bAxFafpKvRDNh+nhG3b6Y7vSc7NEXIpalmkR3TfQZuFMKkb
         2Wm3zY7s1DGB7JolpFKw121a0sjbzYQuNcYBa4l7e1UIwcPHMWMFKmo658fk8riSLFDY
         Uhpz1m2HWXBMdvPbHH0iGeBYV8IGP5v+JCFr1Ch2/nZ+NrRBIDsgCMKa0Xsk0yirA7sj
         Dh7zkhWhz/dPcZz0xJr63BrcpOl5U/4utxvFoBV8d1hzPHRpG/Ya4U9crCQfLQUVVtzR
         Vlzw6qP1rj3ebsu/+8bKtP3IdPqD34lLHxFZloMDqLzeYEc1pHz7GY33s7J1b/OSower
         Hwtg==
X-Gm-Message-State: AOAM533diEIlgw7bJ13R1s7aTEPM3MLVWsl8ohQaFV16vY0M9bKR7sGh
        iK1YiI+cm6TWApuLEQyp6Obz8cIOODg=
X-Google-Smtp-Source: ABdhPJz2toEBZj8QQSHcnWQxhJlrQSoiOV+ahrc4PNgHxnPc0UJjzZAYMg9sd2vBioJLKpS/TZci1Q==
X-Received: by 2002:adf:ff83:: with SMTP id j3mr15634180wrr.135.1601238260822;
        Sun, 27 Sep 2020 13:24:20 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 76sm6621053wma.42.2020.09.27.13.24.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Sep 2020 13:24:20 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <bff2769a-8999-b658-6bb3-5b4bfa8255d0@gmail.com>
Date:   Sun, 27 Sep 2020 22:24:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 2020-09-27 08:10, G. Branden Robinson wrote:
 > At 2020-09-25T10:03:30+0200, Alejandro Colomar wrote:
 >> @@ -454,7 +454,7 @@ Used for a count of elements, and array indices.
 >>   It is the result of subtracting two pointers.
 >>   According to the C language standard, it shall be a signed integer 
type
 >>   capable of storing values in the range
 >> -.BR "" [ PTRDIFF_MIN ,
 >> +.RB [ PTRDIFF_MIN ,
 >>   .BR PTRDIFF_MAX ].
 >>   .IP
 >>   The length modifier for
 >
 > Ooh, thanks for that.  The deleted line is a terrible anti-pattern and
 > you're doing everyone a solid by removing the temptation to copy it.

Yup, I introduced that line a few patches ago because
I didn't know .RB existed :)

BTW, thanks for all your comments.
Thanks to them I improved the style in system_data_types.7,
which I started a few weeks ago.

Thanks,

Alex

 >
 > groff_man_style(7) attempts to lead people to the light:
 >
 >   Optional macro arguments are indicated by surrounding them with square
 >   brackets.  If a macro accepts multiple arguments, those containing
 >   space characters must be double-quoted to be interpreted correctly.  An
 >   empty macro argument can be specified with a pair of double-quotes
 >   (“""”), but the man package is designed such that this should seldom be
 >   necessary.  Unused macro arguments are more often simply omitted, or
 >   good style suggests that a more appropriate macro be chosen, that ear‐
 >   lier arguments are more important than later ones, or that arguments
 >   have identical significance such that skipping any is superfluous.
 >
 > ...but alas, groff 1.22.5, or 1.23 or whatever we call it, is not yet
 > released.
 >
 > Regards,
 > Branden
 >
