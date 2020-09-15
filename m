Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D20426A672
	for <lists+linux-man@lfdr.de>; Tue, 15 Sep 2020 15:45:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726713AbgIONot (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 09:44:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726594AbgIONmx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 09:42:53 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AEF3C0611BC
        for <linux-man@vger.kernel.org>; Tue, 15 Sep 2020 06:34:36 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z1so3368114wrt.3
        for <linux-man@vger.kernel.org>; Tue, 15 Sep 2020 06:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8FZFMFl6CrhNNaDJ15YrLWetlboYaDpMap0c678lL0A=;
        b=YIBuCi8UUBsvpSOkJ8TJoHjJUuiiqunQ7o8Yq8peq1RGfOTY5c6HsEmmJ7OfugTZie
         e2BiPEUirMonESie/DyyQaXt+8Q7SxzWoY4H7JSCLGXslZ/19yh+voTOdZRBUhsFYTTT
         Gdl7ZHj2gh3rKEGJfWSVUuFVarZktdWNLHowP1r1r1XbRvrpsA+1Ej4Op43sz9H48Zsi
         tvEI+AhyG+GxubXvPk3nSjkHjCVuYeWQesYdSC4g9cRGG2d0cLFM3j8uNRoA80EKxyTN
         JkrXL/12063wOjJoiHvNoRxypEFfWYGi7Mq/5YG80AnSb3W701GdvcdvHpybb5Omx9b5
         ZAVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8FZFMFl6CrhNNaDJ15YrLWetlboYaDpMap0c678lL0A=;
        b=sLtQ/Afp9rEC3qFkYkSWK08bCIep43v90cqVlBrWtadMYAkCxM234VeCNUSSNlHMmK
         nT4Z41TBEMGG8HLDDOp7eMYFAnjXGPgS+FIPN2h63E3lbem6PXd4msf51rkEBema8cCy
         CvRWahy6kgE+3STa37SX175BcOBf6SNnqyfkkvApq+W5JL1ifeRp2vY7aKs2xKAHumdH
         FBUN3cl7qCrpfETe5kDu/i2POWNr/I/a662SQvJF1QasLBAnk/0pmc/0xH5zguUkoNNn
         2HwM+TAmD8/b8dUiQ9+IlUYBMLYhkoy6Tsn5dkqeoCvfM2TQu7fEEcLtY6DSS8h9VUm1
         k1oA==
X-Gm-Message-State: AOAM532+I01u5LMOLvVyswdNeIg4yDVF21n5wlZh9NX5sM/KMkxxLSry
        NwCqgMf3kgVsceL5hFlmYvj1G6lzt+ElJg==
X-Google-Smtp-Source: ABdhPJwrguWEndDH4nNVAv+di/jMwmprCbY2g/yeBsIjgP/dZ+meapKOIfzFCA9R8j9FnP8Eo13gog==
X-Received: by 2002:adf:dc47:: with SMTP id m7mr21484666wrj.100.1600176874654;
        Tue, 15 Sep 2020 06:34:34 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s17sm28133298wrr.40.2020.09.15.06.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 06:34:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, fweimer@redhat.com,
        libbsd@lists.freedesktop.org, jwilk@jwilk.net,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [RFC v4] system_data_types.7: Document sigval, ssize_t, suseconds_t, time_t, timer_t, timespec & timeval
Date:   Tue, 15 Sep 2020 15:33:07 +0200
Message-Id: <20200915133306.35033-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

This is already a release candidate, I'd say.

Changelog since Draft v3:

- Specify POSIX versions
- ffix
- wfix
- Curate See also


On 2020-09-15 08:22, Michael Kerrisk (man-pages) wrote:
> I think the reader won't easily deduce the above ordering.
> I think just the following will be fine:
> * (1)/(2) (merged is fine)
> * The rest, ordered alphabetically.

I'm not sure I fully understood it.  Please check the updated comments.
No type required actual modifications after that change.

Basically, I merged (3) & (4).

>> +Conforming to: POSIX.1-xxxx and later.
>> +.IP
>> +See also:
> Above two lines should also be commented out.

Done

>> +See also the
>> +.B timeval
> s/.B/.I/

Done

I decided to definitively remove many of the see also links.
They were most of them junk.

Cheers,

Alex



 man7/system_data_types.7 | 304 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 304 insertions(+)
 create mode 100644 man7/system_data_types.7

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
new file mode 100644
index 000000000..9011ce74e
--- /dev/null
+++ b/man7/system_data_types.7
@@ -0,0 +1,304 @@
+.\" Copyright (c) 2020 by Alejandro Colomar <colomar.6.4.3@gmail.com>
+.\"
+.\" %%%LICENSE_START(VERBATIM)
+.\" Permission is granted to make and distribute verbatim copies of this
+.\" manual provided the copyright notice and this permission notice are
+.\" preserved on all copies.
+.\"
+.\" Permission is granted to copy and distribute modified versions of this
+.\" manual under the conditions for verbatim copying, provided that the
+.\" entire resulting derived work is distributed under the terms of a
+.\" permission notice identical to this one.
+.\"
+.\" Since the Linux kernel and libraries are constantly changing, this
+.\" manual page may be incorrect or out-of-date.  The author(s) assume no
+.\" responsibility for errors or omissions, or for damages resulting from
+.\" the use of the information contained herein.  The author(s) may not
+.\" have taken the same level of care in the production of this manual,
+.\" which is licensed free of charge, as they might when working
+.\" professionally.
+.\"
+.\" Formatted or processed versions of this manual, if unaccompanied by
+.\" the source, must acknowledge the copyright and authors of this work.
+.\" %%%LICENSE_END
+.\"
+.\"
+.TH SYSTEM_DATA_TYPES 7 2020-09-13 "Linux" "Linux Programmer's Manual"
+.SH NAME
+system_data_types \- overview of system data types
+.SH DESCRIPTION
+.\" TODO:
+.\"	* Add types
+.\"	* Curate "See also"
+.\" Layout:
+.\"	A list of type names (the struct/union keyword will be omitted).
+.\"	Each entry will have the following parts:
+.\"		* Include
+.\"			The headers will be in the following order:
+.\"			1) The header(s) that shall define the type
+.\"			   according to the C standard,
+.\"			   in alphabetical order.
+.\"			2) The header that shall define the type
+.\"			   according to POSIX.
+.\"			3) All other headers that shall define the type
+.\"			   as described in the previous header
+.\"			   according to POSIX,
+.\"			   and
+.\"			   all other headers that define the type
+.\"			   that are Linux specific,
+.\"			   in alphabetical order.
+.\"
+.\"		* Definition (no "Definition" header)
+.\"			Only struct/union types will have definition;
+.\"			typedefs will remain opaque.
+.\"
+.\"		* Description (no "Description" header)
+.\"			A few lines describing the type.
+.\"
+.\"		* Conforming to
+.\"			example: CXY and later; POSIX.1-XXXX and later.
+.\"			Forget about pre-C99 C standards (i.e., C89/C90)
+.\"
+.\"		* Notes (optional)
+.\"
+.\"		* See also
+.TP
+.I sigval
+.IP
+Include:
+.I <signal.h>
+.IP
+.EX
+union sigval {
+    int     sigval_int; /* Integer value */
+    void   *sigval_ptr; /* Pointer value */
+};
+.EE
+.IP
+Data passed with a signal.
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR rt_sigqueueinfo (2),
+.BR sigaction (2),
+.BR mq_notify (3),
+.BR pthread_sigqueue (3),
+.BR sigqueue (3),
+.BR sigevent (7)
+.TP
+.I ssize_t
+.IP
+Include:
+.I <sys/types.h>
+or
+.I <aio.h>
+or
+.I <limits.h>
+or
+.I <monetary.h>
+or
+.I <mqueue.h>
+or
+.I <regex.h>
+or
+.I <stdio.h>
+or
+.I <sys/msg.h>
+or
+.I <sys/socket.h>
+or
+.I <sys/uio.h>
+or
+.I <unistd.h>
+.IP
+Used for a count of bytes or an error indication.
+According to POSIX, it shall be a signed integer type
+capable of storing values at least in the range [-1,
+.BR SSIZE_MAX ].
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR copy_file_range (2),
+.BR getrandom (2),
+.BR getxattr (2),
+.BR listxattr (2),
+.BR msgrcv (2),
+.BR pread (2),
+.BR process_vm_readv (2),
+.BR read (2),
+.BR readahead (2),
+.BR readlink (2),
+.BR readv (2),
+.BR recv (2),
+.BR send (2),
+.BR sendfile (2),
+.BR splice (2),
+.BR tee (2),
+.BR vmsplice (2),
+.BR write (2),
+.BR aio_return (3),
+.BR getdirentries (3),
+.BR getline (3),
+.BR mq_receive (3),
+.BR strfmon (3),
+.BR swab (3),
+.BR mq_receive (3)
+.IP
+See also the
+.I size_t
+type in this page.
+.TP
+.I suseconds_t
+.IP
+Include:
+.I <sys/types.h>
+or
+.I <sys/select.h>
+or
+.I <sys/time.h>
+or
+.I <unistd.h>
+.IP
+Used for time in microseconds.
+According to POSIX, it shall be a signed integer type
+capable of storing values at least in the range [-1, 1000000].
+.IP
+Conforming to: POSIX.1-2001 and later.
+.\".IP
+.\"See also:
+.IP
+See also the
+.I timeval
+structure in this page.
+.TP
+.I time_t
+.IP
+Include:
+.I <time.h>
+or
+.I <sys/types.h>
+or
+.I <sched.h>
+or
+.I <sys/msg.h>
+or
+.I <sys/select.h>
+or
+.I <sys/sem.h>
+or
+.I <sys/shm.h>
+or
+.I <sys/stat.h>
+or
+.I <sys/time.h>
+or
+.I <utime.h>
+.IP
+Used for time in seconds.
+According to POSIX, it shall be an integer type.
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR stime (2),
+.BR time (2),
+.BR timer_settime (2),
+.BR ctime (3),
+.BR difftime (3),
+.BR timegm (3)
+.TP
+.I timer_t
+.IP
+Include:
+.I <sys/types.h>
+or
+.I <time.h>
+.IP
+Used for timer ID returned by
+.BR timer_create (2).
+According to POSIX,
+there are no defined comparison or assignment operators for this type.
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR timer_create (2),
+.BR timer_delete (2),
+.BR timer_getoverrun (2),
+.BR timer_settime (2)
+.TP
+.I timespec
+.IP
+Include:
+.I <time.h>
+or
+.I <aio.h>
+or
+.I <mqueue.h>
+or
+.I <pthread.h>
+or
+.I <sched.h>
+or
+.I <semaphore.h>
+or
+.I <signal.h>
+or
+.I <sys/select.h>
+or
+.I <sys/stat.h>
+or
+.I <trace.h>
+.IP
+.EX
+struct timespec {
+    time_t  tv_sec;  /* Seconds */
+    long    tv_nsec; /* Nanoseconds */
+};
+.EE
+.IP
+Describes times in seconds and nanoseconds.
+.IP
+Conforming to: C11 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR clock_gettime (2),
+.BR clock_nanosleep (2),
+.BR nanosleep (2),
+.BR timerfd_gettime (2),
+.BR timer_gettime (2)
+.TP
+.I timeval
+.IP
+Include:
+.I <sys/time.h>
+or
+.I <sys/resource.h>
+or
+.I <sys/select.h>
+or
+.I <utmpx.h>
+.IP
+.EX
+struct timeval {
+    time_t      tv_sec;  /* Seconds */
+    suseconds_t tv_usec; /* Microseconds */
+};
+.EE
+.IP
+Describes times in seconds and microseconds.
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR futimesat (2),
+.BR gettimeofday (2),
+.BR select (2),
+.BR utimes (2),
+.BR adjtime (3),
+.BR futimes (3),
+.BR rpc (3),
+.BR rtime (3),
+.BR timeradd (3)
-- 
2.28.0

