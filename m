Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C90A33E39A9
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:42:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231398AbhHHImZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231378AbhHHImZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:25 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96834C0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:42:06 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id h24-20020a1ccc180000b029022e0571d1a0so9217268wmb.5
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=59hk+1JxQZdJCXTgyJRa2+SWqdvUPZvwZjL88c+p4KQ=;
        b=TjvU5+WSfS7iU3ptOFZaKF0J51BsLXYwXiV0mZYhBs9MmncKAoUsQJ0B7eQN/HdzLr
         BvlxG66YmRPzkYbGxrcMzKdsbydASd3YM30oPzLpct1Np1TxnhUF94cUhJ2kgxucSv1b
         WHAM5JpdDGAZ5QTHs49vk4zX9qxdhcw+e9wXf7xgo+Cwh72BTlzFATD/mfaLz9fidhE5
         H2wgMq8ku0vN8KO9sMS18wZBvIBX5s2JGL6PUbWMspSGtF4WsKpN02AzkdSMyrksmahV
         i52eaxgseyDpTnHWAcpb1PX4Zvg5IzJ+frmuRhSrBOuEvvg8wydqaAw2beJzY92qhi2d
         vxXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=59hk+1JxQZdJCXTgyJRa2+SWqdvUPZvwZjL88c+p4KQ=;
        b=ul5mUrXB3FIbE3UtM1zB9wx+BwiAm9ml8EC1UPLJG1tIR7W5955syk5g/TTwxJKcf6
         C5o+5ZXdog8ZxyxNdAXY3N6xqj+2fM4WDOywxRwM5vFERoRYemzCBcIw/cpyxCC9QwBt
         yJACJOO90EHDZm4DvhxCnVJoOzDXlP6aBgiFU/yPqRPwci8VIg71lVXp/Fv/AoEquQ8e
         ce3jSEYlIDaEloKbNBgkFSsKeiIIvJtyIK2KFTuFca2AM9YroV4QFVlmJtn7rPkjTodS
         Mk307bkhKl3/mHuK4DJDx8C2bBNsHKYW8Ik37n8rqsM7zxByXt+sW+oXh9WRIlIIioMk
         K9Tw==
X-Gm-Message-State: AOAM530ZE6dT8QfCU6O1fUA6Ev3wjk3C7Va1G/mzkkZX9vRTuj0tw/BY
        VqG6UFSSoPWE0RCPcdypzAPtI/91TjU=
X-Google-Smtp-Source: ABdhPJxwwJj0pSB5zv97HoZvPzWxv3x0KkVIUY3GaguvMKFNc065cDhLuY1fH/fpMSo9CYYmY9d+jA==
X-Received: by 2002:a05:600c:2306:: with SMTP id 6mr11137590wmo.115.1628412125184;
        Sun, 08 Aug 2021 01:42:05 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:42:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, EmanueleTorre <torreemanuele6@gmail.com>
Subject: [PATCH 22/23] ldd.1: Fix example command
Date:   Sun,  8 Aug 2021 10:41:32 +0200
Message-Id: <20210808084133.734274-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Emanuele Torre via linux-man@:

[
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
]

Reported-by: EmanueleTorre <torreemanuele6@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man1/ldd.1 | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/man1/ldd.1 b/man1/ldd.1
index ed1ab3c05..8bb1410d5 100644
--- a/man1/ldd.1
+++ b/man1/ldd.1
@@ -23,14 +23,11 @@ ldd \- print shared object dependencies
 prints the shared objects (shared libraries) required by each program or
 shared object specified on the command line.
 An example of its use and output
-(using
-.BR sed (1)
-to trim leading white space for readability in this page)
 is the following:
 .PP
 .in +4n
 .EX
-$ \fBldd /bin/ls | sed \(aqs/^ */    /\(aq\fP
+$ \fBldd /bin/ls\fP
     linux\-vdso.so.1 (0x00007ffcc3563000)
     libselinux.so.1 => /lib64/libselinux.so.1 (0x00007f87e5459000)
     libcap.so.2 => /lib64/libcap.so.2 (0x00007f87e5254000)
-- 
2.32.0

