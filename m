Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D8EC4E7497
	for <lists+linux-man@lfdr.de>; Mon, 28 Oct 2019 16:12:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390559AbfJ1PMi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Oct 2019 11:12:38 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:38000 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730015AbfJ1PMh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Oct 2019 11:12:37 -0400
Received: by mail-oi1-f193.google.com with SMTP id v186so6176084oie.5
        for <linux-man@vger.kernel.org>; Mon, 28 Oct 2019 08:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wXxhu/tmc9YP1XTfcQJ3HjAvQlCmqGJP256WPTj2XSc=;
        b=GJ40qGJD7TtbIgudDFm2N7LHOQ6aSoOljrrxXlqEik+9bXO7yJallt9amumZdHCmjG
         27n00ClQMzIia2m9uAlnK3x919OrGWy4dvA3Xp1pJJUzxWBIIZwvxmBpryE3+luDzYyq
         b8x8CaYNpg/Ya0dz6dBgKfc41xtBqIwIUMNVHhp1ncWHdN0rxm/9FplrQ64sV3AsycdO
         AkAmBf3pHs9hUKE9iRHFo5EEM1vKHq/iolqALxq8JXvSyZB1rgKMDHS+teXambVzbsnp
         7zLsscjgNQF6ZVIJu3TXD+HhwdAbPJfVw1QH9JGup9MKa3Ac8UhSRm3Yn7ZX6LRxdZYj
         8L7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wXxhu/tmc9YP1XTfcQJ3HjAvQlCmqGJP256WPTj2XSc=;
        b=JAqToRABgJ8NubeL7sOIprQ+VnkExqJOxOQHk3zoRnIruxIQ7HSph4oE1wxqNQJoTU
         3ZejFhSc76bU35/tYWx9B+LjHtVbf5wlSG4GxPu4GAJO7N2g8UIexD5YsBj/aVlicXhR
         D5iQu4oSE0zue/rwk6KHAy9XNTbUz9CFsRip1avNQ/GY3zpNZ4ueO0cfY+JPek2aXv0I
         m+3n6/xIA+HLI6u1HKDTWJladvxErqXax8x7W7pwNQT/jW8uGkbTXwNZ17S3MeEZV0KQ
         gpJWoYNSDwA1QRfKlEONjmXvyQ7OUtS+6qLTkR9LwUSotT4bM2gqx9Wj67pnedmVtfXn
         ZfCg==
X-Gm-Message-State: APjAAAXMW4H7/EgHUByeSNWOs50o0ZtZuNoMbCl/YsmsksJwkHIJb1OK
        W6yP5V0FE0xqSd6BvikvJl5ZdW+g/yxfpOZBe1TSxw==
X-Google-Smtp-Source: APXvYqxIzAhUAQY2YqVi0DY+JV//TbVaQUHYNtEBARj1hmmiyo+CWdT7zgmtQj1uFTHVHbc9HcDYJREjaSWSkiT75mw=
X-Received: by 2002:a05:6808:b30:: with SMTP id t16mr367143oij.157.1572275556022;
 Mon, 28 Oct 2019 08:12:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkjo2WHq+zESU1iuCHJJ0x-fTNrakS9-d1+BjzUuV2uf2Q@mail.gmail.com>
In-Reply-To: <CAKgNAkjo2WHq+zESU1iuCHJJ0x-fTNrakS9-d1+BjzUuV2uf2Q@mail.gmail.com>
From:   Jann Horn <jannh@google.com>
Date:   Mon, 28 Oct 2019 16:12:09 +0100
Message-ID: <CAG48ez3q=BeNcuVTKBN79kJui4vC6nw0Bfq6xc-i0neheT17TA@mail.gmail.com>
Subject: Re: For review: documentation of clone3() system call
To:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>
Cc:     Christian Brauner <christian@brauner.io>,
        lkml <linux-kernel@vger.kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Florian Weimer <fweimer@redhat.com>,
        Oleg Nesterov <oleg@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
        David Howells <dhowells@redhat.com>,
        Pavel Emelyanov <xemul@virtuozzo.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Adrian Reber <adrian@lisas.de>,
        Andrei Vagin <avagin@gmail.com>,
        Linux API <linux-api@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Oct 25, 2019 at 6:59 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
> I've made a first shot at adding documentation for clone3(). You can
> see the diff here:
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
faa0e55ae9e490d71c826546bbdef954a1800969
[...]
>    clone3()
>        The  clone3() system call provides a superset of the functionality
>        of the older clone() interface.  It also provides a number of  API
>        improvements,  including: space for additional flags bits; cleaner
>        separation in the use of various arguments;  and  the  ability  to
>        specify the size of the child's stack area.

You might want to note somewhere that its flags can't be
seccomp-filtered because they're stored in memory, making it
inappropriate to use in heavily sandboxed processes.

>            struct clone_args {
>                u64 flags;        /* Flags bit mask */
>                u64 pidfd;        /* Where to store PID file descriptor
>                                     (int *) */
>                u64 child_tid;    /* Where to store child TID,
>                                     in child's memory (int *) */
>                u64 parent_tid;   /* Where to store child TID,
>                                     in parent's memory (int *) */
>                u64 exit_signal;  /* Signal to deliver to parent on
>                                     child termination */
>                u64 stack;        /* Pointer to lowest byte of stack */
>                u64 stack_size;   /* Size of stack */
>                u64 tls;          /* Location of new TLS */
>            };
>
>        The size argument that is supplied to clone3() should be  initial=
=E2=80=90
>        ized  to  the  size of this structure.  (The existence of the size
>        argument permits future extensions to the clone_args structure.)
>
>        The stack for the child process is  specified  via  cl_args.stack,
>        which   points   to  the  lowest  byte  of  the  stack  area,  and

Here and in the comment in the struct above, you say that .stack
"points to the lowest byte of the stack area", but isn't that
architecture-dependent? For most architectures, I think it should
instead be "is the initial stack pointer", with the exception of IA64
(and maybe others, I'm not sure). For example, on X86, when launching
a thread with an initially empty stack, it points directly *after* the
end of the stack area.

>        cl_args.stack_size, which specifies  the  size  of  the  stack  in
>        bytes.   In the case where the CLONE_VM flag (see below) is speci=
=E2=80=90

stack_size is ignored on most architectures.

>        fied, a stack must be explicitly allocated and specified.   Other=
=E2=80=90
>        wise,  these  two  fields  can  be  specified as NULL and 0, which
>        causes the child to use the same stack area as the parent (in  the
>        child's own virtual address space).
[...]
>    Equivalence between clone() and clone3() arguments
>        Unlike  the  older  clone()  interface, where arguments are passed
>        individually, in the newer clone3() interface  the  arguments  are
>        packaged  into  the clone_args structure shown above.  This struc=
=E2=80=90
>        ture allows for a superset  of  the  information  passed  via  the
>        clone() arguments.
>
>        The following table shows the equivalence between the arguments of
>        clone() and the fields in  the  clone_args  argument  supplied  to
>        clone3():
>
>               clone()         clone(3)        Notes
>                               cl_args field
>               flags & ~0xff   flags
>               parent_tid      pidfd           See CLONE_PIDFD
>               child_tid       child_tid       See CLONE_CHILD_SETTID
>               parent_tid      parent_tid      See CLONE_PARENT_SETTID
>               flags & 0xff    exit_signal
>               stack           stack
>
>               ---             stack_size

(except that on ia64, stack_size also exists in clone2(), and if
you're not on ia64, stack_size doesn't do anything, at least on X86,
so showing them side by side like this doesn't really make sense)
