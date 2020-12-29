Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 343842E73EE
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:28:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726203AbgL2U20 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:28:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726197AbgL2U20 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:28:26 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5C7EC061574
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:27:45 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id n42so12903319ota.12
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=oqpaRMEMFbUAallLo4cThrwb1tG+axuQ+zE0HgE84Zo=;
        b=jaVfFhd4kULBmv2Chrex0bGB/RVfPU6GkG00MPNcw/f5e9zY0NYLIo0k3bjZhGrjdS
         yg3wctblOHeUaM3LnO+SgRtYY3YcJm9PYX7Ot4iyeGfdvKPUHsPVA8ZSBsNfy6EGQa47
         v5lkq8lnSU+ShvdSi22m4atQHt+94qBuZrlrOhfaPoP41W5pLqoQ0WBcBGSpzY3/Xyyp
         fYLOoBSBpqcFbHxdRhcdoXSIaMU+MW44pcYNZuukpFE9iO+ax/9SqcSi6kp4lw0E/0hx
         9L/u2JLB8sqjCIez41f/PXZQa+bjuWnidv1qUZwJgkjmJ23kv0wzOq2NP/PnsPlE1DhQ
         fwrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=oqpaRMEMFbUAallLo4cThrwb1tG+axuQ+zE0HgE84Zo=;
        b=d5nhe/VNqFHGr3oIxnDg4qQr9hYtO0zlVIHBYfh6+eQjd7myO7McsmYCRgKcXcXW+2
         q+g9F65i5hAveTXUmZojZgTH/ePCwBYo2SLPmMS2838uu5RhOKIqsVWwFRL7y65L988/
         oEjJbOZYfqDe6Rq2TFMuincLpGEIDsRwUQUOztiK7VTkycCSQKCHVilLLsXVMe1w0czx
         NW7foRh95bM2ImFmkSDv4SJWcVIfZlUqpzAkiKH0g+7H4J1oGXuCFYmt2xVJyvS6x43i
         fwZLIGSkxvDFF8J8z4WUsaoBqC4FR96Mo+4bSXflwFod4RgTMEhOZMqj3Kgga/0OK3Ae
         Jtzg==
X-Gm-Message-State: AOAM531ZUhEGImfx4U+YwdWaDpfGZIFgVPgCNHuJul3RijhiolkVjL2e
        L0NrLX94BayJp/gm4GI0/9+B5NCXax4vlc1qhDDJiLG+Cf0=
X-Google-Smtp-Source: ABdhPJyQXZwNgbHrFjgY97pO/DhQJqQPYsoWzAN1T/YM0pMTCQSyscNAaZOA7qZl7JA3t86GciTbg3PPYINVZ54i3QI=
X-Received: by 2002:a9d:7490:: with SMTP id t16mr37156499otk.323.1609273664916;
 Tue, 29 Dec 2020 12:27:44 -0800 (PST)
MIME-Version: 1.0
References: <20201229143859.17473-1-alx.manpages@gmail.com> <20201229143859.17473-2-alx.manpages@gmail.com>
In-Reply-To: <20201229143859.17473-2-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 29 Dec 2020 21:27:33 +0100
Message-ID: <CAKgNAkigqvTQ6Ph-ZBphuUtX+ei0R0ioqaom6-sgYjH-GZ7bnA@mail.gmail.com>
Subject: Re: [PATCH 1/2] Various pages: Normalize SYNOPSIS notes about
 non-existing glibc wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, Ganimedes.

In the subject line : s/non-existing/nonexistent/

On Tue, 29 Dec 2020 at 15:43, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
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

That seems fine.

> We didn't fix some of the obsolete syscalls (create_module(2)),
> but if you prefer, we can fix those too.

I think it's okay to leave it.

The remainder of the patch looks good. The only reason that I'm not
applying ir yet (and fixing the subject line myself) is that I wonder
if the command I mentioned in response to the 0/2 mail might help you
find other pages to include in the patch. Let me know.

Thanks,

Michael



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
>         There _is_ a wrapper, which is documented just below that line.
>         It just has a different name.
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
> --
> 2.29.2
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
