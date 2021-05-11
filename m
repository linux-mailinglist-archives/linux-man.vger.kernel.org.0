Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5992637AC7B
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 18:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231220AbhEKQyf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 12:54:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbhEKQye (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 12:54:34 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F6D6C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 09:53:25 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id m37so16176435pgb.8
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 09:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=33uDna7aeMAqcbDBr3C1mo3h0wPtDLENeIFfugax+fk=;
        b=D2xyvcf6e2yURiNlAQtJFqXLxEM4drb0DukQoJ4RSLRpq/6CF79ZzNiOHCja+olvjO
         YOlbTLRdPyy2L7r4k9ktB5Gzhr20A8Oqh4reF9GxQ1U+8v5DCdXOw3BiyVUBwR1ui14S
         MoTUKYHrk7RKiT0fh69gF3o/552iaEfaeuGjdSY0mmafUH50lnaa4DEH1D4aQU2uN8qQ
         rSK99kXPo+Ogw4HJ0IVwqX9CF/o6hWcWLgdeuGS9Z3RnjdwaMHB087YN1SAMLj5HQSCw
         ffQ2ijIvhGLSmEtzFCvvqoHWPaYI2gtGw0rdLLjvSqdwCqr+86yqCdxs+z2wp1LG+hiD
         Ou9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=33uDna7aeMAqcbDBr3C1mo3h0wPtDLENeIFfugax+fk=;
        b=IHEsfRT9dnbzlVWlXknupnM/CyCOZyBjKXVBXb1FMCLDAUTmF0ja1tecS6i7D6QQbi
         g1UTz8BfZ3/RZQVRmTcacwYwdZvFIZYJO/nlRJZE3njRFt6FfRbgdJBexLDuPi6/i1S7
         OxLSvuHppMVX4yUk1yZbk1VkI5Rk0K0yoN6SPkK9fEufRIX26jFRHmYwz9NrQtSnN+A6
         RLSWLYxuVBB3ZkS9QNug7peU/UsD0Q0ld7yQ94GNo/8Hv7vijsL8fFK+v6x7FLkyIVn3
         /OOmyukPflv82lSOGSPFjWC5de7VYuZVrCRT1/9l5K3BQcLZxf2n/hOCZ7LZPkDApjAi
         JstQ==
X-Gm-Message-State: AOAM53149W1NL0CO83XfsjB34c9ehtuuiVZ4DNxgqxxspkc9c8X4BNnB
        P6/GrMS9oXY8LMyUFhjg071lZ/L6et0=
X-Google-Smtp-Source: ABdhPJxmI0Zqs3PgjTHfj1DWoF1GWvt945l31aAzdb7VSF5O8iLU+Xxv5FGasbSIe5zmrTGSxCJhBA==
X-Received: by 2002:a05:6a00:1685:b029:2b3:fca1:886e with SMTP id k5-20020a056a001685b02902b3fca1886emr17277089pfc.35.1620752004625;
        Tue, 11 May 2021 09:53:24 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id i14sm14448529pgk.77.2021.05.11.09.53.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 09:53:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Akihiro Motoki <amotoki@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] tgamma.3: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210511101147.24399-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a67acb2a-9ada-c5f8-f12b-01169249bc99@gmail.com>
Date:   Wed, 12 May 2021 04:53:19 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210511101147.24399-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, Akihiro,

On 5/11/21 10:11 PM, Alejandro Colomar wrote:
> From: Akihiro Motoki <amotoki@gmail.com>
> 
> Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

I have applied all 5 patches in this series.

Cheers,

Michael

> ---
>  man3/tgamma.3 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man3/tgamma.3 b/man3/tgamma.3
> index ae3f24ece..5cd58f251 100644
> --- a/man3/tgamma.3
> +++ b/man3/tgamma.3
> @@ -203,7 +203,6 @@ the glibc implementation of these functions did not set
>  to
>  .B ERANGE
>  on an underflow range error.
> -.I x
>  .PP
>  .\"
>  In glibc versions 2.3.3 and earlier,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
