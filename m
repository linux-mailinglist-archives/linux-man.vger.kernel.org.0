Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1702312017
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 21:50:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbhBFUuI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 15:50:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbhBFUuE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 15:50:04 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72A09C06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 12:49:24 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id w1so18516424ejf.11
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 12:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+lzI5hwfSoMJZ2AEPd2ppgkhaeu9OaptjxLuCIF/HGU=;
        b=Nvi75xqvDNE3WyLRCn8sej8nOdOBy4WMoEeyrbyHoEdJqjZtrmUCfmrMgag3W+48on
         NmEx8lR1drC6J8KA5YPh7ZGs1thOpVMKtZcO8FqslzFrmnrSPVeAM3AcGsYBmdZfEqzi
         tD6tg8VIeLuOlt5RSlQ7AjHP/XKNDLf9tRgVjwrVm+2RiuP1UOccyqLzVr31Fq+sr5sx
         gOKkw12PiBXfJHmUfInTlhlcLRsh6+49XNUKGStL2yK7mKynZx3AEP9mfDWIAE1R7iNV
         v8qMc9D6qHgDUQ0nvAdBOvf5B37kVbHFl7tiiYxrmkOgidijyT/b/OHmk9yewuj9D5an
         czyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+lzI5hwfSoMJZ2AEPd2ppgkhaeu9OaptjxLuCIF/HGU=;
        b=L/x7AWSSsL+ChdUN3C1suZoPhtXtlN4SL1lfblZwNkfo1EKfiAoWZYiqUPrKWJHu6a
         iXpZe1ATAwB9wxersp4RH76dyKR1hvHG7BRQKdsS9xU9kEKMIgM7YfQCehhBt1XV4J+a
         pWumL0LAQ5X6aJ5F4m/bVSI7eNWxP3NElOgf7dhdariOvD4qVoS9aBXKcnGpxwwVyt63
         bxU5VpblhMkA+zM/zltqEdGI1nDxuu+2BEZDv1/e2jgNWGIAwwUtVnWCinyvSElBCaER
         iU/72vdRdXMnaTxj3Lssav13eC/2sbRnGQ/Q+mbIZ1HJzu3wZm/GCUTyM7s3oMrhMyTi
         VQWA==
X-Gm-Message-State: AOAM530YlA3Vofx98KKwXrgTajRGgzgPwAjiyHVW7B3NW7p9Wo57XkpG
        D6PRlpS/9A9X7fkYeGZs/ow=
X-Google-Smtp-Source: ABdhPJwRp1GRHxA0UY2WcmJjI5Fq1+CyryiV2iKMDlpAaArZPtCry8bH8vO0Nx42p0gsjwhBXv515A==
X-Received: by 2002:a17:906:b0d1:: with SMTP id bk17mr10523121ejb.310.1612644563186;
        Sat, 06 Feb 2021 12:49:23 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id r3sm6023560edi.49.2021.02.06.12.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 12:49:22 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] bdflush.2, capget.2, get_mempolicy.2, ipc.2,
 lookup_dcookie.2, mbind.2, migrate_pages.2: Add notes about missing glibc
 wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210204111526.194462-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6fa83f1f-03de-e00e-fdff-9816b6c659bc@gmail.com>
Date:   Sat, 6 Feb 2021 21:49:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210204111526.194462-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/4/21 12:15 PM, Alejandro Colomar wrote:
> .../glibc$ grep_syscall_wrapper bdflush
> .../glibc$ grep_syscall_wrapper capget
> .../glibc$ grep_syscall_wrapper capset
> .../glibc$ grep_syscall_wrapper get_mempolicy
> .../glibc$ grep_syscall_wrapper ipc
> .../glibc$ grep_syscall_wrapper lookup_dcookie
> .../glibc$ grep_syscall_wrapper mbind
> .../glibc$ grep_syscall_wrapper migrate_pages
> .../glibc$
> 
> function grep_syscall_wrapper()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find * -type f \
> 	|grep '\.h$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn \
> 	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied, with one follow-up tweak.

Cheers,

Michael

> ---
>  man2/bdflush.2        | 3 +++
>  man2/capget.2         | 6 ++++++
>  man2/get_mempolicy.2  | 4 ++++
>  man2/ipc.2            | 6 ++++++
>  man2/lookup_dcookie.2 | 6 ++++++
>  man2/mbind.2          | 4 ++++
>  man2/migrate_pages.2  | 4 ++++
>  7 files changed, 33 insertions(+)
> 
> diff --git a/man2/bdflush.2 b/man2/bdflush.2
> index 93190ee3a..6e69155bf 100644
> --- a/man2/bdflush.2
> +++ b/man2/bdflush.2
> @@ -34,6 +34,9 @@ bdflush \- start, flush, or tune buffer-dirty-flush daemon
>  .BI "int bdflush(int "  func ", long *" address );
>  .BI "int bdflush(int "  func ", long " data );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see VERSIONS.
>  .SH DESCRIPTION
>  .IR Note :
>  Since Linux 2.6,
> diff --git a/man2/capget.2 b/man2/capget.2
> index 226a917e7..ea504c28c 100644
> --- a/man2/capget.2
> +++ b/man2/capget.2
> @@ -23,6 +23,9 @@ capget, capset \- set/get capabilities of thread(s)
>  .BI "int capget(cap_user_header_t " hdrp ", cap_user_data_t " datap );
>  .BI "int capset(cap_user_header_t " hdrp ", const cap_user_data_t " datap );
>  .fi
> +.PP
> +.IR Note :
> +There are no glibc wrappers for these system calls; see NOTES.
>  .SH DESCRIPTION
>  These two system calls are the raw kernel interface for getting and
>  setting thread capabilities.
> @@ -236,6 +239,9 @@ No such thread.
>  .SH CONFORMING TO
>  These system calls are Linux-specific.
>  .SH NOTES
> +Glibc does not provide a wrapper for this system call; call it using
> +.BR syscall (2).
> +.PP
>  The portable interface to the capability querying and setting
>  functions is provided by the
>  .I libcap
> diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
> index 1ee68933b..fbcab2a7c 100644
> --- a/man2/get_mempolicy.2
> +++ b/man2/get_mempolicy.2
> @@ -37,6 +37,9 @@ get_mempolicy \- retrieve NUMA memory policy for a thread
>  .PP
>  Link with \fI\-lnuma\fP.
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR get_mempolicy ()
>  retrieves the NUMA policy of the calling thread or of a memory address,
> @@ -239,6 +242,7 @@ system call was added to the Linux kernel in version 2.6.7.
>  .SH CONFORMING TO
>  This system call is Linux-specific.
>  .SH NOTES
> +Glibc does not provide a wrapper for this system call.
>  For information on library support, see
>  .BR numa (7).
>  .SH SEE ALSO
> diff --git a/man2/ipc.2 b/man2/ipc.2
> index 469185638..d2b409ff9 100644
> --- a/man2/ipc.2
> +++ b/man2/ipc.2
> @@ -31,6 +31,9 @@ ipc \- System V IPC system calls
>  ", int " third ,
>  .BI "        void *" ptr ", long " fifth );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR ipc ()
>  is a common kernel entry point for the System\ V IPC calls
> @@ -54,6 +57,9 @@ system call; instead,
>  .BR semctl (2),
>  .BR shmctl (2),
>  and so on really are implemented as separate system calls.
> +.PP
> +Glibc does not provide a wrapper for this system call; call it using
> +.BR syscall (2).
>  .SH SEE ALSO
>  .BR msgctl (2),
>  .BR msgget (2),
> diff --git a/man2/lookup_dcookie.2 b/man2/lookup_dcookie.2
> index c2f2a87e6..e38ca89a4 100644
> --- a/man2/lookup_dcookie.2
> +++ b/man2/lookup_dcookie.2
> @@ -31,6 +31,9 @@ lookup_dcookie \- return a directory entry's path
>  .nf
>  .BI "int lookup_dcookie(u64 " cookie ", char *" buffer ", size_t " len );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  Look up the full path of the directory entry specified by the value
>  .IR cookie .
> @@ -89,5 +92,8 @@ It relies on a kernel driver to register cookies for directory entries.
>  .PP
>  The path returned may be suffixed by the string " (deleted)" if the directory
>  entry has been removed.
> +.PP
> +Glibc does not provide a wrapper for this system call; call it using
> +.BR syscall (2).
>  .SH SEE ALSO
>  .BR oprofile (1)
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index d98969e7f..bfec5dd1b 100644
> --- a/man2/mbind.2
> +++ b/man2/mbind.2
> @@ -45,6 +45,9 @@ mbind \- set memory policy for a memory range
>  .PP
>  Link with \fI\-lnuma\fP.
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR mbind ()
>  sets the NUMA memory policy,
> @@ -425,6 +428,7 @@ system call was added to the Linux kernel in version 2.6.7.
>  .SH CONFORMING TO
>  This system call is Linux-specific.
>  .SH NOTES
> +Glibc does not provide a wrapper for this system call.
>  For information on library support, see
>  .BR numa (7).
>  .PP
> diff --git a/man2/migrate_pages.2 b/man2/migrate_pages.2
> index cbba5350d..e4c7af92d 100644
> --- a/man2/migrate_pages.2
> +++ b/man2/migrate_pages.2
> @@ -27,6 +27,9 @@ migrate_pages \- move all pages in a process to another set of nodes
>  .BI "                   const unsigned long *" new_nodes );
>  .fi
>  .PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
> +.PP
>  Link with \fI\-lnuma\fP.
>  .SH DESCRIPTION
>  .BR migrate_pages ()
> @@ -140,6 +143,7 @@ system call first appeared on Linux in version 2.6.16.
>  .SH CONFORMING TO
>  This system call is Linux-specific.
>  .SH NOTES
> +Glibc does not provide a wrapper for this system call.
>  For information on library support, see
>  .BR numa (7).
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
