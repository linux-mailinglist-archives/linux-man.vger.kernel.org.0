Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5B23542B1
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 16:21:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241297AbhDEOVD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 10:21:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241285AbhDEOVD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 10:21:03 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22B2EC061756;
        Mon,  5 Apr 2021 07:20:57 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 12so5785882wmf.5;
        Mon, 05 Apr 2021 07:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UMPOx0NIf52+1mCfKoA2VbGTH8gfzrCd83aeuhyriV0=;
        b=KN4AXIqIaT81BfOn05oniT6XNaC6O52jhMzLMDUKfhwFWwMhfxSyxWfeZvCdEBANmk
         80lttFX6URdRNkOrlQKpVpwUMJyhfYu8V2ML4cEGt3KPFR6oMSwRDJahFPAU6Q6ajviM
         osJC8J0TcDtjorZj5MNV8SpJ7ticHxUlHIhps0iEPM3zV7WaWw9ckIj2tH9pj33OdBkg
         pvITPy93GSYNOzr6dzK470liIcUyzJRzGFrev1fxNTwzdtu2K4v1zM0DipoXHWuW4q7X
         Vm1ndvXMaTzgTANbRMDV4FNGg1lMwgQnOSJ822H9YyzieySekk5CMbLiYfNpzDyaYQmV
         XLfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UMPOx0NIf52+1mCfKoA2VbGTH8gfzrCd83aeuhyriV0=;
        b=M6civ4XLjT8WzXRkHwn5DcOdxbzHwP6+kOiLRI7tlTX3RTwZTrWuLKlZ4azEvLnxIW
         /Agff1fqQun0KRoNByu9PKVbaV75Ep4yK2i1BbFgPGLZPR1XTlNsYOlUOi6o/WZOAdOa
         +vvSeh3nwME15kjtUoNnQzHTr0rlGudj1pSJFn8PrAaGBbAhnrmMsDBuhduyw2Pj3W4S
         QdXcCQ7El0YHsfUdFJfUGJuc3lXijSQSbGWBH1irmHx02Ba6dKxYWn8pGa/SWg1LYjDs
         nVDsRd0P9mi7rR54Zg40b2k76bvzDpen0wqQqb99HrC+NF2Qd/ryKWRUHIeGeE9V7mYq
         ws6w==
X-Gm-Message-State: AOAM531QF5H3QIFTfMjLfW3u/1iM/fL1aO9sfJMly/LDAOx40tMXyjPZ
        t/9cHOgCJEWiLcYuawXRRlQklyrgudE=
X-Google-Smtp-Source: ABdhPJwJMogmRoahY6+dEr1q3Z8riSb9NEYwQeZzN6c3qLv53p5BK0jqoqDsb2QdgYQ51qur6mdmKw==
X-Received: by 2002:a1c:1fcb:: with SMTP id f194mr7295432wmf.79.1617632455711;
        Mon, 05 Apr 2021 07:20:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id k3sm8186140wrc.67.2021.04.05.07.20.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 07:20:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v4] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
References: <20210301212344.48650-1-jarkko@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1413b770-a89e-2ddd-d8bd-21adc8a376cf@gmail.com>
Date:   Mon, 5 Apr 2021 16:20:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210301212344.48650-1-jarkko@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jarkko,

Sorry for the delayed response... Thank you for the revisions.
More comments below :-).

On 3/1/21 10:23 PM, Jarkko Sakkinen wrote:
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

s/from/from the/

> +which consists of sections of non-addressable system memory.
> +They are constructed with sub-functions of the privileged (ring-0) ENCLS x86

The reference of "They" is unclear. Should it be

"The EPC is constructed using subfunctions..."?

> +instruction,
> +and interacted with sub-functions of the unprivileged (ring-3) ENCLU x86

Wording problem...
s/with/with using/?

> +instruction.
> +Any other type of memory access gets asserted by the CPU.

I think it would be good to add a few words to explain what 
is meant by "asserted by the CPU". (I realize that "asserted" is a
technical term that may be quite normal for you, but not necessarily
for all of the readers...)

But, there's also another problem: how does this sentence
fit into the surrounding paragraph? It seems somehow out of place.


> +Enclaves are represented to the user space as memory-mapped files,

s/to the user space/to user-space/

> +shareable by multiple processes.
> +.PP
> +An EPC page can be initialized with ENCLS sub-functions to any of the
> +following types:
> +.TP
> +SECS
> +SGX Enclave Control Structure (SECS) contains the enclave global properties

s/SGX/The SGX/

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

The wording here seems a bit off. What do you mean by "jump 
executing"? Can you reword/explain in a bit more detail?

> +.PP
> +An enclave can be entered only at a fixed set of entry points,

You do not explain what you mean by "enter". I presume it means that 
you can only jump into code at specific addresses (defined by a TCS) 
in the enclave. If that's correct, I think it would be helpful
to have add some words to make that point explicit.

> +each defined by a TCS,
> +by invoking EENTER and ERESUME.
> +Any other type of memory access is strictly prohibited by the CPU.

Maybe it would be helpful to add (inside parentheses) one or
two examples of types of memory access that are prohibited?

> +.PP
> +A thread inside an enclave can read and write memory inside and outside the

s/A thread inside an enclave can...
  /While executing inside an enclave, a thread can.../ ?

> +enclave,
> +but any action causing execution outside the enclave is asserted by the CPU
> +with an exception,
> +and ultimately exit from the enclave.

What does "ultimateley exit from the enclave" mean? It's not quite clear.

> +A thread can cleanly exit from the enclave with EEXIT sub-function of the ENCLU,

s/EEXIT/the EEXIT/

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

Remove the preceding ".PP" (it's not needed, and produces linter errors).

> +An enclave's life-cycle starts by opening
> +.I /dev/sgx_enclave,

.IR /dev/sgx_enclave ,

> +and ends when all the file descriptors have been closed.
> +After opening the enclave,
> +its contents must be populated with the
> +.BR ioctl (2)
> +interface provided by
> +.IR <asm/sgx.h> .
> +.PP
> +The are rudimentarily the steps to construct an enclave:

s/The/These/
s/rudimentarily the/key/

> +.IP 1.
> +Invoke
> +.B SGX_IOC_ENCLAVE_CREATE,

.BR SGX_IOC_ENCLAVE_CREATE ,

> +which takes in data for the SECS,
> +and initializes an EPC page for it.
> +SECS is used by various ENCLS sub-functions to modify the enclave state.
> +It is kept internally by the kernel,
> +and is never made available to the user space.

s/the user space/user space/

> +.IP 2.
> +Populate regular and TCS pages to the enclave,
> +by invoking
> +.B SGX_IOC_ENCLAVE_ADD_PAGES.

.BR SGX_IOC_ENCLAVE_ADD_PAGES .

> +.IP 3.
> +Invoke
> +.B SGX_IOC_ENCLAVE_INIT,

.BR SGX_IOC_ENCLAVE_INIT ,

> +which makes the enclave executable.
> +After this new pages can no longer be added.

s/After this/After this step,/
s/added/added to the enclave/


> +.SS Access rights
> +The state of each EPC page is stored to a structure called the

s/to/in/

> +.I Enclave Page Cache Map (EPCM),
> +which takes a portion of the EPC.

Better: s/takes/occupies/ ?

> +The state consists of page type and access rights,

s/state/state information of an EPC page/
s/page type/the page type/

> +among the other things.
> +When a page is accessed by a CPU,
> +the EPCM permissions are enforced,
> +in addition to the
> +.BR mmap(2)

.BR mmap (2)

> +permissions.
> +EPCM permissions are defined when invoking
> +.B SGX_IOC_ENCLAVE_ADD_PAGES,

.BR SGX_IOC_ENCLAVE_ADD_PAGES ,

> +by setting them to the
> +.B flags

s/.B/.I/

> +field of
> +.B struct enclave_add_pages.

.IR struct enclave_add_pages .

> +.PP
> +A memory access to an unitialized EPC page causes EPCM fault,

s/unitialized/uninitialized/
s/EPCM/an EPCM/

> +with a new SGX bit set in the error code.
> +A new power cycle invalidates the whole EPCM,
> +making all EPC pages unitialized.

s/unitialized/uninitialized/

> +E.g. if the system goes to sleep,

s/E.g./For example,/

> +and then wakes up,
> +all the data is gone.
> +Thus, a user space run-time must be prepared to handle this exception,
> +at any point of time.

s/of/in/

> +.PP
> +When the pages are mapped to memory via
> +.BR mmap (2)
> +or
> +.BR mprotect (2),

This last does not seem right. mprotect(2) sets memory protections,
whereas you start the sentence by talking about mapping pages. I'm not
sure what the fix should be. Maybe:

    When the pages are mapped by mmap(2) or page protections
    are changed vi mprotect(2)...

> +the EPCM permissions are compared against the declared permissions.

By "declared permissions", do you mean the 'prot' argument
of mmap()/mprotect? If so, I think it would be good to say 
this more explicitly.

> +If the declared permissions have bits set that are not part of the EPCM
> +permissions,
> +the operation fails with the error
> +.B EACCES.

.BR EACCES .

> +.SS Exception handling
> +These are the exceptions triggered by an enclave:
> +.IP
> +Undefined instruction (#UD) exception is triggered when executing inside an enclave,

s/Undefined/An undefined/

> +for any instruction that may cause VMEXIT,
> +I/O instruction, 
> +or a change in CPU privilege levels.

s/CPU privilege levels/the CPU privilege level/ ?

> +.IP
> +Page fault (#PF) with a new SGX bit set,

s/Page/A page/

> +also known as EPCM fault,

s/EPCM/an EPCM/

> +is triggered,
> +when accessing unitialized EPC page,

s/unitialized/an uninitialized/

> +or when the memory access surpasses the EPCM permissions.

s/surpasses/violates/?

> +.PP
> +In order to assist the run-time,
> +the kernel provides a vDSO entry point,
> +.BR vsgx_enter_enclave,

.BR vsgx_enter_enclave ,

> +which wraps the code required the enter the enclave.
> +When an exception occurs,
> +the vDSO populates

s/the vDSO/vsgx_enter_enclave/ ?

> +.B struct sgx_enclave_run 

This is the first time you mention "struct sgx_enclave_run".
What is it? Where is it? (Is it in the vDSO?) Some explanation 
is needed here, I thi9nk.

> +with the exception data,
> +and returns to the caller.
> +.SH VERSIONS
> +The SGX feature was added in Linux 5.11.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR mmap() (2),
> +.BR mprotect (2)

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
