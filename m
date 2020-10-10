Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD641289F7D
	for <lists+linux-man@lfdr.de>; Sat, 10 Oct 2020 11:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730086AbgJJJLa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Oct 2020 05:11:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729776AbgJJJHF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Oct 2020 05:07:05 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28523C0613D2
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 02:06:08 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id h5so2600704wrv.7
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 02:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hDbDy67tiWMfBjfP8adkxWeMajXqSwhr9+jOAsA7kY0=;
        b=jHPwcXSz+K512tXKSexiqX7Iek5NMJns0Zhz52ysGb8IA+J9KwwEId04yWngt+6I5l
         3XmuRpC7XZgYM7hsghibVKkjnZ2Fi4+Mw4BXrcaTZzDF2HKu+3AazBCZSBUH0NA1F73Z
         X+jKAHxDSJpKzw3YZlenBQHn7oRngLBSEroh1xaTTRQKhN9PLeNShP8twE3H7DNB4I5D
         qzFLFCqXLBPcQZAAmicuJPilJVl2NLcU7czQIBocIM8+vL+/PI44t/RMyiCiCZxxnZ5V
         VMbYyvVLzzVLoNmlIsUvEvl+c+wU/nFUYafwNDzn/pOaFC1eK9nTRYLf+2of5Qzay5+q
         O76w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hDbDy67tiWMfBjfP8adkxWeMajXqSwhr9+jOAsA7kY0=;
        b=aOz729ZAXFkxtt4cAUOebL/2hCZb96b/en/d2/tCGJvAX82sNAbpDibuB/0AWXFwkK
         daR/zEv6i7Qf7kFVnEc2+/rLfvS6tOoLXKeLjxQ5MGD4J3X5sN7AwBcsmYsMWdBWjs/B
         KGytqyWgCAmMjcxyKMbdIDUTu8puYB93FYAytZOBwRzalg/LCPk65yaw2/xANYGJNi4z
         vAkcb789CdG/RszvraidXLF8D2MGw7D7xWMTUV4UA4tk2e2SiIeuOArksiP8HKzAc9iX
         pOdOfx83LJ43i/u8LUK6CHtPPGtahL0dwhDPWLw53uUz005i9ef2MF+ZIgQn7oZuJire
         OReA==
X-Gm-Message-State: AOAM533vLVZSq27P2fZ84ORfXto4pCsz98BrYZI8ZTPi0lUbU/2rXUi+
        zU3yv27Q3gHCmMd8IaWjkZHlv9oujaEi9A==
X-Google-Smtp-Source: ABdhPJwKygodNniH7dtJGwZIjKVDZ+gB1zQ9nu3/BkwlReWwhZv0ICo6s1HoIMvY2mj6i6xSS1B6nA==
X-Received: by 2002:a5d:4010:: with SMTP id n16mr18281630wrp.97.1602320766830;
        Sat, 10 Oct 2020 02:06:06 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id v83sm14937661wmb.22.2020.10.10.02.06.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Oct 2020 02:06:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] system_data_types.7: Add 'fd_set'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <CAKgNAki7jWqR3tKUMKRdpK_5gvG+N1RC+sZ_GrK6QO0UvD8SGA@mail.gmail.com>
 <20201009084243.8153-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e3a14b93-df55-6dec-6094-e19f3bbaf1fb@gmail.com>
Date:   Sat, 10 Oct 2020 11:06:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201009084243.8153-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/9/20 10:42 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> I found that POSIX defines the limit in a macro, so I used that.
> 
> Thanks,
> 
> Alex

Thanks, Alex. Patch applied.

Cheers,

Michael

>  man7/system_data_types.7 | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index b0e0d2b48..a4a2e0ab8 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -151,6 +151,28 @@ See also the
>  .I float_t
>  type in this page.
>  .RE
> +.\"------------------------------------- fd_set -----------------------/
> +.TP
> +.I fd_set
> +.RS
> +Include:
> +.IR <sys/select.h> .
> +Alternatively,
> +.IR <sys/time.h> .
> +.PP
> +A structure type that can represent a set of file descriptors.
> +According to POSIX,
> +the maximum number of file descriptors in an
> +.I fd_set
> +structure is the value of the macro
> +.BR FD_SETSIZE .
> +.PP
> +Conforming to:
> +POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR select (2)
> +.RE
>  .\"------------------------------------- fenv_t -----------------------/
>  .TP
>  .I fenv_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
