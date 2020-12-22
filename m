Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 127382E0E71
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 19:54:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726030AbgLVSyM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 13:54:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725300AbgLVSyL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 13:54:11 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 311AAC0613D3;
        Tue, 22 Dec 2020 10:53:31 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id r7so15494137wrc.5;
        Tue, 22 Dec 2020 10:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GOVlCLM+g/17qZ/3S8ITu4fuTHFOtY4QdJJcEDzc9jM=;
        b=HvNoRY1SNJ17N4511oJpxf7SPHql4KhkI9aTYAU3lu2M8n4qC0lqklOzUAYl94tXcz
         rJ2oN9NNxYrt1VI9OynNz/SBMVkI7BRSF0kweA8IVHxLjKnZFwTsjnkxm2cRUlKRvh+W
         dvpQeX4JR/nOh3f9ig2I052kCLM32zAqwDdsxGFL65LDEjs8LjzfKT3gsZ/Fe7jHo6/C
         G9VyOGSl/RWqTYzKIFZsG5v804503JJ04Eak6j3A994Gwvl0qNGpZppWifuV64H/JsF7
         DD2sSjBj0ZqlehYfm/eyPb43WP5fIKK5nvU/CBxwIPzhy8zVdK0zRXKv4dHlWw+uN/kL
         sveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GOVlCLM+g/17qZ/3S8ITu4fuTHFOtY4QdJJcEDzc9jM=;
        b=iRldtJ1yahUDOiFFp1WonYR+QzinchXnfV5EJRHPP61wmmUrKCJcWZBWXe5WJAMyma
         da6LV2YDN+HYwy3rS5wKReK3as1hkRftPRcNNL5kl4X+wetVFyywoXY4FOdoRwXHMun8
         n+lz61vnPj505PmWdgW5RubBFpJCFtpHcq6AfPR8UdcxoKYf/38U8Mf2o1yIsHkNiEfA
         30VSYkrWRYi8AL9tHHG+Qp9FUPLIiIOQr9LuNO4vNLNH5L3I2mQKeIhUQgYVmEOdYYZl
         P+OBVDkmiiFG4RunNVbkIS3wLglMWvcr6Uh4/ZmgkHcAiimywmkgYJYAA1DVkCjxsa3k
         ByNA==
X-Gm-Message-State: AOAM533irKLdE429VhdToerwtbtGU1BJJ2t+XWYDTa+UrkCUYCts1N55
        E1s5wZvc4EA4/buxycHBMbgVK9mtupFI+g==
X-Google-Smtp-Source: ABdhPJzS4OMwyzRXRIvJx2fP0nNgOAnJzoRllzPpvxmOPixdPnXzrtXVKOh9kI+TnIYsbivZpGHQyw==
X-Received: by 2002:adf:c6c4:: with SMTP id c4mr25235091wrh.348.1608663209262;
        Tue, 22 Dec 2020 10:53:29 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id u205sm2733480wme.42.2020.12.22.10.53.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 10:53:28 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v2] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
References: <20201222004108.49159-1-jarkko@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <16f13aee-a966-ecd4-6f08-d9d7b0e869f3@gmail.com>
Date:   Tue, 22 Dec 2020 19:53:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201222004108.49159-1-jarkko@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarkko

Thanks for revising the patch. I have many comments.
I must admit that I'm struggling to understand much here,
and so I'll probably have more comments on a future draft.
Could you please revise in the light of my comments
below (and hopefully the revisions will help me better
understand the topic when I look at the next draft).

On 12/22/20 1:41 AM, Jarkko Sakkinen wrote:
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> ---
> v2:
> * Fixed the semantic newlines convention and various style errors etc.
>   that were reported by Alenjandro and Michael.
> * SGX was merged to v5.11.

I think we better have a VERSIONS section in the page noting that this
feature is supported since Linux 5.11.

> Link: https://lore.kernel.org/linux-sgx/f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com/
> Link: https://lore.kernel.org/linux-sgx/f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com/
>  man7/sgx.7 | 218 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 218 insertions(+)
>  create mode 100644 man7/sgx.7
> 
> diff --git a/man7/sgx.7 b/man7/sgx.7
> new file mode 100644
> index 000000000..5e8d3d959
> --- /dev/null
> +++ b/man7/sgx.7
> @@ -0,0 +1,218 @@
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
> +Intel Software Guard eXtensions (SGX) allow user space applications to set
> +aside private memory regions of code and data.
> +These memory regions are called enclaves.
> +.PP
> +SGX must be enabled by the BIOS.
> +If SGX appears to be unsupported on a system having hardware support,
> +ensure that SGX is enabled in the BIOS.
> +If a BIOS presents a choice between \(dqEnabled\(dq and \(dqSoftware
> +Enabled\(dq modes for SGX,
> +choose \(dqEnabled\(dq.
> +.PP
> +An enclave can be only entered at a fixed set of entry points.

s/only entered/entered only/

> +Each of them can hold a single hardware thread at a time.

"them" is unclear. Do you mean "Each of the entry points" 
or "Each enclave"?

> +While the enclave is loaded from a regular binary file,
> +only the threads inside the enclave can access its memory.
> +.PP
> +Although carved out of normal DRAM,
> +enclave memory is marked in the system memory map as reserved and is not
> +managed by the Linux memory manager.
> +There may be several regions spread across the system.

I presume you mean "There may be several enclave regions"? I think it
would be clearer to say that.

> +Each contiguous region is called an Enclave Page Cache (EPC) section.
> +EPC sections are enumerated via CPUID instruction.

BY "CPUID instruction" do you mean the interface described in the
cpuid(4) manual page? If yes, I think you better include a reference 
to that page.

> +These regions are encrypted when they leave the Last Level Cacche (LLC).

Maybe better: s/These regions/EPC regions/ ?

s/Cacche/Cache/

> +.PP
> +SGX is available only if the kernel was configured and built with the
> +.B CONFIG_X86_SGX
> +option.
> +The hardware support for SGX can be observed from
> +.I /proc/cpuinfo
> +option
> +with the \(dqflags\(dq field containing \(dqsgx\(dq.

Better would be:

[[
You can determine whether the hardware supports SGX by checking
whether "sgx" appears in the
.I flags
field in
.IR /proc/cpuinfo .
]]

> +.SS Enclave management
> +.PP
> +An enclave's life-cycle starts by opening
> +.I /dev/sgx_enclave.

Remove the "." at the end of the preceding line.

> +and ends once all the references to the opened file have been closed.

I presume here that you mean to say that the lifecycle ends
when all duplicate file descriptors that refer to the open
file description (i.e., 'struct file') have been closed, right?
If that's correct, please modify the text. If it's not correct,
then I don't understand the text, and so some other fix is
probably needed.

> +After opening the enclave,
> +its contents must be populated with the ioctl interface provided by
> +.I <asm/sgx.h>.

.IR <asm/sgx.h> .

> +ENCLS is a privileged (ring-0) instruction with the functionality for

You suddenly use the term "ENCLS" here with no previous introduction or
definition.

> +managing enclave memory,
> +and the ioctl interface provides a wrapper for it.
> +.PP

[I find the next paragraph very hard to understand. So I'm going
to ask lots of silly questions...]

> +Enclave construction starts by calling
> +.B SGX_IOC_ENCLAVE_CREATE,
> +which takes in the initial version of SGX Enclave Control Structure

What do you mean by "takes in"?

> +(SECS).
> +SGX Enclave Control Structure (SECS) contains the description of the

s/SGX Enclave Control Structure (SECS)/The SECS/

This all made weird because the current terminology includes
"Structure" in the name.

And yes, "the SECS" reads weirdly. What I'd really like to say
is "the SECS structure" or (even better) "the SEC structure".
Is either of those acceptable? (This would imply global changes 
in the following text.)

> +enclave.
> +The ioctl calls ENCLS[ECREATE] function,

What is "ENCLS[ECREATE] function"? This needs some explanation.

> +which will copy SECS to the SGX reserved memory.

s/SECS/The SECS/

> +SECS is never mapped to the process address space,
s/SECS/The SECS/

> +and thus cannot be directly referenced.
> +.PP
> +Among other things, SECS contains the base address and size of the enclave,

"the SECS"

> +meaning that the addresss space must be carved out before the creation.
> +There is also a hardware related invariant that the enclave size must be a
> +power of two,
> +and the base address must be also naturally aligned relative to the size.
> +.PP
> +Some of the SECS fields must be initialized to zero because their values
> +are determined dynamically after the enclave has been created.
> +Most importantly SECS contains two SHA256 hashes: MRENCLAVE and
> +MRSIGNER.
> +Each enclave invocation,
> +during the enclave construction,
> +hashes its defining parameters MRENCLAVE.

The preceding line doesn't make sense to me. Missing words?

> +Arbitrary data can be also hashed into MRENCLAVE via the ENCLS[EEXTEND]
> +function.
> +MRSIGNER contains the hash of the enclave signer key,
> +which is used to sign the SIGSTRUCT structure passed to the
> +ENCLS[EINIT] function.
> +A running enclave can use both of these fields as material for keys
> +acquired with the ENCLU[EGETKEY]unction.

s/unction/ function/

But what is this "ENCLU[EGETKEY] function"? Where does it come from?
And what is ENCLU?  I think some more detail is needed here.

> +.PP
> +After the enclave has been created,
> +a series of
> +.B SGX_IOC_ENCLAVE_ADD_PAGES
> +calls are issued.
> +This ioctl copies the provided data to the enclave memory by invoking
> +the ENCLS[EADD] function,
> +and optionally hashes it with help of the ENCLS[EEXTEND] function.
> +Hashing is optional because it is a slow operation and sometimes not
> +required.
> +For instance, one might only care to measure the code pages.
> +.PP
> +Finally, when all the data has been copied to the enclave memory,
> +.B SGX_IOC_ENCLAVE_INIT
> +is called,
> +which invokes the ENCLS[EINIT] function.
> +This function inspects that the accumulated MRENCLAVE matches the

s/inspects/checks/ ?

> +MRENCLAVE inside the caller provided SIGSTRUCT,
> +andlocks down the enclave from further build operations.

s/andlocks/and locks/

> +After this, the enclave can be invoked.
> +.SS Enclave memory mapping
> +.PP
> +The processor tracks EPC pages in a hardware metadata structure called
> +.I Enclave Page Cache Map (EPCM).
> +The EPCM contains an entry for each EPC page which describes the owning
> +enclave,
> +access rights and page type among the other things.

s/access rights/access rights,/

> +EPCM permissions are separate from the normal page tables.
> +This prevents the kernel from,for instance,

s/from,for/from, for/

> +allowing writes to data which an enclave wishes to remain read-only.
> +EPCM permissions may only impose additional restrictions on top of
> +normal x86 page permissions.
> +.PP
> +For all intents and purposes,
> +the SGX architecture allows the processor to invalidate all EPCM entries
> +at will.
> +This requires that software be prepared to handle an EPCM fault at any
> +time.
> +In practice,
> +this can happen on events like power transitions when the ephemeral key
> +that encrypts enclave memory is lost.
> +.PP
> +Kernel records EPCM permissions when

s/Kernel/The kernel/

> +.B SGX_IOC_ENCLAVE_ADD_PAGES
> +is called.
> +When the pages are mapped to memory via mmap() or mprotect(),

Change "mmap() or mprotect()," to

[[
.BR mmap (2)
or
.BR mprotect (2),
]]

> +the EPCM permissions are compared against the declared permissions.
> +If the declared permissions have bits set that are not part of the EPCM
> +permissions,
> +the operation fails with
> +.B -EACCES.

==>
"
the operation fails with the error
.B EACCES.
"
(Note removeal of "-".)


> +.SS Enclave invocation
> +.PP
> +Enclaves encounter exceptions for many reasons:
> +everything from enclave page faults to NULL pointer de-references,

s/de-references/dereferences/

> +to system calls that must be called by a delegate from outside the enclave.
> +Finally, a power cycle invalidates the whole EPC,
> +which also needs to be addressed by the caller.
> +.PP
> +This type of exception handling has been traditionally been handled in
> +SIGSEGV handlers,
> +registered by the library.
> +But, being a process-wide state,
> +signal handling and code libraries do not mix well.
> +.PP
> +In order to assist the run-time, kernel provides a vDSO entry point,
> +.B vsgx_enter_enclave,

s/.B vsgx_enter_enclave,/.BR vsgx_enter_enclave ,/

> +which wraps enclave entry functions
> +ENCLU[EENTER] and EENTER[ERESUME],
> +and returns exceptions to the caller at the point they happen.
> +The exception information is filled in RDI, RSI and RDX.
> +The kernel-provided user space portion of the vDSO handler will place
> +this information in a user-provided buffer,
> +or optionally trigger a user-provided callback at the time of the
> +exception.
> +.PP
> +The vDSO function calling convention uses the standard RDI, RSI, RDX,
> +RCX, R8 and R9 registers.
> +This makes it possible to declare the vDSO as a C prototype,
> +but other than that there is no specific support for SystemV ABI.

What do you mean by "SystemV ABI"?

> +Things like storing XSAVE are the responsibility of the enclave and the
> +runtime.
> +.SS Page reclaimer
> +.PP
> +Just like normal RAM,
> +there is a limited amount of enclave memory available and over-committing
> +it is a very valuable tool to reduce resource use.
> +.PP
> +In contrast to normal page reclaim,
> +the kernel cannot directly access enclave memory.
> +To get around this,
> +the SGX architecture provides a set of functions to help.
> +Among other things,
> +these functions copy enclave memory to and from normal memory,
> +encrypting it and protecting its integrity in the process.
> +.PP
> +Kernel provides a page reclaimer by using these functions.

s/Kernel/The kernel/

> +It picks victim pages in LRU fashion from all the enclaves running in
> +the system.
> +A new kernel thread (ksgxd) reclaims pages in the background based on
> +watermarks,
> +similar to normal kswapd.
> +.PP
> +All enclave pages can be reclaimed, architecturally.
> +But, there are some limits to this,
> +such as the special SECS metadata page which must be reclaimed last.

s/page/page,/

> +The page version array (used to mitigate replaying old reclaimed pages)
> +is also architecturally reclaimable,
> +but not yet implemented.

s/but not yet implemented/
  but support for reclaiming the page version array is not yet implemented/

> +The end result is that the vast majority of enclave pages are currently
> +reclaimable.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR mmap() (2),
> +.BR mprotect (2),


Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
