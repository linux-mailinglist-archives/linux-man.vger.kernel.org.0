Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C172A3F23BD
	for <lists+linux-man@lfdr.de>; Fri, 20 Aug 2021 01:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236282AbhHSXiV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Aug 2021 19:38:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234182AbhHSXiV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Aug 2021 19:38:21 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51D99C061575;
        Thu, 19 Aug 2021 16:37:44 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id k14so7402969pga.13;
        Thu, 19 Aug 2021 16:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fVsYdQiHx0h4ZWUnTXosYwgglKTKHF0RWgYAH4dAy6w=;
        b=asuGf8gJrOv7qQMSPq3T0zxywtcWz8IVI3xPNpkAaSyVYR3pBzd5BxGQFt5DlkIM96
         5mXr8y5XeQWd/7KGCI2WBw/KwMFtTV9I5OZcBy2E3yUzAvKhFTqyUjvSZlYMn0XtCDmN
         gXtXNgbOa8a84Nw6HrjuL54q9nVljCO1E1n0f8ojFDXEBD7CcI65TvSCjnerlVHqnIFF
         w8miUApg9HnJT7xF81Wd2YJJxmqRZHzSdWlx6BnNXVSNdQLrufSL7oPfFPCTWVT/KKTC
         3fX33FAw5ZjXEEdM3d0zvrlK1k4UHuKCjEK1AzNLaagEFgJ/U5fYgilzlzqSoEXGku22
         pugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fVsYdQiHx0h4ZWUnTXosYwgglKTKHF0RWgYAH4dAy6w=;
        b=T9oZlN97aV7if8X8s4lCc8GV8iloQIllPE5+xthe4jPixKMzOqPOQgyYEyiKHS9Uhq
         786rycBITKhWlItye6eNREhl/yjErf7pWQdPDvsjQs/vTo+6A6V2VySSrVSnBowkzQlP
         hQNS0H4k255EoNDSIsXzIDMc+Y8C7adCSO10+oYAYWd5hpbO7hk/HzZvIiqKwHZtirio
         8fpeAAH2ZCNoA9BkulQaL5bAY81mXwp0fbIBs5S3LzlrZKmQraynDaIQY6EI6o5ktpA0
         tmykIMoOa+INQM0P0u5gG5qkheMpFwNY/kG3EnqMtWaL6fiXPM/cVtaoGc0ck9Ci7Zsm
         2msg==
X-Gm-Message-State: AOAM533nH8yhKaGjCrcLaweIC/68nEtILvTOb7MEuA35vDNmCC91bsre
        Vyj9VQejuArWC8+du1rf1f0=
X-Google-Smtp-Source: ABdhPJx9OaQXVys1+GbaCZfGCvJuD0u16DYymYlIYToLzMhiezxcMNPTRkXkErpWX7fZDxA9EEl5Yw==
X-Received: by 2002:a05:6a00:1626:b029:3e0:99b6:b320 with SMTP id e6-20020a056a001626b02903e099b6b320mr16889687pfc.25.1629416263843;
        Thu, 19 Aug 2021 16:37:43 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id w3sm4585534pfn.96.2021.08.19.16.37.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 16:37:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Reinette Chatre <reinette.chatre@intel.com>
Subject: Re: [PATCH v7] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
References: <20210810211616.172775-1-jarkko@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5f53f76d-456f-2049-05ea-e127804c3b14@gmail.com>
Date:   Fri, 20 Aug 2021 01:37:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210810211616.172775-1-jarkko@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jarkko

On 8/10/21 11:16 PM, Jarkko Sakkinen wrote:
> Cc: linux-man@vger.kernel.org
> Cc: linux-sgx@vger.kernel.org
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Reinette Chatre <reinette.chatre@intel.com>
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> ---
> 
> v7:
> * Added more meat about the address space and API.
> * Reorganized the text to have focus more on developer to have a big
>   picture of kernel provided interfaces.
> v6:
> * Small fixes based on Dave's and Reinette's feedback.
> * Extended the "Permissions" section to cover mmap()
> v5:
> * Taking away hardware concepts and focusing more on the interface.
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
> 
>  man7/sgx.7 | 156 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 156 insertions(+)
>  create mode 100644 man7/sgx.7
> 
> diff --git a/man7/sgx.7 b/man7/sgx.7
> new file mode 100644
> index 000000000..ab5a504fa
> --- /dev/null
> +++ b/man7/sgx.7
> @@ -0,0 +1,156 @@
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
> +.SH SYNOPSIS
> +.EX
> +.B #include <asm/sgx.h>
> +.PP
> +.IB enclave " = open(""/dev/sgx_enclave", " O_RDWR);"
> +.EE
> +.SH DESCRIPTION

> +Intel Software Guard eXtensions (SGX) allow applications to host,

s/host,/host/

> +enclaves,
> +protected executable objects in memory.
> +As software entities enclaves are instances of

s/entities/entities,/

> +.I /dev/sgx_enclave.

What does the previous sentence mean? I'm sorry, it's
not very clear.

> +.PP
> +SGX can be available only if the kernel was configured and built with the

s/can be/is/

> +.B CONFIG_X86_SGX
> +option.
> +You can verify that both the kernel and hardware have SGX enabled by
> +checking that "sgx" appears in the
> +.I flags
> +field in
> +.IR /proc/cpuinfo .
> +.PP
> +SGX must be enabled in BIOS.
> +If SGX appears to be unsupported,
> +ensure that SGX is enabled in the BIOS.
> +If a BIOS presents a choice between
> +.I Enabled
> +and
> +.I Software Enabled
> +modes for SGX,
> +choose
> +.I Enabled.
> +.PP
> +Enclaves are shared objects, meaning that
> +they can be shared with a
> +.BR cmsg (3),

How do they get shared with cmg()? This is unclear?
Do you mean by passing a file descriptor over a UNIX
domain socket, or something else?

> +and inherited in a fork.
> +.SS Address space
> +The address range for an enclave must be reserved with
> +.BR mmap (2).
> +This must happen before the enclave construction can begin,
> +because the enclave page addresses are fixed during its build time.
> +.PP
> +The CPU requires the size of the enclave to be power of two,

Must the size also be >= page size? If so, that should be 
mentioned.

> +and the base address to be naturally aligned with the size.
> +An appropriate address range can be found by an anonymous mapping:
> +.PP
> +.EX
> +void *area = mmap(NULL, size * 2, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS,
> +                  -1, 0);
> +
> +/* Find the first address aligned to the size within the range. */
> +void *base = ((uint64_t)area + size - 1) & ~(size - 1);


> +.EE
> +.PP
> +.SS Ioctls
> +Enclaves are managed with the
> +.BR ioctl (2)
> +interface defined and documented in
> +.IR <asm/sgx.h>:


> +.TP
> +.IB SGX_IOC_ENCLAVE_CREATE
> +Create SGX Enclave Control Structure (SECS) for an enclave.
> +SECS is a hardware defined structure,
> +which contains the properties of an enclave,
> +such as its base address and size.

Add a sentence:

[[
The ioctl argument has the type
.IR "struct\ *sgx_enclave_create" .
]]

(I think this sentence helps the reader orient a little, 
when reading the header file.)

> +.TP
> +.IB SGX_IOC_ENCLAVE_ADD_PAGES
> +Populate a range of enclave pages with the page data provided by the caller.

Add a sentence:

[[
The ioctl argument has the type
.IR "struct\ *sgx_enclave_add_pages" .
]]

> +.TP
> +.IB SGX_IOC_ENCLAVE_INIT
> +Tell the CPU the prepare the enclave for use.

s/the prepare/to prepare/

> +After a successful initialization,
> +no new pages can be added to the enclave.

Add a sentence:

[[
The ioctl argument has the type
.IR "struct\ *sgx_enclave_init" .
]]

Just looking in the header file, does SGX_IOC_ENCLAVE_PROVISION
also need to be mentioned?

> +.PP
> +The details of what these operations actually mean in the hardware level can be

s/in/at/

> +found in the Intel Software Developers Manual.
> +.SS vDSO
> +A process can access enclave by entering into its address space through

s/enclave/an enclave/

> +a set of entry points,
> +which must be defined during the construction process.
> +This requires a complex sequence of CPU instructions,
> +and kernel assisted exception handling.
> +For these reasons,
> +it is encapsulated into
> +vDSO interface,

s/vDSO/a vDSO/

> +provided by
> +.BR vdso_sgx_enter_enclave_t,

s/,/ ,/

> +which is located in

s/located/declared/ ?

> +.IR <asm/sgx.h>.
> +.SS Permissions
> +In order to build an enclave, a process must be able to call
> +.IR mmap (2)
> +with
> +.IR PROT_EXEC
> +set,
> +because like for any other type of executable,

s/because like for any/because, as with any/

> +the page table permissions must be set appropriately.

s/permissions/protections/

> +Therefore,
> +.I /dev/sgx_enclave
> +must reside in a partition,
> +which is not mounted with
> +.B noexec
> +set in the mount options.
> +.PP
> +During the build process each enclave page is assigned protection bits,
> +as part of
> +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES).

In the previous sentence, you use "protections". In the following
sentences you use "permissions". Best to be consistent. Let's
use "protections", as per mmap(2).

> +These permissions are also the maximum permissions to which the page can be be mapped.
> +If
> +.BR mmap (2)
> +is called with surpassing permissions,

s/surpassing/unexpected/
s/permissions/protections/

> +it will return
> +.B -EACCES.
> +If
> +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)
> +is called after
> +.BR mmap (2)
> +with lower permissions,
> +the process will eventually receive a

I want to check the wording here, since "eventually"
is often a false friend for nonnative speakers.

In English, "eventually" means: at some (unknown) time in the future,
something WILL happen. In other words, the happening is certain, but
the timing is not. In various European languages, a similar sounding word
in many cases has the sense of "possibly" or "may happen". Which do
you mean to say?

> +.BR SIGBUS
> +signal,
> +once it accesses the page for the first time.
> +.SH VERSIONS
> +The SGX feature was added in Linux 5.11.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR mmap (2),
> +.BR mprotect (2)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
