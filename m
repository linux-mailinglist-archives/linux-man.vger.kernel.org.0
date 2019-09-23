Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 637CDBB5C3
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 15:50:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407858AbfIWNu4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 09:50:56 -0400
Received: from ngcobalt01.manitu.net ([217.11.48.101]:45108 "EHLO
        ngcobalt01.manitu.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407710AbfIWNu4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 09:50:56 -0400
X-Greylist: delayed 434 seconds by postgrey-1.27 at vger.kernel.org; Mon, 23 Sep 2019 09:50:55 EDT
Received: from server.passau (ipbcc3eb9d.dynamic.kabel-deutschland.de [188.195.235.157])
        (Authenticated sender: smtp-send)
        by ngcobalt01.manitu.net (Postfix) with ESMTPSA id A4F2033E076A;
        Mon, 23 Sep 2019 15:43:39 +0200 (CEST)
Received: from [172.18.159.113] (unknown [46.183.103.17])
        by server.passau (Postfix) with ESMTPSA id E6E0F814C1;
        Mon, 23 Sep 2019 15:43:10 +0200 (CEST)
Subject: Re: For review: rewritten pivot_root(2) manual page
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        "Serge E. Hallyn" <serge@hallyn.com>,
        Christian Brauner <christian@brauner.io>,
        Aleksa Sarai <asarai@suse.de>,
        Reid Priedhorsky <reidpr@lanl.gov>,
        Andy Lutomirski <luto@amacapital.net>,
        Yang Bo <rslovers@yandex.com>, Jakub Wilk <jwilk@jwilk.net>,
        Joseph Sible <josephcsible@gmail.com>,
        Al Viro <viro@ftp.linux.org.uk>, werner@almesberger.net
Cc:     linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>
References: <620c691a-065e-b894-4f06-7453012bc8d3@gmail.com>
From:   Philipp Wendler <ml@philippwendler.de>
Message-ID: <d449305b-f87c-f26e-e43f-d193fd8f4332@philippwendler.de>
Date:   Mon, 23 Sep 2019 15:42:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <620c691a-065e-b894-4f06-7453012bc8d3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

Am 23.09.19 um 14:04 schrieb Michael Kerrisk (man-pages):

> I'm considering to rewrite these pieces to exactly
> describe what the system call does (which I already
> do in the third paragraph) and remove the "may or may not"
> pieces in the second paragraph. I'd welcome comments
> on making that change.

I think that it would make the man page significantly easier to
understand if if the vague wording and the meta discussion about it are
removed.

> DESCRIPTION
[...]>        pivot_root()  changes  the
>        root  directory  and the current working directory of each process
>        or thread in the same mount namespace to new_root if they point to
>        the  old  root  directory.   (See also NOTES.)  On the other hand,
>        pivot_root() does not change the caller's current  working  direc‐
>        tory  (unless it is on the old root directory), and thus it should
>        be followed by a chdir("/") call.

There is a contradiction here with the NOTES (cf. below).

>        The following restrictions apply:
> 
>        -  new_root and put_old must be directories.
> 
>        -  new_root and put_old must not be on the same filesystem as  the
>           current root.  In particular, new_root can't be "/" (but can be
>           a bind mounted directory on the current root filesystem).

Wouldn't "must not be on the same mountpoint" or something similar be
more clear, at least for new_root? The note in parentheses indicates
that new_root can actually be on the same filesystem as the current
note. However, ...

>        -  put_old must be at or underneath new_root; that  is,  adding  a
>           nonnegative  number  of /.. to the string pointed to by put_old
>           must yield the same directory as new_root.
> 
>        -  new_root must be a mount point.  (If  it  is  not  otherwise  a
>           mount  point,  it  suffices  to  bind  mount new_root on top of
>           itself.)

... this item actually makes the above item almost redundant regarding
new_root (except for the "/") case. So one could replace this item with
something like this:

- new_root must be a mount point different from "/". (If it is not
  otherwise a mount point, it suffices  to bind mount new_root on top
  of itself.)

The above item would then only mention put_old (and maybe use clarified
wording on whether actually a different file system is necessary for
put_old or whether a different mount point is enough).

> NOTES
[...]
>        pivot_root() allows the caller to switch to a new root  filesystem
>        while  at  the  same time placing the old root mount at a location
>        under new_root from where it can subsequently be unmounted.   (The
>        fact  that  it  moves  all processes that have a root directory or
>        current working directory on the old root filesystem  to  the  new
>        root  filesystem  frees the old root filesystem of users, allowing
>        it to be unmounted more easily.)

Here is the contradiction:
The DESCRIPTION says that root and current working dir are only changed
"if they point to the old root directory". Here in the NOTES it says
that any root or working directories on the old root file system (i.e.,
even if somewhere below the root) are changed.

Which is correct?

If it indeed affects all processes with root and/or current working
directory below the old root, the text here does not clearly state what
the new root/current working directory of theses processes is.
E.g., if a process is at /foo and we pivot to /bar, will the process be
moved to /bar (i.e., at / after pivot_root), or will the kernel attempt
to move it to some location like /bar/foo? Because the latter might not
even exist, I suspect that everything is just moved to new_root, but
this could be stated explicitly by replacing "to the new root
filesystem" in the above paragraph with "to the new root directory"
(after checking whether this is true).

> EXAMPLE>        The program below demonstrates the use of  pivot_root()  inside  a
>        mount namespace that is created using clone(2).  After pivoting to
>        the root directory named in the program's first command-line argu‐
>        ment,  the  child  created  by  clone(2) then executes the program
>        named in the remaining command-line arguments.

Why not use the pivot_root(".", ".") in the example program?
It would make the example shorter, and also works if the process cannot
write to new_root (e..g., in a user namespace).

Regards,
Philipp
