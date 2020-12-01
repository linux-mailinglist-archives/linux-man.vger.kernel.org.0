Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63B272CACB1
	for <lists+linux-man@lfdr.de>; Tue,  1 Dec 2020 20:49:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392417AbgLATtA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Dec 2020 14:49:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388946AbgLATtA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Dec 2020 14:49:00 -0500
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4677C0617A7
        for <linux-man@vger.kernel.org>; Tue,  1 Dec 2020 11:48:19 -0800 (PST)
Received: by mail-ej1-x643.google.com with SMTP id f23so6778026ejk.2
        for <linux-man@vger.kernel.org>; Tue, 01 Dec 2020 11:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fgauHfJR39n6yN37R6g/0HnCm0OEfUgXk7C3beXRcEE=;
        b=AUziJv/n5elb75uRyvzLht6s4UXNn5cN4O804Npkr+1NfmFZigoSYyqpOhOh6vn5Kg
         dFwvXevMS9xfcDc4fxImXYH8cA2OVjSuSgHFu0gMFRkvikDIEAuHwf+fDP8LwCuZ++dV
         1WorKkvID3O00oIuS4QNWknkzromLHVwNnN0p0VAQ9Sk6ky+PmRn5aGjDm5np/wCnJsq
         VOBvPLqkgHpybP3wh5G2Iucqyhwli702TIi4F/WPVyp4UJvN0nck17KY+CybWEXi6tCa
         mWbRjLZTNHTtpkkbXm42u23gBdmXlAwaDXsl5x33o2JZoRj9VsTD+62/avhqb+wO/Yip
         S1kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fgauHfJR39n6yN37R6g/0HnCm0OEfUgXk7C3beXRcEE=;
        b=C7xzIjheBXakjbMK9ERN9Pus0A0ocRArxEREn6uoPifZEPcsE3RJ8zd3OPf/QpwKeZ
         yr+1ONpW3LaC9dOlViLZ8bYTBPRA2Abc2Scv5Mv6SACalqdhWAx2U74IeogxVxhWg5Ik
         WRjmD/m6LKN8nSby2uMdBr+ggeud55OY1gJFIvp4E+yPiCapFM4jCAu5MNlyeXHss5cH
         Fke4FRL1apfIy+UIkadKSKvW5qMoZk5mEMDxpU0SR/4ws8UvJ8SxN6+8HMdTgx6VB2ud
         60o/PK4Vz0jCoScdKbJF9POMSNMgq53UNn/6pi+F+UOZSZa7pcNoBpckLBhL5xUT0bOr
         +MiQ==
X-Gm-Message-State: AOAM533wLnRcPaCXFpj6tj0D0kZkLpyShlQkE1JT46s1+nBhi8MQQF64
        HFv0okQaVeRcbIvR46oSSJg=
X-Google-Smtp-Source: ABdhPJztfxzSGdFNf1KbVr8+RqeFvw3bECDfgg/Uw3lqwjWQWJEooVK5kRhkXYouLnxQpBTP6Ghq7w==
X-Received: by 2002:a17:906:2a4b:: with SMTP id k11mr4504001eje.467.1606852098667;
        Tue, 01 Dec 2020 11:48:18 -0800 (PST)
Received: from ?IPv6:2001:a61:3aad:c501:15d9:d9fb:bc21:cb92? ([2001:a61:3aad:c501:15d9:d9fb:bc21:cb92])
        by smtp.gmail.com with ESMTPSA id b9sm339861ejb.0.2020.12.01.11.48.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 11:48:17 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Arusekk <arek_koz@o2.pl>,
        linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH] keyctl.2: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201201144024.7556-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7f2fab76-b144-0b1a-6568-4d2d9959c47f@gmail.com>
Date:   Tue, 1 Dec 2020 20:48:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201201144024.7556-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/1/20 3:40 PM, Alejandro Colomar wrote:
> From: Arusekk <arek_koz@o2.pl>
> 
> Fixes: fa76da808eff
> 
> Signed-off-by: Arusekk <arek_koz@o2.pl>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Arusekk sent this patch twice. I applied the first version in my local tree,
but this version of the patch has a better commit message, so I dropped the 
old patch and applied this version instead.

Thanks,

Michael
> ---
>  man2/keyctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/keyctl.2 b/man2/keyctl.2
> index 8930fb78b..4fa54bc14 100644
> --- a/man2/keyctl.2
> +++ b/man2/keyctl.2
> @@ -33,7 +33,7 @@ keyctl \- manipulate the kernel's key management facility
>  .B #include <sys/types.h>
>  .B #include <keyutils.h>
>  .PP
> -.BI "long keyctl(int " operation ", ...)"
> +.BI "long keyctl(int " operation ", ...);"
>  
>  .B "/* For direct call via syscall(2): */"
>  .B #include <asm/unistd.h>
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
