Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA323E37BB
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 02:48:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhHHAsl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 20:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbhHHAsl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 20:48:41 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E5F3C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 17:48:23 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id z3so12401422plg.8
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 17:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Qt3IecEy68OBKRJjyO+xn+QQEhxwpkEMB1EwCIX7QBg=;
        b=J5H26WPQVIINWglE5V4NT8qYRp3vEu+VRoVF8XPEgXQVRmBbtiB//yVXu2tUEyCPpM
         9E3u0U6uEq9LzTyBUqmx0M/bPY94GCr7vJ6Z2Nnuq5tUoIzUe/YPmVat8cfqbuJPizqh
         tN8f8QfrHOmFL02LHrjHruRM1bsHFxNHU2Hq4iRgpXk6ccR3gUoJLKK4G45PqA+RfHaY
         uHsrOiYZx48o++eP6uY+awCGdeh9Pj1JugDDtT4yBxyx0SK6t3ctuzHOrzu4dAoWoTD8
         7nghkSs8dYLhF55E8c6dHOBfk373U2UCbjmIQrulTkEAuTMaK2HSFqotw8KDExwoSkWs
         /7RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Qt3IecEy68OBKRJjyO+xn+QQEhxwpkEMB1EwCIX7QBg=;
        b=UJQBaCFe2CtIWHEonpH6NOMD2BNswJErYYaw3BCCb062PCFergi6M9hLJQS1b3Ib/w
         GRPRoWv2vJ6N+d9pnouJpDLdszoFr2Fk2urBbbKCDpZ0+HBw1oAZkxMSZ1G4y1snHaP9
         wlX/8R/U7qUzzgWzmFB19ZwMluR/pXAXD4cddYRjLB3r9HpSk2Ls0O1ygMsJMUKifQrm
         PuUJ/7Av6mQveVj6HyGhvN5H8Ic3elQ7ruzDPjO+3VKnftgpKZNXv1OKPHhuvlLaU5S0
         wSQyFycFtLDNrr67fF9/O0UflAZOOlssOCEPI0/mT3FUfvdyzcJHQKly4/jQbKJKgFqD
         6/fQ==
X-Gm-Message-State: AOAM531jEGQgY7qgL+G9CHLE8bp2ppLLsi6zwNNaMfL0OZaGh0u6Hg5M
        +mU4TeA0nlS8PM9ohLY2inSkXtZEkKg=
X-Google-Smtp-Source: ABdhPJz22fMN312uto5NWVzMnI9o7NpJstwQU58ApgtydBLBzi6qlglfpG2j8VcwVYx55XhMLsSLlA==
X-Received: by 2002:a17:90a:b002:: with SMTP id x2mr20516836pjq.100.1628383702635;
        Sat, 07 Aug 2021 17:48:22 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id t1sm17847823pgr.65.2021.08.07.17.48.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 17:48:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: Re: [PATCH 04/32] vdso.7: Add y2038 compliant gettime for ppc/32
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3d1a8bda-d23f-7254-d919-f604cc57e4bd@gmail.com>
Date:   Sun, 8 Aug 2021 02:48:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex

Again, let us add the bug in the commit message:

https://bugzilla.kernel.org/show_bug.cgi?id=213421

I have not yet applied this. See below.

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Christophe Leroy via Bugzilla:
> 
> [
> https://man7.org/linux/man-pages/man7/vdso.7.html (2021-03-22)
> 
> In ppc32 functions section, the Y2038 compliant function
> __kernel_clock_gettime64() is missing.
> 
> It was added by commit d0e3fc69d00d
> ("powerpc/vdso: Provide __kernel_clock_gettime64() on vdso32")
> ]
> 
> .../linux$ git describe d0e3fc69d00d
> v5.10-rc2-76-gd0e3fc69d00d
> 
> Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/vdso.7 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man7/vdso.7 b/man7/vdso.7
> index 1d527c38e..5fb22ab5e 100644
> --- a/man7/vdso.7
> +++ b/man7/vdso.7
> @@ -371,6 +371,7 @@ symbol	version
>  _
>  __kernel_clock_getres	LINUX_2.6.15
>  __kernel_clock_gettime	LINUX_2.6.15
> +__kernel_clock_gettime64	LINUX_5.10

Is it really 5.10? By contrast, I see

$ git describe --contains d0e3fc69d00d
v5.11-rc1~76^2~251

And indeed the symbol __kernel_clock_gettime64
does not seem to be present in the Linux 5.10 sources.

Cheers,

Michael


>  __kernel_datapage_offset	LINUX_2.6.15
>  __kernel_get_syscall_map	LINUX_2.6.15
>  __kernel_get_tbfreq	LINUX_2.6.15
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
