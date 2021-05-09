Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDA1437785B
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbhEIUDV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:03:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229666AbhEIUDU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:03:20 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EE61C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:02:17 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id lp4so8564350pjb.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=D+jK3HAuSdQ6tdKF9+QlBGMC+ueG8o9HYMYmrzPpX1s=;
        b=cNuRVVCNIYDU9bzooSlXMYKVJ0ETllEj0GdGXH4s5n35R2clpBl1idmZ6JwyuWHN/L
         uTMItWQpNN0+imb+ncI5nOyz0Wt305CCcWd/KESbXQF4aHzm8VVJYtTd32lnzWJR0tTF
         ZUhAB3TjVNhZxEx/zovbpEa7Hrr8u6vZ4k3X6GAAT25tDw7g8GFSVm8MagbD3/GZ1dXK
         XpJThTE1D75kPbo+AwjIbZaeqYSjZFcaP2yUuJx+o+3N9J+Mq1jJaixVaUNjvm08UrWK
         xm2IDzgH4eD0iRsi8D6Rj8thZv7EMq+LKSSAoGqSRd3f6eyvh7q9JOgEXXg25nz4TU5O
         +wvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=D+jK3HAuSdQ6tdKF9+QlBGMC+ueG8o9HYMYmrzPpX1s=;
        b=h79zYuHXsAPTjUBCOf8jeIX2vn6UDDpRU47yrjgR2b7ZzRT8X1CyGZMDDIKp4LVG3I
         RTaNqHEp+1AOKDWbw9hEG2le+7/BZBDr63qJAUj3Tl5qzTTB/BZnWZr9cKFM0M5NmIEe
         FxWGqgsb1c++QJIYdX9HmMLR43m3t4vzzbXSkzjRIGZLBd4SFs+3UGzoajgL+zFsz2lB
         z9nBx2YuWWD/iRzv99WjXb73Q5bPxsszzbQPxdvrbTU/vnqWiSAGWztAxjw4wGCRz0rH
         BVDyTsM2rc5wUvaPtSWIkW61/sYaMb+ZfLwgFeuwjdrjN3z6k0Q60VqfgdHESPZ7ZStK
         8Row==
X-Gm-Message-State: AOAM533RITx3y8sLySYPoAihHSStMMGyIoqB0giqEDlGtzPgxqH5Otpq
        r1a6XhfCjkL+xebA/TZ5qyg=
X-Google-Smtp-Source: ABdhPJw597xzhEG7ow2t6CGCYYCFgUUSBwGCtn4nK5NrVhfnY5F/LxoJ5fZoxYrzdWXxSRg1iyc50w==
X-Received: by 2002:a17:90a:ce8b:: with SMTP id g11mr23180107pju.173.1620590536478;
        Sun, 09 May 2021 13:02:16 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id g1sm9136980pgi.64.2021.05.09.13.02.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 13:02:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 3/3] open.2: Remove unused <sys/stat.h>
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210421224418.143065-1-alx.manpages@gmail.com>
 <20210421224418.143065-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4d093c28-120b-ecf6-3671-b00159d15da1@gmail.com>
Date:   Mon, 10 May 2021 08:02:12 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210421224418.143065-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 4/22/21 10:44 AM, Alejandro Colomar wrote:
> I can't see a reason to include it.  <fcntl.h> provides O_*
> constants for 'flags', S_* constants for 'mode', and mode_t.
> 
> Probably a long time ago, some of those weren't defined in
> <fcntl.h>, and both headers needed to be included, or maybe it's
> a historical error.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

So, I am uncertain what to do about this patch. I agree
that we don't need the <sys/stat.h> on Linux.

But, look at open(3p):

    SYNOPSIS
       #include <sys/stat.h>
       #include <fcntl.h>

       int open(const char *path, int oflag, ...);

       O_CREAT       [...] and the access permission bits  (see
                     <sys/stat.h>)  of  the file mode shall be set to the
                     value of the argument following the  oflag  argument
                     taken  as type mode_t modified as follows...

But, seemingly in contradiction, fcntl.h(0p) says:

       The <fcntl.h> header shall define the symbolic constants for  file
       modes for use as values of mode_t as described in <sys/stat.h>.

It almost seems like a small bug in POSIX.

I see also that open(2) on FreeBSD mentions only the need to 
include <fcntl.h>.

What are your thoughts on the above. I'm willing to apply your 
patch if you still think we should apply it.

Thanks,

Michael

> ---
>  man2/open.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/open.2 b/man2/open.2
> index bac1ee806..1bcd995f4 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -53,7 +53,6 @@
>  open, openat, creat \- open and possibly create a file
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/stat.h>
>  .B #include <fcntl.h>
>  .PP
>  .BI "int open(const char *" pathname ", int " flags );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
