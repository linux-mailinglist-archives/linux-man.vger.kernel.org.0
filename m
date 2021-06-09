Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD923A2004
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:28:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbhFIWaV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:30:21 -0400
Received: from mail-pj1-f50.google.com ([209.85.216.50]:44845 "EHLO
        mail-pj1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbhFIWaT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:30:19 -0400
Received: by mail-pj1-f50.google.com with SMTP id h12-20020a17090aa88cb029016400fd8ad8so2570592pjq.3
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GTm39J4Nbj22xx3QSRa5HrKihygZk9aEm1Gh9K2jWS4=;
        b=ApUutk1sD4u9gNKHkpFK4EvwHvtBJ6DKxbKZnQQGu6WFVxQ9HX3HQ0o5GQ/8mTgbAz
         Ejt/KFox/x4ALrd0bJMYevQBYG5y/R7G7xsIBwXqCxaCxhV1WWTP+4HlZMZTZZIleb8w
         UoavrcBylqbqBR5o5vfKF6nO27QXUhBadx6RMxnE2058I56zYdmajNRWDGGsrIGgZLSR
         ZeitP2W1Dz4Re6Xt/HYvkMdbzPR99V/ASU4H3mBNOJ/6NfJrdDZLHPv3Tp67yNASuGbF
         y0sDK2NWv3XRwxWJcj/GlS++9ZzQK4b8zw58MRm6GWL3Y+szt8qKd100F8O+0fbDZjMX
         i1WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GTm39J4Nbj22xx3QSRa5HrKihygZk9aEm1Gh9K2jWS4=;
        b=mTREPgrQDV8FkjfWJCCUab1TmGuMWYi2NfIgQ0TY431TBHBM7S7g0MSxs4STwLKDRq
         LD/PaU8iZDAx+z/T3rSQ9huPHEasNeansEAXU9r4NUw7DMvMnCcoyyyZuo+UpNsBrDOE
         geJ3WAvRZM7LgL08FB8MxXLlejqqAG7h5KzJgo+SO5TgU0hnfGSWkR0i/K9pHwHmi+z0
         7lxXYljorWf1net/420PbLSomRuLqSxg5RekJdiIjyUc4T6GgXwfH7wR+UpXowszbSqh
         zCUv0QPocrK52DlmGoX4bUDmMZPEnc9o+B55cT2+sIwXWWEEhif2twVW+lO1uWB4Gd2a
         6ZDQ==
X-Gm-Message-State: AOAM530e9UnOk00MR2vjJ88t1picOxTxBxV4CJjWM5sMfuxHAhtQ8sux
        3rFItuBPsujyjltM/WL2QjI0tY1XGks=
X-Google-Smtp-Source: ABdhPJz39QfxoSGtkNxFImW98foIBWNBTwB+nqMJJ1V+++wa4vHh/V4avrac7Qos6FmCsXkjgwtI/Q==
X-Received: by 2002:a17:90a:6d43:: with SMTP id z61mr1833424pjj.73.1623277636564;
        Wed, 09 Jun 2021 15:27:16 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id t1sm459593pfe.61.2021.06.09.15.27.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:27:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 10/10] socketcall.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-10-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <93f83bcc-4029-fedb-457c-8b0dd0c2ffdf@gmail.com>
Date:   Thu, 10 Jun 2021 10:27:13 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-10-alx.manpages@gmail.com>
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
>  man2/socketcall.2 | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/man2/socketcall.2 b/man2/socketcall.2
> index 8ef3d65d3..883c2aafe 100644
> --- a/man2/socketcall.2
> +++ b/man2/socketcall.2
> @@ -27,13 +27,18 @@
>  socketcall \- socket system calls
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/net.h>
> +.BR "#include <linux/net.h>" "        /* Definition of " SYS_* " constants */"
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_socketcall " */"
> +.B #include <unistd.h>
>  .PP
> -.BI "int socketcall(int " call ", unsigned long *" args );
> +.BI "int syscall(SYS_socketcall, int " call ", unsigned long *" args );
>  .fi
>  .PP
>  .IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
> +glibc provides no wrapper for
> +.BR socketcall (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  .BR socketcall ()
>  is a common kernel entry point for the socket system calls.
> @@ -156,10 +161,6 @@ T}
>  This call is specific to Linux, and should not be used in programs
>  intended to be portable.
>  .SH NOTES
> -Glibc does not provide a wrapper for this system call;
> -in the unlikely event that you want to call it directly, do so using
> -.BR syscall (2).
> -.PP
>  On some architectures\(emfor example, x86-64 and ARM\(emthere is no
>  .BR socketcall ()
>  system call; instead
> @@ -198,3 +199,4 @@ and also provides a (very) small performance improvement.
>  .BR shutdown (2),
>  .BR socket (2),
>  .BR socketpair (2)
> +
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
