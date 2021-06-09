Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B44F03A1FFB
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbhFIW0W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:26:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbhFIW0W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:26:22 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFDE1C061574
        for <linux-man@vger.kernel.org>; Wed,  9 Jun 2021 15:24:10 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id 22-20020a17090a0c16b0290164a5354ad0so2524964pjs.2
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FeyZgGAWVnoZllvbTZOCi7Rzjy5Bf638JuHCKGyyKiA=;
        b=UzPpPp61fWk8x0mlwrT4MZs1Tc675jy7tvIjWCXX3c04KXkbxgJLgMA0bi2azsWyqo
         WP6YTsn136rRA40D9W0QwAZkiV4a3W6nmP7Hck/Ky4Wai2GEyCo3NktCy3zxMY5V9ZfQ
         GUZk6nFZbPnBp2Miv0x2uuTcWlXjj2HzBIwypOUODO6ponwAGrgvZXp91Km+ShHOpl+r
         Ny8QxbL2whWekYSJLJ4VLmajeAft0GkOm2qfmygkwcK0JHCoT9cHs1rm60/PpzekFHs1
         I+RU+kcyWSYE8yOUVKhk04dWGgdNgyOX6J1RI/Blpe61po2T43xe+tfB2oU5tLKf1R76
         Yw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FeyZgGAWVnoZllvbTZOCi7Rzjy5Bf638JuHCKGyyKiA=;
        b=hAxz4ASXY5WfLzIxI/iLeREMmdtJPorvKD0PBzwRvUdG9I/x5AnjEbfQjgij7pDAik
         F3F6dvOf3qrMz3mgBRn9pgvgUHcNRPhtYDLbCtQvLiCNHm4IiWvNJlY+MU9h6nTDsH48
         CzzMjGbhKS9OAVeF6cEdretnY4SN2FXChN60e6Lx1OlShTeRQ0y38qmoDFx1EaN3Ts63
         90SZsPawTtMPZ1mYl5Ul8jZxFdF6MJBZZ6AB+qXDntdKKrZJ5XDPg7pWs4Q7v6GtV7uw
         9VISyj2UNUaYRyFVCmSNNKHlTf1ikTp6Yb9TpA+xOR2dnhDUaA/E6sRd1k5HEvqBCsuF
         0iwg==
X-Gm-Message-State: AOAM530IdGPB5fTjbTLeu9+XIXQC+y2EzunTQP/x5L6CMKBkSs4A9slL
        cwyJLehVGhJglGa9FpbEDcWVD9sJ+gg=
X-Google-Smtp-Source: ABdhPJzB8PRpvwUvK/nBr+IidyGPlPTxgM+V+CBdVzBCH76wO1MZiHSo56aAorRnCifjCqCy+W3Lpw==
X-Received: by 2002:a17:90a:1441:: with SMTP id j59mr12643346pja.152.1623277450272;
        Wed, 09 Jun 2021 15:24:10 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id d3sm5790268pjk.16.2021.06.09.15.24.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:24:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 02/10] rt_sigqueueinfo.2: Use syscall(SYS_...); for
 system calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ddaf00cc-4785-4b97-c8b9-d8a11532b0eb@gmail.com>
Date:   Thu, 10 Jun 2021 10:24:06 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/25/21 6:19 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  man2/rt_sigqueueinfo.2 | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/rt_sigqueueinfo.2 b/man2/rt_sigqueueinfo.2
> index 2dd1a5877..d48ecbdcd 100644
> --- a/man2/rt_sigqueueinfo.2
> +++ b/man2/rt_sigqueueinfo.2
> @@ -27,9 +27,14 @@
>  rt_sigqueueinfo, rt_tgsigqueueinfo \- queue a signal and data
>  .SH SYNOPSIS
>  .nf
> -.BI "int rt_sigqueueinfo(pid_t " tgid ", int " sig ", siginfo_t *" info );
> -.BI "int rt_tgsigqueueinfo(pid_t " tgid ", pid_t " tid ", int " sig \
> -", siginfo_t *" info );
> +.BR "#include <linux/signal.h>" "     /* Definition of " SI_* " constants */"
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
> +.PP
> +.BI "int syscall(SYS_rt_sigqueueinfo, pid_t " tgid ,
> +.BI "            int " sig ", siginfo_t *" info );
> +.BI "int syscall(SYS_rt_tgsigqueueinfo, pid_t " tgid ", pid_t " tid ,
> +.BI "            int " sig ", siginfo_t *" info );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
