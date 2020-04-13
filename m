Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0DEE1A64BF
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2020 11:39:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727792AbgDMJju (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Apr 2020 05:39:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728432AbgDMJjt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Apr 2020 05:39:49 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EEB6C008769
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 02:31:16 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id r26so9359241wmh.0
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 02:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qY6vANAUDu5+S5ebtkk2fRilimuRHrhO9NlfZroNXsI=;
        b=Q+1Hv6gZ3SHwTCVNSpCLXbD1mko1jdaAiMEL+4Xmvu77SJLCLSm6uWWuf7SAjiCCqL
         Ewpq6BsdIcqX94IfNreaFT8D/m/VV12PDlSy7c8y4UJAf7yO4eJ1W/yitttdDYTS2I3X
         Yq2Sa2/hd+F3YfXDCW9RHQeT1nDYY/imMydK/3QZ5YSp6s1s5bzZCwtFhQ96NYKZT/D2
         WExNxG2wqW+RfoMN6HrTB+/lqBEN0igZPkK2mgQ0BWWRYjYlvZ9RLslznVgcchYU4YeQ
         NdptxDSFTPQ1aGjpf2O/AiPwbcuxyGg13HVYEsQr9z7BRNMRua6qrHP2w+QdkZdO1ag7
         lYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qY6vANAUDu5+S5ebtkk2fRilimuRHrhO9NlfZroNXsI=;
        b=r6Tcx792VxM94qmrjS7m/rZg5TYQng5vAEFLH3aaGdInQ8L3lB6LrtV6bsCv1ioBgW
         5OB0pO0+lFAG4a1GwtNqtXkSQvJyoioQzZT/ZJcF1JCSJ5r2623D8HqgTPtqjc206OXj
         YSY27fvRPEJf1vwK5pzdlqhsNLc4XU11fTwu6h4YBtzfNmZ9AjCHIhz3zxF+cw6tFVGK
         gdUY2rotNFLZ1wUaHB7pRmfiB7CNglR9ygpkkCUh0ZJhUhUB+fu9F/Tz/7ZdJcxj51M8
         yF++u/KMKwzNS3NeP//Z+jfdp8ADSATEPiQ8cFoddRHGaN+TzbXG4hwCG33YvwCaROPe
         XjZA==
X-Gm-Message-State: AGi0PuaoN9iWX4+W5kSPEnitRGFVmDVFyXFh2u6CtheImdBr7h/nlt98
        W68u8talul+/wzXh+sZuzBXVASLuOME=
X-Google-Smtp-Source: APiQypKaPxepGmg9idCU5U1PamYKrVWpwWmWHi5u5j/iFixSvJ2ccR8z8THvl8K1+EOYZZPhm9C/Lw==
X-Received: by 2002:a7b:cdf7:: with SMTP id p23mr18312000wmj.33.1586770274970;
        Mon, 13 Apr 2020 02:31:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id e2sm14232465wrr.84.2020.04.13.02.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 02:31:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] signal.7: Expand on which thread receives signals
To:     "Joseph C. Sible" <josephcsible@gmail.com>
References: <CABpewhFjWWGFiETJd-7-RqVYk=T2o1kGmqT4otbrvzt2PYPUzQ@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <877705d6-9ff3-8d4f-8895-57fc9e82963b@gmail.com>
Date:   Mon, 13 Apr 2020 11:31:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CABpewhFjWWGFiETJd-7-RqVYk=T2o1kGmqT4otbrvzt2PYPUzQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Joseph,

On 9/13/18 5:26 AM, Joseph C. Sible wrote:
> Per this comment in kernel/signal.c since time immemorial
> (i.e., the commit adding it is in the history repo instead of
> the main Linux repo):
> 
> /*
>  * Now find a thread we can wake up to take the signal off the queue.
>  *
>  * If the main thread wants the signal, it gets first crack.
>  * Probably the least surprising to the average bear.
>  */
> > Signed-off-by: Joseph C. Sible <josephcsible@gmail.com>
>
> ---
>  man7/signal.7 | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/signal.7 b/man7/signal.7
> index 0fd4f66..abf0eb8 100644
> --- a/man7/signal.7
> +++ b/man7/signal.7
> @@ -202,10 +202,14 @@ generated as a
>  consequence of executing a specific machine-language instruction
>  are thread directed, as are signals targeted at a specific thread using
>  .BR pthread_kill (3)).
> -A process-directed signal may be delivered to any one of the
> -threads that does not currently have the signal blocked.
> -If more than one of the threads has the signal unblocked, then the
> -kernel chooses an arbitrary thread to which to deliver the signal.
> +A process-directed signal may be delivered to any one of the threads
> +that does not currently have the signal blocked, according to POSIX.
> +On Linux, if the main thread has the signal unblocked, then the kernel
> +will always deliver the signal there.
> +.\" commit ebf5ebe31d2cd1e0f13e5b65deb0b4af7afd9dc1
> +Otherwise, if more than one of the threads has the signal unblocked,
> +then the kernel chooses an arbitrary thread to which to deliver the
> +signal.
>  .PP
>  A thread can obtain the set of signals that it currently has pending
>  using

Thanks for the patch, but I am reluctant to document this too
explicitly, since it is an implementations detail that is likely 
different on other systems, and could change on Linux in the future
(and was I presume different before 2.6.0). I think user-space
applications should not be relying on it.

Furthermore, documenting this as you suggest would give users
the wrong idea about what happens. I mean: suppose that the signal
was delivered to the main thread, where a handler was currently 
executing. In that case, if a second signal arrived, then it would
be handled in another thread, because at the moment the main thread
is blocking the signal. (I've tested this, to be sure of it.)
Your text might instead lead people to conclude that the signal
would *always* be delivered only in the main thread, which is
not the case.

I've instead just noted some details as a comment in the page source.

Thanks,

Michael

diff --git a/man7/signal.7 b/man7/signal.7
index 58618f3b8..8760d2712 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -216,6 +216,24 @@ or
 .PP
 A process-directed signal may be delivered to any one of the
 threads that does not currently have the signal blocked.
+.\" Joseph C. Sible notes:
+.\" On Linux, if the main thread has the signal unblocked, then the kernel
+.\" will always deliver the signal there, citing this kernel code
+.\"
+.\"     Per this comment in kernel/signal.c since time immemorial:
+.\"
+.\"     /*
+.\"     * Now find a thread we can wake up to take the signal off the queue.
+.\"     *
+.\"     * If the main thread wants the signal, it gets first crack.
+.\"     * Probably the least surprising to the average bear.
+.\"     */
+.\"
+.\" But this does not mean the signal will be delivered only in the
+.\" main thread, since if a handler is already executing in the main thread
+.\" (and thus the signal is blocked in that thread), then a further
+.\" might be delivered in a different thread.
+.\"
 If more than one of the threads has the signal unblocked, then the
 kernel chooses an arbitrary thread to which to deliver the signal.
 .PP


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
