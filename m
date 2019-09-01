Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5190BA4C59
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2019 23:43:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729031AbfIAVne (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Sep 2019 17:43:34 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:41280 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728773AbfIAVne (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Sep 2019 17:43:34 -0400
Received: by mail-pl1-f196.google.com with SMTP id m9so5698497pls.8
        for <linux-man@vger.kernel.org>; Sun, 01 Sep 2019 14:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8hZfyyQ1C4B/fjWBGblu5SxOUCXjlcgV2UHBCoGE10k=;
        b=e3QVldueX7TYdpoLzcuzb9J6fiGTtSRdhKkyWN3ajlGD8BSg1tewh6y/H1aOjET7tZ
         ScqDsjeS3ROYsXslLnG3iqZboI1MxyvtZT1Siguq5bBZ70xYDbRSsP5hwEgdgXBGvUuF
         l8TNhs23hdiRsZtV7abkIMyl0qiGCSRwFM6z56EQspDfcYppLkro9Py2J1pK4CWvvCkM
         2FQhJN+/oQHqvaoCCqaINMdyaI6E4nuKdM/nYAShfGe7gFuD5EfwWBCvj7l5+lopdcWP
         FkgJC64NWK/ObR/x9Kc0IPsFuU5EO6JIt4afuE9zZxmJw++386HbiLFwmmRdRfrfv8De
         AerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8hZfyyQ1C4B/fjWBGblu5SxOUCXjlcgV2UHBCoGE10k=;
        b=hnO0Wl3fziJlwzfXsuUNZmr57g/JJOEsDuMrUDwnE/18dOoeVsZ/BVDIjcvg4/NAHk
         maONxT6cUGJKHO0M9mMetIRu1he58mLjoEW38blF9a+8uk5Po1YfqDc1YdOnZqhMW8O/
         ScChjnqm0OZY53eVSxewfFMnTebjr2FBe7zZhBbI0TUi1ip3oE/C3BHmiHqR00wBKILl
         us7kg2QIEOEmBCLWrksGF2rLFJB3cGFf5V+uIaowcmVErbWJ77rRpWQqLWgik05ueaaZ
         eonog3n6+mRMzT4WHmC3DgnIJJMHE6mFKMXBeEk9eiNKxIZUDgU0QxXu7uVfccc8TD/Z
         56Yw==
X-Gm-Message-State: APjAAAVs7GRgsExRcJlGvOjXdEujSaiO1hMvC973CrJN2bUVLAx9X7Vp
        WjyWGyaig6emDY4NyUcBpsDy/9pFb8BFX00C+Ec=
X-Google-Smtp-Source: APXvYqwyCZIyxU6YfaF4jW6fSwn1PfQImCasS4gIPZJ6WRrEzO9JCcW0MzmcqS+7jHDef1yIJlh6j9WQl9R+sS93SIg=
X-Received: by 2002:a17:902:41:: with SMTP id 59mr27619322pla.268.1567374213889;
 Sun, 01 Sep 2019 14:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAAAu3XtbB=Y0s2emVJoj5Vt4UXSjvk_3EBw_f=gRKssVxbK0=A@mail.gmail.com>
 <CAAAu3XtsLqvVEnMO5A_LMEF5qP64pJFB2+aey4yhCnhvY_F79Q@mail.gmail.com> <20190623171706.GA23943@altlinux.org>
In-Reply-To: <20190623171706.GA23943@altlinux.org>
From:   Naveen Iyer <iyernaveenr@gmail.com>
Date:   Sun, 1 Sep 2019 14:43:22 -0700
Message-ID: <CAAAu3Xt6S5ODyn_d1Yu-H8q89zTYfSicMfhKsGAgVzhLo2XGbg@mail.gmail.com>
Subject: Re: [BUG] [man syscall] x86_64 error code / return value must be
 placed in rdi
To:     "Dmitry V. Levin" <ldv@altlinux.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Jun 23, 2019 at 10:17 AM Dmitry V. Levin <ldv@altlinux.org> wrote:
>
> Hi,
>
> On Sun, Jun 23, 2019 at 09:03:31AM -0700, Naveen Iyer wrote:
> > Hi,
> >
> > As suggested by
> > https://www.kernel.org/doc/man-pages/reporting_bugs.html , I looked up
> > the online man page as well:
> > http://man7.org/linux/man-pages/man2/syscall.2.html
> >
> > In the table in "Architecture calling conventions" section:
> > arch/ABI    instruction           syscall #  retval  error    Notes
> > =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80
> > x86-64       syscall                   rax        rax        -        [=
5]
> >
> > Retval must be placed in rdi
>
> Why?
>
> > as per the following link:
> > https://w3challs.com/syscalls/?arch=3Dx86_64
>
> This link doesn't claim that.
>
The link states that rdi contains the int error_code. I am able to
return whatever int I want to return by placing the int value of my
choice in rdi.
Why do you say that this link doesn't claim that when it clearly does?
Am I misreading it?

> > }
> >
> > Step 2) Compile and execute:
> > $ gcc -nostdlib -c startup.c
> > $ ld startup.o -o startup
> > $ ./startup
> > $ echo $?
> > 97
>
> So your test invokes "exit" syscall with 97 as its first argument.
> The return value of this syscall has no meaning because it does not retur=
n.
> Most of syscalls do return and their return value is in %rax on x86_64.
I am checking for the program's return status and not the return of
syscall itself.
