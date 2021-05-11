Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C741B379F13
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 07:21:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230197AbhEKFW4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 01:22:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230061AbhEKFW4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 01:22:56 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8E85C061760
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 22:21:50 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id h7so10273749plt.1
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 22:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ua2iUNGT7xhnqaAjEUTTZX8O/U/lplbApUl/UHhNtYM=;
        b=oeIvcjOj1Bwj4cKGJwGw7iu6yvQY6vGG8JL1+57968oJCqfm6R78LfuPM7C/Z81Dti
         M4PdeamTRxrjYuIko2fC03KgLn2SNVs4LOyynfS4M7Z9SvZHcrfPeXMThR+4nwoFTIm9
         2+4BccZAH4x8iuFLQeiPtMPYxNqP9V7i05vSgRshfyZJ/cGJhi5XwOOcr9SgPmjrXT4n
         pCJ5FztNV9RBFRex5V8HLS8msqqWrqCngxC+WJ2LyTAiLAxl1SWhVxF2gCFNNRRpvSow
         YiLZYv4aflojKzSWocXaWct/bbpU39nEsRQK3NX0Nj5Kx0sr9BfcBek/4Dpjsr5uqayA
         RhMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ua2iUNGT7xhnqaAjEUTTZX8O/U/lplbApUl/UHhNtYM=;
        b=ArDYA2t4VRKo4lhPU8z6Onp0rGtEiPf2u+l3Ym1Wd1/CMO4zWK3+QTbNypxavvbj6j
         uI/Wr/Lwtwe5RE//bsctbcm0iAgAficVJS7lXpfVJT8HE2f+x1t30R+y97PJ7SEionfD
         3SumJlvd3CgpVg9c/wnRouJ2Umc4XXfer6yNlegiOxc0lnIy30rHFPki5DOR1tJY92hQ
         S+f2nR1vFNygDbzSlVMdaVt8vtocu545AvqWeUF3RcZiIsHW/hOkMOJ8A+8EM4qBtJ6I
         FMgL8pyPdozij6ek7WTs3gpHTBUy8bv8t/XzJB6Uc+f/N0YhfMu3P5QzZlgSheMBZ6+V
         8VOw==
X-Gm-Message-State: AOAM531yjY1FmyEJgLyAfSRtaBj3V+E4pC0yb5q0Wc5EkVrVsyRBwS7a
        EvEUWkqL3+H1JrRr4uUAObU=
X-Google-Smtp-Source: ABdhPJy3ckBTRO6JCyt2aH9Frkd+PQuLU6a1kESYvlfX4ttkfCda6jFwnG0bEqcGEThyXGu10yrL/g==
X-Received: by 2002:a17:902:c211:b029:ed:7a6b:d4bf with SMTP id 17-20020a170902c211b02900ed7a6bd4bfmr28260509pll.63.1620710510216;
        Mon, 10 May 2021 22:21:50 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id x19sm9713120pgk.88.2021.05.10.22.21.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 22:21:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>,
        Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 02/39] getdents.2: Use syscall(SYS_...); for system calls
 without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
 <20210510175546.28445-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4f86a450-2348-c059-4f26-f81593a8b707@gmail.com>
Date:   Tue, 11 May 2021 17:21:45 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210510175546.28445-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

See below.

On 5/11/21 5:55 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/getdents.2 | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index ec00a73ba..df766b066 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -33,19 +33,29 @@
>  getdents, getdents64 \- get directory entries
>  .SH SYNOPSIS
>  .nf
> -.BI "long getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
> +.PP
> +.BI "long syscall(SYS_getdents, unsigned int " fd \
> +", struct linux_dirent *" dirp ,
>  .BI "             unsigned int " count );
>  .PP
> -.BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
> +.BR "#define _GNU_SOURCE" "           /* See feature_test_macros(7) */"
>  .BR "#include <dirent.h>"
>  .PP
>  .BI "ssize_t getdents64(int " fd ", void *" dirp ", size_t " count );
>  .fi
>  .PP
>  .IR Note :
> -There is no glibc wrapper for
> -.BR getdents ();
> -see NOTES.
> +glibc provides no wrapper for
> +.BR getdents (),
> +necessitating the use of
> +.BR syscall (2).
> +.PP
> +.IR Note :
> +There is no definition of
> +.B struct linux_dirent

.I ...
(Fixed)

> +in glibc; see NOTES.
>  .SH DESCRIPTION
>  These are not the interfaces you are interested in.
>  Look at
> 

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
