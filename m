Return-Path: <linux-man+bounces-1587-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E663D94A939
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 15:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15D811C22864
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 13:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80CCD20012A;
	Wed,  7 Aug 2024 13:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dNj1BXXA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC33200127
	for <linux-man@vger.kernel.org>; Wed,  7 Aug 2024 13:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723039141; cv=none; b=pfXZ4s4JNVjxqLzSJf/u9hr9izD5FrW3BqImFmdKDwZJ4FB+g2KZmbvwaKxVNSPwWlIymnZ8ZGYdH4nrOcqGWJ44uFTLpTrow6jfgNo/N1eSRz89h8HDj5J6VYdb6SjxdeI9TvAIrtYGPK3Uf4RcTi5TBUsk0vryXPj4oqg38iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723039141; c=relaxed/simple;
	bh=aiM2Ve33I3m8FGk4uFunK0Ahh9yNCwxBrDD0niTaygY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=STbTcjmYySSXcKUnbuQ0esEvmQwkz6OWUS4csvBTCgvmdz2ZBzKXte9l8HjuXjJ4jLNPJ7ZxXcIB2Z1a7q4H5lXldw6Dfw53Yuj+sCMutHc7/T0qHqDqwg2P0ylhZ/G2ftaFyGMtdx6j5HGWkLtvjaAuwMrdamW0PhZxWli3qfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dNj1BXXA; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7a103ac7be3so1306780a12.3
        for <linux-man@vger.kernel.org>; Wed, 07 Aug 2024 06:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723039139; x=1723643939; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c1E/lZRBQQCJngCXArPkk+mAj4kGX1qpx26ZNVR4NK4=;
        b=dNj1BXXAK1NUPeQZw5gqj1vDrjkbJc8umz3dJK87I98HqgtZOQyBB2i6qlhMba9D7o
         h8rvBIVcwpQgeLLxdXajSP3Bx3PcWxhjb+5crTixj1N4kGIN9eKWfWYTdpt46VxzV1Y/
         eswDgAq43ofn+Pfns1fB9nZVZdeN1S8VfDQlvpJanJWXWMYOH/DM4sIWkbm7egBfycZc
         P5M/amoTLxt6p9j6OMqwBNaZbeDBpq64ZajQ+KiYtRiiPZ6VkYGQ6lKb85Mhx1TH8PsP
         UgQg4JJaq3lzbBF679XsKu3xG+mwMoniH6RlFRUluipOqznGH5JhR3ZWtxum4TzLTIQd
         CSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723039139; x=1723643939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c1E/lZRBQQCJngCXArPkk+mAj4kGX1qpx26ZNVR4NK4=;
        b=Wcf7cveuy56cJGJXiQdjeInWFWHJC254ECEBX6+KVgb11ZPJZo3XggyX4xxpRkGJbt
         0pcVhTUdzSwcuL5UkDkUPfzUA8eaZ5Z3aduq6o6vNbQyA7mJXTyHupHW6tScVLoAYZyz
         ESXy5j/HMmY7Y6rxp3S5eKaJSV+BAv/Go14INkGAZHLr7i/6kpJBum8IvBm24iXAsiwF
         Dfcx81SvdzJcOhH/dc92871ovUC5Ei9aX7OLRsOpe3J3JqlhiAWZYrLUqrcjKPfIPw1/
         SV+/JS4ks8TB9zKpJInFXOY9C/WwuvWGCX1PQMAJjiFod8m0dWj1Uy0FSPaGlDzhV6PG
         ZRrg==
X-Gm-Message-State: AOJu0Yyr06C1xWqNxLydqv3FfGK3zXYPgLM63aUBqNf7NNFW+vQshAxZ
	uoJ4k9DV71/4Ih2fBceI/gMhKExbAGm/xcQn1kqyXoTFZ8SMp3nmQtDgsDsGWODIoVdCDcFRQDx
	mMunEt2Bq91jZf9g866Ziy5H/5BA=
X-Google-Smtp-Source: AGHT+IGiSUWa/JgrevASODnxsJ96CpMQbNvRI9Ri3xUSn/Vq/irXZ4pm/KueqDRPluGnrDitvh5xhFV3cwaQFATRb4Q=
X-Received: by 2002:a17:90a:d157:b0:2c4:dfa6:df00 with SMTP id
 98e67ed59e1d1-2cff93c89b4mr18548066a91.8.1723039138804; Wed, 07 Aug 2024
 06:58:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHGiy69M+TOOukpuOnkxY2bT4j=aSk5hP3fTRXsuiF-h3v=t4Q@mail.gmail.com>
 <geae7xuxzy5pdrn2uwozhyums7kv6l5lubj2p57o52ex675uk2@22pnucysmvoz>
In-Reply-To: <geae7xuxzy5pdrn2uwozhyums7kv6l5lubj2p57o52ex675uk2@22pnucysmvoz>
From: =?UTF-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Date: Wed, 7 Aug 2024 15:58:32 +0200
Message-ID: <CAHGiy69OQ78x42+6iE7HqAiOaPCscn8fs=VNaxFMNSR7Q9R-mw@mail.gmail.com>
Subject: Re: [PATCH] sigaction.2: Improve wording and add an example in the
 BUGS section
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Zack Weinberg <zackw@panix.com>, 
	Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alejandro,

On Wed, Aug 7, 2024 at 12:20=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Miko=C5=82aj,
>
> On Wed, Aug 07, 2024 at 12:07:57AM GMT, Miko=C5=82aj Ko=C5=82ek wrote:
> > This patch clears up the wording of the first part of the BUGS section
> > of the sigaction.2 man page.
> > Currently, it is very unclear when exactly the bug can occur, and
> > there is no example, which I aim to fix.
> >
> > I also attach the source code of a C program that,
>
> Please include the example program in the commit message.

I have updated the patch to include the code in the commit message. I
have also reorganised the code a bit, to be simpler and for the output
to be easier to understand. Here is the updated patch, I hope it will
be to your satisfaction:

From 6f80374c12ad5e4917e8af8d0814201b4a916a49 Mon Sep 17 00:00:00 2001
From: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
Date: Wed, 7 Aug 2024 13:14:21 +0200
Subject: [PATCH] sigaction.2: Improve wording and add an example in the BUG=
S
 section
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

This patch clears up the wording of the first part of the BUGS section
of the sigaction.2 man page. Currently, it is very unclear when
exactly the bug can occur, and there is no example, which I aim to
fix. The text of the patch is partially based on the BUGS section of
the signal.2 man page.

I also attach a C program that, when run on an x86 Linux computer,
shows that my example behaves like I say it does. The code runs the
int instruction for each value from 0 to 255 with all registers set to
0 to show that all fields of the siginfo_t besides si_signo and
si_code equal zero. The program is based on the attachment to bug
205831 on the kernel bugtracker which first dealt with this issue,
which you can find here:
https://bugzilla.kernel.org/show_bug.cgi?id=3D205831. This is the code
of the test program:

#define CR "\n\t"
#define _GNU_SOURCE 1

#include <stdbool.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>

static siginfo_t siginfo;

void handler(int sig, siginfo_t *info, void *ucontext) {
    ucontext_t *uc =3D (ucontext_t*) ucontext;
    const uint8_t *pc =3D (const uint8_t*) uc->uc_mcontext.gregs[REG_RIP];
    siginfo =3D *info;

    //skip the faulting instruction
    if(*pc =3D=3D 0xCC || *pc =3D=3D 0xF1)
        uc->uc_mcontext.gregs[REG_RIP] +=3D 1;
    else if(*pc =3D=3D 0xCD)
        uc->uc_mcontext.gregs[REG_RIP] +=3D 2;
    else
        ; //assume the PC has already been advanced over the fault
}

static __attribute__((noinline)) void call_int(unsigned char argument) {
    asm volatile(
        "leaq 1f(%%rip), %%rcx"
        CR "addq   %%rcx, %%rax"
        CR "xor    %%rbx, %%rbx"
        CR "xor    %%rcx, %%rcx"
        CR "xor    %%rdx, %%rdx"
        CR "xor    %%rsi, %%rsi"
        CR "xor    %%rdi, %%rdi"
        CR "xor    %%rbp, %%rbp"
        CR "xor    %%r8, %%r8"
        CR "xor    %%r9, %%r8"
        CR "xor    %%r10, %%r10"
        CR "xor    %%r11, %%r11"
        CR "xor    %%r12, %%r12"
        CR "xor    %%r13, %%r13"
        CR "xor    %%r14, %%r14"
        CR "xor    %%r15, %%r15"
        CR "call   *%%rax"
        CR "jmp    2f"
        CR ".p2align 3"
        "\n1:"
        CR ".irp   i,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15"
        CR ".irp   j,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15"
        CR "xor    %%rax, %%rax"
        CR ".byte  0xCD,(\\i*16 + \\j)"
        CR "ret"
        CR ".p2align 3"
        CR ".endr"
        CR ".endr"
        "\n2:"

        :
        : "a" (argument * 8)
        : "rbx", "rcx", "rdx", "rsi", "rdi",
          "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15"
    );
}

int main() {
    struct sigaction sa =3D { 0 };
    sa.sa_sigaction =3D &handler;
    sa.sa_flags =3D SA_SIGINFO | SA_RESTART;
    sigaction(SIGSEGV, &sa, 0);
    sigaction(SIGTRAP, &sa, 0);

    for(int i =3D 0; i < 256; i++) {
        call_int(i);

        bool others_zeroed =3D (
            siginfo.si_errno =3D=3D 0 &&
            siginfo.si_pid =3D=3D 0 &&
            siginfo.si_uid =3D=3D 0 &&
            siginfo.si_status =3D=3D 0 &&
            siginfo.si_utime =3D=3D 0 &&
            siginfo.si_stime =3D=3D 0 &&
            siginfo.si_value.sival_ptr =3D=3D 0 &&
            siginfo.si_value.sival_int =3D=3D 0 &&
            siginfo.si_int =3D=3D 0 &&
            siginfo.si_ptr =3D=3D 0 &&
            siginfo.si_overrun =3D=3D 0 &&
            siginfo.si_timerid =3D=3D 0 &&
            siginfo.si_addr =3D=3D 0 &&
            siginfo.si_band =3D=3D 0 &&
            siginfo.si_fd =3D=3D 0 &&
            siginfo.si_addr_lsb =3D=3D 0 &&
            siginfo.si_lower =3D=3D 0 &&
            siginfo.si_upper =3D=3D 0 &&
            siginfo.si_pkey =3D=3D 0 &&
            siginfo.si_call_addr =3D=3D 0 &&
            siginfo.si_syscall =3D=3D 0 &&
            siginfo.si_arch =3D=3D 0
        );

        printf("int $0x%02x: sig=3D%2d code=3D%04x others_zeroed=3D%i\n",
            i,
            siginfo.si_signo,
            siginfo.si_code,
            others_zeroed
        );
    }

    return 0;
}

Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
---
 man/man2/sigaction.2 | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
index df8826e71..dcd450ce9 100644
--- a/man/man2/sigaction.2
+++ b/man/man2/sigaction.2
@@ -1129,13 +1129,29 @@ .SS Undocumented
 See the relevant Linux kernel sources for details.
 This use is obsolete now.
 .SH BUGS
-When delivering a signal with a
+When delivering a signal resulting from a hardware exception with a
 .B SA_SIGINFO
 handler,
 the kernel does not always provide meaningful values
 for all of the fields of the
 .I siginfo_t
 that are relevant for that signal.
+For example, when the x86
+.I int
+instruction is called with a forbidden argument
+(any number other than 3 or 128), a
+.BR SIGSEGV
+signal is delivered, but the
+.I siginfo_t
+passed to the signal handler has all its fields besides
+.I si_signo
+and
+.I si_code
+set to zero, even if other fields should be set (as an example,
+.I si_addr
+should be non-zero for all
+.BR SIGSEGV
+signals).
 .P
 Up to and including Linux 2.6.13, specifying
 .B SA_NODEFER
--=20
2.46.0

>
> > when run on an x86
> > Linux computer, shows that my example behaves like I say it does. The
> > code runs the int instruction for each value from 0 to 255 with all
> > registers set to 0 to show what is contained in the siginfo_t returned
> > to the signal handler afterwards.
> >
> > The program is based on the attachment to bug 205831 on the kernel
> > Bugzilla, which first dealt with this issue, you can find that bug
> > report here: https://bugzilla.kernel.org/show_bug.cgi?id=3D205831. The
> > text of my contribution is also partially based on the BUGS section of
> > the signal.2 man page.
>
> Please CC the people that contributed in that discussion.
>
> Have a lovely night!
> Alex
>
>
> >
> > Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
> > ---
> >  man/man2/sigaction.2 | 18 +++++++++++++++++-
> >  1 file changed, 17 insertions(+), 1 deletion(-)
> >
> > diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> > index df8826e71..2b797355b 100644
> > --- a/man/man2/sigaction.2
> > +++ b/man/man2/sigaction.2
> > @@ -1129,13 +1129,29 @@ .SS Undocumented
> >  See the relevant Linux kernel sources for details.
> >  This use is obsolete now.
> >  .SH BUGS
> > -When delivering a signal with a
> > +When delivering a signal resulting from a hardware exception with a
> >  .B SA_SIGINFO
> >  handler,
> >  the kernel does not always provide meaningful values
> >  for all of the fields of the
> >  .I siginfo_t
> >  that are relevant for that signal.
> > +For example, when the x86
> > +.I int
> > +instruction is called with a forbidden argument
> > +(any number other than 3 or 128), a
> > +.BR SIGSEGV
> > +signal is delivered, but the
> > +.I siginfo_t
> > +passed to the signal handler has all its fields besides
> > +.I si_signo
> > +and
> > +.I si_code
> > +set to zero, even if other fields should be set (as an example,
> > +.I si_addr
> > +should be non-zero for all
> > +.BR SIGSEGV
> > +signals).
> >  .P
> >  Up to and including Linux 2.6.13, specifying
> >  .B SA_NODEFER
> > --
> > 2.46.0
>
>
>
> --
> <https://www.alejandro-colomar.es/>

