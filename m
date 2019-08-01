Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D4807DC9F
	for <lists+linux-man@lfdr.de>; Thu,  1 Aug 2019 15:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726756AbfHANjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Aug 2019 09:39:08 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:34465 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725804AbfHANjI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Aug 2019 09:39:08 -0400
Received: by mail-ed1-f68.google.com with SMTP id s49so34394522edb.1;
        Thu, 01 Aug 2019 06:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=PtC9Ul3xyUxdsRp//n5huG8WK8UIuyHf5FNaAaoJ6lI=;
        b=j22DCmujTkp1v6xERjlBb9cv6AvS/qdCv2Ql+oavpsT37ofS20BqLBl8lAcfMAgq9F
         tGQMMashEiIyv3f5VrQ2S/5je4mCuPyUCOKW7Yq62iBRniubibWUQ0ooI/h5qWv/Etvn
         aLCz/MDeC033FQJ23SX7Qh9Q/MxbpQIgDg5Tnnl4Pj6cC+AeHNz5fbJx7aZb1ufoWAFI
         ZJLZlrleUqpNRee7wXM1LPyZz/q15V52XXRJkeZPSU2D6aHl5KKH3vMVI0qyi86PFI2u
         VGkJmbW+TQZXRnLyRAWZ0gz8O+2AEC3gITGMposPZVQNMkdvOV/gHc/ZhZIApIcjh498
         cV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=PtC9Ul3xyUxdsRp//n5huG8WK8UIuyHf5FNaAaoJ6lI=;
        b=MTcZm/EzpVuWcZgezNnENGxzqnJXX/5H+S7pc9vupWQmzAfO8Bfom0aTniPJu9rFv7
         6hz6PoMfwk96VDyI/BAV1q5FrQN4gR+mMQ3dWntEjOndLO2lc6krZxDlKYd8rlASp7UA
         NTq2SXMcsfWzR/ehvTILzbI2moayUzukpKKfUalai05tkbulAY5UWc1jfyH4MNj8DbW6
         5GmE/mC+BA6lmovq95Z12y3cIEBsR6kjCx/7qaYrl89gS3OR9+YV4Eo0Zlpp+ZhLOBku
         mlRRdyBdVsIkwwlUFqnNrCxoJa6eXhjsr+JIYrzhTrcSYNsf1qIUyc6o+8VKDZ3Zw+dB
         qpHQ==
X-Gm-Message-State: APjAAAU4+HS72L5NuQ+yQdlpvdVDHflPfXYwcC+HbW54vX2T3h0/Vz+C
        JtIMaG2+N9oGMbG0SB3E2RzOQKaQXKo64O4b2ng=
X-Google-Smtp-Source: APXvYqz/UPRwrcD8HLFhptruuLqlej5jY1qcmnxYS+lhO1UyrzSeq19BRip4q5EHDq0cEi0M/T7Hr4ryE8t/rdHlioU=
X-Received: by 2002:a17:906:154f:: with SMTP id c15mr99070580ejd.268.1564666746270;
 Thu, 01 Aug 2019 06:39:06 -0700 (PDT)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 1 Aug 2019 15:38:54 +0200
Message-ID: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
Subject: pivot_root(".", ".") and the fchdir() dance
To:     "Serge E. Hallyn" <serge@hallyn.com>
Cc:     Andy Lutomirski <luto@amacapital.net>,
        Containers <containers@lists.linux-foundation.org>,
        =?UTF-8?Q?St=C3=A9phane_Graber?= <stgraber@ubuntu.com>,
        Christian Brauner <christian@brauner.io>,
        Al Viro <viro@ftp.linux.org.uk>,
        lkml <linux-kernel@vger.kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        Jordan Ogas <jogas@lanl.gov>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Serge, Andy, et al,

I've been looking at doing some updates for the rather inaccurate
pivot_root(2) manual page, and I noticed this 2014 commit in LXC

[[commit 2d489f9e87fa0cccd8a1762680a43eeff2fe1b6e
Author: Serge Hallyn <serge.hallyn@ubuntu.com>
Date:   Sat Sep 20 03:15:44 2014 +0000

    pivot_root: switch to a new mechanism (v2)

    This idea came from Andy Lutomirski.  Instead of using a
    temporary directory for the pivot_root put-old, use "." both
    for new-root and old-root.  Then fchdir into the old root
    temporarily in order to unmount the old-root, and finally
    chdir back into our '/'.
]]

I'd like to add some documentation about the pivot_root(".", ".")
idea, but I have a doubt/question. In the lxc_pivot_root() code we
have these steps

        oldroot = open("/", O_DIRECTORY | O_RDONLY | O_CLOEXEC);
        newroot = open(rootfs, O_DIRECTORY | O_RDONLY | O_CLOEXEC);

        fchdir(newroot);
        pivot_root(".", ".");

        fchdir(oldroot);      // ****

        mount("", ".", "", MS_SLAVE | MS_REC, NULL);
        umount2(".", MNT_DETACH);

        fchdir(newroot);      // ****

My question: are the two fchdir() calls marked "****" really
necessary? I suspect not. My reasoning:
1. By this point, both the CWD and root dir of the calling process are
in newroot (and so do not keep newroot busy, and thus don't prevent
the unmount).
2. After the pivot_root() operation, there are two mount points
stacked at "/": oldroot and newroot, with oldroot a child mount
stacked on top of newroot (I did some experiments to verify that this
is so, by examination of /proc/self/mountinfo).
3. The umount(".") operation unmounts the topmost mount from the pair
of mounts stacked at "/".

At least, in some separate tests that I've done, things seem to work
as I describe above without the use of the marked fchdir() calls. (My
tests omit the mount(MS_SLAVE) piece, since in my tests I do a
more-or-less equivalent step at an earlier point.

Am I missing something?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
