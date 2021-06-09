Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B4D33A1FFD
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:25:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhFIW1s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:27:48 -0400
Received: from mail-pl1-f173.google.com ([209.85.214.173]:39632 "EHLO
        mail-pl1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbhFIW1r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:27:47 -0400
Received: by mail-pl1-f173.google.com with SMTP id v11so5014806ply.6
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MBm7UIGhQjp/trWSSQZZBqIsXVilQ9v/jatCtK1xjlo=;
        b=OyMLvVit8ejgh4otFsYxozMKbFUuAjUPC092ZOtpOopgWKe/Pjfpo7RyNu3RM7O6/x
         GNy2KnmzIIyYY2SS0SaM/OEHHZjS6rateorp4SGAtAyr0ECYlB5PtA7PnI5GiAKXZM8M
         5LucPi2gQ28yBGOF/t+BU5NHqVj27iijuo3rhm4JYwsfjUJqk1ofETlSJ2hUyZcdwwG5
         RkK5+phJgfx7V5ON2jb2Mzun/sVW+DJFc8OVfxk7UN3XAUkwAkN2onEaT2+Yxsk1pf+p
         sFNmaIp2VCyfzTRll+oY5szbgwxp1wm/tFwxw7c7xeG4wrhpGCQWMcmeP5SzFkzby5AN
         37wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MBm7UIGhQjp/trWSSQZZBqIsXVilQ9v/jatCtK1xjlo=;
        b=CE7cOiX9Bd1xPvCATtKvNfjtkL50ma7yj4xr7KvRUPG64X/Ojqgu3xcBaLRwxDsiL/
         idfzLkrdpnlh1sU32LY0bkaq36nSq2VKBOxTB76Ov659GJYtAOmBH78iYt6+WIGKuYmC
         DQIwnj6qGOk08cH9VpeVpGkuPXGVBGHJW6bhJlHuKLLGJTwiw8lOSSHY+v+3dVaHN3Pw
         laC9u6J25RQHK+fzhlMH9tWZr7mWph85GNNi2gLYOzVJsLLtbcWi0oQZ1Rv07Pi4CiQV
         o2msAI/cfx5vUitclc9SuFyomuL0zRc5noYVxETejAnyk4CFASg+nK9x95S08SVZ7fqD
         oPRg==
X-Gm-Message-State: AOAM533qj82dV7lpIJa6QVyY6B9JCurqLEVNii9OKQZ/eeYn0I7zKR3z
        AzUUAu7KJhPfMdO0BP5Fn33sBr83xK0=
X-Google-Smtp-Source: ABdhPJzdeF9La8NXLQL9iegIKT47iRFSUnlThMtA/4Z8tXNSrvD1BsjqbBGf/NITXjC6ZdzNiJ1ahQ==
X-Received: by 2002:a17:90a:b008:: with SMTP id x8mr1887972pjq.160.1623277480076;
        Wed, 09 Jun 2021 15:24:40 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id p14sm711754pgb.2.2021.06.09.15.24.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:24:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 05/10] set_thread_area.2: Use syscall(SYS_...); for
 system calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <874ba77c-e350-39b4-7b29-dd589eab5f96@gmail.com>
Date:   Thu, 10 Jun 2021 10:24:36 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/25/21 6:19 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/set_thread_area.2 | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)

Applied.

Thanks,

Michael


> diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
> index 284dea390..43f3009f7 100644
> --- a/man2/set_thread_area.2
> +++ b/man2/set_thread_area.2
> @@ -11,28 +11,31 @@
>  get_thread_area, set_thread_area \- manipulate thread-local storage information
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/unistd.h>
> +.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
>  .B #if defined __i386__ || defined __x86_64__
> -.B # include <asm/ldt.h>
> +.BR "# include <asm/ldt.h>" "        /* Definition of " "struct user_desc" " */"
>  .PP
> -.BI "int get_thread_area(struct user_desc *" u_info );
> -.BI "int set_thread_area(struct user_desc *" u_info );
> +.BI "int syscall(SYS_get_thread_area, struct user_desc *" u_info );
> +.BI "int syscall(SYS_set_thread_area, struct user_desc *" u_info );
>  .PP
>  .B #elif defined __m68k__
>  .PP
> -.B "int get_thread_area(void);"
> -.BI "int set_thread_area(unsigned long " tp );
> +.B "int syscall(SYS_get_thread_area);"
> +.BI "int syscall(SYS_set_thread_area, unsigned long " tp );
>  .PP
>  .B #elif defined __mips__
>  .PP
> -.BI "int set_thread_area(unsigned long " addr );
> +.BI "int syscall(SYS_set_thread_area, unsigned long " addr );
>  .PP
>  .B #endif
>  .fi
>  .PP
>  .IR Note :
> -There are no glibc wrappers for these system calls; see NOTES.
> +glibc provides no wrappers for these system calls,
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  These calls provide architecture-specific support for a thread-local storage
>  implementation.
> @@ -172,10 +175,7 @@ and
>  are Linux-specific and should not be used in programs that are intended
>  to be portable.
>  .SH NOTES
> -Glibc does not provide wrappers for these system calls,
> -since they are generally intended for use only by threading libraries.
> -In the unlikely event that you want to call them directly, use
> -.BR syscall (2).
> +These system calls are generally intended for use only by threading libraries.
>  .PP
>  .BR arch_prctl (2)
>  can interfere with
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
