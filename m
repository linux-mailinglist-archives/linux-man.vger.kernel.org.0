Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8D8DADB76
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2019 16:48:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728035AbfIIOsQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Sep 2019 10:48:16 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:39928 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726070AbfIIOsP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Sep 2019 10:48:15 -0400
Received: by mail-ed1-f67.google.com with SMTP id u6so13212080edq.6;
        Mon, 09 Sep 2019 07:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=N/yK7JSjBp5v601PHMThZ4kXYL7w9+ErKdA50finnzs=;
        b=bxgeopkWx4dgutSnoqzFRdHuelMTcnnPN5ictFDJdvPIf2qSj+B18TTwelEnaoXcfg
         PQL8FRPQG+8t5Wv3bPpi39jDNQSCKaP77u5d8YRfLA61QY9eIWZYpRc9Poz1cVaW708K
         mSy+nfX0fOtIzz538icU0kicTAnv/E5n84R9FmVAJLk5Lkby4cLkXyn+eewO/mvx5Zn2
         cUgWAVCj3jtcn105wXtUGIbWC4JdGQJFOFKjCk/eOt9JxKFBlkyJXGYHZT3Yg3EaJKSe
         Ert0T6Xw+enu/Gx0fgxTZdAVJl7V31d4nki+CBm5STPE/qktgeNGGWZWTYQ6FnhwUSrn
         voOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=N/yK7JSjBp5v601PHMThZ4kXYL7w9+ErKdA50finnzs=;
        b=h2X9Pctf69T/Ds/PDtlw2USyY2YjbG2SEJYOyV6VOp9vOyGFF2WJhgwSzvlvHTsB0M
         abPIl3A39oxTFJBeZOc8oAsJ6m/T2Ad7MXFl6y1NH+Eofl54HGlwPzYVQY5ClZKMUA/Z
         qhqW2IkJ7nW9jBrlxDIlpog3EgkFVgJwSMRgxZzzWJJ/ZSmugcSZu6O93IsxUH5uRqjm
         aIRTyAFk2TwWUTcBpDhGmkLlFKoHeCTWtAdAS3p3yTvmSrNsevDQZFNGJ/z6v2xbI5SA
         SgJveYV5u1YlbarbquRO09siMW0s9laTXn6sR8IzDgQZSkAOTP8++/FZpxu9geD7cg7p
         F4lQ==
X-Gm-Message-State: APjAAAWpzokIttJ9VH9RNf6V2/tefUlHaI1quQgXO+f8vLPU54h4tQJw
        yXaNkUFV/rZ7/xEju7Iyye7BqCQ13qhUVMXKnuE=
X-Google-Smtp-Source: APXvYqyGDn7Dg9+KvRz1jvEr97VRxWaMUb5uBidER0RktI7wCJlWaiWg6lg+W5FvLYd5xiQDVDO+mMYAgtiIQiBdvOs=
X-Received: by 2002:a50:eb93:: with SMTP id y19mr17985975edr.65.1568040493269;
 Mon, 09 Sep 2019 07:48:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
 <20190805103630.tu4kytsbi5evfrhi@mikami> <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
 <da747415-4c7a-f931-6f2e-2962da63c161@philippwendler.de> <CAKgNAkjS+x7aMVUiVSgCRwgi8rnukqJv=svtTARE-tt-oxQxWw@mail.gmail.com>
 <87r24piwhm.fsf@x220.int.ebiederm.org>
In-Reply-To: <87r24piwhm.fsf@x220.int.ebiederm.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 9 Sep 2019 16:48:01 +0200
Message-ID: <CAKgNAkhK2qBbz5aVY9VdK0UzvpZ=c7c7LWQ1MK2gu-rVKUz9_g@mail.gmail.com>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
To:     "Eric W. Biederman" <ebiederm@xmission.com>
Cc:     Philipp Wendler <ml@philippwendler.de>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, werner@almesberger.net,
        Al Viro <viro@ftp.linux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

Thanks for chiming in; I should have thought to CC you at the start. I
have a question or two, below.

On Mon, 9 Sep 2019 at 12:40, Eric W. Biederman <ebiederm@xmission.com> wrote:
>
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>
> > Hello Philipp,
> >
> > On Tue, 6 Aug 2019 at 10:12, Philipp Wendler <ml@philippwendler.de> wrote:
> >>
> >> Hello Michael, hello Aleksa,
> >>
> >> Am 05.08.19 um 14:29 schrieb Michael Kerrisk (man-pages):
> >>
> >> > On 8/5/19 12:36 PM, Aleksa Sarai wrote:
> >> >> On 2019-08-01, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> >> >>> I'd like to add some documentation about the pivot_root(".", ".")
> >> >>> idea, but I have a doubt/question. In the lxc_pivot_root() code we
> >> >>> have these steps
> >> >>>
> >> >>>         oldroot = open("/", O_DIRECTORY | O_RDONLY | O_CLOEXEC);
> >> >>>         newroot = open(rootfs, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
> >> >>>
> >> >>>         fchdir(newroot);
> >> >>>         pivot_root(".", ".");
> >> >>>
> >> >>>         fchdir(oldroot);      // ****
> >> >>>
> >> >>>         mount("", ".", "", MS_SLAVE | MS_REC, NULL);
> >> >>>         umount2(".", MNT_DETACH);
> >> >>
> >> >>>         fchdir(newroot);      // ****
> >> >>
> >> >> And this one is required because we are in @oldroot at this point, due
> >> >> to the first fchdir(2). If we don't have the first one, then switching
> >> >> from "." to "/" in the mount/umount2 calls should fix the issue.
> >> >
> >> > See my notes above for why I therefore think that the second fchdir()
> >> > is also not needed (and therefore why switching from "." to "/" in the
> >> > mount()/umount2() calls is unnecessary.
> >> >
> >> > Do you agree with my analysis?
> >>
> >> If both the second and third fchdir are not required,
> >> then we do not need to bother with file descriptors at all, right?
> >
> > Exactly.
> >
> >> Indeed, my tests show that the following seems to work fine:
> >>
> >> chdir(rootfs)
> >> pivot_root(".", ".")
> >> umount2(".", MNT_DETACH)
> >
> > Thanks for the confirmation, That's also exactly what I tested.
> >
> >> I tested that with my own tool[1] that uses user namespaces and marks
> >> everything MS_PRIVATE before, so I do not need the mount(MS_SLAVE) here.
> >>
> >> And it works the same with both umount2("/") and umount2(".").
> >
> > Yes.
> >
> >> Did I overlook something that makes the file descriptors required?
> >
> > No.
> >
> >> If not, wouldn't the above snippet make sense as example in the man page?
> >
> > I have exactly that snippet in a pending change for the manual page :-).
>
> I have just spotted this conversation and I expect if you are going
> to use this example it is probably good to document what is going
> on so that people can follow along.

(Sounds reasonable.)

> >> chdir(rootfs)
> >> pivot_root(".", ".")
>
> At this point the mount stack should be:
> old_root
> new_root
> rootfs

In this context, what is 'rootfs'? The initramfs? At least, when I
examine /proc/PID/mountinfo. When I look at the / mount point in
/proc/PID/mountinfo, I see just

   old_root
   new_root

But nothing below 'new_root'. So, I'm a little puzzled.

By the way, why is 'old_root' stacked above 'new_root', do you know? I
mean, in this scenario it turns out to be useful, but it's kind of the
opposite from what I would have expected. (And if this was a
deliverate design decision in pivot_root(), it was never made
explicit.)

> With "." and "/" pointing to new_root.
>
> >> umount2(".", MNT_DETACH)
>
> At this point resolving "." starts with new_root and follows up the
> mount stack to old-root.

Okay.

> Ordinarily if you unmount "/" as is happening above you then need to
> call chroot and possibly chdir to ensure neither "/" nor "." point to
> somewhere other than the unmounted root filesystem.  In this specific
> case because "/" and "." resolve to new_root under the filesystem that is
> being unmounted that all is well.

s/that/then/ ?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
