Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E51F269AA9
	for <lists+linux-man@lfdr.de>; Tue, 15 Sep 2020 02:49:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbgIOAtE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 20:49:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725999AbgIOAtD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 20:49:03 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92CA5C06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 17:49:02 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id e11so9946580wme.0
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 17:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=isz9PC6HTLwoKu79kAkZzvexoddNNGSEIuGK4XL0WQo=;
        b=lZivp0E77uVc7Xsj1NxF8/qSGwcnhLoEG20xD6sWf93xfnhpy5NgZj65fCZz3Md834
         8tc9y0Czs8ZRRfKASPypt7bt5xnru4tjkmk2JI1x8JhnyHBvWg5k5sf/i11GNgOETnnC
         bYcsCXParKkgC+RhnBS5kNXwenvvAVX5NnDhTcd3W9qcZ8E7TyvHljIofpXHdqXZm202
         NcecgYTRpgRgkwQ1ukxdtZSu8DKh45eoy3vQX7GaiPytws7cIejw5lF2NXdMaq6vH2BB
         awiTQNXS0lEHlGvIBJlFNBC+T9brGUdtwDZQyxaCZ8IZJsE56wn/ueC2v+aMaoD7GHOB
         2fjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=isz9PC6HTLwoKu79kAkZzvexoddNNGSEIuGK4XL0WQo=;
        b=sTsc5YnvUHbllfxNOywDXEpcIBdzoKFIr+zVxzZRqSvT0YO3XHG7AUKmDeUqprf5hv
         vRXGHGsKnj4b4fIXmVXSmJG2HY7dWNrXH7TT9A2AI94mBhDtk7yNwf07lgQjOVWSoFh8
         HjU0qQEoA1bBHg5AMd+HDzB0FAV60CNnEN07dP2gCUkQM9SDpyA58d7qH9NCA1lPazGM
         hp4a3+SpfC/DlvVULBQdhJYTjh//vBnkfaSJR3IVEHjwaMquJEA/j5YAt5nO6svHAz6l
         mv6RoanpM09PyfdYs7x9xSG6/Rmyf/MVLL5P0JgUC9H2b9FInAYZOmPD8aDRtDPBvXzV
         oLfg==
X-Gm-Message-State: AOAM532NmrELstns+0q9CumWOQb1zvywpQFZhjHJXJ0mnerW/zpHOXh1
        c3stbHQR0d7FJD7JSUcE7wU=
X-Google-Smtp-Source: ABdhPJxrHKdffY1X9RN0RlXmZ5am0HQIiU+XCbp5gNlWYUr4qgzkcBmMsXhg7+8SsBjxQfvxqszbWA==
X-Received: by 2002:a05:600c:4142:: with SMTP id h2mr1857370wmm.128.1600130935820;
        Mon, 14 Sep 2020 17:48:55 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id z9sm22950208wmg.46.2020.09.14.17.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 17:48:54 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, fweimer@redhat.com,
        libbsd@lists.freedesktop.org, jwilk@jwilk.net,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [RFC v3] sigval.3, ssize_t.3, suseconds_t.3, time_t.3, timer_t.3, timespec.3, timeval.3, system_data_types.7: Document system types (draft v3)
Date:   Tue, 15 Sep 2020 02:47:18 +0200
Message-Id: <20200915004716.360586-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Changelog since dratf v2:

- Remove struct/union keywords from list of type names (and sort)
- wfix
- ffix
- Add all the headers that define each type
- Specify the layout of the list in a comment
- Add size_t type (I had to do it :-)


Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

On 9/14/20 9:33 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
>
> On 9/14/20 5:52 PM, Alejandro Colomar wrote:
>> Hi Michael,


> As I think about more, maybe the list of type keywords could even
> omit 'struct' and 'union', since the struct/union definition will be shown
> in the following text. Your thoughts?

Yes, it looks nicer (the eye doesn't need to move to the right at each
struct/union) so it is visually easier to find the types.

>>> s/It/According to POSIX, it/
>> As this type is POSIX-only, I thought it was redundant.  Don't you?
> I think it's clearer to be explicit. Otherwise, the reader has to do
> some deductive work.
>

Agreed.

>> If I added every header that has a line like that, the lists of headers
>> would be much bigger for most of the types.  It could be good, but I
>> don't know if we should do it.  Maybe we should limit to the headers
>> that are required by CXX and the ones where the POSIX docs actually
>> document the type (this header doesn't define it, and instead it defers
>> to <sys//types.h> for example).
>>
>> Your thoughts?
> I think the list would not be so long. Maybe two headers sometimes,
> occasionally three, but I doubt more. At least right now, I think we
> should do it; I may yet be shown the error of my ways :-).

The list is rather long, but now I don't deel it's too much, and it has
some value.  I'd keep all of them.  See my comment (Layout) in the page,
and feel free to add to/modify it.

> Good progress so far. Thanks, Alex!
>
> Cheers,
>
> Michael

Thank you too, Michael!

Cheers,

Alex

 man3/sigval.3            |   1 +
 man3/ssize_t.3           |   1 +
 man3/suseconds_t.3       |   1 +
 man3/time_t.3            |   1 +
 man3/timer_t.3           |   1 +
 man3/timespec.3          |   1 +
 man3/timeval.3           |   1 +
 man7/system_data_types.7 | 349 +++++++++++++++++++++++++++++++++++++++
 8 files changed, 356 insertions(+)
 create mode 100644 man3/sigval.3
 create mode 100644 man3/ssize_t.3
 create mode 100644 man3/suseconds_t.3
 create mode 100644 man3/time_t.3
 create mode 100644 man3/timer_t.3
 create mode 100644 man3/timespec.3
 create mode 100644 man3/timeval.3
 create mode 100644 man7/system_data_types.7

diff --git a/man3/sigval.3 b/man3/sigval.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/sigval.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/ssize_t.3 b/man3/ssize_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/ssize_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/suseconds_t.3 b/man3/suseconds_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/suseconds_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/time_t.3 b/man3/time_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/time_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/timer_t.3 b/man3/timer_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/timer_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/timespec.3 b/man3/timespec.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/timespec.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/timeval.3 b/man3/timeval.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/timeval.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
new file mode 100644
index 000000000..dd93c6746
--- /dev/null
+++ b/man7/system_data_types.7
@@ -0,0 +1,349 @@
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
+.\"	* Check specific POSIX "Conforming to" versions
+.\"	* Correctly highlight function names and similar (see timer_t)
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
+.\"			   in alphabetical order.
+.\"			4) All other headers that define the type
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
+.\"			example: CXY and later; POSIX.1-XXXX and later
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
+Conforming to: POSIX.1-xxxx and later.
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
+Conforming to: POSIX.1-xxxx and later.
+.IP
+See also:
+.BR TODO (XXX),
+.BR TODO (may be too large)
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
+Conforming to: POSIX.1-xxxx and later.
+.IP
+See also:
+.\".BR getitimer (2),
+.\".BR gettimeofday (2),
+.\".BR select (2),
+.\".BR adjtime (3),
+.\".BR ntp_gettime (3),
+.\".BR timeval (3),
+.\".BR timeradd (3)
+.IP
+See also the
+.B timeval
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
+Conforming to: C99 and later; POSIX.1-xxxx and later.
+.IP
+See also:
+.BR clock_getres (2),
+.BR clock_nanosleep (2),
+.BR getitimer (2),
+.BR gettimeofday (2),
+.BR io_getevents (2),
+.BR keyctl (2),
+.BR msgctl (2),
+.BR msgop (2),
+.BR nanosleep (2),
+.BR sched_rr_get_interval (2),
+.BR select (2),
+.BR semctl (2),
+.BR shmctl (2),
+.BR stat (2),
+.BR stime (2),
+.BR time (2),
+.BR timerfd_create (2),
+.BR timer_settime (2),
+.BR times (2),
+.BR utime (2),
+.BR utimensat (2),
+.BR adjtime (3),
+.BR ctime (3),
+.BR difftime (3),
+.BR ftime (3),
+.BR mq_receive (3),
+.BR mq_send (3),
+.BR newlocale (3),
+.BR ntp_gettime (3),
+.BR pthread_cleanup_push (3),
+.BR pthread_tryjoin_np (3),
+.BR rtime (3),
+.BR sem_wait (3),
+.BR strcat (3),
+.BR strftime (3),
+.BR timegm (3),
+.BR timeradd (3)
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
+There are no defined comparison or assignment operators for this type.
+.IP
+Conforming to: POSIX.1-xxxx and later.
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
+Conforming to: C11 and later; POSIX.1-xxxx and later.
+.IP
+See also:
+.\".BR clock_getres (2),
+.BR clock_gettime (2),
+.BR clock_nanosleep (2),
+.\".BR futex (2),
+.\".BR io_getevents (2),
+.BR nanosleep (2),
+.\".BR poll (2),
+.\".BR recvmmsg (2),
+.\".BR sched_rr_get_interval (2),
+.\".BR select (2),
+.\".BR semop (2),
+.\".BR sigwaitinfo (2),
+.\".BR stat (2),
+.\".BR timerfd_create (2),
+.BR timerfd_gettime (2),
+.BR timer_gettime (2)
+.\".BR timer_settime (2),
+.\".BR utimensat (2),
+.\".BR aio_suspend (3),
+.\".BR clock_getcpuclockid (3),
+.\".BR getaddrinfo_a (3),
+.\".BR mq_receive (3),
+.\".BR mq_send (3),
+.\".BR pthread_getcpuclockid (3),
+.\".BR pthread_tryjoin_np (3),
+.\".BR sem_wait (3),
+.\".BR socket (7)
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
+Conforming to: POSIX.1-xxxx and later.
+.IP
+See also:
+.BR adjtimex (2),
+.BR futimesat (2),
+.BR getitimer (2),
+.BR getpriority (2),
+.BR getrusage (2),
+.BR gettimeofday (2),
+.BR select (2),
+.BR syscall (2),
+.BR syscalls (2),
+.BR utime (2),
+.BR wait4 (2),
+.BR adjtime (3),
+.BR futimes (3),
+.BR ntp_gettime (3),
+.BR rpc (3),
+.BR rtime (3),
+.BR timeradd (3),
+.BR utmp (5),
+.BR packet (7),
+.BR socket (7)
-- 
2.28.0

