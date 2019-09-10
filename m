Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F3D05AE8EC
	for <lists+linux-man@lfdr.de>; Tue, 10 Sep 2019 13:15:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731132AbfIJLP5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Sep 2019 07:15:57 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:35281 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729270AbfIJLP5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Sep 2019 07:15:57 -0400
Received: from [148.69.85.38] (helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1i7e7l-0001zI-BD; Tue, 10 Sep 2019 11:15:53 +0000
Date:   Tue, 10 Sep 2019 13:15:52 +0200
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "Eric W. Biederman" <ebiederm@xmission.com>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, werner@almesberger.net,
        Al Viro <viro@ftp.linux.org.uk>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
Message-ID: <20190910111551.scam5payogqqvlri@wittgenstein>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
 <20190805103630.tu4kytsbi5evfrhi@mikami>
 <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
 <da747415-4c7a-f931-6f2e-2962da63c161@philippwendler.de>
 <CAKgNAkjS+x7aMVUiVSgCRwgi8rnukqJv=svtTARE-tt-oxQxWw@mail.gmail.com>
 <87r24piwhm.fsf@x220.int.ebiederm.org>
 <CAKgNAkhK2qBbz5aVY9VdK0UzvpZ=c7c7LWQ1MK2gu-rVKUz9_g@mail.gmail.com>
 <87ftl5donm.fsf@x220.int.ebiederm.org>
 <b8b9d8bd-e959-633f-b879-4bfe4eb0df23@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b8b9d8bd-e959-633f-b879-4bfe4eb0df23@gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Sep 10, 2019 at 12:27:27PM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Eric,
> 
> On 9/10/19 1:40 AM, Eric W. Biederman wrote:
> 
> [...]
> 
> >>> I have just spotted this conversation and I expect if you are going
> >>> to use this example it is probably good to document what is going
> >>> on so that people can follow along.
> >>
> >> (Sounds reasonable.)
> >>
> >>>>> chdir(rootfs)
> >>>>> pivot_root(".", ".")
> >>>
> >>> At this point the mount stack should be:
> >>> old_root
> >>> new_root
> >>> rootfs
> >>
> >> In this context, what is 'rootfs'? The initramfs? At least, when I
> >> examine /proc/PID/mountinfo. When I look at the / mount point in
> >> /proc/PID/mountinfo, I see just
> >>
> >>    old_root
> >>    new_root
> >>
> >> But nothing below 'new_root'. So, I'm a little puzzled.
> > 
> > I think that is because Al changed /proc/mounts to not display mounts
> > that are outside of your current root.  But yes there is typically
> > the initramfs of file system type rootfs on their.  Even when it isn't
> > used you have one.  Just to keep everything simple I presume.
> > 
> > I haven't double checked lately to be certain it is there but I expect
> > it is.
> > 
> >> By the way, why is 'old_root' stacked above 'new_root', do you know? I
> >> mean, in this scenario it turns out to be useful, but it's kind of the
> >> opposite from what I would have expected. (And if this was a
> >> deliverate design decision in pivot_root(), it was never made
> >> explicit.)
> > 
> > Oh.  It is absolutely explicit and part of the design and it has nothing
> > to do with this case.
> > 
> > The pivot_root system calls takes two parameters:  new_root and put_old.
> > 
> > In this case the old root is put on put_old (which is the new_root).
> > And new_root is made the current root.
> > 
> > The pivot_root code looks everything up before it moves anything.   With
> > the result it is totally immaterrial which order the moves actually
> > happen in the code.  Further it is pretty much necessary to look
> > everything up before things are moved because the definition of paths
> > change.
> > 
> > So it would actually be difficult to have pivot_root(.,.) to do anything
> > except what it does today.
> > 
> > 
> >>> With "." and "/" pointing to new_root.
> >>>
> >>>>> umount2(".", MNT_DETACH)
> >>>
> >>> At this point resolving "." starts with new_root and follows up the
> >>> mount stack to old-root.
> >>
> >> Okay.
> >>
> >>> Ordinarily if you unmount "/" as is happening above you then need to
> >>> call chroot and possibly chdir to ensure neither "/" nor "." point to
> >>> somewhere other than the unmounted root filesystem.  In this specific
> >>> case because "/" and "." resolve to new_root under the filesystem that is
> >>> being unmounted that all is well.
> >>
> >> s/that/then/ ?
> 
> Thanks for the further clarifications.
> 
> All: I plan to add the following text to the manual page:
> 
>        new_root and put_old may be the same  directory.   In  particular,
>        the following sequence allows a pivot-root operation without need‐
>        ing to create and remove a temporary directory:
> 
>            chdir(new_root);
>            pivot_root(".", ".");
>            umount2(".", MNT_DETACH);

Hm, should we mention that MS_PRIVATE or MS_SLAVE is usually needed
before the umount2()? Especially for the container case... I think we
discussed this briefly yesterday in person.

> 
>        This sequence succeeds because the pivot_root()  call  stacks  the
>        old root mount point (old_root) on top of the new root mount point
>        at /.  At that point, the calling  process's  root  directory  and
>        current  working  directory  refer  to  the  new  root mount point
>        (new_root).  During the subsequent umount()  call,  resolution  of
>        "."   starts  with  new_root  and then moves up the list of mounts
>        stacked at /, with the result that old_root is unmounted.
> 
> Look okay?
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
> _______________________________________________
> Containers mailing list
> Containers@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/containers
