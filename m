Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BF916A498F
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2019 15:24:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728677AbfIANYQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Sep 2019 09:24:16 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:37702 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726275AbfIANYP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Sep 2019 09:24:15 -0400
Received: by mail-lj1-f195.google.com with SMTP id t14so10493788lji.4
        for <linux-man@vger.kernel.org>; Sun, 01 Sep 2019 06:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FGlKYxwVkF16dsMi56F6dB5YDK4b99wPlaC9ANhE8oQ=;
        b=Y2HKWNViO4BFvtUi+yY8/7P//FL4seLeLANATUnsoonkY9mt39rbLYy2tZ+ZXaLF0w
         zB9/mMVTbv33hk//aiyZ3NFLxdwjkI2XtxGW86RAOOHKnPB3uHQC/1nJoWpfy5uX+7/R
         uDZnMvJm1JdWOHHFeb2VRt9kVfA1QYEEgjdz14+5RO2ZGt22lPKBE7Bur2GTSGxPrz5S
         Of5AYNQ2KUdTycOthXkqoXifAwU1QuvmDReAtf+PPfQJlgeKJUcSEg955T4PWsGHMTcx
         +NIsoXdZBmmY1bcQvnGh5+gY5UXfuu7aMZMsYA+agEi6Tqf5tjB8vVqaI3WTPR6bgrU8
         C4kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FGlKYxwVkF16dsMi56F6dB5YDK4b99wPlaC9ANhE8oQ=;
        b=ZNlLEf8Q5pxRhA0sOGapREs6GrWsZQe1ndbA8eA9IbzfzGMVLAqDpfU0ZnGWZHlpzs
         3LL3ypRYQAzaUo38VKiMKBVKI65iS6GfcTJCY+GUv226743SAaLRResBBx6edWLseGWQ
         NO2sxVtqxhA04YcpO/rURWzEa8RWPLgiSkKw3WN3YsCFWMbRJi2wNeVGOv1CkE2z6Nwc
         zSxHWDXFrjNascAosXEQ/m1fJIEwPKmX0oqAWZTEp1F++c3Ux9Q/s5s+bbs/iL+4J+gT
         3SJcNyYI8d0ORdHvtqPx0dppa3XYzK1Xs3oGi4hL/wIyjftHGB6VUy9KPC3+WsUlZofC
         n1cg==
X-Gm-Message-State: APjAAAUGmMk/V+USvkDY8ncAFd+H+dBPOLu6up2T0v0iu/Z0Aa36bAwf
        mtQU1l3Ku1UmLodCXemQQ8Y=
X-Google-Smtp-Source: APXvYqylvnP8C94b9UDMaVzhfQbnQ+2np8l7I1h6I5tpX8NtlJ210pDzKTzHydCOhK6muvaMzIvxjw==
X-Received: by 2002:a2e:80d0:: with SMTP id r16mr13392025ljg.17.1567344252888;
        Sun, 01 Sep 2019 06:24:12 -0700 (PDT)
Received: from [192.168.251.0] ([195.69.9.25])
        by smtp.gmail.com with ESMTPSA id w77sm1975705lff.49.2019.09.01.06.24.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Sep 2019 06:24:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: f_owner_ex vs. POSIX
To:     Eric Blake <eblake@redhat.com>,
        glibc list <libc-alpha@sourceware.org>
References: <a6d65cee-a909-449c-484d-66cd26093958@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bdc9527b-6595-9f4e-b35d-3796967e044c@gmail.com>
Date:   Sun, 1 Sep 2019 15:23:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <a6d65cee-a909-449c-484d-66cd26093958@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Explicitly CCing Florian Weimer, since he may have some thoughts.]

Hello Eric,

On 8/29/19 5:50 PM, Eric Blake wrote:
> The Austin Group is considering standardizing a subset of the Linux
> fcntl(F_GETOWN_EX), because of its ability to overcome the limitation
> that fcntl(F_GETOWN) must fail for some valid pids if pid_t is permitted
> to be wider than int (whether or not Linux ever reaches a point where
> pid_t is wider than int, POSIX did not want to make that restriction on
> other implementations).  See http://austingroupbugs.net/view.php?id=1274
> 
> However, we've run into a minor issue which implies that man-pages
> and/or glibc is buggy:
> 
> The man page for fcntl() (as of Fedora 30 man-pages-4.16-4.fc30) states:
> 
>                    struct f_owner_ex {
>                        int   type;
>                        pid_t pid;
>                    };
> 
> but in the headers under /usr/include, there are two different
> definitions, which raises the question on what the real type of 'type'
> should be:
> 
> /usr/include/asm-generic/fcntl.h (from kernel-headers-5.2.9-200.fc30):
> struct f_owner_ex {
>          int     type;
>          __kernel_pid_t  pid;
> };
> 
> /usr/include/bits/fcntl-linux.h (from glibc-headers-2.29-15.fc30):
> 
> struct f_owner_ex
>    {
>      enum __pid_type type;       /* Owner type of ID.  */
>      __pid_t pid;                /* ID of owner.  */
>    };
> 
> 
> Note that an enum instead of an int matters as to whether this will
> complain when compiled:
> struct f_owner_ex s;
> int *foo = &s.type;
> 
> Therefore, we want to confirm whether requiring the eventual POSIX
> definition to use enum f_pid_type (as currently worded in
> austingroupbugs.net/view.php?id=1274#c4536) is okay (in which case,
> there is a bug in the man page for documenting int instead of enum
> f_pid_type), or if POSIX should not bother defining enum f_pid_type (and
> instead just provide F_OWNER_PID and F_OWNER_PGRP as macros) with
> f_owner_ex being defined with an int (in which case, the glibc <fcntl.h>
> header needs a change to use int, and the Austin Group proposal needs to
> be tweaked to match).

So, a little background.

The kernel feature was added in Linux 2.6.32, which was tagged in
December 2009.

I added the manual page text at the start of October 2009, based on
the types used in the kernel structure.

By chance, the glibc structure definition was added at the end of the 
same month. (I do not recall, but I suspect that I did not notice
the glibc addition.)

I do not know what the rationale was for the addition of the 'enum',
and it wouldn't surprise me if there was no public discussion about
it. The use of an 'enum' strikes me as a slightly odd decision (given
that the kernel uses 'int') but, related to your point below, there
is precedent in, for example, the use of an 'enum' for 'idtype_t' in
waitid() inside glibc, while the kernel type for the argument in
the underlying system call is 'int'.

> Note that the use of an enum in a public struct makes that struct
> dependent on ABI issues (if the library is compiled with one set of
> compiler flags where enums occupy the space of 'int', but an application
> compiles with a different set of flags where an enum occupies only the
> space of 'char', this could result in the application being unable to
> correctly call into libc), if that helps sway the decision on which of
> the two projects needs to change.  However, the exact layout of the
> struct and any padding space was not deemed to be a showstopper (that
> is, similar to struct stat, the standard intends only to require that at
> least two members be present in f_owner_ex without any further
> restrictions on what layout those two members occupy).
> 
> A side note was also raised during discussion: POSIX already
> standardizes the type idtype_t for use in waitid(), and on Linux, we
> happen to have P_PID==F_OWNER_PID==1 and P_PGID==F_OWNER_PGRP==2 (which
> are the only values that POSIX is considering adding), which on the
> surface looks like unnecessary duplication.  So at one point, the
> question was raised whether POSIX should reuse the existing idtype_t
> instead of inventing something new for f_owner_ex.  However, it was then
> pointed out that idtype_t also includes P_ALL (which on Linux is 0), and
> that Linux uses F_OWNER_TID==0 as an extension to what POSIX would
> require, but since Linux' F_OWNER_TID semantics for F_SETOWN_EX are not
> the same semantics as P_ALL in waitid(); furthermore, <fcntl.h> has free
> reign to add more F_* into the namespace but not P_*, where reuse of the
> idtype_t type would then require dragging in the <sys/wait.h> header
> just to populate f_owner_ex.  Thus, this reuse of types was deemed
> unpalatable.

I'm agnostic on whether it's the manual page of glibc that should
be fixed. The ABI issues that you note above are unfortunate, of
course. (Do they not suggest that standard really should use 'int'?)

Cheers,

Michael
