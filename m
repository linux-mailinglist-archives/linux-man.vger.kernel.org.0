Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 912302F952C
	for <lists+linux-man@lfdr.de>; Sun, 17 Jan 2021 21:36:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729349AbhAQUgl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Jan 2021 15:36:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729392AbhAQUgk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Jan 2021 15:36:40 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76223C061757
        for <linux-man@vger.kernel.org>; Sun, 17 Jan 2021 12:35:55 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id r12so9501058ejb.9
        for <linux-man@vger.kernel.org>; Sun, 17 Jan 2021 12:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w5d6e/MTMJ7FkF8FU0zwoAjhmdhpANBegqRwKDkEXn8=;
        b=jCAdnY8y/9o1CkIxE98B+rvG+73MNfu/moTLRuP0lxxjtjEGWllgqA2yf+2GvDSHEW
         wJosr+cYc3oorA0SwAb9AhOp+3KGaAcshUaPeG+prPKgyDEiIuIYKwwTy7f2adpU1nkP
         rBGV0XwEb2EdlW54Q4OBNSymukoSBKcPu9mBsoHPzJ+/hYX4Dqsmi7fgRAoAsLyXvXtM
         DRsZj2dLFK3JZfgx6plvuphlp1iWGxGTTL4/xLR/4zrjJjbDjhEhbO8kZsed0yCE7Klm
         hJhxx8mno1hUMNKlpf79YwhZYurSiHhUN0mYGPyxqWK23q4pKL3nOJsHM4w/TmV+BRmO
         Incw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w5d6e/MTMJ7FkF8FU0zwoAjhmdhpANBegqRwKDkEXn8=;
        b=oqeX2ukYisYtrBityiR6gg49Av9iDfu1E/IOR6xtkicd1V4i+LqopFF3PbAZ0COZ4a
         KwLv3VCnazrLzvbprhybpTc1J/Nt9uC7Nb7vexRign2IbjvyurfcxJskSOLLCR6Orwj9
         R2UaJGjOu+qdHQ7H58nL3fGlZjBDWYiK/cD1NCNsIw5bCyEq4L+g2p3lD1VN0QDlVR44
         b8mUdoH8f6ZcJmp1xGvvCSY4AvVnk++fGVEBMCAPvNJja1jdp2FesK6FTKdU5FUYG6Wp
         yVjGp1QyhBQY4rXf6McQOD7adrHaF0HrO9kyNAf6DmJpCExERiJaIiTFkR6N1mNTzwRx
         nqNw==
X-Gm-Message-State: AOAM533B/zF2+ve+XH4BuKTQqQ9IlBKSBN82B2YFdLHSCqQa1paKp+zw
        DEimLRGOEAMEfPZLAUKQgb8=
X-Google-Smtp-Source: ABdhPJxeYulnBQkH8AbHgRzTLzRv9sVE4gLuYNETFRv9FE4PDqAgmdOfi2c6qdk2CsCssdDJyZDhRQ==
X-Received: by 2002:a17:906:d19b:: with SMTP id c27mr15670736ejz.234.1610915754264;
        Sun, 17 Jan 2021 12:35:54 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id he16sm7125346ejc.76.2021.01.17.12.35.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 12:35:53 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] execveat.2: Normalize notes about missing wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210116145858.7754-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fc5c06cb-0969-166e-c346-5e50ae631f83@gmail.com>
Date:   Sun, 17 Jan 2021 21:35:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210116145858.7754-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/16/21 3:58 PM, Alejandro Colomar wrote:
> It's been a long time sine kernel 3.19.
> There's still no glibc wrapper.

Fair enough! Patch applid.

Thanks,

Michael

> 
> ......
> 
> $ grep -rn 'execveat *(' glibc/
> $
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/execveat.2 | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/execveat.2 b/man2/execveat.2
> index ef3606d8b..02d9c7331 100644
> --- a/man2/execveat.2
> +++ b/man2/execveat.2
> @@ -30,10 +30,13 @@ execveat \- execute program relative to a directory file descriptor
>  .nf
>  .B #include <unistd.h>
>  .PP
> -.BI "int execveat(int " dirfd ", const char *" pathname ","
> -.BI "             char *const " argv "[], char *const " envp "[],"
> +.BI "int execveat(int " dirfd ", const char *" pathname ,
> +.BI "             char *const " argv "[], char *const " envp [],
>  .BI "             int " flags );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
>  The
> @@ -160,8 +163,6 @@ is a file descriptor referring to a file other than a directory.
>  .SH VERSIONS
>  .BR execveat ()
>  was added to Linux in kernel 3.19.
> -GNU C library support is pending.
> -.\" FIXME . check for glibc support in a future release
>  .SH CONFORMING TO
>  The
>  .BR execveat ()
> @@ -207,6 +208,9 @@ the natural idiom when using
>  is to set the close-on-exec flag on
>  .IR dirfd .
>  (But see BUGS.)
> +.PP
> +Glibc does not provide a wrapper for this system call; call it using
> +.BR syscall (2).
>  .SH BUGS
>  The
>  .B ENOENT
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
