Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EADDB478285
	for <lists+linux-man@lfdr.de>; Fri, 17 Dec 2021 02:51:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232120AbhLQBvA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Dec 2021 20:51:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232135AbhLQBu7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Dec 2021 20:50:59 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5711EC061574;
        Thu, 16 Dec 2021 17:50:59 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id c4so1172736wrd.9;
        Thu, 16 Dec 2021 17:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vIlBnK7LqLJ5+ast3pZGTk1nkBEcUI80uH3/s8w1130=;
        b=bH9DX9/ZJ3BJYB7T1rHxhCq7vygz+9ehLX6AhLRWwWh4YzwDbSE5V2FSF6rMemDe8I
         0K6djm+R2c8cwM9m7lQ2HERw7SDhQ5HOtXOROvspkbe283ux8zonLeTn2kw57g25Iej3
         bPwJG0j4DA2WWZMXuO5tUPh2s7xhtGy9d2mH05bgerLEEKefx09f03TAszIDEi0amq3e
         Vc7KfpGb+OZt/PaItbCJQTIlo7K0Oyt/ufn2NE2wk+kwOaq0xIpjEKA2Mn048YdioUmy
         G1ZpNzjCp/gqVyp2rU8pXaUeaEfdA7TLNHoTAthWUcw9rUn4ErT/IjKwk8gjC3qFJUd9
         Qg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vIlBnK7LqLJ5+ast3pZGTk1nkBEcUI80uH3/s8w1130=;
        b=7xlicAQB9dNcLmjJh9Djka2UZ5XvjtGjDPE4Qjv8e2B+ub4sX0j20dn/ZMBPzbQFTJ
         scyWoEmglk856bKPUib+af4yWNHagvT1L47voJF315/9ToPjIWAOZGCuiHnFbExk+gk5
         acdvGNUSf6TWb2OhIvXh8ofrOFyYrZvmgz2YlqIAQYDtQm5RdwUQC4X7gjZazQY5lyyk
         VZpFauFdAAHPYiRpCvBJZgzCW9Dwd8PZrqV0fdWIGl85HS6wGAfPhkNbVXhZ9qx4cBwB
         xFkS6mCtPgCAh2WGiZ4JK0L+ENGzQAi0NFZGrl8oOX3TGciXGCdfep7wldVKfVlEEZPG
         i0dg==
X-Gm-Message-State: AOAM533CgFHqhQsONJl0p7K3xQ7U78FzCUTf0NsepruXmJTN2icMJFtU
        /e295UeXunsHA0BdYittcDs=
X-Google-Smtp-Source: ABdhPJw890QOzUt3bzbro+MgGOjVmIjN7u6K0UYc/eP8rd8PKCT/2qu9jvmV/km7EKfVPR91NOhWHw==
X-Received: by 2002:adf:f08c:: with SMTP id n12mr524958wro.598.1639705857797;
        Thu, 16 Dec 2021 17:50:57 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g16sm7103881wmq.20.2021.12.16.17.50.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Dec 2021 17:50:57 -0800 (PST)
Message-ID: <c58f3951-282c-ef66-fc62-844da06c5af4@gmail.com>
Date:   Fri, 17 Dec 2021 02:50:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH v11] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Content-Language: en-US
To:     Jarkko Sakkinen <jarkko@kernel.org>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        nathaniel@profian.com, Michael Kerrisk <mtk.manpages@gmail.com>,
        Reinette Chatre <reinette.chatre@intel.com>
References: <20211211153320.17438-1-jarkko@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211211153320.17438-1-jarkko@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarkko,

Please see some comments below.

Thanks,
Alex

On 12/11/21 16:33, Jarkko Sakkinen wrote:
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> ---
> v11:
> * Address Reinette's remarks for v10:
>    https://lore.kernel.org/linux-sgx/8f84b8e8-b478-bb81-4aa8-536df882a144@intel.com/
> v10:
> * v9 was malformed, essentially a resend.
> v9:
> * Rename "Address Space" section as "Memory mapping", and refine the
>    text.
> * Rename "Ioctls" section as "Construction", and refine the text.
> v8:
> * Fix errors reported for the previous version.
> v7:
> * Added more meat about the address space and API.
> * Reorganized the text to have focus more on developer to have a big
>    picture of kernel provided interfaces.
> v6:
> * Small fixes based on Dave's and Reinette's feedback.
> * Extended the "Permissions" section to cover mmap()
> v5:
> * Taking away hardware concepts and focusing more on the interface.
> v4:
> * Did a heavy edit trying to streamline the story a bit and focus on
>    stuff important to the user (e.g. lighten up x86 details).
> v3:
> * Overhaul based on Michael's comments. Most likely needs to be refined
>    in various places but this is at least a small step forward for sure.
> v2:
> * Fixed the semantic newlines convention and various style errors etc.
>    that were reported by Alenjandro and Michael.
> * SGX was merged to v5.
> ---
>   man7/sgx.7 | 146 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 146 insertions(+)
>   create mode 100644 man7/sgx.7
> 
> diff --git a/man7/sgx.7 b/man7/sgx.7
> new file mode 100644
> index 000000000..0b5aa87e9
> --- /dev/null
> +++ b/man7/sgx.7
> @@ -0,0 +1,146 @@
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

Please, add .nf here (see any man2 or man3 pages as an example).

groff(7):
        .nf       No filling or adjusting of output lines.


> +.EX
> +.B #include <asm/sgx.h>
> +.PP
> +.IB enclave " = open(""/dev/sgx_enclave"", O_RDWR);"

Sorry for not jumping here before.  I read the thread but didn't have 
the time to reply.  What you wanted to use here is \(dq.

groff_man(7):
        \(dq   ASCII  double-quote.  Sometimes needed after macro
               calls to prevent the interpretation of  the  ASCII
               quotation  mark  character '"' as the beginning or
               end of a macro argument.

So:

.IB enclave " = open(" \dq/dev/sgx_enclave\(dq ", O_RDWR);"


> +.EE

Please, add .fi here.

groff(7):
        .fi       Fill output lines.


> +.SH DESCRIPTION
> +Intel Software Guard eXtensions (SGX) allow applications to host
> +enclaves,
> +protected executable objects in memory.
> +.PP
> +Enclaves are blobs of executable code,
> +running inside a CPU enforced container,
> +which is mapped to the process address space.
> +They are represented as the instances of
> +.IR /dev/sgx_enclave .
> +They have a fixed set of entry points,
> +defined when the enclave is built.
> +.PP
> +SGX can only be available if the kernel is configured and built with the
> +.B CONFIG_X86_SGX
> +option.
> +If CPU, BIOS and kernel have SGX enabled,
> +.I sgx
> +appears in the
> +.I flags
> +field of
> +.IR /proc/cpuinfo .
> +.PP
> +If SGX appears not to be available,
> +ensure that SGX is enabled in the BIOS.
> +If a BIOS presents a choice between
> +.I Enabled
> +and
> +.I Software Enabled
> +modes for SGX,
> +choose
> +.IR Enabled .
> +.PP

.PP not necessary just before .SS or .SH.  Please remove it.

> +.SS Memory mapping
> +The file descriptor for an enclave can be shared among multiple processes.
> +An enclave is required by the CPU to be placed to an address,
> +which is a multiple of its size.
> +An address range containing a reasonable base address can be probed with an anonymous
> +.BR mmap(2)
> +call:
> +.PP
> +.EX
> +void *area = mmap(NULL, size * 2, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS,
> +                  -1, 0);
> +
> +void *base = ((uint64_t)area + size - 1) & ~(size - 1);

Wouldn't uintptr_t(3) be better here (instead of uint64_t(3))?

Also, please add a space just after the cast, just for consistency with 
other manual pages.

> +.EE
> +.PP

Please indent the above.

man-pages(7):
    Indentation of structure definitions, shell session logs, and so on
        When  structure  definitions, shell session logs, and so on are
        included in running text, indent them  by  4  spaces  (i.e.,  a
        block  enclosed  by .in +4n and .in), format them using the .EX
        and EE macros, and surround them with suitable paragraph  mark-
        ers (either .PP or .IP).  For example:

                .PP
                .in +4n
                .EX
                int
                main(int argc, char *argv[])
                {
                    return 0;
                }
                .EE
                .in
                .PP

> +The enclave file descriptor itself can be then mapped with the
> +.BR MAP_FIXED

This should be .B

groff_man(7):
        .B [text]
               Set text in bold.  If the macro is given no  argu-
               ments,  the  text of the next input line is set in
               bold.

               Use bold for literal portions of syntax  synopses,
               for  command-line options in running text, and for
               literals that are major topics of the subject  un-
               der  discussion;  for example, this page uses bold
               for macro and register names.  In .EX/.EE examples
               of  interactive I/O (such as a shell session), set
               only the user-typed input in bold.

        [...]

        .BR bold-text roman-text ...
               Set each argument in bold and roman, alternately.

                      Any such change becomes effective with the first 
use of
                      .BR .NH ,
                      .I after
                      the new alias is defined.


> +flag set to the carved out memory.
> +.SS Construction
> +An enclave instance is created by opening
> +.IR /dev/sgx_enclave .
> +Its contents are populated with the
> +.BR ioctl (2)
> +interface in
> +.IR <asm/sgx.h> :
> +.TP
> +.IB SGX_IOC_ENCLAVE_CREATE

This should be .B

> +Create SGX Enclave Control Structure (SECS) for the enclave.
> +SECS is a hardware defined structure,
> +which contains the global properties of an enclave.
> +.IB SGX_IOC_ENCLAVE_CREATE

Same here

> +is a one-shot call that fixes the enclave's address and
> +size for the rest of its life-cycle.
> +.TP
> +.IB SGX_IOC_ENCLAVE_ADD_PAGES

Same here.

> +Fill a range of the enclave's pages with the caller provided data and protection bits.
> +Memory mappings of the enclave can only set protection bits that are defined in this ioctl.
> +The pages added are either regular pages for code and data,
> +or thread control structures (TCS).
> +The latter define the entry points to the enclave,
> +which can be entered after the initialization.
> +.TP
> +.IB SGX_IOC_ENCLAVE_INIT

Same here.

> +Initialize the enclave for the run-time.
> +After a successful initialization,
> +no new pages can be added to the enclave.
> +.SS Invocation
> +Thread control structure (TCS) pages are the entry points to the enclave,
> +which further define an offset inside the enclave where the execution begins.
> +The entry points are invoked with
> +.IR __vdso_sgx_enter_enclave .
> +The prototype for the vDSO is defined by
> +.BR vdso_sgx_enter_enclave_t

.I

Types go in italics.  This is to be added to a future manual page 
groff_man_style(7).  Discussed here: 
<https://lore.kernel.org/linux-man/20211112093536.hvifxgdtb2y6jzge@localhost.localdomain/>

> +in
> +.IR <asm/sgx.h> .
> +.SS Permissions
> +.PP
> +During the build process each enclave page is assigned protection bits,
> +as part of
> +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES).

Function calls go in italics.

man-pages(7):
        Expressions, if not written on a separate indented  line,
        should  be  specified in italics.  Again, the use of non-
        breaking spaces may be appropriate if the  expression  is
        inlined with normal text.

So this should use .IR, not .BR.

Also, a space before the period.

groff_man(7):
        .IR italic-text roman-text ...
               Set  each  argument  in  italics and roman, alter-
               nately.

                      This is the first command of the
                      .IR prologue .


> +These protections are also the maximum protections with which the page can be be mapped.
> +If
> +.BR mmap (2)
> +is called with higher protections than those defined during the build,
> +it will return
> +.B -EACCES.

.BR and a space.

groff_man(7):
        .BR bold-text roman-text ...
               Set each argument in bold and roman, alternately.

                      Any such change becomes effective with the first 
use of
                      .BR .NH ,
                      .I after
                      the new alias is defined.


> +If
> +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)

.I

groff_man(7):
        .I [text]
               Set text in italics.  If the macro is given no ar-
               guments, the text of the next input line is set in
               italics.

               Use italics for file and path names, for  environ-
               ment  variables,  for  enumeration or preprocessor
               constants in  C,  for  variable  (user-determined)
               portions  of syntax synopses, for the first occur-
               rence only of a  technical  concept  being  intro-
               duced,  for  names of works of software (including
               commands and functions, but excluding names of op-
               erating  systems or their kernels), and anywhere a
               parameter requiring replacement by the user is en-
               countered.  An exception involves variable text in
               a context that is already marked  up  in  italics,
               such  as  file  or path names with variable compo-
               nents; in such cases,  follow  the  convention  of
               mathematical typography: set the file or path name
               in italics as usual (see .IR below), but use roman
               for  the  variable part, and italics again in run-
               ning roman text when referring to the variable ma-
               terial.


> +is called after
> +.BR mmap (2)
> +with lower protections,
> +the caller receives
> +.BR SIGBUS,

A space before the comma.

> +once it accesses the page for the first time.
> +.SH VERSIONS
> +The SGX feature was added in Linux 5.11.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR mmap (2),
> +.BR mprotect (2)

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
