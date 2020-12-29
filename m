Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06E372E717E
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 15:50:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726277AbgL2Ou3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 09:50:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726203AbgL2Ou2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 09:50:28 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78756C0613D6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 06:49:48 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id r3so14875533wrt.2
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 06:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AZZ4/pbMg3hVm25w0ecJlxoiJ3C8eyYfud1tRE9MohQ=;
        b=mQi383nq0wgIEMov1MO6A54IdZjI2MppcWU8qjjkfcHU25N2eCafQHQDfSX5WWy814
         WgPUJfpdHMREx23bRrBdlsGjhBxu4G2BMRrkR0YN0J4Qq0PAPTUnRm2YX66xSUBIZrjb
         Kbf1IfORSmQRTqVA4Hl+gxgX1NZ4dhTmmDNmSqa42shvjhANlVW9iH1mhifuD5W7dtlw
         /JU6bICUkUMg7U0u/q5Z8R+3oIdxmr6C/syLpzfln/tkhm6PWF0xZAg8UxOQstLBO04c
         DjrTjC41JlMfYsI/osho+rkLzdqf/ZoHHauDWKWetD6iRBOYK+ybecatr7jnhE/nAPwX
         54jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AZZ4/pbMg3hVm25w0ecJlxoiJ3C8eyYfud1tRE9MohQ=;
        b=fgFd8f6uK+16Va+gSpFm4nHwgKeI2ctekzwivnKwjo7EDxqVz5UyFRGoAKysqr21AP
         YavwTaT/BqIbShQYK448fAA1Hj10o1J0yHru/2h62vFev+JBsv891Y7qG17FkGzpBK5E
         aGIDesWhNBYz2DE9wIUnoOCxcHSUtKUuos+jwzL5u8kXGW7MQKtfDs97JFqFAn3Ytjgz
         0dXhfRqvuaVYFtvQLF7YTD89e5eeqJYndHcY9VJIRZfDDWLlBQwS5FMgdglIXDZgHQfL
         Qm7InCXvivSE3l1cww3nKY8AfRwJN6EqKSUEHcPp24vy7bxl41w+rTBqgnLDq4reWfBI
         9IYA==
X-Gm-Message-State: AOAM530TAGUYdPUOc125tYVGvdCwLtiTnFAnRwOnMs04RCUojCfxn4yp
        DFvJRBRR/+vNNvLLinLX3iXQoBh0954=
X-Google-Smtp-Source: ABdhPJy/I5UunzZHTtKhtRufCTGjH7FSFCTb0kgDvMvtYM5nQaiVx7RDe5QIQq/o3H8NjsW4gRQyCQ==
X-Received: by 2002:a5d:4f0e:: with SMTP id c14mr56104106wru.84.1609253387016;
        Tue, 29 Dec 2020 06:49:47 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j59sm64098319wrj.13.2020.12.29.06.49.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 06:49:46 -0800 (PST)
Subject: Re: [PATCH 1/2] Various pages: Normalize SYNOPSIS notes about
 non-existing glibc wrappers
To:     mtk.manpages@gmail.com
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man@vger.kernel.org
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <20201229143859.17473-2-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <61d6d946-9c1f-ed80-8844-4a51441ff15a@gmail.com>
Date:   Tue, 29 Dec 2020 15:49:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201229143859.17473-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

a few comments below.

Cheers,

Alex

On 12/29/20 3:39 PM, Alejandro Colomar wrote:
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
> We didn't fix some of the obsolete syscalls (create_module(2)),
> but if you prefer, we can fix those too.

That shouldn't be in the commit msg, but in the email :)

> 
> 
> Signed-off-by: Ganimedes Colomar <gacoan.linux@gmail.com>
> Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> Some comment:
> 
>   syslog.2: Isn't the comment in SYNOPSIS wrong?
> 	There _is_ a wrapper, which is documented just below that line.
> 	It just has a different name.

Normally, syscalls that do have a wrapper but with a different name,
there's no note saying that there is no wrapper (see eventfd(2)).

Your thoughts?

> 
> Cheers,
> 
> Alex
> 
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
>  14 files changed, 32 insertions(+), 10 deletions(-)
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
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
