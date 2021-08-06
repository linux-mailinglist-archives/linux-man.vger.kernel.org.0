Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF8703E2C79
	for <lists+linux-man@lfdr.de>; Fri,  6 Aug 2021 16:26:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238680AbhHFO0b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Aug 2021 10:26:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238446AbhHFO0b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Aug 2021 10:26:31 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5398EC0613CF
        for <linux-man@vger.kernel.org>; Fri,  6 Aug 2021 07:26:14 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id f91so4963909qva.9
        for <linux-man@vger.kernel.org>; Fri, 06 Aug 2021 07:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=3Fxrf3/Z5Oj01EWmFJ5MPedurh+lBot7nvHmVMPAby8=;
        b=LFUYUkX9Z2CmkXdczXty6t1bR/SLDqfaqINap8no2ym4mxuv0vWCJ22z/qD9pAeWjb
         DyHxcp0ATN+d3Cmq9VspGqP6LhDzoR2AAWWKgYvw3O++g+iLPdCuJP1Waf8e6EbEvH4F
         maJ+oUfY8rEkJwprNth8uDAN9A9WIrsHOyMIyf/xLJj7MYbsHKpo63SMeXtF3BO3F5aN
         hf1RFGfQuPa8BvxJ4EqVfF6d3re/QHbOJpAQPw8BQVubJQh2BarpvKYlxi44tTrihHL0
         E0Rd4aPKlwKjKmsBTawXfMVFCr0PoXWmoZeDbVdNWeM18jj/2ujLmDlSQeXgLLSG3QBE
         knvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=3Fxrf3/Z5Oj01EWmFJ5MPedurh+lBot7nvHmVMPAby8=;
        b=Qm31pnlT/CijUVCnS4YEiSTcRQFcZW/dZNMr6zjt2DDr82oUj22kIBKmFhdAiamM97
         vNrH+44WNd6c4dI72lp8qc++hacKnH2l+LgQp2X35JfcLbZWp6Ac+SZzs2bivpPcJF6J
         gZAR9WPOt+fTmBctp+vhaamvy+Qy8fsfyycZXDQErd1bTcOpmQeMM9tRrxZqH7SHq8Gt
         7UVf6nuuoW1vxJGxeB7Ed//Ro+zHFV4B5E2BiEXkFWPjJ1B3x9CSHMSgRjWsdWwLwvZg
         QQuERcL4Qv9o/TSppehU3a5vc/m7TbMD6cve698+peLWO1/IWDsur4WIT043i4D/lmli
         Uvfw==
X-Gm-Message-State: AOAM533z5UYSQO0+JyfO/u1LT9lm1absaKJ0a9+KX7Vzqx0Ue5Tdufw/
        pqpnzrv2SLpshmV6FO81WCR4g0SqVx9j4hHaxhg=
X-Google-Smtp-Source: ABdhPJyE/WI6Z0mkrUkAaqQF+6JOSvsSGelwtv7umWcYRL8U9F2qxMhsNWx9PX9Az7u+hKTIomRMufHO+i/legN8XcE=
X-Received: by 2002:a0c:cb8d:: with SMTP id p13mr11134048qvk.53.1628259973523;
 Fri, 06 Aug 2021 07:26:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:216a:0:0:0:0:0 with HTTP; Fri, 6 Aug 2021 07:26:12 -0700 (PDT)
From:   Emanuele Torre <torreemanuele6@gmail.com>
Date:   Fri, 6 Aug 2021 16:26:12 +0200
Message-ID: <CAA7hNqc8gExU=OfsoqY3Cw78J1BOCXrMfFmg+fUaCDt54wDrBQ@mail.gmail.com>
Subject: [man-pages] Misleading example in ldd(1).
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello.

I was reading the man page for ldd(1)[1]; and I read this in the first
paragraph of the DECRIPTION section:

 ldd prints the shared objects (shared libraries) required by each
 program or shared object specified on the command line.  An
 example of its use and output (using sed(1) to trim leading white
 space for readability in this page) is the following:

     $ ldd /bin/ls | sed 's/^ */    /'
         linux-vdso.so.1 (0x00007ffcc3563000)
         libselinux.so.1 => /lib64/libselinux.so.1 (0x00007f87e5459000)
         libcap.so.2 => /lib64/libcap.so.2 (0x00007f87e5254000)
         libc.so.6 => /lib64/libc.so.6 (0x00007f87e4e92000)
         libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f87e4c22000)
         libdl.so.2 => /lib64/libdl.so.2 (0x00007f87e4a1e000)
         /lib64/ld-linux-x86-64.so.2 (0x00005574bf12e000)
         libattr.so.1 => /lib64/libattr.so.1 (0x00007f87e4817000)
         libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f87e45fa000)

This is a little confusing though since that sed(1) command does not
seem to work. (and also potentially misleading for someone who is trying
figure out how to parse ldd(1)'s output.)

ldd(1) prepends a TAB character (0x09) to each line, not spaces:

 $ ldd /bin/ls | xxd | head -1
 00000000: 096c 696e 7578 2d76 6473 6f2e 736f 2e31  .linux-vdso.so.1

I read ldd(1)'s source code[2] (it is part of glibc) and it seems to be
a bash script that tries to use different rtld programs ( ld.so(8) )
from an RTLDLIST.

Those, on my system, are:

 * /usr/lib/ld-linux.so.2
 * /usr/lib64/ld-linux-x86-64.so.2
 * /usr/libx32/ld-linux-x32.so.2

And they all seem to also be part of glibc.

I have tried to follow the git history of glibc to see when the switch
from spaces to the TAB character occured, but, to me, it seems like
glibc.git/elf/rtld.c has always used '\t'; at since
6a76c115150318eae5d02eca76f2fc03be7bd029[3] (358th commit since glibc
started using the git repository repository - Nov 18th 1995): before
that commit there are not any results for `git grep '\\t'` in the elf
directory and I did not investigate further.

Still, at the time of that commit, glibc did not seem to have an ldd(1)
utility.

Perhaps the man page is old and its original author was using and
documenting an ldd(1) utility that was not part of glibc when he was
writing it.

Anyhow, since I think that sed(1) command will not work on any system
that uses, at least, the most recent version of glibc (because lld(1)
and the ld.so(8) programs it depends on are all part of glibc), I think
that that example should be changed to avoid confusions.

The output format of ldd(1) does not seem to be clearly defined, so I
think this would be a good option:

 $ ldd /bin/ls | sed 's/^[[:space:]]*/    /'

NB: ^\s* should also work on most GNU/Linux systems, but \s is
    non-standard or documented so I don not suggest using it in the man
    page.

Another option could be to remove "the pipe to sed(1)" part and the note
in parentheses that explains why it was used by the original author.

Cheers.
 emanuele6

[1]: https://man7.org/linux/man-pages/man1/ldd.1.html
[2]: https://sourceware.org/git/?p=glibc.git;a=blob;f=elf/ldd.bash.in;h=ba736464ac5e4a9390b1b6a39595035238250232;hb=5188a9d0265cc6f7235a8af1d31ab02e4a24853d
[3]: https://sourceware.org/git/?p=glibc.git;a=commit;h=6a76c115150318eae5d02eca76f2fc03be7bd029

///////

 $ uname -a
 Linux t420 5.10.54-1-lts #1 SMP Wed, 28 Jul 2021 15:05:20 +0000
x86_64 GNU/Linux
 $ pacman -Qo ldd
 /usr/bin/ldd is owned by glibc 2.33-5
 $ pacman -Qo /usr/share/man/man1/ldd.1.gz
 /usr/share/man/man1/ldd.1.gz is owned by man-pages 5.12-2
 $ pacman -Qo /usr/lib/ld-linux.so.2
 /usr/lib/ld-linux.so.2 is owned by lib32-glibc 2.33-5
 $ pacman -Qo /usr/lib64/ld-linux-x86-64.so.2
 /usr/lib/ld-linux-x86-64.so.2 is owned by glibc 2.33-5
 $ pacman -F /usr/libx32/ld-linux-x32.so.2 || echo not available on arch linux.
 not available on arch linux.
