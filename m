Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3110926CB2D
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 22:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727297AbgIPUX3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 16:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727096AbgIPR2k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 13:28:40 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25B89C061354
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 03:53:20 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q9so2316817wmj.2
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 03:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rU3x4N3mg4zOyUYFrimkAp2ncKFqVV0gnh0/UtcTLyQ=;
        b=oZaa2qcU/v8SGUX6hCDfHZQUXcYkB50d3NN/NHQivqOs2UfXUqyEEu8ArMGZaxcOGt
         rockpDYGirb9RHygiLFBO4DL42+gvXCXdBVB7g1RUx9xpZlIk8+gu+o9nxAZIqEjKsPQ
         S3ILzUBwo5r166OLM7W90TiyX9xcMrIv7OGrAAJ20zZO7/UU/pGG+cODrj/ot05KzcD5
         jAA9oojphAt0gVNsisAXVSTDXdtbsuog7cV/LbVI4hLA3hKwibHZBuSwsSxsivps8/vi
         Q1qi8RwMKXiXtNhZZuAL5kMIr9M0efTN9OWDzEJ1E2DCfTYid4wVlhjxCGFA/SBNl1Sh
         la/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rU3x4N3mg4zOyUYFrimkAp2ncKFqVV0gnh0/UtcTLyQ=;
        b=ObE2ceoC89dtU/iV4S2fILRhKQ57oGMpHxQPz6S6yq0M3mc6lpi0QmRElZp3OvFecc
         gygMlJmxUnnFZ6F4AR6Df6K2SOFegPI/Y8U8L+FdDjFPKlCtwiNNHt7CgMfTkrlt6AbR
         9CmuqOuXRF/BqppPUC/omLh9rr+HMnZKFy2brW8GURhi0lZkSdw+i23kKgyt50Jz4EFB
         YTh7EdMBscKp2DQ0GLHr/Qkn0rJ8J+80Q5nHO7J25fCUoqYbm7hKRf4u2xDAVuJVrCpl
         Ugetqnebum7RMpZ+CQa6HH2yoiXT4C1o5HQouxTk3zgt+n0UjEDzxw3OjjrvvrY/CxLl
         JweA==
X-Gm-Message-State: AOAM533npL7NFADOeg3DUwDMXGTrdO+oI2aHZeaAKrJRgY0pIyvTVDh1
        l1Yv/8HCq0ZInoAjKOruHTscvKKLndPfIg==
X-Google-Smtp-Source: ABdhPJwRioaKI9h68lXguEvA1pCYV7SyEX9OVBagu4pZsXb6PxsLG6+YGi0ARgSwPI9WIPLBowcrcg==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr4185463wmc.45.1600253598598;
        Wed, 16 Sep 2020 03:53:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p1sm7170616wma.0.2020.09.16.03.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 03:53:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl, Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [RFC v5] system_data_types.7: Document types: sigval, ssize_t, suseconds_t, time_t, timer_t, timespec, timeval
Date:   Wed, 16 Sep 2020 12:52:29 +0200
Message-Id: <20200916105228.16952-1-colomar.6.4.3@gmail.com>
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

Changelog since v4:

- Comment "See also" about yet undocumented size_t
- Simplify header ordering
- Curate See also
- Remove incorrect headers


On 2020-09-15 23:30, Michael Kerrisk (man-pages) wrote:
> Okay. Time to nit pick:-). Do not be too dispirited,
> I think we started with some of the most difficult types...

I was waiting for it :-).

> I soppose what I meant is that POSIX defers to the C standard
> in the cases where they overlap, and I'd expect that the set
> of headers specified in the C standard and in POSIX might be the
> same, but where they're not, I suspect the list of POSIX headers
> would always be a superset of the C headers. So, just make a
> single list of those headers, followed by 3 and 4 (merged)

See updated comment in the page.

> I suggest dropping the pages marked XX. The remaining can serve
> as the (commonly used) exemplars of APIs that use this type.

Done.  I don't have experience enough to subjectively decide
which ones should stay and which ones we should drop, so...

> Okay, now I look closer at these lists. How have you determined them?

I kept references to all APIs that use the type in the prototype.

And for the headers list:

I started reading the contents of the headers, but all I had seen
did actually define the type, so I guessed that all the remaining
grep appearances would also define the type.  Clearly, I guessed wrong.

> <sched.h> only defines time_t since POSIX.1-2008, as far as I can
> tell! I'm not sure how/if we want to represent that detail.

I added a Notes section for that type.  You like it?

> But size_t is not in this page (yet). Is it in your tree?

Not yet.  In my tree I didn't forget to comment it, though.  As you can
guess, It'll be the next type to document, and then ptrdiff_t.

> Today I learned: size_t is in C99, but ssize_t is not!

:)

Cheers,

Alex.

 man7/system_data_types.7 | 304 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 304 insertions(+)
 create mode 100644 man7/system_data_types.7

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
new file mode 100644
index 000000000..1616d858c
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
+.\"			Format: CXY and later; POSIX.1-XXXX and later.
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
+.\".IP	FIXME: When size_t is added, uncomment
+.\"See also the
+.\".I size_t
+.\"type in this page.
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

