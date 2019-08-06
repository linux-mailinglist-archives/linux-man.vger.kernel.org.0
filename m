Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D45CD83120
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2019 14:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728056AbfHFMD1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Aug 2019 08:03:27 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:40057 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726092AbfHFMD0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Aug 2019 08:03:26 -0400
Received: by mail-ed1-f67.google.com with SMTP id k8so82026365eds.7;
        Tue, 06 Aug 2019 05:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=0ibbfjjlcjqJhBjocgI23MMIU0ZjpMBB8zJJ1s3Y/U8=;
        b=Vg2eXa17xUoxRlChCoci37B6L/lyFDQ9plgCkdnEBxPZZckdHS7JzDElMclSVP4BCs
         6zMFs6pqODtDeABCJeeU8KejTPacxF2bnpBiWL0zZ4WuZHTbI3AiQgRv+9IuUww2QfGA
         vkFHmcU2hTkcqElqT7JuyGeYI0KDIFC76+jKny/eH/HHqDFxyn9fAQhfAmDTKr9BVPlk
         rDlITcAs+hZFUgu85dxCcJnGdZJTcyYd2Ied31JG7/FFawFT2gZyh+dqq3tGpSdMejCL
         8avIearjdAdvw8Xvg87WzqmymgZWriEhz/yPMnrZJgCNILb0RwDD6/vb98/taFJdtVwF
         +D3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=0ibbfjjlcjqJhBjocgI23MMIU0ZjpMBB8zJJ1s3Y/U8=;
        b=pK7PU4n0vhfSPZ+7jQClH+K9xt8lWRW26LSzbrNvb/lqWjIwX9aosSnUL2UfhvT9Np
         eBXaZ23yVhSBWFmwORpvFcuE151RSQXWKd4lPdkAJZJ3HM7LSSGMfNcd7ejKnMpYD9A+
         YVVsG07TuVvCtFDc8oaPeZV90Kk9Rr+QiKLAM4Su/cg5Bouv2M3lnBPoqbzelsaFjc9f
         GLjKz3lHXGvAUPhAIqjL4WW3MhmAxgzgArQPxaafeLE4Fgd/5ELFSbQtiKBhB/0p9/SJ
         ddLBSTQMy8NWRM8Hj5Rz91SHGjy6aTY+5/b5AouZY2QFW5Exp5p6dgx2YyxxjvtseXJK
         CTdw==
X-Gm-Message-State: APjAAAXUQVqF+Vq0wruIN95YAS8Sz5KNkiTOUMd5HLqQtK81ndk+W6rv
        8fd7pYvnCZ/IiCyuTT5Efen5X9DaODJswz2K/2s=
X-Google-Smtp-Source: APXvYqw1I4EIWuPevu8wlirFV9J2GRKXYhv53MxSJBZOnAKpdcJeuHzCogMPbneXuIRWGHA9eGhBF1r/1dMNvJ8UrqA=
X-Received: by 2002:a17:906:154f:: with SMTP id c15mr2756640ejd.268.1565093005065;
 Tue, 06 Aug 2019 05:03:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
 <20190805103630.tu4kytsbi5evfrhi@mikami> <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
 <da747415-4c7a-f931-6f2e-2962da63c161@philippwendler.de>
In-Reply-To: <da747415-4c7a-f931-6f2e-2962da63c161@philippwendler.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 6 Aug 2019 14:03:13 +0200
Message-ID: <CAKgNAkjS+x7aMVUiVSgCRwgi8rnukqJv=svtTARE-tt-oxQxWw@mail.gmail.com>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
To:     Philipp Wendler <ml@philippwendler.de>
Cc:     Aleksa Sarai <asarai@suse.de>,
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

Hello Philipp,

On Tue, 6 Aug 2019 at 10:12, Philipp Wendler <ml@philippwendler.de> wrote:
>
> Hello Michael, hello Aleksa,
>
> Am 05.08.19 um 14:29 schrieb Michael Kerrisk (man-pages):
>
> > On 8/5/19 12:36 PM, Aleksa Sarai wrote:
> >> On 2019-08-01, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> >>> I'd like to add some documentation about the pivot_root(".", ".")
> >>> idea, but I have a doubt/question. In the lxc_pivot_root() code we
> >>> have these steps
> >>>
> >>>         oldroot = open("/", O_DIRECTORY | O_RDONLY | O_CLOEXEC);
> >>>         newroot = open(rootfs, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
> >>>
> >>>         fchdir(newroot);
> >>>         pivot_root(".", ".");
> >>>
> >>>         fchdir(oldroot);      // ****
> >>>
> >>>         mount("", ".", "", MS_SLAVE | MS_REC, NULL);
> >>>         umount2(".", MNT_DETACH);
> >>
> >>>         fchdir(newroot);      // ****
> >>
> >> And this one is required because we are in @oldroot at this point, due
> >> to the first fchdir(2). If we don't have the first one, then switching
> >> from "." to "/" in the mount/umount2 calls should fix the issue.
> >
> > See my notes above for why I therefore think that the second fchdir()
> > is also not needed (and therefore why switching from "." to "/" in the
> > mount()/umount2() calls is unnecessary.
> >
> > Do you agree with my analysis?
>
> If both the second and third fchdir are not required,
> then we do not need to bother with file descriptors at all, right?

Exactly.

> Indeed, my tests show that the following seems to work fine:
>
> chdir(rootfs)
> pivot_root(".", ".")
> umount2(".", MNT_DETACH)

Thanks for the confirmation, That's also exactly what I tested.

> I tested that with my own tool[1] that uses user namespaces and marks
> everything MS_PRIVATE before, so I do not need the mount(MS_SLAVE) here.
>
> And it works the same with both umount2("/") and umount2(".").

Yes.

> Did I overlook something that makes the file descriptors required?

No.

> If not, wouldn't the above snippet make sense as example in the man page?

I have exactly that snippet in a pending change for the manual page :-).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
