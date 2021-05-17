Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EFDB382281
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 03:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231739AbhEQBV1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 May 2021 21:21:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbhEQBV0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 May 2021 21:21:26 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 039ABC061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 18:20:10 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id h7so2245728plt.1
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 18:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X/4y7GD3Z8Ln90WwODbA7CcpM64DADZI0s1o1fvmEPs=;
        b=P8QEv7Rvw09eh/yv09CoK1b6pxD8ZYOtCKAgMewGZgjxEeUDv9Sx8KaGDk/1LpX1/T
         4UrwW2qz4FZfSwupWmJ6XM24qoFBlZ/tep0uf559n4NmqGNmcnX4AsMTqpZWsIUWwl9l
         OshLJg/tqj+Jt8ce0TDN5Infuga3SacnAXRyYNgGTCHHtz69h1wzeO5RXQAD54UbNZzz
         nSTgE5+oITgjaCrQgLnz8C2vdGSElzYp+H1xs1yzCDrpdww5Pwkb4l+WU6PDawW7MmOy
         50YxzN1MeydtgOCQD6YEkE/KVknBMrrGZz8x08ViVrT5sgOVci9b5LJeLPEBjSnPH2sZ
         m5Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X/4y7GD3Z8Ln90WwODbA7CcpM64DADZI0s1o1fvmEPs=;
        b=KoMzfySySisSp0RgXCTNkfmqEy3aDQpfqUDD8HPa16ravqf7QUAwFNXbDYPtzLKmGc
         feTy5eTs1TZhHaIV7WPL9gH6MeVDrfyaUZSFqNUmqSwgtGjjIRJh6w7IsViROLihNWqB
         HS6d84RzAcNAX2Kd/iSWPCA29r5xz2CyTSiaWd5+GOPtV9EaWyMaR05aVlsmkuK8ylG9
         49fRYdb2iBW37LT59xQtIkefuNuye9t9fpELR/W6tq+231IB1eH+Qd7LpzXumjL198Dz
         SlHstmJJTTD9CJ0KGe4hQkVBPyEfxcoiC8wCMmGHkATjusjgbsJtsUwrQpED11odHhov
         48lA==
X-Gm-Message-State: AOAM530IeJ2r+obMcin26veZhxXZM6HydTAA0S7t4XM5XudJKD7tn54s
        HjBNwkPMVcu6Lgh8GdzpEP04kbwQlfU=
X-Google-Smtp-Source: ABdhPJy3OY6GvlQP4wh7c85MEnumVo4kMq9UzI886zd2ZUVNa9YP9hi1zHoFSQCsh3BLvuTJTE+3RA==
X-Received: by 2002:a17:902:eccf:b029:f0:d163:4164 with SMTP id a15-20020a170902eccfb02900f0d1634164mr6139391plh.53.1621214408399;
        Sun, 16 May 2021 18:20:08 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id g18sm8561030pfb.178.2021.05.16.18.20.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 18:20:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Christoph Anton Mitterer <calestyo@scientia.net>
Subject: Re: [PATCH] console_codes.4: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <f795fae3da8d6f8bd527fe66023fa9486ac4acda.camel@scientia.net>
 <20210513152154.114888-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <aa476f0b-45ff-2821-9b86-ae2909e61e38@gmail.com>
Date:   Mon, 17 May 2021 13:20:04 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210513152154.114888-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, and Christoph,

On 5/14/21 3:21 AM, Alejandro Colomar wrote:
> The correct meaning of SGR is "Select Graphic Rendition".
> 
> See:
> <https://www.ecma-international.org/wp-content/uploads/ECMA-48_5th_edition_june_1991.pdf>
> <https://nvlpubs.nist.gov/nistpubs/Legacy/FIPS/fipspub86.pdf>
> <https://en.wikipedia.org/wiki/ANSI_escape_code#SGR_(Select_Graphic_Rendition)_parameters>
> 
> Reported-by: Christoph Anton Mitterer <calestyo@scientia.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
> 
> Hi Christoph,
> 
> Yes, it seems you're right.
> 
> Thanks,
> 
> Alex
> 
>  man4/console_codes.4 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index 690a2cd82..31c9e0c4a 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -298,7 +298,7 @@ T}
>  .TE
>  .ad
>  .PP
> -.B ECMA-48 Set Graphics Rendition
> +.B ECMA-48 Select Graphic Rendition
>  .PP
>  The ECMA-48 SGR sequence ESC [ \fIparameters\fP m sets display
>  attributes.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
