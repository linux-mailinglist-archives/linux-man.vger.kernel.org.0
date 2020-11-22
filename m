Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 109BF2BFC74
	for <lists+linux-man@lfdr.de>; Sun, 22 Nov 2020 23:41:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726502AbgKVWhb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Nov 2020 17:37:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726300AbgKVWha (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Nov 2020 17:37:30 -0500
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB54C0613CF;
        Sun, 22 Nov 2020 14:37:29 -0800 (PST)
Received: by mail-oi1-x241.google.com with SMTP id s18so16474570oih.1;
        Sun, 22 Nov 2020 14:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=hhd7xrzP+9SEyjRA+oXE+ILVekTt7HVl/xNWKVnFFg4=;
        b=thp7mRdXXcgp5wHhdr8eP43+DS1rGUMtrNyOJ6+FtTN/71n1jVa1F5gbJzPLrZiBPB
         r+/tGFEkbS95Lzo+inzwSrbyoUCs9e0Jm7nyQSBlgSwpvkQP0lDdNk35BZtV7zbXLq8p
         ShCsizux0uRlwVyOX46bZofDZ5vZRbumpho/QMl7niFHJgVkeE/1gVQNrJRfcC8OuHM/
         nBuSA0yRc12G/HHKCCUKolhDiKlKDLhQebes9nHoFuhUsdV+sOZqyU2jh1gXVWTm6ImW
         60DhgDeZVhoo15hJ9loT8v3NK/9NVf2ekd4c3hQWRBB1adzSwyboi+7jombhXVjtFAnw
         i8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=hhd7xrzP+9SEyjRA+oXE+ILVekTt7HVl/xNWKVnFFg4=;
        b=j7DK568OEpUtC1ppQ9vZEHKSdVgwRk9c4SinrQYbH+YUSKm+j+4CRD34okC3EC3Zf2
         AvTc5MM1i1os4bknqdKVdLuA73M6cN3M74C6iT7++DqngWdfLto9N0tBEVbkUwCy7jYv
         oRe/7lJ/Yk+CqOkiw3Fv1OizxjNc7eCm2Km+CFIBZbOtTf84rZn+YpvGUz4WgyALEYkw
         3LGNgPjyU1AhGOYiPEVLCvvJ+sUMa8ywGuxjVVGNup7h+5rDRVdAMP86dMiVowWy4z5A
         bfeHPRnAllFbhAB9ur2xFuPZRpBOET5oAZIQpqT8lhPyJSsFuVRq2M7uvH1Y5rXY1RAR
         KbMg==
X-Gm-Message-State: AOAM532z/py7rFi4L0wG1qSBue63zhxn9gXnUO2zFFb4RDvrPJ//CRwq
        beoEJb42gfccTm/K1utxEKY8fXxfDK58+8ugB+0=
X-Google-Smtp-Source: ABdhPJxhOEbWdma6ptlgS4/pcc3aUrO9TfuA8ls7yZMSc2r29bL3n4T3L8hgYIuGIiaJuCyuZ9/XEEEBuxRDdM+cauw=
X-Received: by 2002:aca:b706:: with SMTP id h6mr13764552oif.177.1606084648464;
 Sun, 22 Nov 2020 14:37:28 -0800 (PST)
MIME-Version: 1.0
References: <20201121173054.12172-1-alx.manpages@gmail.com> <5e3a4489-48dd-b33c-9733-4967cdb8a310@gmail.com>
In-Reply-To: <5e3a4489-48dd-b33c-9733-4967cdb8a310@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 22 Nov 2020 23:37:17 +0100
Message-ID: <CAKgNAkhNSWR3uYhYYaxx74fZfJ3JrpfAAPVrK0AFk_cAOUsbDg@mail.gmail.com>
Subject: Re: [PATCH] lseek.2: SYNOPSIS: Use correct types
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        Florian Weimer <fw@deneb.enyo.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Sat, 21 Nov 2020 at 18:45, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> I'm a bit lost in all the *lseek* pages.
>
> You had a good read some months ago, so you may know it better.
> I don't know which of those functions come from the kernel,
> and which come from glibc (if any).

It always takes me too long to remind myself of the details here :-(.

This time, I'll try to write what I (re)learned.

Inside the kernel (5.9 sources), in fs/read_write.c, we have:

[[
SYSCALL_DEFINE3(lseek, unsigned int, fd, off_t, offset, unsigned int, whence)
{
        return ksys_lseek(fd, offset, whence);
}

#ifdef CONFIG_COMPAT
COMPAT_SYSCALL_DEFINE3(lseek, unsigned int, fd, compat_off_t, offset,
unsigned int, whence)
{
        return ksys_lseek(fd, offset, whence);
}
#endif

#if !defined(CONFIG_64BIT) || defined(CONFIG_COMPAT) || \
        defined(__ARCH_WANT_SYS_LLSEEK)
SYSCALL_DEFINE5(llseek, unsigned int, fd, unsigned long, offset_high,
                unsigned long, offset_low, loff_t __user *, result,
                unsigned int, whence)
{
...
}
#endif
]]

The main pieces of interest here are the first and last
SYSCALL_DEFINEn. The first is the "standard" lseek() system call that
exists on 64-bit and 32-bit architectures.

The problem on 32-bit architectures is that the off_t type is a 32-bit
type, but files can be bigger than 2GB (2**32-1). That's why 32-bit
kernels also provide the llseek() system call. It receives the new
offset in two 32-bit pieces (offset_high, offset_low), and returns the
new offset via a 64-bit off_t argument (result). (I forget the
reason why there are 32-bit and 64-bit "offset" args in the syscall.)

One more thing... In arch/x86/entry/syscalls/syscall_32.tbl,
we see the following line:

[[
140     i386    _llseek                 sys_llseek
]]

This is essentially telling us that 'sys_llseek' (the name generated
by SYSCALL_DEFINE5(llseek...)) is exposed to user-space as system call
number 140, and that system call number will (IIUC) be exposed in
autogenerated headers with the name "__NR__llseek" (i.e., "_llseek").
The "i386" is
telling us that this happens in i386 (32-bit Intel). There is nothing
equivalent on x86-64, because 64 bit systems don't need an _llseek
system call.

Now, in ancient times (let's say Linux 2.2), there was a more
transparent situation (but the effect was the same):

#define __NR__llseek            140

and that system call number was tied to the implementation by this definition
linux-2.2.26/arch/i386/kernel/entry.S:

.long SYMBOL_NAME(sys_llseek)           /* 140 */

==

lseek64() is a C library function.  It takes and returns a 64-bit
offset. It exists to support seeking in large (>2GB) files. Its
implementation is in the glibc source file
sysdeps/unix/sysv/linux/lseek64.c, where it calls _llseek(2)

Returning to the <unistd.h> header file, we have:

[[
#ifndef __USE_FILE_OFFSET64
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __THROW;
#else
# ifdef __REDIRECT_NTH
extern __off64_t __REDIRECT_NTH (lseek,
                                 (int __fd, __off64_t __offset, int __whence),
                                 lseek64);
# else
#  define lseek lseek64
# endif
#endif
#ifdef __USE_LARGEFILE64
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     __THROW;
#endif
]]

The name "lseek64" is exposed if _LARGEFILE64_SOURCE (which triggers
__USE_LARGEFILE64) is defined. That name was part of the so-called
Transitional Large FIle Systems (LFS) API (see page 105 in my book),
which existed to support the use of 64-bit file offsets on 32 bit
systems. It provided a set of interfaces with names of the form
"xxxxx64()" (e.g., "lseek64")) which provided for 64-bit offsets;
those names coexisted with the traditional 32-bit APIs (e.g.,
"lseek").

Alternatively, the LFS specified a macro, _FILE_OFFSET_BITS=64 (which
triggers __USE_FILE_OFFSET64) as another way of exposing 64-bit-offset
functionality on 32 bit systems. In this case, the traditional API
names (e.g., "lseek") are redirected to the 64-bit implementations
(e.g., "lseek64");

> In the kernel I only found the lseek, llseek, and 32_llseek

I'd ignore 32_llseek -- I guess that's an arch-specific equivalent of
_llseek/llseek.

> (as you can see in the patch).
> So if any other prototype needs to be updated, please do so.
> Especially, have a look at lseek64(3),
> which I suspect needs the same changes I propose in that patch.

I think that no changes to the types are needed in lseek64(3). But
maybe some of the info in this mail should be captured in that manual
page.

Thanks,

Michael

--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
