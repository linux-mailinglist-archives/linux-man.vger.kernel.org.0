Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 453AD2E7407
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:52:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726197AbgL2UwR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:52:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726189AbgL2UwR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:52:17 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98151C061574
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:51:36 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id t30so15750055wrb.0
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:51:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lAEVWpoRZhTOWvBoVnu+mvN3398Geo4PQ5+3pkXcPXs=;
        b=F81qhnNtzDQJ+No7IhhZeJA/3EooWIwNx2asGWOEBFXosF8qPFTLdY+hWTUmwhHXbC
         kk/PiSYeDVzrg05y8mg2tVpy1op2GlIkxX9jwrCVTCIchAY8CVQEZspC15uU9VtrMNrj
         d674awOuIO72QSf7PbuGzpFtVjzS6E1a3nBtb81AW50UKXPFKe9cWkaofbhjfEuG5pX4
         6kDumPM1Zp0xlwb1uE3SsWL/ln8FN+HIvyOh9+xNGaPUUEXGuRo/1+CxpFfesCqki5V3
         Jl+FWKt2OgM8y8Bbjjt/Y8xstaIPgygc+0D48G2r8UDzrG7lH97IK0ClI4KXL2STBHJf
         y9lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lAEVWpoRZhTOWvBoVnu+mvN3398Geo4PQ5+3pkXcPXs=;
        b=WR87R+Lrx/w7P45jlEE6uvm1Hw7KpWvuwEt1Nyn0etkA3gDsn9EUZpgymAnHjZjcEt
         hmeeK2tQPe3Cip0MnJZ11bW5QigLbCjFopFzmJqv29PDogovbUaZMhCNRk+keIvx1j3h
         macj86XDwW1f8b/pCWz/wA6jx6BM699jQX2KgkFRwGZNM9l91EYhpuKr9V8Ocg1UA9sR
         L9aQUrr4o7OED4UeFm3cEG7sh84rCUYZA5CD4c3W+GR7Kg1tsrwjLiWEGP/bZnP0aYUf
         E5iNx+JdSKR7cJz6H8KU0f2z2InODKAcDQmKxbQSHtf3sQwEtKqAReizFWhuronhITOy
         ZgCg==
X-Gm-Message-State: AOAM533MYS4FNPlD/bU8jXIQPeMwDPEVpB0998JDgoepIdc1Urmhtknz
        zlBpP3saLbq47WUTll5nYrRtEGFdZJ0=
X-Google-Smtp-Source: ABdhPJxdYh/w4EkLYQP/d5wwTqF9OTf4681Vlqw+5SSJXi8S2Yp9iDa7ICHbBnnjOkoea+idP9PO5Q==
X-Received: by 2002:a5d:58fb:: with SMTP id f27mr48580242wrd.22.1609275095248;
        Tue, 29 Dec 2020 12:51:35 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id x66sm4820679wmg.26.2020.12.29.12.51.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 12:51:34 -0800 (PST)
Subject: Re: [PATCH 1/2] Various pages: Normalize SYNOPSIS notes about
 non-existing glibc wrappers
To:     mtk.manpages@gmail.com
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <20201229143859.17473-2-alx.manpages@gmail.com>
 <CAKgNAkigqvTQ6Ph-ZBphuUtX+ei0R0ioqaom6-sgYjH-GZ7bnA@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <308ab75c-fece-c4ed-fd34-feef9898ae38@gmail.com>
Date:   Tue, 29 Dec 2020 21:51:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkigqvTQ6Ph-ZBphuUtX+ei0R0ioqaom6-sgYjH-GZ7bnA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

A question below.

Cheers,

Alex

On 12/29/20 9:27 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex, Ganimedes.
> 
> In the subject line : s/non-existing/nonexistent/

Ok, I'll resend in a few minutes.

> 
> On Tue, 29 Dec 2020 at 15:43, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
>> From: Ganimedes Colomar <gacoan.linux@gmail.com>
>>
>> To easily distinguish documentation about glibc wrappers from
>> documentation about kernel syscalls, let's have a normalized
>> 'Note' in the SYNOPSIS, and a further explanation in the page body
>> (NOTES in most of them), as already happened in many (but not all)
>> of the manual pages for syscalls without a wrapper.  Furthermore,
>> let's normalize the messages, following membarrier.2 (because it's
>> already quite extended), so that it's easy to use grep to find
>> those pages.
>>
>> To find these pages, we used:
>> $ grep -rn wrapper man? | sort -V
>> and
>> $ grep -rni support.*glibc | sort -V
>>
>> delete_module.2, init_module.2:  glibc 2.23 is no longer
>>   maintained, so we changed the notes about wrappers, to say that
>>   there are no glibc wrappers for these system calls; see NOTES.
> 
> That seems fine.
> 
>> We didn't fix some of the obsolete syscalls (create_module(2)),
>> but if you prefer, we can fix those too.
> 
> I think it's okay to leave it.
> 
> The remainder of the patch looks good. The only reason that I'm not
> applying ir yet (and fixing the subject line myself) is that I wonder
> if the command I mentioned in response to the 0/2 mail might help you
> find other pages to include in the patch. Let me know.
> 
> Thanks,
> 
> Michael
> 
> 
> 
>>
>>
>> Signed-off-by: Ganimedes Colomar <gacoan.linux@gmail.com>
>> Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> Hi Michael,
>>
>> Some comment:
>>
>>   syslog.2: Isn't the comment in SYNOPSIS wrong?
>>         There _is_ a wrapper, which is documented just below that line.
>>         It just has a different name.

What about that?

$ man 2 syslog | sed -n /^SYNOPSIS/,/^DESCRIPTION/p |sed \$d
SYNOPSIS
       int syslog(int type, char *bufp, int len);
                       /* No wrapper provided in glibc */
<<<<< I think we should remove the above comment,
<<<<< or put it consistently everywhere else.
<<<<< What would you do?

       /* The glibc interface */
       #include <sys/klog.h>

       int klogctl(int type, char *bufp, int len);



>>
>> Cheers,
>>
>> Alex
>>
>>  man2/add_key.2              | 3 ++-
>>  man2/arch_prctl.2           | 3 +++
>>  man2/clone.2                | 2 +-
>>  man2/delete_module.2        | 2 +-
>>  man2/init_module.2          | 6 +-----
>>  man2/keyctl.2               | 3 ++-
>>  man2/pidfd_getfd.2          | 3 +++
>>  man2/pidfd_open.2           | 3 +++
>>  man2/pidfd_send_signal.2    | 2 ++
>>  man2/request_key.2          | 3 ++-
>>  man2/s390_guarded_storage.2 | 3 +++
>>  man2/s390_pci_mmio_write.2  | 3 +++
>>  man2/s390_runtime_instr.2   | 3 +++
>>  man2/s390_sthyi.2           | 3 +++
>>  14 files changed, 32 insertions(+), 10 deletions(-)
>>
>> diff --git a/man2/add_key.2 b/man2/add_key.2
>> index 1476b7d85..7c20de777 100644
>> --- a/man2/add_key.2
>> +++ b/man2/add_key.2
>> @@ -22,7 +22,8 @@ add_key \- add a key to the kernel's key management facility
>>  .BI "                     key_serial_t " keyring ");"
>>  .fi
>>  .PP
>> -No glibc wrapper is provided for this system call; see NOTES.
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  .BR add_key ()
>>  creates or updates a key of the given
>> diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
>> index 97d5a2fe5..e8a6da391 100644
>> --- a/man2/arch_prctl.2
>> +++ b/man2/arch_prctl.2
>> @@ -33,6 +33,9 @@ arch_prctl \- set architecture-specific thread state
>>  .BI "int arch_prctl(int " code ", unsigned long " addr );
>>  .BI "int arch_prctl(int " code ", unsigned long *" addr );
>>  .fi
>> +.PP
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  .BR arch_prctl ()
>>  sets architecture-specific process or thread state.
>> diff --git a/man2/clone.2 b/man2/clone.2
>> index 0114668ea..0d6565b5d 100644
>> --- a/man2/clone.2
>> +++ b/man2/clone.2
>> @@ -60,7 +60,7 @@ clone, __clone2, clone3 \- create a child process
>>  .fi
>>  .PP
>>  .IR Note :
>> -There is not yet a glibc wrapper for
>> +There is no glibc wrapper for
>>  .BR clone3 ();
>>  see NOTES.
>>  .SH DESCRIPTION
>> diff --git a/man2/delete_module.2 b/man2/delete_module.2
>> index daa15faa2..e63545d51 100644
>> --- a/man2/delete_module.2
>> +++ b/man2/delete_module.2
>> @@ -31,7 +31,7 @@ delete_module \- unload a kernel module
>>  .fi
>>  .PP
>>  .IR Note :
>> -No declaration of this system call is provided in glibc headers; see NOTES.
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  The
>>  .BR delete_module ()
>> diff --git a/man2/init_module.2 b/man2/init_module.2
>> index c2675db97..00cf4e948 100644
>> --- a/man2/init_module.2
>> +++ b/man2/init_module.2
>> @@ -37,11 +37,7 @@ init_module, finit_module \- load a kernel module
>>  .fi
>>  .PP
>>  .IR Note :
>> -glibc provides no header file declaration of
>> -.BR init_module ()
>> -and no wrapper function for
>> -.BR finit_module ();
>> -see NOTES.
>> +There are no glibc wrappers for these system calls; see NOTES.
>>  .SH DESCRIPTION
>>  .BR init_module ()
>>  loads an ELF image into kernel space,
>> diff --git a/man2/keyctl.2 b/man2/keyctl.2
>> index 6bf07972d..f37cae8df 100644
>> --- a/man2/keyctl.2
>> +++ b/man2/keyctl.2
>> @@ -45,7 +45,8 @@ keyctl \- manipulate the kernel's key management facility
>>  .BI "             __kernel_ulong_t " arg5 );
>>  .fi
>>  .PP
>> -No glibc wrapper is provided for this system call; see NOTES.
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  .BR keyctl ()
>>  allows user-space programs to perform key manipulation.
>> diff --git a/man2/pidfd_getfd.2 b/man2/pidfd_getfd.2
>> index 1a69c8238..9312b6f92 100644
>> --- a/man2/pidfd_getfd.2
>> +++ b/man2/pidfd_getfd.2
>> @@ -29,6 +29,9 @@ pidfd_getfd \- obtain a duplicate of another process's file descriptor
>>  .nf
>>  .BI "int pidfd_getfd(int " pidfd ", int " targetfd ", unsigned int " flags );
>>  .fi
>> +.PP
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  The
>>  .BR pidfd_getfd ()
>> diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
>> index 5b99460e1..1b0c5e0d4 100644
>> --- a/man2/pidfd_open.2
>> +++ b/man2/pidfd_open.2
>> @@ -31,6 +31,9 @@ pidfd_open \- obtain a file descriptor that refers to a process
>>  .PP
>>  .BI "int pidfd_open(pid_t " pid ", unsigned int " flags );
>>  .fi
>> +.PP
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  The
>>  .BR pidfd_open ()
>> diff --git a/man2/pidfd_send_signal.2 b/man2/pidfd_send_signal.2
>> index 6670cf357..ffbfd1796 100644
>> --- a/man2/pidfd_send_signal.2
>> +++ b/man2/pidfd_send_signal.2
>> @@ -32,6 +32,8 @@ pidfd_send_signal \- send a signal to a process specified by a file descriptor
>>  .BI "int pidfd_send_signal(int " pidfd ", int " sig ", siginfo_t *" info ,
>>  .BI "                      unsigned int " flags );
>>  .fi
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  The
>>  .BR pidfd_send_signal ()
>> diff --git a/man2/request_key.2 b/man2/request_key.2
>> index 86f76e43d..6b041d0c4 100644
>> --- a/man2/request_key.2
>> +++ b/man2/request_key.2
>> @@ -22,7 +22,8 @@ request_key \- request a key from the kernel's key management facility
>>  .BI "                         key_serial_t " dest_keyring ");"
>>  .fi
>>  .PP
>> -No glibc wrapper is provided for this system call; see NOTES.
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  .BR request_key ()
>>  attempts to find a key of the given
>> diff --git a/man2/s390_guarded_storage.2 b/man2/s390_guarded_storage.2
>> index b3aef858f..c3ab3bc85 100644
>> --- a/man2/s390_guarded_storage.2
>> +++ b/man2/s390_guarded_storage.2
>> @@ -31,6 +31,9 @@ s390_guarded_storage \- operations with z/Architecture guarded storage facility
>>  .PP
>>  .BI "int s390_guarded_storage(int " command ", struct gs_cb *" gs_cb ");"
>>  .fi
>> +.PP
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  The
>>  .BR s390_guarded_storage ()
>> diff --git a/man2/s390_pci_mmio_write.2 b/man2/s390_pci_mmio_write.2
>> index 802142987..2ccd630ab 100644
>> --- a/man2/s390_pci_mmio_write.2
>> +++ b/man2/s390_pci_mmio_write.2
>> @@ -35,6 +35,9 @@ MMIO memory page
>>  .BI "int s390_pci_mmio_read(unsigned long " mmio_addr ","
>>  .BI "                        void *" user_buffer ", size_t " length ");"
>>  .fi
>> +.PP
>> +.IR Note :
>> +There are no glibc wrappers for these system calls; see NOTES.
>>  .SH DESCRIPTION
>>  The
>>  .BR s390_pci_mmio_write ()
>> diff --git a/man2/s390_runtime_instr.2 b/man2/s390_runtime_instr.2
>> index 558e9c99d..0f4a704de 100644
>> --- a/man2/s390_runtime_instr.2
>> +++ b/man2/s390_runtime_instr.2
>> @@ -31,6 +31,9 @@ s390_runtime_instr \- enable/disable s390 CPU run-time instrumentation
>>  .PP
>>  .BI "int s390_runtime_instr(int " command ", int " signum ");"
>>  .fi
>> +.PP
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  The
>>  .BR s390_runtime_instr ()
>> diff --git a/man2/s390_sthyi.2 b/man2/s390_sthyi.2
>> index 2ff06051a..70871286b 100644
>> --- a/man2/s390_sthyi.2
>> +++ b/man2/s390_sthyi.2
>> @@ -32,6 +32,9 @@ s390_sthyi \- emulate STHYI instruction
>>  .BI "int s390_sthyi(unsigned long " function_code ", void *" resp_buffer ","
>>  .BI "               uint64_t *" return_code ", unsigned long " flags ");"
>>  .fi
>> +.PP
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>>  .SH DESCRIPTION
>>  The
>>  .BR s390_sthyi ()
>> --
>> 2.29.2
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
