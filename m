Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E96C92E7C1D
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 20:21:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726640AbgL3TVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 14:21:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726529AbgL3TVV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 14:21:21 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7E1FC061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 11:20:40 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id x16so23069223ejj.7
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 11:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nYAxiFhXULKH1eWZ8jPbCudrsoSSPIflXfo3mvgrMoY=;
        b=hxrMXIr3JCvmtyXATIs4CdQw6Lg7BG0pSmzgjc+Q+BG+hRyEec8VvY4Eaywp2/XXF2
         WnAMgU0kATyJsGx7zwDuL7LiSNB+v+Yfp9mTsSa8Jhv5ruRMWAQzxbLvw5OlPLKXy5FE
         0y5NgkGdyyTaahl3D91RmCue2ElQzjG01fy6NFIxHw0F8Q9Ebcb8B4GOpdmJysKAYyn8
         /900r4Khkjm3NSVLzBKAtrfznCU6JNYEoqTOBsz+laWp2xJT/rcZ0Ktv3YP8M/w+3fwg
         Pg7BEBynfQHK1j67ZSxj9YJhKoZKQyHtx+HiKp26rIjiG6DYlM5gAgYSyDP0ouSvReG2
         vsUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nYAxiFhXULKH1eWZ8jPbCudrsoSSPIflXfo3mvgrMoY=;
        b=PC1lvcI3+WVl7lA6jnv4ueQjGkttasonZ7cbCICwcA98HrhCe+/oTRSjUCxjkpgsZN
         lbiq1Qx1iyP2FFfAwjIq7s8zL+e8YKS1lXF1OYQFuMZY2xPdGQKaUtTnwyxJRcsjcCyl
         bOftU0vfZy4FDOywywoqcEKHBYXYp8Epg1l5zFK3dvuQ+C5zO5QhPYbHUhKH6a+YGIl4
         IigIkV/mmR5VSTlaB3eMM2di4THAxpBG+TvUbAdMc1eQf+SdgRli4C3OUVHLrTWrJVHS
         lSEvzr159lWJi/0ME6fM1iaAQlSiJafEczFXDMXjRxYQGp2LQtNd/lUZlXfW7WfEvLI7
         IECQ==
X-Gm-Message-State: AOAM53033Lq93LC7Hba+OYWBRx0kIklIWGVe52FUmcoBV1krI+T4VZp7
        JDuffuVrvy3UE0mMWCW6cNsIHNnqOVE=
X-Google-Smtp-Source: ABdhPJytXXQbl9fPe64eOJvPzEkVBTyid2yg04RiRxOhw1PBvI0xBy0uAeKEn6q+rebKyKPjx1K4rg==
X-Received: by 2002:a17:907:1010:: with SMTP id ox16mr51120797ejb.439.1609356038924;
        Wed, 30 Dec 2020 11:20:38 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id z24sm38689517edr.9.2020.12.30.11.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 11:20:37 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] Various pages: Normalize SYNOPSIS notes about
 nonexistent glibc wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <91ef6bdb-76db-ffdd-7d43-51d7abeb9beb@gmail.com>
 <20201230152025.300622-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c5b86c10-1cd7-8b4f-9c56-61c6da6cf7b2@gmail.com>
Date:   Wed, 30 Dec 2020 20:20:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201230152025.300622-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex and Ganimedes,

On 12/30/20 4:20 PM, Alejandro Colomar wrote:
> From: Ganimedes Colomar <gacoan.linux@gmail.com>
> 
> To easily distinguish documentation about glibc wrappers from
> documentation about kernel syscalls, let's have a normalized
> 'Note' in the SYNOPSIS, and a further explanation in the page body
> (NOTES in most of them), as already happened in many (but not all)
> of the manual pages for syscalls without a wrapper.  Furthermore,
> let's normalize the messages, following membarrier.2 (because it's
> already quite extended), so that it's easy to use grep to find
> those pages.
> 
> To find these pages, we used:
> $ grep -rn wrapper man? | sort -V
> and
> $ grep -rni support.*glibc | sort -V
> 
> delete_module.2, init_module.2:  glibc 2.23 is no longer
>   maintained, so we changed the notes about wrappers, to say that
>   there are no glibc wrappers for these system calls; see NOTES.
> 
> We didn't fix some obsolete pages such as create_module.2.

Thanks! Patch applied. As noted already, it's great to get
consistent language into the manual pages.

Cheers,

Michael

> Signed-off-by: Ganimedes Colomar <gacoan.linux@gmail.com>
> Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/add_key.2              | 3 ++-
>  man2/arch_prctl.2           | 3 +++
>  man2/clone.2                | 2 +-
>  man2/delete_module.2        | 2 +-
>  man2/init_module.2          | 6 +-----
>  man2/keyctl.2               | 3 ++-
>  man2/pidfd_getfd.2          | 3 +++
>  man2/pidfd_open.2           | 3 +++
>  man2/pidfd_send_signal.2    | 2 ++
>  man2/request_key.2          | 3 ++-
>  man2/s390_guarded_storage.2 | 3 +++
>  man2/s390_pci_mmio_write.2  | 3 +++
>  man2/s390_runtime_instr.2   | 3 +++
>  man2/s390_sthyi.2           | 3 +++
>  man2/seccomp.2              | 3 +++
>  man2/syslog.2               | 1 -
>  16 files changed, 35 insertions(+), 11 deletions(-)
> 
> diff --git a/man2/add_key.2 b/man2/add_key.2
> index 1476b7d85..7c20de777 100644
> --- a/man2/add_key.2
> +++ b/man2/add_key.2
> @@ -22,7 +22,8 @@ add_key \- add a key to the kernel's key management facility
>  .BI "                     key_serial_t " keyring ");"
>  .fi
>  .PP
> -No glibc wrapper is provided for this system call; see NOTES.
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR add_key ()
>  creates or updates a key of the given
> diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
> index 97d5a2fe5..e8a6da391 100644
> --- a/man2/arch_prctl.2
> +++ b/man2/arch_prctl.2
> @@ -33,6 +33,9 @@ arch_prctl \- set architecture-specific thread state
>  .BI "int arch_prctl(int " code ", unsigned long " addr );
>  .BI "int arch_prctl(int " code ", unsigned long *" addr );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR arch_prctl ()
>  sets architecture-specific process or thread state.
> diff --git a/man2/clone.2 b/man2/clone.2
> index 0114668ea..0d6565b5d 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -60,7 +60,7 @@ clone, __clone2, clone3 \- create a child process
>  .fi
>  .PP
>  .IR Note :
> -There is not yet a glibc wrapper for
> +There is no glibc wrapper for
>  .BR clone3 ();
>  see NOTES.
>  .SH DESCRIPTION
> diff --git a/man2/delete_module.2 b/man2/delete_module.2
> index daa15faa2..e63545d51 100644
> --- a/man2/delete_module.2
> +++ b/man2/delete_module.2
> @@ -31,7 +31,7 @@ delete_module \- unload a kernel module
>  .fi
>  .PP
>  .IR Note :
> -No declaration of this system call is provided in glibc headers; see NOTES.
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR delete_module ()
> diff --git a/man2/init_module.2 b/man2/init_module.2
> index c2675db97..00cf4e948 100644
> --- a/man2/init_module.2
> +++ b/man2/init_module.2
> @@ -37,11 +37,7 @@ init_module, finit_module \- load a kernel module
>  .fi
>  .PP
>  .IR Note :
> -glibc provides no header file declaration of
> -.BR init_module ()
> -and no wrapper function for
> -.BR finit_module ();
> -see NOTES.
> +There are no glibc wrappers for these system calls; see NOTES.
>  .SH DESCRIPTION
>  .BR init_module ()
>  loads an ELF image into kernel space,
> diff --git a/man2/keyctl.2 b/man2/keyctl.2
> index 6bf07972d..f37cae8df 100644
> --- a/man2/keyctl.2
> +++ b/man2/keyctl.2
> @@ -45,7 +45,8 @@ keyctl \- manipulate the kernel's key management facility
>  .BI "             __kernel_ulong_t " arg5 );
>  .fi
>  .PP
> -No glibc wrapper is provided for this system call; see NOTES.
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR keyctl ()
>  allows user-space programs to perform key manipulation.
> diff --git a/man2/pidfd_getfd.2 b/man2/pidfd_getfd.2
> index 1a69c8238..9312b6f92 100644
> --- a/man2/pidfd_getfd.2
> +++ b/man2/pidfd_getfd.2
> @@ -29,6 +29,9 @@ pidfd_getfd \- obtain a duplicate of another process's file descriptor
>  .nf
>  .BI "int pidfd_getfd(int " pidfd ", int " targetfd ", unsigned int " flags );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR pidfd_getfd ()
> diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
> index 5b99460e1..1b0c5e0d4 100644
> --- a/man2/pidfd_open.2
> +++ b/man2/pidfd_open.2
> @@ -31,6 +31,9 @@ pidfd_open \- obtain a file descriptor that refers to a process
>  .PP
>  .BI "int pidfd_open(pid_t " pid ", unsigned int " flags );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR pidfd_open ()
> diff --git a/man2/pidfd_send_signal.2 b/man2/pidfd_send_signal.2
> index 6670cf357..ffbfd1796 100644
> --- a/man2/pidfd_send_signal.2
> +++ b/man2/pidfd_send_signal.2
> @@ -32,6 +32,8 @@ pidfd_send_signal \- send a signal to a process specified by a file descriptor
>  .BI "int pidfd_send_signal(int " pidfd ", int " sig ", siginfo_t *" info ,
>  .BI "                      unsigned int " flags );
>  .fi
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR pidfd_send_signal ()
> diff --git a/man2/request_key.2 b/man2/request_key.2
> index 86f76e43d..6b041d0c4 100644
> --- a/man2/request_key.2
> +++ b/man2/request_key.2
> @@ -22,7 +22,8 @@ request_key \- request a key from the kernel's key management facility
>  .BI "                         key_serial_t " dest_keyring ");"
>  .fi
>  .PP
> -No glibc wrapper is provided for this system call; see NOTES.
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR request_key ()
>  attempts to find a key of the given
> diff --git a/man2/s390_guarded_storage.2 b/man2/s390_guarded_storage.2
> index b3aef858f..c3ab3bc85 100644
> --- a/man2/s390_guarded_storage.2
> +++ b/man2/s390_guarded_storage.2
> @@ -31,6 +31,9 @@ s390_guarded_storage \- operations with z/Architecture guarded storage facility
>  .PP
>  .BI "int s390_guarded_storage(int " command ", struct gs_cb *" gs_cb ");"
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR s390_guarded_storage ()
> diff --git a/man2/s390_pci_mmio_write.2 b/man2/s390_pci_mmio_write.2
> index 802142987..2ccd630ab 100644
> --- a/man2/s390_pci_mmio_write.2
> +++ b/man2/s390_pci_mmio_write.2
> @@ -35,6 +35,9 @@ MMIO memory page
>  .BI "int s390_pci_mmio_read(unsigned long " mmio_addr ","
>  .BI "                        void *" user_buffer ", size_t " length ");"
>  .fi
> +.PP
> +.IR Note :
> +There are no glibc wrappers for these system calls; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR s390_pci_mmio_write ()
> diff --git a/man2/s390_runtime_instr.2 b/man2/s390_runtime_instr.2
> index 558e9c99d..0f4a704de 100644
> --- a/man2/s390_runtime_instr.2
> +++ b/man2/s390_runtime_instr.2
> @@ -31,6 +31,9 @@ s390_runtime_instr \- enable/disable s390 CPU run-time instrumentation
>  .PP
>  .BI "int s390_runtime_instr(int " command ", int " signum ");"
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR s390_runtime_instr ()
> diff --git a/man2/s390_sthyi.2 b/man2/s390_sthyi.2
> index 2ff06051a..70871286b 100644
> --- a/man2/s390_sthyi.2
> +++ b/man2/s390_sthyi.2
> @@ -32,6 +32,9 @@ s390_sthyi \- emulate STHYI instruction
>  .BI "int s390_sthyi(unsigned long " function_code ", void *" resp_buffer ","
>  .BI "               uint64_t *" return_code ", unsigned long " flags ");"
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR s390_sthyi ()
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index 6ac890a2f..4600c51d6 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -41,6 +41,9 @@ seccomp \- operate on Secure Computing state of the process
>  .BI "int seccomp(unsigned int " operation ", unsigned int " flags \
>  ", void *" args );
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR seccomp ()
> diff --git a/man2/syslog.2 b/man2/syslog.2
> index c6d6dcc94..133ba2121 100644
> --- a/man2/syslog.2
> +++ b/man2/syslog.2
> @@ -36,7 +36,6 @@ set console_loglevel
>  .SH SYNOPSIS
>  .nf
>  .BI "int syslog(int " type ", char *" bufp ", int " len );
> -.B  "                /* No wrapper provided in glibc */"
>  .PP
>  /* The glibc interface */
>  .B "#include <sys/klog.h>"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
