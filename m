Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9458C2FF6C0
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 22:07:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727306AbhAUVHI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 16:07:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727017AbhAUVFh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 16:05:37 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 088B6C06174A;
        Thu, 21 Jan 2021 13:04:57 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id rv9so4598207ejb.13;
        Thu, 21 Jan 2021 13:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6qCGIB3OGu3gfssft8dY7NpEpqX3P8bPhxxLzw4RNxM=;
        b=kUvePAbyztuX0Xig8qXY+YLwn75nhQHSfAi0nOl4xKGoILoXNbGiFhOHyZkbiTERIV
         UNhC+159/KY/hm+zPgOZjkA1OPqFBnPV1GGTldaz+3wSh9GqtAIqlilEN+DscqKctAuR
         irUcjKy5n66sHAAuhgTYv/Z4Fyr35lL0GF0qWrNFQehQTcnmNfN+CdchgCCjPvAjjx1H
         x4FiAPinFDEyc9cAyBDORn/pusYaiyYzD2PieBYYBOvmrn2o30u6KP3z3v4pdUvFwvYK
         DZVhtJJWbHPvlNRfg3kMNnJhH39j/dH6gOAH6XcyF4JSi/14jDmiQc8GdkqyR9MADcRV
         zskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6qCGIB3OGu3gfssft8dY7NpEpqX3P8bPhxxLzw4RNxM=;
        b=I2wNwoGYYXEle8WkVYb2hY1QCwjZ/cJSpDyddC5jECbJYnzhmRzhKlatXP0hlemqVK
         2EkRv4URv8sS7sHmfhKKux6V/57TJXe94E8pwKEvzNbMAqJf1D2FCg0BWlJrQRG2oIAi
         hKaJeYUrj2smg2i3jUBiCQq64Yn+V7ek4hGkd8x2A0phPRy4QC0BRahtHnXFY5to/4AA
         nNyejuo6P8x8VRarHZuQAJV/qom+j3OzkXUog7mKrHwZburPRwJgqsdvHRzukHWUyg2z
         K/zRlPAcXcszRTgO+4F3rEgXstRCklAQXfzbgyxSkoiuI/hfngSgSSPj5HEfrRRL+YIF
         90qQ==
X-Gm-Message-State: AOAM530nMQtOO0yNxUU2ASJpAuGdNx5ajfkl1viqkZ+P2mSoLcBd5tZ4
        gvnQn6vhOZmdJSA3PannUto=
X-Google-Smtp-Source: ABdhPJx+c9z9yj5dNfAuZpikO39Qts3Kj8X84pmDEQupZ31d1OU9wsxt4OyU5yfu9raQMmWwb4jWeA==
X-Received: by 2002:a17:906:28d6:: with SMTP id p22mr878705ejd.365.1611263095497;
        Thu, 21 Jan 2021 13:04:55 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id c7sm3387102edv.70.2021.01.21.13.04.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:04:54 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v3] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
References: <20210121114359.112193-1-jarkko@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cefe9151-2bea-fa96-f1b0-6621d1d94222@gmail.com>
Date:   Thu, 21 Jan 2021 22:04:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210121114359.112193-1-jarkko@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jarkko,

Thanks for the revision!

A lot of my comments below are cosmetic, but there's also a few deeper
questions.

I expect I may still have some comments on v4, but this draft
is already looking much better. I don't suppose I'm about to fully
understand SGX, but I feel like we're getting closer to a document
that would help people who do care to understand it.

On 1/21/21 12:43 PM, Jarkko Sakkinen wrote:
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> ---
> v3:
> * Overhaul based on Michael's comments. Most likely needs to be refined
>   in various places but this is at least a small step forward for sure.
> v2:
> * Fixed the semantic newlines convention and various style errors etc.
>   that were reported by Alenjandro and Michael.
> * SGX was merged to v5.
>  man7/sgx.7 | 248 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 248 insertions(+)
>  create mode 100644 man7/sgx.7
> 
> diff --git a/man7/sgx.7 b/man7/sgx.7
> new file mode 100644
> index 000000000..4f6d6136f
> --- /dev/null
> +++ b/man7/sgx.7
> @@ -0,0 +1,248 @@
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
> +.TH SGX 7 2020-12-02 "Linux" "Linux Programmer's Manual"
> +.PP
> +sgx - overview of Software Guard eXtensions

Replace "-" with "\-" (it's a standard convention in manual pages).

> +.SH DESCRIPTION
> +.PP
> +Intel Software Guard eXtensions (SGX) allow user space applications to set

s/user space/user-space/

> +aside private memory regions of code and data.
> +These memory regions are called enclaves.
> +.PP
> +SGX must be enabled by the BIOS.

s/by/in/ ? (See two lines below.)

> +If SGX appears to be unsupported on a system having hardware support,
> +ensure that SGX is enabled in the BIOS.
> +If a BIOS presents a choice between \(dqEnabled\(dq and \(dqSoftware
> +Enabled\(dq modes for SGX,
> +choose \(dqEnabled\(dq.
> +.PP
> +An enclave can be entered only at a fixed set of entry points,

I think there needs to be a more detailed explanation of what
"entering" and "exiting" the enclave mean. I don't really
understand it. Does it mean that the instruction pointer register
starts pointing to addresses in the range (and then ceases when
the enclave is exited)?

> +each defined by Thread Control Structure (TCS) architectural structure,
> +contained in a single enclave page.
> +A hardware thread reserves a TCS by executing EENTER subfunction of the

s/EENTER/the EENTER/

> +ENCLU instruction,

Maybe: s/ENCLU/x86 ENCLU/ ?

> +and the execution continues from the TCS defined entry point.

s/TCS defined/TCS-defined/

> +ENCLU contains all the SGX user functions.

s/ENCLU/The ENCLU (Execute Enclave User Function) opcode/
(I think noting what the mnemonic stands for helps the reader get
oriented.)

s/contains/implements/?

> +Depending on the function, they must be called either inside or outside of
> +the enclave.
> +Once the thread has completed its task,
> +it calls EEXIT subfunction of the ENCLU instruction,

s/calls/employs/ ?

> +which releases the TCS and departs the enclave to a given address outside
> +the enclave.
> +While the enclave is loaded from a regular binary file,
> +only the threads inside the enclave can access its memory.
> +.PP
> +Although carved out of normal DRAM,
> +enclave memory is marked in the system memory map as reserved and is not
> +managed by the Linux memory manager.
> +There may be several enclave regions spread across the system.
> +Each contiguous region is called an Enclave Page Cache (EPC) section.
> +The pages belonging to the EPC sections are encrypted when they leave the
> +Last Level Cache (LLC).
> +.PP
> +SGX is available only if the kernel was configured and built with the
> +.B CONFIG_X86_SGX
> +option.
> +[[

Remove previous line.

> +You can determine whether the hardware supports SGX by checking
> +whether "sgx" appears in the
> +.I flags
> +field in
> +.IR /proc/cpuinfo .
> +]]

Remove previous line.

> +.SS Enclave management
> +.PP

> +An enclave's life-cycle starts by opening
> +.I /dev/sgx_enclave
> +and ends when all the file descriptors referring to the opened file have
> +been closed.
> +After opening the enclave,
> +its contents must be populated with the ioctl interface provided by

Everywhere that you wrote "ioctl", could you please replace with

.BR ioctl (2)

> +.IR <asm/sgx.h> .
> +ENCLS is a privileged (ring-0) instruction with the functionality for

s/ENCLS/ENCLS (Execute an Enclave System Function)/ ?

(I think noting what the mnemonic stands for helps the reader get
oriented.)

> +managing enclave memory,
> +and the ioctl interface provides a wrapper for it.
> +.PP
> +Enclave construction starts by calling

s/Enclave construction starts by/Construction of an enclave starts by/ ?

> +.B SGX_IOC_ENCLAVE_CREATE,

Everywhere where you mention one of these ioctl operations, I would 
prefer it to be rephrased as something like:

Construction of an enclave starts by employing the
.B SGX_IOC_ENCLAVE_CREATE
.BR ioctl (2)
operation...

> +which copies the initial version of SGX Enclave Control Structure
> +(SECS).

Did no-one at Intel marketing read the engineering docs out loud and then 
say to engineering, "wait, maybe you should choose another acronym?".

> +SGX Enclave Control Structure (SECS) contains the description of the

s/SGX/The SGX/

> +enclave.
> +The ioctl calls the ECREATE subfunction of the ENCLS instruction,

s/calls/employs/ ?

> +which will copy the SECS to the SGX reserved memory.

s/will copy/copies/

> +The SECS is never mapped to the process address space,
> +and thus cannot be directly referenced.
> +.PP
> +Among other things, the SECS contains the base address and size of the enclave,
> +meaning that the address space must be carved out before the creation.

s/the creation/creation of the enclave/ ?

> +There is also a hardware related invariant that the enclave size must be a

s/hardware related/hardware-related/

> +power of two,
> +and the base address must be also naturally aligned relative to the size.
> +.PP
> +Some of the SECS fields must be initialized to zero because their values
> +are determined dynamically after the enclave has been created.
> +Most importantly SECS contains two SHA256 hashes: MRENCLAVE and

s/importantly/importantly,/

> +MRSIGNER.
> +Each ENCLS subfunction,
> +which contribute to the enclave construction,
> +hashes its key parameters to the MRENCLAVE.

Better:
[[
Each ENCLS subfunction that contributes to the enclave construction
hashes its key parameters to the MRENCLAVE.
]]

(Note the removal of two commas, s/which/that/, and "contribute*s*".)

> +Arbitrary data can be also hashed into MRENCLAVE via the EEXTEND subfunction
> +of the ENCLS instruction.
> +MRSIGNER contains the hash of the enclave signer key,
> +which is used to sign the SIGSTRUCT structure passed to the
> +EINIT subfunction of the ENCLS instruction.
> +MRENCLAVE and MRSIGNER define the enclave identity and sealing identity of the

s/identity/ID/ (twice) ?

> +enclave.
> +A thread executing inside the enclave can use them as key material for deriving

s/them/these identities/
or
s/them/these IDs/

> +128-bit cryptographic keys.
> +This is accomplished by calling the EGETKEY subfunction of the ENCLU
> +instruction.
> +.PP
> +After the enclave has been created,
> +a series of
> +.B SGX_IOC_ENCLAVE_ADD_PAGES

.B SGX_IOC_ENCLAVE_ADD_PAGES
.BR ioctl(2)

> +calls are issued.
> +This ioctl copies the provided data to the enclave memory by invoking

s/ioctl/operation/

> +the EADD subfunction of the ENCLS instruction.

s/.//

> +and optionally hashes it with help of the EEXTEND subfunction of the ENCLS
> +instruction.
> +Hashing is optional because it is a slow operation and sometimes not
> +required.
> +For instance, one might only care to measure the code pages.
> +.PP
> +Finally, when all the data has been copied to the enclave memory,
> +.B SGX_IOC_ENCLAVE_INIT
> +is called,
> +which invokes the EINIT subfunction of the ENCLS instruction.
> +This function checks that the accumulated MRENCLAVE matches the
> +MRENCLAVE inside the caller provided SIGSTRUCT,

s/caller provided/caller-provided/

> +and locks down the enclave from further build operations.
> +After this, the enclave can be invoked.
> +.SS Enclave memory mapping
> +.PP

Remove preceding line (.PP not needed after .SS; the groff linter
gives me warnings on this).

> +The processor tracks EPC pages in a hardware metadata structure called

s/called/called the/

> +.I Enclave Page Cache Map (EPCM).
> +The EPCM contains an entry for each EPC page which describes the owning

s/ which/; this entry/

> +enclave,
> +access rights,
> +and page type among the other things.
> +EPCM permissions are separate from the normal page tables.
> +This prevents the kernel from,
> +for instance,
> +allowing writes to data which an enclave wishes to remain read-only.

s/remain/keep/ ?

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
> +The kernel records EPCM permissions when
> +.B SGX_IOC_ENCLAVE_ADD_PAGES
> +is called.

Maybe replace the previous sentence with:

The kernel records EPCM permissions when the
.B SGX_IOC_ENCLAVE_ADD_PAGES
.BR ioctl (2)
operation is performed.

> +When the pages are mapped to memory via
> +[[

Remove the previous line.

> +.BR mmap (2)
> +or
> +.BR mprotect (2),
> +]]

Remove the previous line.

> +the EPCM permissions are compared against the declared permissions.
> +If the declared permissions have bits set that are not part of the EPCM
> +permissions,
> +the operation fails with the error
> +.B EACCES.

s/.B EACCES./.BR EACCES ./

> +.SS Enclave invocation
> +.PP

Remove preceding line (.PP not needed after .SS)

> +Enclaves encounter exceptions for many reasons:
> +everything from enclave page faults to NULL pointer dereferences,
> +to system calls that must be called by a delegate from outside the enclave.
> +Finally, a power cycle invalidates the whole EPC,
> +which also needs to be addressed by the caller.
> +.PP
> +This type of exception handling has been traditionally been handled in
> +SIGSEGV handlers,

Replace previous line with:

.B SIGSEGV
handlers,

> +registered by the library.
> +But, being a process-wide state,

s/a //

> +signal handling and code libraries do not mix well.

Maybe better:

s/signal handling and code libraries do not mix well
 /signal handling does not mix well with code libraries/

> +.PP
> +In order to assist the run-time, kernel provides a vDSO entry point,
> +.BR vsgx_enter_enclave ,
> +which wraps the ENCLU entry subfunctions EENTER and ERESUME,
> +and returns exceptions to the caller at the point they happen.
> +The exception information is filled in RDI, RSI and RDX.

s/filled in RDI, RSI and RDX
 /placed in the RDI, RSI and RDX registers/
?

> +The kernel-provided user space portion of the vDSO handler will place

s/user space/user-space/

> +this information in a user-provided buffer,
> +or optionally trigger a user-provided callback at the time of the
> +exception.
> +.PP
> +The vDSO function calling convention uses the standard RDI, RSI, RDX,

s/function calling/function-calling/

> +RCX, R8 and R9 registers.

s/R8/R8,/

> +This makes it possible to declare the vDSO as a C prototype,
> +but other than that there is no specific support for the x86-64 calling
> +convention,
> +Things like storing XSAVE are the responsibility of the enclave and the
> +runtime.
> +.SS Page reclaimer
> +.PP

Remove preceding line (.PP not needed after .SS)

> +Just like normal RAM,
> +there is a limited amount of enclave memory available and over-committing

s/over-committing/overcommitting/

> +it is a very valuable tool to reduce resource use.

s/very // ?

> +.PP
> +In contrast to normal page reclaim,
> +the kernel cannot directly access enclave memory.
> +To get around this,
> +the SGX architecture provides a set of functions to help.
> +Among other things,
> +these functions copy enclave memory to and from normal memory,
> +encrypting it and protecting its integrity in the process.
> +.PP
> +The kernel provides a page reclaimer by using these functions.
> +It picks victim pages in LRU fashion from all the enclaves running in
> +the system.
> +A new kernel thread (ksgxd) reclaims pages in the background based on
> +watermarks,
> +similar to normal kswapd.
> +.PP
> +All enclave pages can be reclaimed, architecturally.
> +But, there are some limits to this,

s/But,/But/

> +such as the SECS page,
> +which must be reclaimed last.

Maybe rewrite the last sentence as:

But there are some restrictions; for example, the SECS page must 
be reclaimed last.

> +The page version array (used to mitigate replaying old reclaimed pages)
> +is also architecturally reclaimable,
> +but support for reclaiming the page version array is not yet implemented,
> +The end result is that the vast majority of enclave pages are currently
> +reclaimable.
> +.SH VERSIONS
> +The SGX feature was added in Linux 5.11.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR mmap() (2),
> +.BR mprotect (2),

s/,//

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
