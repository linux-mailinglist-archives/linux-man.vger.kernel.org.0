Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D43C31EBA8
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 16:41:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbhBRPlV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 10:41:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232853AbhBRM2y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 07:28:54 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82764C06178C;
        Thu, 18 Feb 2021 04:27:10 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id x16so3349711wmk.3;
        Thu, 18 Feb 2021 04:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=T8PybQxwyiUCCBYU7DV0jC9PmrYax3BtCf+BxA7Qu30=;
        b=W5bqN02eblymj1giyVeNptKMyOx7CpT0zcq2FZRUFVKCBKPXemkpS4qTLd+U9cidEV
         4IDwJjguXeBxmorEAyf1tI7aZ130lKzQg/KaIn8579xM9q3icvw5sMtUNljiza+fT/AR
         SduzN7jdJLldtnQ4xU60+taCn/PJtDZWEmwrkmKKt0kucxFI0sI9rqXRVMuBddShNFnq
         A9bjzQQ9GWEvWkjSAC+Sf4CiaoUNwC6ciesnShLEcjZaD0Igv2WPbNpiuXOZ49HwcGn6
         jCSmeu3eMwaiowCSWs+vSiQji1PLU9ZbLDSpcIi7HvZoZyG5kF8W63j8OecH33u8g/2k
         mbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=T8PybQxwyiUCCBYU7DV0jC9PmrYax3BtCf+BxA7Qu30=;
        b=WvAVq/CnVuPDJYpLb9kU8kSZ/laoYLOTpqIx6vhGZfrYDyeawLyDbQYvwwq+z/1GMT
         1l6J2mOYm5CTl14aWBMIuB5UW8TK2YHlEo9jK/tXzWpElCcDceHEEJ56ab5Ho87ZfasC
         W06vUHvjoTRK59wvXUxu2Dw1der40/XVooavuAqcsbnfFhNpOBjMdKEvrPIQ2qEYk85e
         fCoj583xJOUXDNMR0bsB/1GiZIrU0WT0DdKtWrJr9Pv9t5SnR3lF+ZqEBtyxze7Q/yWX
         Vf1EkvykywpM7Cw845rAMYVoudN2DrHvcCLnsuUhHgZnC5q2ib9PeGtJ+nJpc4k/sI5V
         1Eow==
X-Gm-Message-State: AOAM533gQaM/342mORFpLIaDBZvhC+DsR3MaualjdUZl9bSLB5x/QA2c
        voHaOJbeiONqrSpHRSPn+BE=
X-Google-Smtp-Source: ABdhPJw/SFw7HpRuwxlq2cELF1JoqQj+imDON14cDkNG2NF1BZQNsXuLb7b4NPsd+9ou9Jj5CNyeaA==
X-Received: by 2002:a1c:41d6:: with SMTP id o205mr3284592wma.80.1613651229196;
        Thu, 18 Feb 2021 04:27:09 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id l22sm2054417wrb.4.2021.02.18.04.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Feb 2021 04:27:08 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, libc-alpha@sourceware.org,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: [RFC] execve.2: SYNOPSIS: Document both glibc wrapper and kernel
 sycalls
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1c7043ad-b834-5270-56fc-404d82d5a0a0@gmail.com>
Date:   Thu, 18 Feb 2021 13:27:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/14/21 2:39 PM, Alejandro Colomar wrote:
> Until now, the manual pages have (usually) documented only either
> the glibc (or another library) wrapper for a syscall, or the raw
> syscall (this only when there's not a wrapper).
> 
> Let's document both prototypes, which many times are slightly
> different.  This will solve a problem where documenting glibc
> wrappers implied shadowing the documentation for the raw syscall.
> 
> It will also be much clearer for the reader where the syscall
> comes from (kernel? glibc? other?), by adding an explicit comment
> at the beginning of the prototypes.  This removes the need of
> scrolling down to NOTES to see that info.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi all,
> 
> This is a prototype for doing some important changes to the SYNOPSIS
> of the man-pages.
> 
> The commit message above explains the idea quite well.  A few details
> that couldn't be shown on this commit are:
> 
> For cases where the wrapper is provided by a library other than glibc,
> I'd simply change the comment.  For example, for move_pages(2),
> it would say /* libnuma wrapper function: */.
> 
> I think this would make the samll notes warning that there's no glibc
> wrapper function deprecated (but we could keep them for some time and
> decide that later).
> 
> While changing this, I'd also make sure that the headers are correct,
> and clearly differentiate which headers are needed for the raw syscall
> and for the wrapper function.
> 
> This change will probably take more than one release of the man-pages
> to complete.
> 
> Any thoughts?

My first impression is that I'm not keen on this. We'll add extra
text to all Section 2 pages, and in many (most?) cases the info
will be redundant (i.e., the wrapper and the syscall() notation
will express the same info). In other cases, I suspect the info
will be largely irrelevant to the user. To take an example: to 
whom will the difference that you document below for execve()
matter, how will it matter, and does it matter enough that we
headline the info in the pages? I'd want cogent answers to
those questions before considering a wide-ranging change.

There are indeed cases where the wrapper API differs in
significant ways from the syscall API (and these differences
are usually captured in the " C library/kernel differences"
subsections, such as for pselect()/pselect6() in select(2)).
But I imagine that that is the case in only a smallish
minority of the pages.

And indeed there are a very few syscalls that have wrappers
provided in another library. But it's a very small percentage
I think, and best documented case by case in specific pages.
The default presumption is that the wrapper is in the C library.

There are other cases where I think it may be worthwhile
considering the syscall() notation:

1. Where the system call has no wrapper. In that case, we might
   use the syscall() notation in the SYNOPISIS as both
   (a) a clear indication that there is no wrapper and
   (b) instructions to the reader about how to call the
   system call using syscall().

2. In cases where there is a "significant" difference between
   the wrapper and the system call. In this case, we might
   also place the syscall() notation in the SYNOPSIS, or
   (perhaps more likely) in the NOTES

Thanks,

Michael

> 
> Thanks,
> 
> Alex
> 
> ---
>  man2/execve.2 | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/execve.2 b/man2/execve.2
> index 639e3b4b9..87ff022ce 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -39,10 +39,18 @@
>  execve \- execute program
>  .SH SYNOPSIS
>  .nf
> +/* Glibc wrapper function: */
>  .B #include <unistd.h>
>  .PP
> -.BI "int execve(const char *" pathname ", char *const " argv [],
> -.BI "           char *const " envp []);
> +.BI "int execve(const char *" pathname ",
> +.BI "           char *const " argv "[], char *const " envp []);
> +.PP
> + /* Raw system call: */
> +.B #include <sys/syscall.h>
> +.B #include <unistd.h>
> +.PP
> +.BI "int syscall(SYS_execve, const char *" pathname ,
> +.BI "           const char *const " argv "[], const char *const " envp []);
>  .fi
>  .SH DESCRIPTION
>  .BR execve ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
