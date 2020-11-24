Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC6392C2555
	for <lists+linux-man@lfdr.de>; Tue, 24 Nov 2020 13:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732479AbgKXMHW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Nov 2020 07:07:22 -0500
Received: from mail.kernel.org ([198.145.29.99]:47858 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729172AbgKXMHW (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 24 Nov 2020 07:07:22 -0500
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E65882083E;
        Tue, 24 Nov 2020 12:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606219641;
        bh=rx8W+sC4G+tM3j+KvfVJeDHAi7n5iz4DUaSf+4YMG0E=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=cRZrmG9JK1S4GuqvmQ1WSh/UGHPZMfb+MiTwGgeah95ugW08GPN7A8GFjSPe+ys4h
         PZEErrpd1b/F0kztnopn3hViNX9INXaABPOgzab3C1bXOIa6OeEXx0m3d8wXX10xRp
         em6SIOzF7bDSMrQKIxrT5dHuKO21TsXC8qo93hzM=
Received: by mail-lf1-f54.google.com with SMTP id t6so12393046lfl.13;
        Tue, 24 Nov 2020 04:07:20 -0800 (PST)
X-Gm-Message-State: AOAM531Dm10CyIR0fbufVUDdzv27E9Ld2El6l99cXq3gn9BjEmb0DL3H
        F8y2JJQnz9qRdU5JWpzqpknz784/r52KVOKrSow=
X-Google-Smtp-Source: ABdhPJzxn1FfqOIoyLPB8Smgg5MbIytX2ON8eMphwMNwPK+pk4fbdiRUIFIa7LQf9zLcv1Ip5om4doDzvsC4N0mTaSs=
X-Received: by 2002:a19:fc0f:: with SMTP id a15mr1551270lfi.248.1606219639088;
 Tue, 24 Nov 2020 04:07:19 -0800 (PST)
MIME-Version: 1.0
References: <014e670b-2a11-3deb-4e7e-bfe9defd8597@gmail.com> <c669c780-f6e8-bd2a-e6ec-0a5960b7d7d8@gmail.com>
In-Reply-To: <c669c780-f6e8-bd2a-e6ec-0a5960b7d7d8@gmail.com>
From:   Guo Ren <guoren@kernel.org>
Date:   Tue, 24 Nov 2020 20:07:07 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQPai9k6XqqStbvk0waF+tmMQm9PMMZe3T8m6ioAjdTFA@mail.gmail.com>
Message-ID: <CAJF2gTQPai9k6XqqStbvk0waF+tmMQm9PMMZe3T8m6ioAjdTFA@mail.gmail.com>
Subject: Re: set_thread_area.2: csky architecture undocumented
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-csky@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thx Michael & Alejandro,

Yes, the man page has no csky's.

C-SKY have abiv1 and abiv2
For abiv1: There is no register for tls saving, We use trap 3 to got
tls and use set_thread_area to init ti->tp_value.
For abiv2: The r31 is the tls register. We could directly read r31 to
got r31 and use set_thread_area to init reg->tls value.

In glibc:
# ifdef __CSKYABIV2__
/* Define r31 as thread pointer register.  */
#  define READ_THREAD_POINTER() \
        mov r0, r31;
# else
#  define READ_THREAD_POINTER() \
        trap 3;
# endif

/* Code to initially initialize the thread pointer.  This might need
   special attention since 'errno' is not yet available and if the
   operation can cause a failure 'errno' must not be touched.  */
# define TLS_INIT_TP(tcbp) \
  ({ INTERNAL_SYSCALL_DECL (err);                                       \
     long result_var;                                                   \
     result_var = INTERNAL_SYSCALL (set_thread_area, err, 1,            \
                    (char *) (tcbp) + TLS_TCB_OFFSET);                  \
     INTERNAL_SYSCALL_ERROR_P (result_var, err)                         \
       ? "unknown error" : NULL; })

In kernel:
SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
{
        struct thread_info *ti = task_thread_info(current);
        struct pt_regs *reg = current_pt_regs();

        reg->tls = addr;
        ti->tp_value = addr;

        return 0;
}

Any comments are welcome :)


On Tue, Nov 24, 2020 at 5:51 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hi Alex,
>
> On 11/23/20 10:31 PM, Alejandro Colomar (man-pages) wrote:
> > Hi Michael,
> >
> > SYNOPSIS
> >        #include <linux/unistd.h>
> >
> >        #if defined __i386__ || defined __x86_64__
> >        # include <asm/ldt.h>
> >
> >        int get_thread_area(struct user_desc *u_info);
> >        int set_thread_area(struct user_desc *u_info);
> >
> >        #elif defined __m68k__
> >
> >        int get_thread_area(void);
> >        int set_thread_area(unsigned long tp);
> >
> >        #elif defined __mips__
> >
> >        int set_thread_area(unsigned long addr);
> >
> >        #endif
> >
> >        Note: There are no glibc wrappers for these system  calls;  see
> >        NOTES.
> >
> >
> > $ grep -rn 'SYSCALL_DEFINE.*et_thread_area'
> > arch/csky/kernel/syscall.c:6:
> > SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
> > arch/mips/kernel/syscall.c:86:
> > SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
> > arch/x86/kernel/tls.c:191:
> > SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, u_info)
> > arch/x86/kernel/tls.c:243:
> > SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, u_info)
> > arch/x86/um/tls_32.c:277:
> > SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, user_desc)
> > arch/x86/um/tls_32.c:325:
> > SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, user_desc)
> >
> >
> > See kernel commit 4859bfca11c7d63d55175bcd85a75d6cee4b7184
> >
> >
> > I'd change
> > -      #elif defined __mips__
> > +      #elif defined(__mips__ || __csky__)
> >
> > and then change the rest of the text to add csky when appropriate.
> > Am I correct?
>
> AFAICT, you are correct. I think the reason that csky is missing is
> that the architecture was added after this manual pages was added.
>
> Thanks,
>
> Michael
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/



--
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/
