Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 707EB1A643E
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2020 10:41:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727787AbgDMIlX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Apr 2020 04:41:23 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:36327 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727770AbgDMIlW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Apr 2020 04:41:22 -0400
Received: by mail-ed1-f67.google.com with SMTP id i7so11106092edq.3
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 01:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=gdqJRJMShfNwubAwl7ncVb9NGq8ixEs4ncvwdKNl05s=;
        b=BayzDbB+nwLLP9++dHefYttNnn0X4m/QngBZ8DO0urmZg9QprzA4GexWyKdljqBDPr
         W0tOKQAMUHprZfDp7hvyMgASb9r6/S2l+n1Ggz2bE0WoENsvW2P8gqMDYobMsISw/Ole
         w0ebvRwbThO800zZpLPtZq/G66gJDJ7a/Z6+BRQti1+NH4Sd9kC6VVjxd5KBmF4KKqpU
         MH6xta6j9MJcVIHVEj+AlkKQEZVN9lWAgO7dB9MXIGLsFV/gqcEbRaV4cFY8H6z9F/L6
         Et8dq9oB8bHeFibbHcIztdQZAeZ2Mw26WpW2aup46dlVDFnvNPrEd4Y/Ffc/2Wtnwii6
         dMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=gdqJRJMShfNwubAwl7ncVb9NGq8ixEs4ncvwdKNl05s=;
        b=nVpChApy+3ONH6eN9FGuHKS563h71zUisAQg7gOmTPX3QhmXzE5fxK5y+Q4YTDoBh1
         6snap40eGlcOAz/l36D5er4EQn9YY6pPxf7+8dnTQwXZvLGfSQKb3sX6SbhfWrvwSwsV
         O5/Ru1uWlbwQzvlA0+UO4XQ3lqqlO/0ndzoOs8fmzYShmGzb5q4vf+i3PdfC1uWw7W5A
         5MP7jC1sF4yDFijU1dvlsJ9aa6k8EoNJDo6nVXjfGdKuOLcwJfKwWITKhBJtY/wsmV0E
         mdwAyUhplJJ0uKtVT4rBvk/HUuTfVyu/lywy+gZDJSMRH9mqUO9xDBiNx1ifDX6z4VbS
         hE8Q==
X-Gm-Message-State: AGi0Pubpyg9mZ7DcBTYDTSCXH5N8TcaeAwpx5Il2n3Ibfz3x8Oua13yo
        7KRcdjEoYOc8byVukSfiJG1qX6hCRij+C26o6uM=
X-Google-Smtp-Source: APiQypK5OM7JLxLQiabpYrKDUKVLi3nLOyV63ZyYgFJ1H9gdmXePMCdBPjbu4W9snXSyRTqD4wrlC0e460ehZlVmM2s=
X-Received: by 2002:a17:906:54cd:: with SMTP id c13mr14410104ejp.307.1586767279742;
 Mon, 13 Apr 2020 01:41:19 -0700 (PDT)
MIME-Version: 1.0
References: <CABpewhFEkb4wMZ=nH8HrgTQ0N_LfNVMvJbXu5eJ37EzBzz0xdw@mail.gmail.com>
 <20180903174229.GA22027@altlinux.org>
In-Reply-To: <20180903174229.GA22027@altlinux.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 13 Apr 2020 10:41:08 +0200
Message-ID: <CAKgNAkh==1hdH+UcJpn8bdY7axX_ZpX95tK-75_m2UxHEVgaKg@mail.gmail.com>
Subject: Re: [patch] ptrace.2: Document PTRACE_SET_SYSCALL
To:     "Joseph C. Sible" <josephcsible@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "Dmitry V. Levin" <ldv@altlinux.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dmitry,

On Mon, 3 Sep 2018 at 19:42, Dmitry V. Levin <ldv@altlinux.org> wrote:
>
> On Mon, Sep 03, 2018 at 01:26:15PM -0400, Joseph C. Sible wrote:
> > Signed-off-by: Joseph C. Sible <josephcsible@gmail.com>
> > ---
> >  man2/ptrace.2 | 23 ++++++++++++++++-------
> >  1 file changed, 16 insertions(+), 7 deletions(-)
> >
> > diff --git a/man2/ptrace.2 b/man2/ptrace.2
> > index aea63d2..69699cc 100644
> > --- a/man2/ptrace.2
> > +++ b/man2/ptrace.2
> [...]
> > @@ -735,6 +728,22 @@ argument is treated as for
> >  .RI ( addr
> >  is ignored.)
> >  .TP
> > +.BR PTRACE_SET_SYSCALL " (since Linux 2.6.16)"
> > +.\" commit 3f471126ee53feb5e9b210ea2f525ed3bb9b7a7f
> > +When in syscall-enter-stop, change the number of the syscall about to
> > +be executed to the number specified in the
> > +.I data
> > +argument. The
> > +.I addr
> > +argument is ignored. This request is currently
> > +.\" As of 4.19-rc2
> > +supported only on arm (and arm64, though only for backwards compatibility),
> > +.\" commit 27aa55c5e5123fa8b8ad0156559d34d7edff58ca
> > +but most other architectures have other means of accomplishing this
> > +(usually by changing the register that the userland code passed the
> > +syscall number in).
> > +.\" see change_syscall in tools/testing/selftests/seccomp/seccomp_bpf.c
>
> I suggest replacing the reference to that huge file with a reference to
> syscall(2) manpage that contains more detailed information in a much more
> readable form.

I'm not too worried about this, since the reference is just a comment
in the page source, but I doiid also include your suggestion of
strace's linux/*/set_scno.c files in comment in the page source.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
