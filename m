Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CC542BC245
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 22:28:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728468AbgKUV1G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 16:27:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728402AbgKUV1F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 16:27:05 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96832C0613CF
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:27:05 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id u12so14611578wrt.0
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aDEWj3pskt1tlpUHgFuUk8MbhiAlTCYgenpMca/Ut6E=;
        b=rMPqNFZ+EWni2i+7TVamj9yTCDgQotznQBSYo9OrAk57kuTO+dMHVqmuTXePG/uQ9+
         gVqcbUT3Tar9V5/uXLSjWmR0Et2srI88eOHs5/NEUuXJKXi+VcNk+So0CcbwDAWUAfds
         8E1I0DWlBm25xgLFabTBQR/xbh+/cUofmjXGjaoCwA1Aa0/sypphPtKVzoue2nYpwUcW
         UEE0JIMdnuXLJZlj/unb9Or4tSLrKM+VZDpmgL8+wrebJcBwBACQSiNIpnt6V9XAoCTw
         zuLNcI0whSzj3S5HQ/axFccxrdtCGaWhbd2cuLj4F8N27v5LuObD1WN8pOu9OREUindi
         XZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aDEWj3pskt1tlpUHgFuUk8MbhiAlTCYgenpMca/Ut6E=;
        b=G4PcDamM8kyJFT7We0aeJL/8XIjD8IcRezNcz8mltFapOJ2m8lKC5/Ifo89yOMJbbj
         fzZ324Lxk/k75MhXeBvNQ7W+oHRuUrKxG7y5RDM+Ugki9v7FmxO9npAj2+GNNMtpc2LL
         h+8CNAaCCpyjlj146tRlpuQH3O+d4KF51vjMNiu0VIW5YQEMSQi3nKe/XmJtRbf642Nr
         ANEqwixmSRLUVOIJRRtCCGp6nYZHVIboFExCg6P1f7JDZatPR6vsGFLok5OdDGGd8HyY
         qkjYnuAbXgab6suXgT1AGCmcca6YeJul8FASa3k6IhzdBPtWz85jf4DJnAmQxlaFfXZS
         R16Q==
X-Gm-Message-State: AOAM533YAwDgjuvV4RowqSftlEPWw2twImKCXvhAqGT9c26hJlZdDZRH
        nuZS3Y/3h3xeZ4NCJpFFWdbXYVtlHA18vg==
X-Google-Smtp-Source: ABdhPJxPlAPonsb3TU/QenMqxdOX6pxY4imQajQeryYE9/oShrsfSRQ3vtao4IboZE20BImSk3P2sg==
X-Received: by 2002:adf:f944:: with SMTP id q4mr2801478wrr.120.1605994024169;
        Sat, 21 Nov 2020 13:27:04 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id f4sm2442463wmb.47.2020.11.21.13.27.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2020 13:27:03 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] utmp.5: Oxford comma
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201121173903.12429-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <512e1381-1ef0-3628-c256-60d06a478f6f@gmail.com>
Date:   Sat, 21 Nov 2020 22:27:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201121173903.12429-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/21/20 6:39 PM, Alejandro Colomar wrote:
> Found using:
> $ grep -rn '\\f., [^ ]*\\f. and' man?
> 
> I also updated the markup in that paragraph: \f -> .
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks, ALex.

Patch applied.

Cheers,

Michael

> ---
>  man5/utmp.5 | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/utmp.5 b/man5/utmp.5
> index 3b8340858..3b8afc199 100644
> --- a/man5/utmp.5
> +++ b/man5/utmp.5
> @@ -176,9 +176,18 @@ records may be located by
>  .PP
>  When
>  .BR init (1)
> -finds that a process has exited, it locates its utmp
> -entry by \fIut_pid\fP, sets \fIut_type\fP to \fBDEAD_PROCESS\fP, and
> -clears \fIut_user\fP, \fIut_host\fP and \fIut_time\fP with null bytes.
> +finds that a process has exited, it locates its utmp entry by
> +.IR ut_pid ,
> +sets
> +.I ut_type
> +to
> +.BR DEAD_PROCESS ,
> +and clears
> +.IR ut_user ,
> +.IR ut_host ,
> +and
> +.I ut_time
> +with null bytes.
>  .PP
>  .BR xterm (1)
>  and other terminal emulators directly create a
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
