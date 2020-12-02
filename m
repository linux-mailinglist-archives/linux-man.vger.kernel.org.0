Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1309E2CBF78
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 15:23:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730168AbgLBOUy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 09:20:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726729AbgLBOUy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 09:20:54 -0500
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2399AC0613CF;
        Wed,  2 Dec 2020 06:20:14 -0800 (PST)
Received: by mail-ed1-x541.google.com with SMTP id r5so4014118eda.12;
        Wed, 02 Dec 2020 06:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=edg+N2JafnCHqHSsfJDve/IsxLS6jhNCAJqkmDQGMTw=;
        b=kY/nu2N7fS3gOFR816giVbx8xHqhP15/Euq5PN9+619sDgsK6MwNLW04ak9dFBoaRJ
         PsSWjTutoSGBDyT/fdNQcIKBSv2qGL0aXKtRhK9PKFbX6+i/gKquTZh5qIcqHI6iFTBp
         xKvNzFXdM9L+ILEFgwibQboNdrSuvQMfafF2h28pcoH97upPgGuxm1+nj4TmI3s0dCk3
         XjZ4rJEYTfHg41Zhlwt0hZRRWJaOK6/nc0eVrELOduiMXAlZo2BiZ7GmxySgSpWBzXb8
         bAkTr/a4OYgWGTEsoK4656POuUiG29df8izO4a8qdsGNb4G4qWEoO6+XI8tRcc38+Fb/
         KL8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=edg+N2JafnCHqHSsfJDve/IsxLS6jhNCAJqkmDQGMTw=;
        b=J7CHfF+fo++1gSRkOS0Ox37uv9uM71I8ix6NLl5cGh69tmBe+leYfcaa3kGKbOPflA
         txYH+cGOdHApB3iJa9T3qFZDrp9Ia4o5ZQbbuf2NATj4mBOLQjdHgDdW24pBcYs4hHlc
         tkfGPR/XXxPUkU6UFpdp2dMdFgXxvChYl09cyax23tQvZkPb2/OcaSKvgoIUPRaO2DTp
         O/D6Qw0HUc/qfndp0CJDwtdu7Af/siI3xn6HDhJ7KHEfhQyGjtsROfb0wpb83kbLbB/S
         9r70FPxST6MW64FJb1XOB6HYpS/V1hPzi+3aLizB7ccUX+xi6TUEP48DCS6BPgIBo5SM
         0f+g==
X-Gm-Message-State: AOAM531Zj0KDaBPC3DOSYO+Kd2P/79oocYYS9YtYW5U0Pg0DCoLroSdF
        4kISlcPCiaDJQ82UaEGWOQM=
X-Google-Smtp-Source: ABdhPJyPp5mG6KELiJJEuwQ2M974O6WOx6TaBkH/R3g9f6MToZxb1BBcCGmmRJntxtcmhqv7McE5nQ==
X-Received: by 2002:a05:6402:1c8a:: with SMTP id cy10mr93030edb.151.1606918812496;
        Wed, 02 Dec 2020 06:20:12 -0800 (PST)
Received: from ?IPv6:2001:a61:3aad:c501:15d9:d9fb:bc21:cb92? ([2001:a61:3aad:c501:15d9:d9fb:bc21:cb92])
        by smtp.gmail.com with ESMTPSA id e27sm347ejm.60.2020.12.02.06.20.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 06:20:11 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com,
        x86@kernel.org
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>, Jarkko Sakkinen <jarkko@kernel.org>
References: <20201202071543.74866-1-jarkko@kernel.org>
 <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c698b115-2daa-c92b-da92-abe261a37222@gmail.com>
Date:   Wed, 2 Dec 2020 15:20:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarkko,

By the way, is this feature already merged into the kernel? (It appears not.)

On 12/2/20 12:50 PM, Alejandro Colomar (mailing lists; readonly) wrote:
> Hi Jarkko,
> 
> Thanks for the page.
> 
> Adding to Michael's comment,
> here are a few things to fix (see below).
> 
> Michael, there's also a question for you (grep mtk).
> 
> Thanks,
> 
> Alex
> 
> On 12/2/20 8:15 AM, Jarkko Sakkinen wrote:
>> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
>> ---
>>  man7/sgx.7 | 198 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 198 insertions(+)
>>  create mode 100644 man7/sgx.7
>>
>> diff --git a/man7/sgx.7 b/man7/sgx.7
>> new file mode 100644
>> index 000000000..429c9b64d
>> --- /dev/null
>> +++ b/man7/sgx.7
>> @@ -0,0 +1,198 @@
>> +.\" Copyright (C) 2020 Intel Corporation
>> +.\"
>> +.\" %%%LICENSE_START(VERBATIM)
>> +.\" Permission is granted to make and distribute verbatim copies of this
>> +.\" manual provided the copyright notice and this permission notice are
>> +.\" preserved on all copies.
>> +.\"
>> +.\" Permission is granted to copy and distribute modified versions of this
>> +.\" manual under the conditions for verbatim copying, provided that the
>> +.\" entire resulting derived work is distributed under the terms of a
>> +.\" permission notice identical to this one.
>> +.\"
>> +.\" Since the Linux kernel and libraries are constantly changing, this
>> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
>> +.\" responsibility for errors or omissions, or for damages resulting from
>> +.\" the use of the information contained herein.  The author(s) may not
>> +.\" have taken the same level of care in the production of this manual,
>> +.\" which is licensed free of charge, as they might when working
>> +.\" professionally.
>> +.\"
>> +.\" Formatted or processed versions of this manual, if unaccompanied by
>> +.\" the source, must acknowledge the copyright and authors of this work.
>> +.\" %%%LICENSE_END
>> +.\"
>> +.TH SGX 7 2020-12-02 "Linux" "Linux Programmer's Manual"
>> +.PP
>> +sgx - overview of Software Guard eXtensions
>> +.SH DESCRIPTION
>> +.PP
>> +Intel Software Guard eXtensions (SGX) allow user space applications to
>> +set aside private memory regions of code and data.
>> +These memory regions are called as enclaves.
> 
> wfix:
> 
> These memory regions are called enclaves.
> 
>> +.PP
>> +SGX must be enabled by the BIOS.
>> +If SGX appears to be unsupported on a system having the hardware
> 
> 1)
> s/having the hardware/having hardware/
> 
> 2)
> Please, use semantic newlines.
> 
> To understand 'semantic newlines',
> please have a look at
> man-pages(7)::STYLE GUIDE::Use semantic newlines
> 
> Basically, split lines at the most natural separation point,
> instead of just when the line gets over the margin.
> 
>> +support, ensure that SGX is enabled in the BIOS.
>> +If a BIOS presents a choice between \[lq]Enabled\[rq] and \[lq]Software
> 
> s/\\[lq]/\\(dq/g
> s/\\[rq]/\\(dq/g
> 
> Basically, we use \(dq for any double quotes, and we don't care about
> left or right.
> 
> Michael (mtk):
> 
> I was searching to see if it was documented in man-pages(7),
> but I didn't find it.
> Should we add something under man-pages(7)::STYLE GUIDE::Generating
> optimal glyphs?
> 
> 
>> +Enabled\[rq] modes for SGX, choose \[lq]Enabled\[rq].
>> +.PP
>> +An enclave can be only entered at a fixed set of entry points.
>> +Each of them can hold a single hardware thread at a time.
>> +While the enclave is loaded from a regular binary file, only the threads
>> +inside the enclave can access its memory.
>> +.PP
>> +Although carved out of normal DRAM, enclave memory is marked in the
>> +system memory map as reserved and is not managed by the Linux memory
>> +manager.
>> +There may be several regions spread across the system.
>> +Each contiguous region is called an Enclave Page Cache (EPC) section.
>> +EPC sections are enumerated via CPUID.

Do you mean here the mechanism documented in the cpuid(4) manual page?
If yes, I'd recommend writing

.BR cpuid (4)

here.

>> +These regions are encrypted when they leave the LLC.

Please define LLC (expand the abbreviation).

>> +.PP
>> +SGX is available only if the kernel was configured and built with the
>> +\f[B]CONFIG_X86_SGX\f[R] option.
> 
> Replace by:
> 
> [
> .B CONFIG_X86_SGX
> option.
> ]
> 
>> +The hardware support for SGX can be observed from
>> +\f[I]/proc/cpuinfo\f[R] with the \[lq]flags\[rq] field containing
>> +\[lq]sgx\[rq].
> 
> [
> .I /proc/cpuinfo
> with the \(dqflags\(dq field containing \(dqsgx\(dq.
> ]
> 
>> +.SS Enclave management
>> +.PP
>> +Enclave\[cq]s life-cycle starts by opening \f[I]/dev/sgx_enclave\f[R],

S/Enclave/An enclave's/


> 
> For single quotes (or apostrophe), please use '\(aq':

Actually, '\(aq' is really only needed in code blocks. In normal running text,
writing just an actual single quote (') suffices and is preferred.

> [
> Enclave\(aqs life ...
> ]
> 
> See man-pages(7)::STYLE GUIDE::Generating optimal glyphs
> 
>> +and ends once all the references to the opened file have been closed.
>> +After opening the enclave, its contents must be populated with the ioctl
>> +interface provided by \f[I]<asm/sgx.h>\f[R].
>> +ENCLS is a privileged (ring-0) instruction with the functionality for
>> +managing enclave memory, and the ioctl inteface provides a wrapper for

s/inteface/interface/

>> +it.
>> +.PP
>> +Enclave construction starts by calling \f[B]SGX_IOC_ENCLAVE_CREATE\f[R],
>> +which takes in the initial version of SGX Enclave Control Structure
>> +(SECS).
>> +SGX Enclave Control Structure (SECS) contains the description of the
>> +enclave.
>> +The ioctl calls ENCLS[ECREATE] function, which will copy SECS to the SGX
>> +reserved memory.
>> +SECS is never mapped to the process address space, and thus cannot be
>> +directly referenced.
>> +.PP
>> +Among other things, SECS contains the base address and size of the
>> +enclave, meaning that the addresss space must be carved out before the
>> +creation.
>> +There is also a hardware constrain that the size must be a power of two,

s/constrain/constrain/

>> +and the base address must be also naturally aligned relative to the
>> +size.
>> +.PP
>> +Some of the SECS fields must be initialized to zero because their values
>> +are determined dynamically after the enclave has been created.
>> +Most importantly SECS contains two SHA256 hashes: MRENCLAVE and
>> +MRSIGNER.
>> +Each enclave invocation, during the enclave construction, hashes its
>> +defining parameters MRENCLAVE.
>> +Arbitrary data can be also hashed into MRENCLAVE via the ENCLS[EEXTEND]
>> +function.
>> +MRSIGNER contains the hash of the enclave signer key, which is used to
>> +sign the SIGSTRUCT structure passed to the ENCLS[EINIT] function.
>> +A running enclave can use both of these fields as material for keys
>> +acquired with the ENCLU[EGETKEY]unction.
>> +.PP
>> +After the enclave has been created, a series of
>> +\f[B]SGX_IOC_ENCLAVE_ADD_PAGES\f[R]calls are issued.
>> +This ioctl copies the provided data to the enclave memory by invoking
>> +the ENCLS[EADD] function, and optionally hashes it with help of the
>> +ENCLS[EEXTEND] function.
>> +Hashing is optional because it is a slow operation and sometimes not
>> +required.
>> +For instance, one might only care to measure the code pages.
>> +.PP
>> +Finally, when all the data has been copied to the enclave memory,
>> +\f[B]SGX_IOC_ENCLAVE_INIT\f[R] is called, which invokes the ENCLS[EINIT]
>> +function.
>> +This function inspects that the accumulated MRENCLAVE matches the
>> +MRENCLAVE inside the caller provided SIGSTRUCT, andlocks down the
>> +enclave from further build operations.
>> +After this, the enclave can be invoked.
>> +.SS Enclave memory mapping
>> +.PP
>> +The processor tracks EPC pages in a hardware metadata structure called
>> +the \f[I]Enclave Page Cache Map (EPCM)\f[R].
>> +The EPCM contains an entry for each EPC page which describes the owning
>> +enclave, access rights and page type among the other things.
>> +EPCM permissions are separate from the normal page tables.
>> +This prevents the kernel from, for instance, allowing writes to data
>> +which an enclave wishes to remain read-only.
>> +EPCM permissions may only impose additional restrictions on top of
>> +normal x86 page permissions.
>> +.PP
>> +For all intents and purposes, the SGX architecture allows the processor
>> +to invalidate all EPCM entries at will.
>> +This requires that software be prepared to handle an EPCM fault at any
>> +time.
>> +In practice, this can happen on events like power transitions when the
>> +ephemeral key that encrypts enclave memory is lost.
>> +.PP
>> +Kernel records EPCM permissions when \f[B]SGX_IOC_ENCLAVE_ADD_PAGES\f[R]
>> +is called.
>> +When the pages are mapped to memory via mmap() or mprotect(), the EPCM
>> +permissions are compared against the declared permissions.
>> +If the declared permissions have bits set that are not part of the EPCM
>> +permissions, the operation fails with \f[B]-EACCES\f[R].
>> +.SS Enclave invocation
>> +.PP
>> +Enclaves encounter exceptions for lots of reasons: everything from
>> +enclave page faults to NULL pointer de-references, to system calls that
>> +must be called by a delegate from outside the enclave.
>> +Also, the enclave memory can be invalidated at any point of time when
>> +system state changes.
>> +For instance, when system wakes up from a sleep state, all EPC regions
>> +get invalidated.
>> +An SGX run-time must be prepared to all of this, and must be ready to

Wording problem around "to all of this". What did you mean here?


>> +even rebuild the enclave when the memory is invalidated.
>> +.PP
>> +This type of exception handling has been traditionally been handled in
>> +SIGSEGV handlers, registered by the library.
>> +But, being process-wide, shared state, signal handling and shared

I think "shared" (as in "shared libraries") can be removed here. This is
a general issue for any kind of library, shared or static.

>> +libraries do not mix well.
>> +.PP
>> +In order to assist the run-time, kernel provides a vDSO,

By "a vDSO", do you mean "a vDSO entry point". If yes, it would be 
better to write that.

>> +\f[B]vsgx_enter_enclave\f[R], which wraps enclave entry functions
>> +ENCLU[EENTER] and EENTER[ERESUME], and returns exceptions to the caller
>> +at the point they happen.
>> +The exception information is filled in RDI, RSI and RDX.
>> +The kernel-provided user space portion of the vDSO handler will place
>> +this information in a user-provided buffer, or optionally trigger a
>> +user-provided callback at the time of the exception.
>> +.PP
>> +The vDSO function calling convention uses the standard RDI RSI, RDX,

s/RDI/RDI,/

>> +RCX, R8 and R9 registers.
>> +This makes it possible to declare the vDSO as a C prototype, but other
>> +than that there is no specific support for SystemV ABI.
>> +Things like storing XSAVE are the responsibility of the enclave and the
>> +runtime.
>> +.SS Page reclaimer
>> +.PP
>> +Just like normal RAM, there is a limited amount of enclave memory
>> +available and over-committing it is a very valuable tool to reduce
>> +resource use.
>> +Introduce a simple reclaim mechanism for enclave pages.

The previous sentence seems to be out of place. What did you mean 
here?

>> +.PP
>> +In contrast to normal page reclaim, the kernel cannot directly access
>> +enclave memory.
>> +To get around this, the SGX architecture provides a set of functions to
>> +help.
>> +Among other things, these functions copy enclave memory to and from
>> +normal memory, encrypting it and protecting its integrity in the
>> +process.
>> +.PP
>> +Kernel provides a page reclaimer by using these functions.
>> +It picks victim pages in LRU fashion from all the enclaves running in
>> +the system.
>> +A new kernel thread (ksgxd) reclaims pages in the background based on
>> +watermarks, similar to normal kswapd.
>> +.PP
>> +All enclave pages can be reclaimed, architecturally.
>> +But, there are some limits to this, such as the special SECS metadata
>> +page which must be reclaimed last.
>> +The page version array (used to mitigate replaying old reclaimed pages)
>> +is also architecturally reclaimable, but not yet implemented.
>> +The end result is that the vast majority of enclave pages are currently
>> +reclaimable.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
