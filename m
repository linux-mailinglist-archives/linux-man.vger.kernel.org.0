Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E96D2CBAB1
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 11:42:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729459AbgLBKhy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 05:37:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728490AbgLBKhx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 05:37:53 -0500
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56816C0613CF;
        Wed,  2 Dec 2020 02:37:13 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id i13so237797oou.11;
        Wed, 02 Dec 2020 02:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=80Pvp9Zxps08IFd7tq8NCifbxJsmpf/0K1RsjhhfAKk=;
        b=MXoX2H2sb3H2OxVJTphG7HMdGOnnadbDWtWITVXVhuwPZu8KpjUE7cMLHZG5AQIh6R
         oUHVRoU3NqMvcbIuolj+NTOa6vaunXJ7HpXqCsdrCkwHkhA3HyeNCfQQvKnLHD6jYRe3
         jxOJ76D7QlRRbqKV7G7YZQO967jJZjEM9Qn0EGSY4cqbpTbyzfvrezyd/jHi1hzobM5X
         WSCHs7bQwudyHEoKIhbDaFDyrvD8546uNHNeInpzSRf3Mj19rWGsjHy2aqz3c+6A2HGE
         m3mnjrj7wVkim16wuihD2El+AmW0nofLr90p++BIoMDzg6XHz3DE6gSfaMNKSeIdPVhL
         6cGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=80Pvp9Zxps08IFd7tq8NCifbxJsmpf/0K1RsjhhfAKk=;
        b=Y54MKWDVs04DruphQjVDXBkCL2LZrhn9pco6FbHqy3yC727Dt1qp7WVz/oc3h5ROh+
         2BpyL/BNyVIn1rIVz4d76tV4JZs2Ew6+0clye04LGlOouxy0urhRmsgb+c5CvYqPkR1g
         tRi3LRgBxdMFH5onSr1QqOJXXOBtWtt2Eh6YeiC8LbomS/Njy4RZuJm648MoUhCC8Sx0
         JHdKm10wndolY651axvgWYpz7m9VsZhOUEQ9OrB01ox+azZy7B1/v76wCv8qcMuUJ3WJ
         E/oq/d6+oDNOec/XTrNH1ncwmhTr1dEM9beETKvz6awKCopYTIYY7BqvLiTU3F7IS2ye
         Poug==
X-Gm-Message-State: AOAM530CJUDM+gF383Vm67gl+oX8jAs/ZrA5Hk7KFbhqwEdFZyi495MC
        Xe/kJQNmd8hCWupJj4//5gUxPCduekQVFjshDyA=
X-Google-Smtp-Source: ABdhPJwVUhIRRCsr0rk936DwsTZOHTFeGyuXX6CV4OoCvWYwAmdT+hVgy2aMNSHJrcDqHZdjnwy9WxQxW89NCwINPy8=
X-Received: by 2002:a4a:e972:: with SMTP id i18mr1107202ooe.17.1606905432608;
 Wed, 02 Dec 2020 02:37:12 -0800 (PST)
MIME-Version: 1.0
References: <20201202071543.74866-1-jarkko@kernel.org>
In-Reply-To: <20201202071543.74866-1-jarkko@kernel.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 2 Dec 2020 11:37:01 +0100
Message-ID: <CAKgNAkhROLJMmfAUiDCQhW0LCck08sF8jnYVJhSircxA059wXg@mail.gmail.com>
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarkko,

Thanks for the page. I'll have some more comments later, most likely.
But to begin with, are there any other manual pages that should be
listed in a SEE ALSO section for this manual page, and are there any
pages in man-pages that you think should refer to this page in their
SEE ALSO sections?

Cheers,

Michael

On Wed, 2 Dec 2020 at 08:16, Jarkko Sakkinen <jarkko@kernel.org> wrote:
>
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> ---
>  man7/sgx.7 | 198 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 198 insertions(+)
>  create mode 100644 man7/sgx.7
>
> diff --git a/man7/sgx.7 b/man7/sgx.7
> new file mode 100644
> index 000000000..429c9b64d
> --- /dev/null
> +++ b/man7/sgx.7
> @@ -0,0 +1,198 @@
> +.\" Copyright (C) 2020 Intel Corporation
> +.\"
> +.\" %%%LICENSE_START(VERBATIM)
> +.\" Permission is granted to make and distribute verbatim copies of this
> +.\" manual provided the copyright notice and this permission notice are
> +.\" preserved on all copies.
> +.\"
> +.\" Permission is granted to copy and distribute modified versions of this
> +.\" manual under the conditions for verbatim copying, provided that the
> +.\" entire resulting derived work is distributed under the terms of a
> +.\" permission notice identical to this one.
> +.\"
> +.\" Since the Linux kernel and libraries are constantly changing, this
> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> +.\" responsibility for errors or omissions, or for damages resulting from
> +.\" the use of the information contained herein.  The author(s) may not
> +.\" have taken the same level of care in the production of this manual,
> +.\" which is licensed free of charge, as they might when working
> +.\" professionally.
> +.\"
> +.\" Formatted or processed versions of this manual, if unaccompanied by
> +.\" the source, must acknowledge the copyright and authors of this work.
> +.\" %%%LICENSE_END
> +.\"
> +.TH SGX 7 2020-12-02 "Linux" "Linux Programmer's Manual"
> +.PP
> +sgx - overview of Software Guard eXtensions
> +.SH DESCRIPTION
> +.PP
> +Intel Software Guard eXtensions (SGX) allow user space applications to
> +set aside private memory regions of code and data.
> +These memory regions are called as enclaves.
> +.PP
> +SGX must be enabled by the BIOS.
> +If SGX appears to be unsupported on a system having the hardware
> +support, ensure that SGX is enabled in the BIOS.
> +If a BIOS presents a choice between \[lq]Enabled\[rq] and \[lq]Software
> +Enabled\[rq] modes for SGX, choose \[lq]Enabled\[rq].
> +.PP
> +An enclave can be only entered at a fixed set of entry points.
> +Each of them can hold a single hardware thread at a time.
> +While the enclave is loaded from a regular binary file, only the threads
> +inside the enclave can access its memory.
> +.PP
> +Although carved out of normal DRAM, enclave memory is marked in the
> +system memory map as reserved and is not managed by the Linux memory
> +manager.
> +There may be several regions spread across the system.
> +Each contiguous region is called an Enclave Page Cache (EPC) section.
> +EPC sections are enumerated via CPUID.
> +These regions are encrypted when they leave the LLC.
> +.PP
> +SGX is available only if the kernel was configured and built with the
> +\f[B]CONFIG_X86_SGX\f[R] option.
> +The hardware support for SGX can be observed from
> +\f[I]/proc/cpuinfo\f[R] with the \[lq]flags\[rq] field containing
> +\[lq]sgx\[rq].
> +.SS Enclave management
> +.PP
> +Enclave\[cq]s life-cycle starts by opening \f[I]/dev/sgx_enclave\f[R],
> +and ends once all the references to the opened file have been closed.
> +After opening the enclave, its contents must be populated with the ioctl
> +interface provided by \f[I]<asm/sgx.h>\f[R].
> +ENCLS is a privileged (ring-0) instruction with the functionality for
> +managing enclave memory, and the ioctl inteface provides a wrapper for
> +it.
> +.PP
> +Enclave construction starts by calling \f[B]SGX_IOC_ENCLAVE_CREATE\f[R],
> +which takes in the initial version of SGX Enclave Control Structure
> +(SECS).
> +SGX Enclave Control Structure (SECS) contains the description of the
> +enclave.
> +The ioctl calls ENCLS[ECREATE] function, which will copy SECS to the SGX
> +reserved memory.
> +SECS is never mapped to the process address space, and thus cannot be
> +directly referenced.
> +.PP
> +Among other things, SECS contains the base address and size of the
> +enclave, meaning that the addresss space must be carved out before the
> +creation.
> +There is also a hardware constrain that the size must be a power of two,
> +and the base address must be also naturally aligned relative to the
> +size.
> +.PP
> +Some of the SECS fields must be initialized to zero because their values
> +are determined dynamically after the enclave has been created.
> +Most importantly SECS contains two SHA256 hashes: MRENCLAVE and
> +MRSIGNER.
> +Each enclave invocation, during the enclave construction, hashes its
> +defining parameters MRENCLAVE.
> +Arbitrary data can be also hashed into MRENCLAVE via the ENCLS[EEXTEND]
> +function.
> +MRSIGNER contains the hash of the enclave signer key, which is used to
> +sign the SIGSTRUCT structure passed to the ENCLS[EINIT] function.
> +A running enclave can use both of these fields as material for keys
> +acquired with the ENCLU[EGETKEY]unction.
> +.PP
> +After the enclave has been created, a series of
> +\f[B]SGX_IOC_ENCLAVE_ADD_PAGES\f[R]calls are issued.
> +This ioctl copies the provided data to the enclave memory by invoking
> +the ENCLS[EADD] function, and optionally hashes it with help of the
> +ENCLS[EEXTEND] function.
> +Hashing is optional because it is a slow operation and sometimes not
> +required.
> +For instance, one might only care to measure the code pages.
> +.PP
> +Finally, when all the data has been copied to the enclave memory,
> +\f[B]SGX_IOC_ENCLAVE_INIT\f[R] is called, which invokes the ENCLS[EINIT]
> +function.
> +This function inspects that the accumulated MRENCLAVE matches the
> +MRENCLAVE inside the caller provided SIGSTRUCT, andlocks down the
> +enclave from further build operations.
> +After this, the enclave can be invoked.
> +.SS Enclave memory mapping
> +.PP
> +The processor tracks EPC pages in a hardware metadata structure called
> +the \f[I]Enclave Page Cache Map (EPCM)\f[R].
> +The EPCM contains an entry for each EPC page which describes the owning
> +enclave, access rights and page type among the other things.
> +EPCM permissions are separate from the normal page tables.
> +This prevents the kernel from, for instance, allowing writes to data
> +which an enclave wishes to remain read-only.
> +EPCM permissions may only impose additional restrictions on top of
> +normal x86 page permissions.
> +.PP
> +For all intents and purposes, the SGX architecture allows the processor
> +to invalidate all EPCM entries at will.
> +This requires that software be prepared to handle an EPCM fault at any
> +time.
> +In practice, this can happen on events like power transitions when the
> +ephemeral key that encrypts enclave memory is lost.
> +.PP
> +Kernel records EPCM permissions when \f[B]SGX_IOC_ENCLAVE_ADD_PAGES\f[R]
> +is called.
> +When the pages are mapped to memory via mmap() or mprotect(), the EPCM
> +permissions are compared against the declared permissions.
> +If the declared permissions have bits set that are not part of the EPCM
> +permissions, the operation fails with \f[B]-EACCES\f[R].
> +.SS Enclave invocation
> +.PP
> +Enclaves encounter exceptions for lots of reasons: everything from
> +enclave page faults to NULL pointer de-references, to system calls that
> +must be called by a delegate from outside the enclave.
> +Also, the enclave memory can be invalidated at any point of time when
> +system state changes.
> +For instance, when system wakes up from a sleep state, all EPC regions
> +get invalidated.
> +An SGX run-time must be prepared to all of this, and must be ready to
> +even rebuild the enclave when the memory is invalidated.
> +.PP
> +This type of exception handling has been traditionally been handled in
> +SIGSEGV handlers, registered by the library.
> +But, being process-wide, shared state, signal handling and shared
> +libraries do not mix well.
> +.PP
> +In order to assist the run-time, kernel provides a vDSO,
> +\f[B]vsgx_enter_enclave\f[R], which wraps enclave entry functions
> +ENCLU[EENTER] and EENTER[ERESUME], and returns exceptions to the caller
> +at the point they happen.
> +The exception information is filled in RDI, RSI and RDX.
> +The kernel-provided user space portion of the vDSO handler will place
> +this information in a user-provided buffer, or optionally trigger a
> +user-provided callback at the time of the exception.
> +.PP
> +The vDSO function calling convention uses the standard RDI RSI, RDX,
> +RCX, R8 and R9 registers.
> +This makes it possible to declare the vDSO as a C prototype, but other
> +than that there is no specific support for SystemV ABI.
> +Things like storing XSAVE are the responsibility of the enclave and the
> +runtime.
> +.SS Page reclaimer
> +.PP
> +Just like normal RAM, there is a limited amount of enclave memory
> +available and over-committing it is a very valuable tool to reduce
> +resource use.
> +Introduce a simple reclaim mechanism for enclave pages.
> +.PP
> +In contrast to normal page reclaim, the kernel cannot directly access
> +enclave memory.
> +To get around this, the SGX architecture provides a set of functions to
> +help.
> +Among other things, these functions copy enclave memory to and from
> +normal memory, encrypting it and protecting its integrity in the
> +process.
> +.PP
> +Kernel provides a page reclaimer by using these functions.
> +It picks victim pages in LRU fashion from all the enclaves running in
> +the system.
> +A new kernel thread (ksgxd) reclaims pages in the background based on
> +watermarks, similar to normal kswapd.
> +.PP
> +All enclave pages can be reclaimed, architecturally.
> +But, there are some limits to this, such as the special SECS metadata
> +page which must be reclaimed last.
> +The page version array (used to mitigate replaying old reclaimed pages)
> +is also architecturally reclaimable, but not yet implemented.
> +The end result is that the vast majority of enclave pages are currently
> +reclaimable.
> --
> 2.27.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
