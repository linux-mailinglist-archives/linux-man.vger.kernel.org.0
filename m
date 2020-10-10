Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CBDD28A23C
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 00:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389496AbgJJWzp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Oct 2020 18:55:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730300AbgJJStX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Oct 2020 14:49:23 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4EAC08EC3D
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 11:10:42 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id n6so13475871wrm.13
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 11:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N8Y39f4DNguQ+d9T7qy8DzkrFYYOcPMMBth/t3iUp9E=;
        b=hja43UzoS9dc5QQkHeyHn8idGbOG2i9m/VO23z8uH7vLvFgWLssqpycwmalII/9im5
         NmCOyiLuDWRKnLBcTB/PNoscqhE20OVhO6PgwDPB+oLnetf6KyfqSyW4jh09y+adCEaq
         UhVyPqm3H4Zy+zHWIJd1JEQvp0+DpBEMt25rFQsyXPP8TmmLQ5XZ72X39P3YqLeqaUug
         3PEt4Te9wgf/lHrIQaCdOylw7m54AQFWKNq8iHxvq63NpchLA/nZz9BnWMw2Df8Rvmsm
         Uf0kJxvj1/W6wBSr6hAW6+6W84eJKlVi4H7OMFU6fF4etihju4wggff1TUuE7ITaY5Vr
         v/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N8Y39f4DNguQ+d9T7qy8DzkrFYYOcPMMBth/t3iUp9E=;
        b=IaZEWdAIaw75oEcaPtgnZWaPo9gTJQ/WUt8sZgyIy0pbCH+gj/YLA7L2lZlpDi+ZGC
         mwg6jfBzFrcNPcgSdq9Ex8fQ08xVIBBLJPsOKupw/HHy6+VMIztpnJtlYU7Dbyv5ocQB
         zwNjz8XWmYYllLASHAyNUG0k20myna9p+xwApjY3iTs9Le66I+ItLy6PIKjuGCz0IMhs
         kmJx4BjB65a8fnERuiuBZHTwamsSQsPWsb/6RCkDN5f5jLF/FIPNanaP9uMXkhOFcgj4
         Znzz78DbRdIjUGxbRbGh0DmcrwWcNuTqfWM4VNfxLe37ysKHGdl6AEde5zBmq2HCcw2S
         /drg==
X-Gm-Message-State: AOAM533Rt6PBkkiKJihyiFA8jQdFEh1jHPP9AGpW2uIO0bn42Lc9qRqr
        NYhIF/7fUqxR+VngEekOvxCPf7al5Bs=
X-Google-Smtp-Source: ABdhPJzSm5WhNcXwJxi74uIqzSlX1UKjTS7NlFIHe+DyVgAF31Mr9kWqHVWbGixXxOSM4+xXfnmSSw==
X-Received: by 2002:a5d:5344:: with SMTP id t4mr1804627wrv.267.1602353440636;
        Sat, 10 Oct 2020 11:10:40 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l8sm7193981wrn.28.2020.10.10.11.10.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Oct 2020 11:10:40 -0700 (PDT)
Subject: Re: [PATCH] regex.3: Remove unnecessary include
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20201010175001.3818-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <a98a8b96-6df6-0403-0bbe-0f19b57b195e@gmail.com>
Date:   Sat, 10 Oct 2020 20:10:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201010175001.3818-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I missed an example about these functions.
I'll send you one next week :)

Cheers

Alex

On 2020-10-10 19:50, Alejandro Colomar wrote:
> POSIX requires that the <regex.h> header shall define
> the structures and symbolic constants used by the
> regcomp(),  regexec(), regerror(), and regfree() functions.
> 
> Therefore, there should be no need to include <sys/types.h> at all.
> 
> The POSIX docs don't use that include:
> https://pubs.opengroup.org/onlinepubs/9699919799/functions/regcomp.html
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man3/regex.3 | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/man3/regex.3 b/man3/regex.3
> index d4f7a09e7..414011d91 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -32,7 +32,6 @@
>   regcomp, regexec, regerror, regfree \- POSIX regex functions
>   .SH SYNOPSIS
>   .nf
> -.B #include <sys/types.h>
>   .B #include <regex.h>
>   .PP
>   .BI "int regcomp(regex_t *" preg ", const char *" regex ", int " cflags );
> 
