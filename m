Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB41F3E37C7
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 03:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbhHHBNo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 21:13:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbhHHBNo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 21:13:44 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E6D9C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 18:13:25 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id j1so22381205pjv.3
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 18:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/VmpN7bgfxx3/yaAuojqYB1Op08t+bEB3OE9DkJ4xd8=;
        b=h0RrOfJ6pnxDz/HU2IQQ7qYA1F0yMMpgMtlvJ6zVJrLXoMCN0qmsKlt2Xgq8DS8mc5
         lPR5PGzBppLL4e9K4HcXYOEE6r9dA7jKxyN1t1AsPQydAvhowWJwd9v9b2oXPU7GCZP1
         XW+ImXrTzPtVY3qd6aPPQ2SBAz4n8PFF0k6Jog60kI2sMkroNkyNlEGDbvztPdnrY8P9
         OiMY3hfgzyroF/isIqWi5W9JsZSvnNwPoY8U9K8SX1a6vhS3raozRdrEMIGiIuBlhpBy
         rwUggFeR9meE79jZ03s7y0S9DBU5HZ0j25UAMEkAGI7PIJ7F3URs4p0LZiYypKh20fLN
         twGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/VmpN7bgfxx3/yaAuojqYB1Op08t+bEB3OE9DkJ4xd8=;
        b=ne88G1wErxkX/LNxoL9n1pvcPwYk5FQY/EfOZeai2BFYFd/g/3J2ROiLfPfqZ5F7/k
         xuHdTfND1kzbaXRJtyrNDE6Wgibmbjxco9P4y92Y++PlGnpa1zkLQqhMRYML31euV1lz
         TNzySAoUD0EyAfoWmHh+yaBK1xjSs5na2SHNHfxxP/1ubAlWnpCySfxI+1CVjTDY82Gn
         5i2046kcC1yTFlVZTg5zudqiAlblnTMXl6PvlOLxm1DytQqrqgO5fe8PvrrB+0rerZpb
         PpUTqBp7FtqDmV+PWzjFIE0JEJjQKOYsYctWtaS2ItB68lY2GNbK7D4gQcNLqZB4nXEt
         Hhxw==
X-Gm-Message-State: AOAM530Kn7n+mK2U9c+Ai0s0Oa1+ra5Dk+k/Q9pbJ+wg+9ItJoUeJpFh
        Bf1v2rj115K/Y+phrSATdYU=
X-Google-Smtp-Source: ABdhPJzQ0+LA+nd1nZRa/2VgA5S9bkHXD1l2zPSQ6Yk+tZ+ct4r5r6utPzCjgSVqwnB0XuAlxiVbtg==
X-Received: by 2002:a17:90a:9318:: with SMTP id p24mr17372494pjo.138.1628385204636;
        Sat, 07 Aug 2021 18:13:24 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y6sm13244087pjr.48.2021.08.07.18.13.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 18:13:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Rodrigo Campos <rodrigo@kinvolk.io>
Subject: Re: [PATCH 17/32] seccomp_unotify.2: Minor tweaks to Rodrigo's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-18-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <080245bf-feed-ee5f-8217-ac0ab9dc012e@gmail.com>
Date:   Sun, 8 Aug 2021 03:13:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-18-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Rodrigo]

Hi Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/seccomp_unotify.2 | 32 +++++++++++++++++---------------
>  1 file changed, 17 insertions(+), 15 deletions(-)
> 
> diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
> index 9bd27214f..ae449ae36 100644
> --- a/man2/seccomp_unotify.2
> +++ b/man2/seccomp_unotify.2
> @@ -740,16 +740,18 @@ use the file descriptor number specified in the
>  .I newfd
>  field.
>  .TP
> -.BR SECCOMP_ADDFD_FLAG_SEND
> -Available since Linux 5.14, combines the
> +.BR SECCOMP_ADDFD_FLAG_SEND " (since Linux 5.14)"
> +Combines the
>  .B SECCOMP_IOCTL_NOTIF_ADDFD
>  ioctl with
>  .B SECCOMP_IOCTL_NOTIF_SEND
> -into an atomic operation. On successful invocation, the target process's
> -errno will be 0 and the return value will be the file descriptor number that was
> -installed in the target. If allocating the file descriptor in the tatget fails,
> -the target's syscall continues to be blocked until a successful response is
> -sent.
> +into an atomic operation.
> +On successful invocation, the target process's errno will be 0
> +and the return value will be the file descriptor number
> +that was installed in the target.
> +If allocating the file descriptor in the tatget fails,
> +the target's syscall continues to be blocked
> +until a successful response is sent.
>  .RE
>  .TP
>  .I srcfd
> @@ -1149,14 +1151,6 @@ that would
>  normally be restarted by the
>  .BR SA_RESTART
>  flag.
> -.PP
> -Furthermore, if the supervisor response is a file descriptor
> -added with
> -.B SECCOMP_IOCTL_NOTIF_ADDFD,
> -then the flag
> -.B SECCOMP_ADDFD_FLAG_SEND
> -can be used to atomically add the file descriptor and return that value,
> -making sure no file descriptors are inadvertently leaked into the target.
>  .\" FIXME
>  .\" About the above, Kees Cook commented:
>  .\"
> @@ -1176,6 +1170,14 @@ making sure no file descriptors are inadvertently leaked into the target.
>  .\" calls because it's impossible for the kernel to restart the call
>  .\" with the right timeout value. I wonder what happens when those
>  .\" system calls are restarted in the scenario we're discussing.)
> +.PP
> +Furthermore, if the supervisor response is a file descriptor
> +added with
> +.B SECCOMP_IOCTL_NOTIF_ADDFD,
> +then the flag
> +.B SECCOMP_ADDFD_FLAG_SEND
> +can be used to atomically add the file descriptor and return that value,
> +making sure no file descriptors are inadvertently leaked into the target.
>  .SH BUGS
>  If a
>  .BR SECCOMP_IOCTL_NOTIF_RECV

Good clean-ups, but still I added some fixes, as below. (The first change
is just some slightly smoother wording, IMO.)

Thanks,

Michael

diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
index ae449ae36..b92203721 100644
--- a/man2/seccomp_unotify.2
+++ b/man2/seccomp_unotify.2
@@ -741,16 +741,19 @@ use the file descriptor number specified in the
 field.
 .TP
 .BR SECCOMP_ADDFD_FLAG_SEND " (since Linux 5.14)"
-Combines the
+.\" commit 0ae71c7720e3ae3aabd2e8a072d27f7bd173d25c
+Perform the equivalent of
 .B SECCOMP_IOCTL_NOTIF_ADDFD
-ioctl with
+plus
 .B SECCOMP_IOCTL_NOTIF_SEND
-into an atomic operation.
-On successful invocation, the target process's errno will be 0
+as an atomic operation.
+On successful invocation, the target process's
+.I errno
+will be 0
 and the return value will be the file descriptor number
-that was installed in the target.
-If allocating the file descriptor in the tatget fails,
-the target's syscall continues to be blocked
+that was allocated in the target.
+If allocating the file descriptor in the target fails,
+the target's system call continues to be blocked
 until a successful response is sent.
 .RE
 .TP
@@ -1173,7 +1176,7 @@ flag.
 .PP
 Furthermore, if the supervisor response is a file descriptor
 added with
-.B SECCOMP_IOCTL_NOTIF_ADDFD,
+.BR SECCOMP_IOCTL_NOTIF_ADDFD ,
 then the flag
 .B SECCOMP_ADDFD_FLAG_SEND
 can be used to atomically add the file descriptor and return that value,

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
