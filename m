Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2E53350C96
	for <lists+linux-man@lfdr.de>; Thu,  1 Apr 2021 04:22:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232419AbhDACVg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 Mar 2021 22:21:36 -0400
Received: from mail.kernel.org ([198.145.29.99]:55648 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229497AbhDACVe (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 31 Mar 2021 22:21:34 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 752D461029;
        Thu,  1 Apr 2021 02:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1617243694;
        bh=NAf8f0asESrmNfaHD/C/N78ruB0vVBOHhq6bySj6fOM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ggT6mcH7F/XS7SHrGxKRRgiU6mj0/fs7GOpu8pOal2YcAroeBC1YcgtaHdy+7HUeI
         92YY7xJqNruApgfpZPeO5IzD7yimYnjn7H1pCZG3VusErqdqstiGrwFtY0azvZ3j3E
         +ZjgzITNr0DXAR2hGGcXD0Sy0m1qvSyOvp14Ay4lGNqyRZNkZ+8Yz8BRXpsbEcZqRS
         W4PCWTvCS758YBsDlLP0LbPcfk+O6UoBsRfjhri3CW/SGW4y1zYcLHoONE/Bh/HToB
         27nrMRCnTvPXNi0KdcophPcezMJZJD4rHzfpx8az84c4a8PLWwrNH8bPRFjiDee7sD
         wClYrtAF46TJg==
Date:   Thu, 1 Apr 2021 05:21:31 +0300
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com
Subject: Re: [PATCH v4] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Message-ID: <YGUuK/MktBnqRdNO@kernel.org>
References: <20210301212344.48650-1-jarkko@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210301212344.48650-1-jarkko@kernel.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Is there any feedback for this version?

/Jarkko

On Mon, Mar 01, 2021 at 11:23:44PM +0200, Jarkko Sakkinen wrote:
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> ---
> v4:
> * Did a heavy edit trying to streamline the story a bit and focus on
>   stuff important to the user (e.g. lighten up x86 details).
> v3:
> * Overhaul based on Michael's comments. Most likely needs to be refined
>   in various places but this is at least a small step forward for sure.
> v2:
> * Fixed the semantic newlines convention and various style errors etc.
>   that were reported by Alenjandro and Michael.
> * SGX was merged to v5.
>  man7/sgx.7 | 196 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 196 insertions(+)
>  create mode 100644 man7/sgx.7
> 
> diff --git a/man7/sgx.7 b/man7/sgx.7
> new file mode 100644
> index 000000000..c0b67020e
> --- /dev/null
> +++ b/man7/sgx.7
> @@ -0,0 +1,196 @@
> +.\" Copyright (C) 2021 Intel Corporation
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
> +.TH SGX 7 2021\-02\-02 "Linux" "Linux Programmer's Manual"
> +.PP
> +sgx - overview of Software Guard eXtensions
> +.SH DESCRIPTION
> +.PP
> +Intel Software Guard eXtensions (SGX) allow applications to set
> +aside private memory regions of code and data.
> +These memory regions are called enclaves.
> +.PP
> +SGX must be enabled in BIOS.
> +If SGX appears to be unsupported on a system having hardware support,
> +ensure that SGX is enabled in the BIOS.
> +If a BIOS presents a choice between \(dqEnabled\(dq and \(dqSoftware
> +Enabled\(dq modes for SGX,
> +choose \(dqEnabled\(dq.
> +.PP
> +SGX is available only if the kernel was configured and built with the
> +.B CONFIG_X86_SGX
> +option.
> +You can determine whether the hardware supports SGX by checking
> +whether "sgx" appears in the
> +.I flags
> +field in
> +.IR /proc/cpuinfo .
> +.SS Overview
> +.PP
> +An enclave is a region of address space,
> +mapping pages from Enclave Page Cache (EPC),
> +which consists of sections of non-addressable system memory.
> +They are constructed with sub-functions of the privileged (ring-0) ENCLS x86
> +instruction,
> +and interacted with sub-functions of the unprivileged (ring-3) ENCLU x86
> +instruction.
> +Any other type of memory access gets asserted by the CPU.
> +Enclaves are represented to the user space as memory-mapped files,
> +shareable by multiple processes.
> +.PP
> +An EPC page can be initialized with ENCLS sub-functions to any of the
> +following types:
> +.TP
> +SECS
> +SGX Enclave Control Structure (SECS) contains the enclave global properties
> +such as the base address,
> +size and SHA256 checksum of its contents.
> +.TP
> +REG
> +Regular (REG) pages are code and data pages of the enclave.
> +They are mapped to the enclave address space.
> +.TP
> +TCS
> +Thread Control Structure (TCS) pages describe the entry points to an enclave with
> +an offset from the base address.
> +They are mapped to the enclave address space.
> +ENCLU provides EENTER and ERESUME sub-functions,
> +which take the address of a TCS page,
> +and jump executing inside an enclave from the given offset.
> +.PP
> +An enclave can be entered only at a fixed set of entry points,
> +each defined by a TCS,
> +by invoking EENTER and ERESUME.
> +Any other type of memory access is strictly prohibited by the CPU.
> +.PP
> +A thread inside an enclave can read and write memory inside and outside the
> +enclave,
> +but any action causing execution outside the enclave is asserted by the CPU
> +with an exception,
> +and ultimately exit from the enclave.
> +A thread can cleanly exit from the enclave with EEXIT sub-function of the ENCLU,
> +to a given address outside the enclave.
> +.PP
> +Although carved out of normal DRAM,
> +enclave memory is marked in the system memory map as reserved and is not
> +managed by the Linux memory manager.
> +There may be several enclave regions spread across the system.
> +Each contiguous region is called an Enclave Page Cache (EPC) section.
> +The pages belonging to the EPC sections are encrypted when they leave the
> +Last Level Cache (LLC).
> +.SS Construction
> +.PP
> +An enclave's life-cycle starts by opening
> +.I /dev/sgx_enclave,
> +and ends when all the file descriptors have been closed.
> +After opening the enclave,
> +its contents must be populated with the
> +.BR ioctl (2)
> +interface provided by
> +.IR <asm/sgx.h> .
> +.PP
> +The are rudimentarily the steps to construct an enclave:
> +.IP 1.
> +Invoke
> +.B SGX_IOC_ENCLAVE_CREATE,
> +which takes in data for the SECS,
> +and initializes an EPC page for it.
> +SECS is used by various ENCLS sub-functions to modify the enclave state.
> +It is kept internally by the kernel,
> +and is never made available to the user space.
> +.IP 2.
> +Populate regular and TCS pages to the enclave,
> +by invoking
> +.B SGX_IOC_ENCLAVE_ADD_PAGES.
> +.IP 3.
> +Invoke
> +.B SGX_IOC_ENCLAVE_INIT,
> +which makes the enclave executable.
> +After this new pages can no longer be added.
> +.SS Access rights
> +The state of each EPC page is stored to a structure called the
> +.I Enclave Page Cache Map (EPCM),
> +which takes a portion of the EPC.
> +The state consists of page type and access rights,
> +among the other things.
> +When a page is accessed by a CPU,
> +the EPCM permissions are enforced,
> +in addition to the
> +.BR mmap(2)
> +permissions.
> +EPCM permissions are defined when invoking
> +.B SGX_IOC_ENCLAVE_ADD_PAGES,
> +by setting them to the
> +.B flags
> +field of
> +.B struct enclave_add_pages.
> +.PP
> +A memory access to an unitialized EPC page causes EPCM fault,
> +with a new SGX bit set in the error code.
> +A new power cycle invalidates the whole EPCM,
> +making all EPC pages unitialized.
> +E.g. if the system goes to sleep,
> +and then wakes up,
> +all the data is gone.
> +Thus, a user space run-time must be prepared to handle this exception,
> +at any point of time.
> +.PP
> +When the pages are mapped to memory via
> +.BR mmap (2)
> +or
> +.BR mprotect (2),
> +the EPCM permissions are compared against the declared permissions.
> +If the declared permissions have bits set that are not part of the EPCM
> +permissions,
> +the operation fails with the error
> +.B EACCES.
> +.SS Exception handling
> +These are the exceptions triggered by an enclave:
> +.IP
> +Undefined instruction (#UD) exception is triggered when executing inside an enclave,
> +for any instruction that may cause VMEXIT,
> +I/O instruction, 
> +or a change in CPU privilege levels.
> +.IP
> +Page fault (#PF) with a new SGX bit set,
> +also known as EPCM fault,
> +is triggered,
> +when accessing unitialized EPC page,
> +or when the memory access surpasses the EPCM permissions.
> +.PP
> +In order to assist the run-time,
> +the kernel provides a vDSO entry point,
> +.BR vsgx_enter_enclave,
> +which wraps the code required the enter the enclave.
> +When an exception occurs,
> +the vDSO populates
> +.B struct sgx_enclave_run 
> +with the exception data,
> +and returns to the caller.
> +.SH VERSIONS
> +The SGX feature was added in Linux 5.11.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR mmap() (2),
> +.BR mprotect (2)
> -- 
> 2.30.1
> 
