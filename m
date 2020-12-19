Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2F8D2DF01C
	for <lists+linux-man@lfdr.de>; Sat, 19 Dec 2020 16:03:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726680AbgLSPCm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Dec 2020 10:02:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726660AbgLSPCm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Dec 2020 10:02:42 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4950C0617B0
        for <linux-man@vger.kernel.org>; Sat, 19 Dec 2020 07:02:01 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id t30so6182737wrb.0
        for <linux-man@vger.kernel.org>; Sat, 19 Dec 2020 07:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R0MnwtacTxDxZTHoE6Pm6GGS3okDvPp4VTJdoMtQDR0=;
        b=FoHy1nb42t3o+KTVaCUrYKgeWYnDyOIg4LXXC5al/BZDaThQjFf5tDKbS6Iq5HuO3b
         q8Ck9QbVrAbWDYE0Wm4s7IT/JOGuz/3R5VrTbPAkAwvYBm0GEZCa1sPSq05sAv5Xbs2Q
         lWXBkQ0HVy1nhlcQS3LiU6BfyazDsh4PnwbFJqD4Ifj0fwqYfjPDJgB9l1apozVr4oZq
         f+FGkyTl0mYQTk+oDOZw8XJaniOCvV+v6Q6N/yTpTXUVu95QiItx7ztSbOgYsIzWN3hn
         TK7kT3va5b6dELfVQrbmoiSgjRhamneIVR4pOAAJ6+p7knWlIendDpieg/F5U18++pc+
         Ovzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=R0MnwtacTxDxZTHoE6Pm6GGS3okDvPp4VTJdoMtQDR0=;
        b=NmMQoXlXXs1fbUUHnOK4HhQ0eyljVakWID6BPLEbnXY/jiTE41vPRjEmHvkGo36sgP
         T4JzalZhazyVRDa+6VKPhVL3CSUgi/1HqRGikfOxFA6C1zOsgWyE6D808LQNspktiEWj
         ptn3uhrvKbUJhsV7eB1owcAKgckV1IHnUvZ4baFFBgVsdzLBzub8vRwQMIwSDvgB0FsB
         T7GgBwpI1EblKlpq0eXY8Mt0EgitSjQp6yYpLp8OfAQ8Nrx/Ew0jFxVG56H/5ifCvQlU
         gdIOxcz4oAgLVclJuCt5ZiAHbB2hlT+m3BllZNKIcMPN5jXraOvCH2M7zeYPBSWjrKII
         DYNw==
X-Gm-Message-State: AOAM532SxxE+70Smqtgq2TfI23ojQVgZLBobBjHAjOL9XSorSo3S82VR
        VnoqePOP4diTJeYBh2vC8o6VLM7LELU=
X-Google-Smtp-Source: ABdhPJyk+HNOX8fpcx8V4rT76hqIgIIhRuAU3C0GCCmIIz98Tb4QWBaQSUh0auNioxTsa9zYRhxh+Q==
X-Received: by 2002:adf:a34d:: with SMTP id d13mr9894822wrb.194.1608390119639;
        Sat, 19 Dec 2020 07:01:59 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id u9sm10825316wmb.32.2020.12.19.07.01.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Dec 2020 07:01:59 -0800 (PST)
Subject: Re: [PATCH] prctl.2: Document Syscall User Dispatch
To:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20201219041009.3143592-1-krisman@collabora.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <30db3ba3-34de-369d-4310-2818a5499a6d@gmail.com>
Date:   Sat, 19 Dec 2020 16:01:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201219041009.3143592-1-krisman@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Gabriel,

Thanks for the page!
Please see some comments below.

Thanks,

Alex

On 12/19/20 5:10 AM, Gabriel Krisman Bertazi wrote:
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> ---
>  man2/prctl.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f25f05fdb593..2e82c73c10c2 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1533,6 +1533,70 @@ For more information, see the kernel source file
>  (or
>  .I Documentation/arm64/sve.txt
>  before Linux 5.3).
> +.TP
> +.\"commit 1446e1df9eb183fdf81c3f0715402f1d7595d4cb
> +.BR PR_SET_SYSCALL_USER_DISPATCH " (Since Linux 5.11, x86 only)"

s/Since/since

rationale:
$ grep -r '(Since Linux' man? |wc -l
48
$ grep -r '(since Linux' man? |wc -l
1286

> +.IP
> +Configure the Syscall User Dispatch mechanism for the calling thread, to

See:

$ man 7 man-pages |sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  and  long sentences should split into lines at
       clause breaks (commas, semicolons, colons, and  so  on).   This
       convention,  sometimes  known  as "semantic newlines", makes it
       easier to see the effect of patches, which often operate at the
       level of individual sentences or sentence clauses.


> +selective intercept system calls and dispatch them back to userspace

s/userspace/user space/

Rationale:
$ man 7 man-pages |sed -n '/Preferred/,/user space/p'
   Preferred terms
       The following table lists some preferred terms to use in man
pages, mainly to ensure consistency across pages.

       Term                 Avoid using                     Notes

────────────────────────────────────────────────────────────────────────────────────────────────────

       bit mask             bitmask
       built-in             builtin
       Epoch                epoch                           For the UNIX
Epoch (00:00:00, 1 Jan 1970 UTC)
       filename             file name
       filesystem           file system
       hostname             host name
       inode                i-node
       lowercase            lower case, lower-case
       nonzero              non-zero
       pathname             path name
       pseudoterminal       pseudo-terminal
       privileged port      reserved port, system port
       real-time            realtime, real time
       run time             runtime
       saved set-group-ID   saved group ID, saved set-GID
       saved set-user-ID    saved user ID, saved set-UID
       set-group-ID         set-GID, setgid
       set-user-ID          set-UID, setuid
       superuser            super user, super-user
       superblock           super block, super-block
       timestamp            time stamp
       timezone             time zone
       uppercase            upper case, upper-case
       usable               useable
       user space           userspace

> +through
> +.IR SIGSYS .
> +.IP
> +The current Syscall User Dispatch mode is selected via
> +.IR "arg2",

.IR arg2 ,

> +which can either be set to
> +.B PR_SYS_DISPATCH_ON
> +to enable the feature, or to
> +.B PR_SYS_DISPATCH_OFF
> +to turn it off.
> +.IP
> +With
> +.IR "arg2"

.I arg2

> +set to
> +.BR PR_SYS_DISPATCH_ON ,
> +.IR "arg3"

.I arg3

> +and
> +.I "arg4"

tr -d '"'

> +respectively identify the
> +.I offset
> +and
> +.I length
> +of a memory region in the process map from where system calls are always

See semantic newlines above.

> +allowed to be executed, regardless of the switch variable.
> +.I "arg5"

tr -d '"'

> +points to a char-sized variable that is a fast switch to enable/disable> +the mechanism without invoking the kernel.
> +.I "arg5"

tr -d '"'

> +can be set to either
> +.BR PR_SYS_DISPATCH_ON

s/.BR/.B/

> +to enable the mechanism or to
> +.BR PR_SYS_DISPATCH_OFF

s/.BR/.B

> +to temporarily disable it.  Any other value will fail the application> +with a

See semantic newlines above.

> +.IR SIGSYS .
> +.IP
> +When a system call is intercepted, a
> +.I SIGSYS
> +is raised with
> +.I si_code
> +set to
> +.B SYS_USER_DISPATCH.

.BR SYS_USER_DISPATCH .

> +.IP
> +When
> +.I "arg2"

tr -d '"'

> +is set to
> +.BR PR_SYS_DISPATCH_OFF ,
> +the remaining arguments must be set to
> +.BR 0 .

Literals are not (usually) formatted.

[
the remaining arguments must be set to 0.
]

> +.IP
> +The setting is not preserved across
> +.BR fork (2),
> +.BR clone (2)
> +or
> +.BR execve (2) .

s/(2) ./(2)./

> +.IP
> +For more information, see the kernel source file
> +.IR Documentation/admin-guide/syscall-user-dispatch.rst

s/.IR/.I/

Could you add

>  .\" prctl PR_SET_TAGGED_ADDR_CTRL
>  .\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
>  .TP
> @@ -2000,6 +2064,14 @@ and
>  .I arg3
>  is an invalid address.
>  .TP
> +.B EFAULT
> +.I option
> +is
> +.BR PR_SET_SYSCALL_USER_DISPATCH

s/.BR/.B/

> +and
> +.I arg5
> +has an invalid address.
> +.TP
>  .B EINVAL
>  The value of
>  .I option
> @@ -2229,6 +2301,27 @@ is
>  and SVE is not available on this platform.
>  .TP
>  .B EINVAL
> +.I option is
> +.B PR_SET_SYSCALL_USER_DISPATCH
> +and one of the following is true:
> +.RS
> +.IP * 3
> +.I arg2
> +is
> +.B PR_SYS_DISPATCH_OFF
> +and remaining arguments are not
> +.BR 0.

and remaining arguments are not 0.

> +.IP * 3
> +.I arg2
> +is
> +.B PR_SYS_DISPATCH_ON
> +and the memory region provided is invalid.> +.IP * 3
> +.I arg2
> +is invalid.
> +.RE
> +.TP
> +.B EINVAL
>  .I option
>  is
>  .BR PR_SET_TAGGED_ADDR_CTRL
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
