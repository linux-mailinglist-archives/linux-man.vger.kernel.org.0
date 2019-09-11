Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F397DAF856
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2019 10:59:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726696AbfIKI7C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Sep 2019 04:59:02 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:35545 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726341AbfIKI7C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Sep 2019 04:59:02 -0400
Received: by mail-wm1-f67.google.com with SMTP id n10so2512694wmj.0
        for <linux-man@vger.kernel.org>; Wed, 11 Sep 2019 01:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=K4hxjNxXaKotSYcRN2Ctz14AdMt3J93LYjHg5XSjNig=;
        b=HWDfC6wp3T0a0l8D3gUa0sjz/5gsMiylDRtmMe/OQ8186dSOPkSM38gcP499rOAnTO
         im3BhV/5+X5SnFBP0CWCiY+W437VodjgABQiN8ltZbb5XOS0Cv6F7MyitgC5zGn0PbwE
         IIx+hyl2ymun2Ks2t1tuxFF+/ANUP3GBbj2emVKAHEVCqExTfNJHrQ4zALn7dJ8L1FsB
         +U2yt78pGpYVmSbTpieBr8jcatgz0ZzbP3t+5SoGi8NZh+1Cx9Q+PhFnG6+sJMLW2pAC
         eTLBF228RwONm6ByXNfI4XlhNFlKqt86DW5ZdosHqugP9bpSPCgAUpNMcM2fEkahj5UM
         7ajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=K4hxjNxXaKotSYcRN2Ctz14AdMt3J93LYjHg5XSjNig=;
        b=JR3+lXlcFQXhFNno104UmQBndBWuXjsDXMjPCSx5qBRn8xUqXwJkYzutu1KoNsPVOO
         vlP1q2zJtwPiVsHLezVsuf1MAhNJ0b4g+D9cx6IgFXuv6b6pgldi4rRDf5fqvG3lLs4l
         WqS3kpDq4qnOtWuX3OEF1NBt9nu/Dmo4wXcPbfqvJ9IHNnLkvnnwg5oBbg/iz53TO4c+
         TFei86gW0mX7bq6TzXKePBVe+Ahd6n2QutIfE5yD4ciBt6uQzZ3fVhBy7GA3BfQqNeHi
         GmApf4wWovYLpxU/373JFzLIDrYl54DIzBuX5pDGj0aD5WyvBuAHGcI/n0RRajo3dNXB
         lNyA==
X-Gm-Message-State: APjAAAXGhgfZbdJWQSLpZM8GvVttQw/eeH35armIaqsDX08a/x96X1lk
        X6ugZZswoCkwy++K8ptDGu4c2jUg
X-Google-Smtp-Source: APXvYqypOT03vG/CoaLKLf8PvD/e34xfoufhsoganaV+6gYna24J6WQLnDxFaLsLHTfaQ/ceIG3/1Q==
X-Received: by 2002:a1c:ca0b:: with SMTP id a11mr2651905wmg.87.1568192338831;
        Wed, 11 Sep 2019 01:58:58 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id p19sm1807717wmg.31.2019.09.11.01.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 01:58:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, jannh@google.com, oleg@redhat.com
Subject: Re: [PATCH] clone.2: add CLONE_PIDFD entry
To:     Christian Brauner <christian@brauner.io>, linux-man@vger.kernel.org
References: <20190511064908.21956-1-christian.brauner@ubuntu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
Date:   Wed, 11 Sep 2019 10:58:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511064908.21956-1-christian.brauner@ubuntu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Christian,

On 5/11/19 8:49 AM, Christian Brauner wrote:
> From: Christian Brauner <christian@brauner.io>
> 
> Add an entry for CLONE_PIDFD. This flag is available starting with
> kernel 5.2. If specified, a process file descriptor ("pidfd") referring
> to the child process will be returned in the ptid argument.

I've applied this patch in a local branch, and made some minor edits
and added a piece. And I have some questions. See below.

> Signed-off-by: Christian Brauner <christian@brauner.io>
> ---
>  man2/clone.2 | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index 7e880beb8..ee08aeb42 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -539,6 +539,42 @@ The flag disappeared completely from the kernel sources in Linux 2.5.16.
>  Since then, the kernel silently ignores this bit if it is specified in
>  .IR flags .
>  .TP
> +.BR CLONE_PIDFD " (since Linux 5.2)"
> +If
> +.B CLONE_PIDFD
> +is set,
> +.BR clone ()
> +stores a process file descriptor ("pidfd") referring to the child process at
> +the location
> +.I ptid
> +in the parent's memory. 

I added a note that the close-on-exec flag is set on the new FD.

> Note, that the kernel verifies that the value for
> +.I ptid
> +is zero. If it is not an error will be returned. This ensures that
> +.I ptid
> +can potentially be used to specify additional options for
> +.B CLONE_PIDFD
> +in the future.

This piece is no longer true, right? At least I can't see such 
a check in the kernel code, and my testing doesn't yield an error
when ptid != 0 before the call.(No need to send me a patch; if I'm
correct just let me know and I'll edit out this piece.)

> +.IP
> +Since the
> +.I ptid
> +argument is used to return the pidfd,
> +.B CLONE_PIDFD
> +cannot be used with
> +.B CLONE_PARENT_SETTID.
> +.IP
> +It is currently not possible to use this flag together with
> +.B CLONE_THREAD.
> +This means that the process identified by the pidfd will always be a
> +thread-group leader.
> +.IP
> +For a while there was a
> +.B CLONE_DETACHED
> +flag. This flag is usually ignored when passed along with other flags.
> +However, when passed alongside
> +.B CLONE_PIDFD
> +an error will be returned. This ensures that this flag can be reused
> +for further pidfd features in the future.
> +.TP
>  .BR CLONE_PTRACE " (since Linux 2.2)"
>  If
>  .B CLONE_PTRACE
> @@ -1122,6 +1158,21 @@ For example, on aarch64,
>  .I child_stack
>  must be a multiple of 16.
>  .TP
> +.B EINVAL
> +.B CLONE_PIDFD
> +was specified together with
> +.B CLONE_DETACHED.
> +.TP
> +.B EINVAL
> +.B CLONE_PIDFD
> +was specified together with
> +.B CLONE_PARENT_SETTID.
> +.TP
> +.B EINVAL
> +.B CLONE_PIDFD
> +was specified together with
> +.B CLONE_THREAD.
> +.TP
>  .B ENOMEM
>  Cannot allocate sufficient memory to allocate a task structure for the
>  child, or to copy those parts of the caller's context that need to be

One other piece seems to be missing: the returned file descriptor can
be fed to poll()/select()/epoll and the FD will test as readable when
the child terminates. Right? Did that functionality also land in
kernel 5.2? And did it get implemented as a separate commit, or did
the behavior just fall naturally out of the implementation of pidfd's?
Let me know the details, and I will craft a patch.

Also, as far as I can see (from testing) the FD only gives pollable
events on process termination, not on other process transitions such
as stop and continue. Right? (Are there any plans to implement such
functionality for stop/contine transitions?

By the way, when do you expect the pidfd-wait functionality to land 
in the kernel?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
