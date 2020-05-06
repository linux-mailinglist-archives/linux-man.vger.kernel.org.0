Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D78E31C6E2B
	for <lists+linux-man@lfdr.de>; Wed,  6 May 2020 12:16:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728557AbgEFKQN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 May 2020 06:16:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726354AbgEFKQM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 May 2020 06:16:12 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69BF1C061A0F
        for <linux-man@vger.kernel.org>; Wed,  6 May 2020 03:16:12 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id r26so1981629wmh.0
        for <linux-man@vger.kernel.org>; Wed, 06 May 2020 03:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PS0DJJtvWuHHfB/gb5wiK+AKxn9b2auIGP2Tdd+Xc6I=;
        b=Lx3XkbsGNc4VdjoTSabW2bJRhuXrArh9dewfOZ8xKEoKDoDNvRPFCNJtrcXLBeLFhq
         /jcZdrPUfau34vhVt+k6oSo25kYeJx9gAVlyUrT79zxcF9s2lVcrUiArEf3rTsZ+4XAF
         vlR+1v3iusahOj24FvnNdDFe6mGxIbSQISH+RWlE+uDAr5MvYBlUAsIjHjpGcjJ3Sc5Y
         6D9pChrhkFsVV6M05nydrHUfqlY3WYqjWjEE6WwXSaNRYr9qMqODePFJA2CfCghqnWYL
         k8yqjrUNEYU8qkHQhCeu4amkRWAYT1SmuoN8uvIa81o1gLMa91yB6W9WkDq3T25e5swK
         TKlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PS0DJJtvWuHHfB/gb5wiK+AKxn9b2auIGP2Tdd+Xc6I=;
        b=fTLEjhIPcz5pqx+rHMClvEbJGJpPixCk9jdT8RQr3/N3xaKBpRDgpU/Eyg/+HP/7Xg
         dTOeqH2jL8e+oAOiVHne6v3mcLDzRXHUOqic5Z3Od108fZAiyosazxHZBIctX6ST7oLg
         f0N5Nah9IKr+jQZ7tF9q4biCKlnN32paZJj9cFckhabr5kQj/r7ODG1vT3AJlo6+LwXi
         FPRHmCdpEcvaKEn6whZV8W3tT+pe79wz2gjRoI8prIfs0fexffwKH6KcYM3nEVpp20Uy
         zmtwLYjpUNgqLQPEbgahvBL5pdjHiKaCSXj4HIw2yDGTH24mQ6eRe5l4atRyfN/McPJm
         nsdQ==
X-Gm-Message-State: AGi0Pua93kUXyNYR0iGdOZYta3htx+HTNWfnYgDapbo7QdoEf7aoG+DY
        zDo1seKoFmKr1rl9jJmE2J0aRnX3
X-Google-Smtp-Source: APiQypKK3r/55oUPK8TAeaGZHWQcJDF2vIIMv4dWsYnR7vLm4xlfPl7oghC+AZpwZtof+2deycWcow==
X-Received: by 2002:a1c:5403:: with SMTP id i3mr3969583wmb.10.1588760170997;
        Wed, 06 May 2020 03:16:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id g24sm2057722wrb.35.2020.05.06.03.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 03:16:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-man@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
To:     Dave Martin <Dave.Martin@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <82affb91-8aa9-0316-421a-3ce503e396e0@gmail.com>
Date:   Wed, 6 May 2020 12:16:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/5/20 5:24 PM, Dave Martin wrote:
> arm64 is currently documented as receiving the syscall number in
> x8.
> 
> While this is the correct register, the syscall number is a 32-bit
> integer.  Bits [63:32] are ignored by the kernel.
> 
> So it is more correct to say "w8".

Thanks, Dave. Patch applied, with Will's Acked-by.

Cheers,

Michael

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/syscall.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 53ab40e..d724651 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -203,7 +203,7 @@ alpha	callsys	v0	v0	a4	a3	1, 6
>  arc	trap0	r8	r0	-	-
>  arm/OABI	swi NR	-	r0	-	-	2
>  arm/EABI	swi 0x0	r7	r0	r1	-
> -arm64	svc #0	x8	x0	x1	-
> +arm64	svc #0	w8	x0	x1	-
>  blackfin	excpt 0x0	P0	R0	-	-
>  i386	int $0x80	eax	eax	edx	-
>  ia64	break 0x100000	r15	r8	r9	r10	1, 6
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
