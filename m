Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED6373BAA51
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 23:25:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbhGCV16 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 17:27:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbhGCV16 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 17:27:58 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE81DC061762;
        Sat,  3 Jul 2021 14:25:23 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso11379460wmh.4;
        Sat, 03 Jul 2021 14:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OweAPes+t/qXJD32TxqlMjyGIKhjv2jfbRCzwHUVW2I=;
        b=VzURn8CL1pHBfd+bYmgdxdH9zVHi098mQOqObBjW6hpulnVFRRavEhpMsNTUqEf/VQ
         nkL6T6BO7qwo3Y3azqFQWfwiPCg6stV36SBgtCHJQaQOd3NHKmDMO3qFr9TCsFvtkjDp
         kAFP36vfl8+at2vlCdl+B2up8v/czmS0puiZnqaDd5UbsTi4x6DMqKhrK7I/21hHkcpp
         x8p0wdbw4ppemE577ujBCFfnYILqLLpfjk91mXwqE14voBeKBT76Mu2PmNVmrhdVvVFE
         LG7b8Tk4uMVX6SyaAAv4Zjd+dQa0vZ30zloiXI0v5PFhe+tJ0GVG7FgUOLyw61pqwwJA
         iStQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OweAPes+t/qXJD32TxqlMjyGIKhjv2jfbRCzwHUVW2I=;
        b=Kx2GyhQtw8sQVSAS1CtqBRU6GStcIgaZzqNKsALxLaKb6eoKhvSQvAi1eBrOgKKjLC
         0K9V/Y8ditIJ/U56rSAHsGjzE7Q8TanSdq2Uv+M91LlHYLqwP9qr9bAouTotR0WHFqPS
         pr6vMQl694wBpyF5Cj89YKmr0ssbiXajWesGrEfTnEBRCz7BQKLB4V8f20iPJuNb63Yv
         V+fML5gBpJ6a3S7it8c9TRxZgHL9fM6TJLGMKWPYQDzSxQscNmGGtajHD2nLHIDGC1BF
         x2inZHDymEK9d2Z22sjGTXByL1Yp6MrI1DtP3Cys1PKnA6ZnJ/f5cQl8N3fids8u/h+B
         AjVw==
X-Gm-Message-State: AOAM533/bosp1Fpk4Lopgam6Nu5L+BsE1Cc93XJ/U0PhgWisDMUBiMfg
        WQ+NQFyY6BHRILc8m6+43kzgGNB4hKQ=
X-Google-Smtp-Source: ABdhPJwmJysHVAIqYRzs5aIDwaOniz2yn1adX22Y/9XAvpib1Qoc+0UEsoCzsupn4qXCQoHsUO3ePg==
X-Received: by 2002:a05:600c:2058:: with SMTP id p24mr6453438wmg.76.1625347522287;
        Sat, 03 Jul 2021 14:25:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x18sm7573555wrw.19.2021.07.03.14.25.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 14:25:21 -0700 (PDT)
Subject: Re: [PATCH] seccomp_unotify.2: Add doc for SECCOMP_ADDFD_FLAG_SEND
To:     Rodrigo Campos <rodrigo@kinvolk.io>
Cc:     linux-kernel@vger.kernel.org, Alban Crequy <alban@kinvolk.io>,
        =?UTF-8?Q?Mauricio_V=c3=a1squez_Bernal?= <mauricio@kinvolk.io>,
        Sargun Dhillon <sargun@sargun.me>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210702163744.265749-1-rodrigo@kinvolk.io>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6322ac90-3491-df4f-7505-db4081bacb79@gmail.com>
Date:   Sat, 3 Jul 2021 23:25:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210702163744.265749-1-rodrigo@kinvolk.io>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Rodrigo,

On 7/2/21 6:37 PM, Rodrigo Campos wrote:
> This flag was recently added to Linux 5.14 by a patch I wrote:
> 	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0ae71c7720e3ae3aabd2e8a072d27f7bd173d25c
> 
> This patch adds documentation for the flag, the error code that the flag
> added and explains in the caveat when it is useful.
> 
> Signed-off-by: Rodrigo Campos <rodrigo@kinvolk.io>
> ---
> Hi! Here goes the documentation for the flag I just added. Please feel free to
> amend as you want and let me know if something is not clear :)

Thanks for documenting your own addition!
That makes things much easier :-)

It looks quite good to me.

There are a few minor changes that I applied in a following patch.  I'll
explain why in your patch inline.  And then you have the diff below your
patch.

Cheers,

Alex

> 
> 
>  man2/seccomp_unotify.2 | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
> index 2673d9bc7..9bd27214f 100644
> --- a/man2/seccomp_unotify.2
> +++ b/man2/seccomp_unotify.2
> @@ -739,6 +739,17 @@ When allocating the file descriptor in the target,
>  use the file descriptor number specified in the
>  .I newfd
>  field.
> +.TP
> +.BR SECCOMP_ADDFD_FLAG_SEND
> +Available since Linux 5.14, combines the

We usually append that info to the paragraph tag (i.e., the line just
after .TP), and with a common syntax, so that it's easier to read..

> +.B SECCOMP_IOCTL_NOTIF_ADDFD
> +ioctl with
> +.B SECCOMP_IOCTL_NOTIF_SEND
> +into an atomic operation. On successful invocation, the target process's
> +errno will be 0 and the return value will be the file descriptor number that was
> +installed in the target. If allocating the file descriptor in the tatget fails,
> +the target's syscall continues to be blocked until a successful response is
> +sent.

See the following extract from man-pages(7):

$ man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p';
   Use semantic newlines
       In the source of a manual page,  new  sentences  should  be
       started  on new lines, and long sentences should split into
       lines at clause breaks (commas, semicolons, colons, and  so
       on).   This  convention,  sometimes known as "semantic new‐
       lines", makes it easier to see the effect of patches, which
       often  operate at the level of individual sentences or sen‐
       tence clauses.

>  .RE
>  .TP
>  .I srcfd
> @@ -801,6 +812,13 @@ Allocating the file descriptor in the target would cause the target's
>  limit to be exceeded (see
>  .BR getrlimit (2)).
>  .TP
> +.B EBUSY
> +If the flag
> +.B SECCOMP_IOCTL_NOTIF_SEND
> +is used, this means the operation can't proceed until other
> +.B SECCOMP_IOCTL_NOTIF_ADDFD
> +requests are processed.
> +.TP
>  .B EINPROGRESS
>  The user-space notification specified in the
>  .I id
> @@ -1131,6 +1149,14 @@ that would
>  normally be restarted by the
>  .BR SA_RESTART
>  flag.
> +.PP
> +Furthermore, if the supervisor response is a file descriptor
> +added with
> +.B SECCOMP_IOCTL_NOTIF_ADDFD,
> +then the flag
> +.B SECCOMP_ADDFD_FLAG_SEND
> +can be used to atomically add the file descriptor and return that value,
> +making sure no file descriptors are inadvertently leaked into the target.

I moved your paragraph below the FIXME, as I the FIXME applies to the
previous paragraph ("About the above").

>  .\" FIXME
>  .\" About the above, Kees Cook commented:
>  .\"
> 


diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
index 9bd27214f..ae449ae36 100644
--- a/man2/seccomp_unotify.2
+++ b/man2/seccomp_unotify.2
@@ -740,16 +740,18 @@ use the file descriptor number specified in the
 .I newfd
 field.
 .TP
-.BR SECCOMP_ADDFD_FLAG_SEND
-Available since Linux 5.14, combines the
+.BR SECCOMP_ADDFD_FLAG_SEND " (since Linux 5.14)"
+Combines the
 .B SECCOMP_IOCTL_NOTIF_ADDFD
 ioctl with
 .B SECCOMP_IOCTL_NOTIF_SEND
-into an atomic operation. On successful invocation, the target process's
-errno will be 0 and the return value will be the file descriptor number
that was
-installed in the target. If allocating the file descriptor in the
tatget fails,
-the target's syscall continues to be blocked until a successful response is
-sent.
+into an atomic operation.
+On successful invocation, the target process's errno will be 0
+and the return value will be the file descriptor number
+that was installed in the target.
+If allocating the file descriptor in the tatget fails,
+the target's syscall continues to be blocked
+until a successful response is sent.
 .RE
 .TP
 .I srcfd
@@ -1149,14 +1151,6 @@ that would
 normally be restarted by the
 .BR SA_RESTART
 flag.
-.PP
-Furthermore, if the supervisor response is a file descriptor
-added with
-.B SECCOMP_IOCTL_NOTIF_ADDFD,
-then the flag
-.B SECCOMP_ADDFD_FLAG_SEND
-can be used to atomically add the file descriptor and return that value,
-making sure no file descriptors are inadvertently leaked into the target.
 .\" FIXME
 .\" About the above, Kees Cook commented:
 .\"
@@ -1176,6 +1170,14 @@ making sure no file descriptors are inadvertently
leaked into the target.
 .\" calls because it's impossible for the kernel to restart the call
 .\" with the right timeout value. I wonder what happens when those
 .\" system calls are restarted in the scenario we're discussing.)
+.PP
+Furthermore, if the supervisor response is a file descriptor
+added with
+.B SECCOMP_IOCTL_NOTIF_ADDFD,
+then the flag
+.B SECCOMP_ADDFD_FLAG_SEND
+can be used to atomically add the file descriptor and return that value,
+making sure no file descriptors are inadvertently leaked into the target.
 .SH BUGS
 If a
 .BR SECCOMP_IOCTL_NOTIF_RECV


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
