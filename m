Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC6F91C6DF0
	for <lists+linux-man@lfdr.de>; Wed,  6 May 2020 12:05:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728624AbgEFKFF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 May 2020 06:05:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728614AbgEFKFE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 May 2020 06:05:04 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75A8DC061A0F
        for <linux-man@vger.kernel.org>; Wed,  6 May 2020 03:05:04 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id h9so1491215wrt.0
        for <linux-man@vger.kernel.org>; Wed, 06 May 2020 03:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NxZqzWyEj0NmstSGm40xlfZ/BVYKGfWkncwyeDK+Wnc=;
        b=YvZHQ2cJwfn9kiQ40TOGasnK5VDEtv6DIUkzD+dGvO00Xb/tZgL46RZwgQQhXg208U
         WjPFQjC43OTwbWlf3EVe0vmPFWHClz9QXjDy1kEfAUnWip5DVpZrHnE/eZFFzpGY+T/o
         CiZko+LxoIyGmaPkdQdGDjFkWgCLVKHsdvjlRIQYomNi0jf2XfKXTkH2/H+uvqj1zvoe
         /sZXMvuWnVehc43zaO4CQOPcXmYMycE5mGiIE3nULFEtGA3BHNqi2XK5+wnankebtJvA
         Dqo2BAxYdyRKKZnAFjgpWL6hmfOiGYKrS/4AXV8sWIlxB2+KAGVafjnKp/f+io+2zgul
         gRvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NxZqzWyEj0NmstSGm40xlfZ/BVYKGfWkncwyeDK+Wnc=;
        b=A5SkxsD52UBIztNG09FoHEsNaPK5rKQ6yefKRggo1wIm84BAHJ3waRZR0dJPqWXYvP
         JNR5nMOXKG8am6eWKEoTcwtT50NWt91iK29yO9bdtZI0jmx1BdursC0S3XyTcfXV+EeL
         fMH0I0h+JJV14Q0lAEgeufEjTkqXfbVfYAq/XmP3IztwpObsVQkvEANYGj3rLGbY9dsc
         YlCxcPMCw1z4Z3JCHMvFdSp+7vtKKrNarZBhxTTfM6DSYay81VVccCa2R24nU2amTebV
         dI8AyUxLQDm7x0M4xaxHARthbOnERkfQNu3OctmXvm7Wp533ZCX3QR5KVYU0ld2u7b5B
         nLKA==
X-Gm-Message-State: AGi0Pub2QLGLedqyRCO84abEyjgZ8/p0paeb65Fgy2Wmxq0Qki0g37o2
        iUN4B4jzyOk1aT4shDE6FgM=
X-Google-Smtp-Source: APiQypJFVKH6FR4lDoS4yRXAF+COQ6L3cC0ZlAl0JudzrcF7KI7gSy9tcwkBp/Ze5II+f50b4ED9gA==
X-Received: by 2002:a5d:4005:: with SMTP id n5mr8537915wrp.242.1588759503213;
        Wed, 06 May 2020 03:05:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id c25sm2195384wmb.44.2020.05.06.03.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 03:05:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-man@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] syscall.2: arm: Use real register names for arm/OABI
To:     Dave Martin <Dave.Martin@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9c75b89f-be1e-52a7-e98c-46b7dfe89d1d@gmail.com>
Date:   Wed, 6 May 2020 12:05:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/5/20 5:24 PM, Dave Martin wrote:
> The arm OABI syscall interface is currently documented in terms of
> register name aliases defined by the ARM Procedure Call Standard
> (APCS).  However, these don't make sense in the context of a binary
> interface that doesn't comply (or need to comply) with APCS.
> 
> Use the real architectural register names instead.
> 
> The names a1-a4, v1... are just aliases for r0-r3, r4... anyway, so
> the interface is just the same regardless of which set of names is
> used.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Thanks, Dave. Patch applied, with Russell's Acked-by added.

Cheers,

Michael

> ---
>  man2/syscall.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index f2b277b..53ab40e 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -201,7 +201,7 @@ Arch/ABI	Instruction	System	Ret	Ret	Error	Notes
>  _
>  alpha	callsys	v0	v0	a4	a3	1, 6
>  arc	trap0	r8	r0	-	-
> -arm/OABI	swi NR	-	a1	-	-	2
> +arm/OABI	swi NR	-	r0	-	-	2
>  arm/EABI	swi 0x0	r7	r0	r1	-
>  arm64	svc #0	x8	x0	x1	-
>  blackfin	excpt 0x0	P0	R0	-	-
> @@ -332,7 +332,7 @@ Arch/ABI	arg1	arg2	arg3	arg4	arg5	arg6	arg7	Notes
>  _
>  alpha	a0	a1	a2	a3	a4	a5	-
>  arc	r0	r1	r2	r3	r4	r5	-
> -arm/OABI	a1	a2	a3	a4	v1	v2	v3
> +arm/OABI	r0	r1	r2	r3	r4	r5	r6
>  arm/EABI	r0	r1	r2	r3	r4	r5	r6
>  arm64	x0	x1	x2	x3	x4	x5	-
>  blackfin	R0	R1	R2	R3	R4	R5	-
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
