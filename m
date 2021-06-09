Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38A513A1EF6
	for <lists+linux-man@lfdr.de>; Wed,  9 Jun 2021 23:26:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhFIV2E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 17:28:04 -0400
Received: from mail-pl1-f172.google.com ([209.85.214.172]:42954 "EHLO
        mail-pl1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbhFIV2E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 17:28:04 -0400
Received: by mail-pl1-f172.google.com with SMTP id v13so13415783ple.9
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 14:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZP0RV6W3AS2Xyp5UnzIhBHwyGBnoQJbD4Hcps+Ps13A=;
        b=YXXIJRydYhUjBvMczPHNPzccS8SFp55cO3FvXk8ra5w5iUcx90W3bI3GPKSzfU55iP
         hNNlt9vDw3jf20nQGVpvcxZN6ZZRvXxcFkrt+MugeceEclG/38WbhCc5l8hHG+pwxrrk
         UoLzFK+qzlXPHk5cWNFIkpaoCyZF7nBYm6hS5+t8q2mEgH46ErY6VP4uoN0umlcJuzO3
         7ZdDrJdLxPvGVnmY8ILj3nnEH5HsQetQ6Qifga21DmobxxMlHUG2eK8UYSBjH+T05P9J
         tR/uH2bIwvd3TRwREZemS7NRPDPEk/AaNa+IV/mO2oPmbrSBpacv6tMi+PiYsZOqcDKM
         N48w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZP0RV6W3AS2Xyp5UnzIhBHwyGBnoQJbD4Hcps+Ps13A=;
        b=Irb615eJ3GbXzau3faJfVTYaDGWTmNSoDNkTCBh1/I0jyvfprLvXwSsIjSuvKiUfDx
         HKjTPBma9LwZcyLysX+jg+IMtbPEvBlNJXXOE4d/57BBJsu9/vwOdY0IcuTJIDzjRWty
         +cvu330gaT2mt/CzuHB13FJ5x5iI2MJ2p73RAD6RNIKhyxFNoYjc9N3AvI4Xrffn+KE2
         /8ysU0bmyGg1NLT6PBeiADauIojRzY7sKsuGS77bQG8uIzQP65AIHf7LkPtmIDGsiwFW
         Cc5NAg95aU01TnwVPlQ+Z4PLKqc1iwkNA9ealxr2z+IRP8cW/rTmCN7GQOAfZx0YIuJh
         XPYQ==
X-Gm-Message-State: AOAM532wApRYRmWbNfU7oYjeSnKWFasIKr/mBIY8Zx3EimOdOk1s4eOB
        wNTQeu5PNF66GEvc0BiOCwJcMd7SB+0=
X-Google-Smtp-Source: ABdhPJzHt2he6DN8dmUEPOVtwOW8Qor84JMJmg0UAsCuTO8k5oDK1Uau3sqd2BV+rWXUnkh8/NKcHA==
X-Received: by 2002:a17:902:ce8f:b029:114:a0e5:7be1 with SMTP id f15-20020a170902ce8fb0290114a0e57be1mr1718607plg.10.1623273894698;
        Wed, 09 Jun 2021 14:24:54 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id s21sm622030pgo.42.2021.06.09.14.24.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 14:24:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, dann frazier <dann.frazier@canonical.com>,
        linux-man@vger.kernel.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        David Howells <dhowells@redhat.com>,
        Pedro Principeza <pedro.principeza@canonical.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Kyle McMartin <kyle@redhat.com>,
        Matthew Garrett <mjg59@google.com>
Subject: Re: [PATCH] kernel_lockdown.7: Remove description of lifting via
 SysRq (not upstream)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210527071341.5764-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1ec0ecd8-97fc-41e0-4890-b126d773b7f3@gmail.com>
Date:   Thu, 10 Jun 2021 09:24:47 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210527071341.5764-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, Dann,

On 5/27/21 7:13 PM, Alejandro Colomar wrote:
> From: dann frazier <dann.frazier@canonical.com>
> 
> The patch that implemented lockdown lifting via SysRq ended up getting
> dropped[*] before the feature was merged upstream. Having the feature
> documented but unsupported has caused some confusion for our users.
> 
> [*] http://archive.lwn.net:8080/linux-kernel/CACdnJuuxAM06TcnczOA6NwxhnmQUeqqm3Ma8btukZpuCS+dOqg@mail.gmail.com/
> 
> Signed-off-by: dann frazier <dann.frazier@canonical.com>
> Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>
> Cc: David Howells <dhowells@redhat.com>
> Cc: Pedro Principeza <pedro.principeza@canonical.com>
> Cc: Randy Dunlap <rdunlap@infradead.org>
> Cc: Kyle McMartin <kyle@redhat.com>
> Cc: Matthew Garrett <mjg59@google.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/kernel_lockdown.7 | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
> index 30863de62..b0442b3b6 100644
> --- a/man7/kernel_lockdown.7
> +++ b/man7/kernel_lockdown.7
> @@ -33,11 +33,6 @@ where X indicates the process name and Y indicates what is restricted.
>  .PP
>  On an EFI-enabled x86 or arm64 machine, lockdown will be automatically enabled
>  if the system boots in EFI Secure Boot mode.
> -.PP
> -If the kernel is appropriately configured, lockdown may be lifted by typing
> -the appropriate sequence on a directly attached physical keyboard.
> -For x86 machines, this is
> -.IR SysRq+x .
>  .\"
>  .SS Coverage
>  When lockdown is in effect, a number of features are disabled or have their
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
