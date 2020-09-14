Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14165268CD3
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 16:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726385AbgINOGB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 10:06:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726789AbgINOFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 10:05:43 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C40B0C061788
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 07:05:41 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x14so18858385wrl.12
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 07:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cCoWDHEyh6aw/k2SQfY9rBJw+siDjnaOo9C+aG3TOB8=;
        b=NqC5aL9JKIoIenseqjW/Al/mnCdg28CUkydfbNWsgmFthdsvcU+natBv2QAIeu2ZUJ
         TqzY2DCreBcJ0yqQl8oShBS7vVkxzwQGU0kMAPGZAc5QltOGl9QqicYHviPEox1tLoFw
         2/8nDtFDDvB4CAmGbW2u1wv1r4k8HIKYfzKKbkzu2uCXXEPIDLJQIug3nRxVKC+xPFIp
         9vGBV1ET8pfGpuq8I3S6BveO08tBBmBc/J1rXf5Vv9ro8h4wWBCfR0Qs1yEcwNhVfc6p
         VDmarYa8I6cwlLhSSPOyh43/lmDft2Jzh9BP/KiVcKPXP/NzOMcSSPxNEcyuKCfY0FGT
         7u+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cCoWDHEyh6aw/k2SQfY9rBJw+siDjnaOo9C+aG3TOB8=;
        b=AUesbEdMMxgh6+f55ny+oGSuaRG1alz/2ZBwLnc8c59c058XcCkzCOSyrFy+MI2shg
         umE0l3CRK0VjkCWCf0sHjHnWnkeId2H1BfrdwBh2Dj8U0G/0iw/LYEUrHOa5Xhyxsgdj
         rslXypMRMSh3UQeO8yYkG6y1R3fyCn+MhwFWPum3z/VK5xBRiLgrgov99iWoiGuLp836
         JBUBa3vDAh0DHfAwflTe+3lNlhfhWD7QIuyjLKdl7QM7p4qvzxP/EE2bGFMqrIGTZ6+s
         0iTgmjbEucelQwM2yu19WjmDj0wxT7LlBdUrNp2iBTVShI4fddDExmWnxiTTF9JKC2fu
         /swg==
X-Gm-Message-State: AOAM531EPyMdc8BfMOcwxKJa33NCnDPnCPiO5PRLJzpZAV3clDwtgX16
        CRuMpxs6B838B2HBy/e/ZyQ=
X-Google-Smtp-Source: ABdhPJxg6MBIPP8YiDCrxgUQtPhYJyXXQAsznGsiriGMDNYNmmNGDxKYTeUSJHVExGJDW6l2JWGjEw==
X-Received: by 2002:a5d:4c90:: with SMTP id z16mr17119842wrs.170.1600092338268;
        Mon, 14 Sep 2020 07:05:38 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u66sm27454220wme.1.2020.09.14.07.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 07:05:37 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, fweimer@redhat.com,
        libbsd@lists.freedesktop.org, jwilk@jwilk.net,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [RFC v2] system_data_types.7: Draft v2
Date:   Mon, 14 Sep 2020 16:03:57 +0200
Message-Id: <20200914140356.41476-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Changelog since Draft v1:

- Fix includes for timer_t: remove <time.h>
- tfix
- Clarify POSIX requirements
- Remove subsections, and instead use full names for structs/unions
- Includes: ffix
- Conforming to: ffix
- struct timespec: update "see also"
- Add suseconds_t
- Remove old comments

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

On 2020-09-14 12:37, Michael Kerrisk (man-pages) wrote:
> Good. I think that we can get away with just mentioning one each of
> POSIX.1-200x and Cxx, with the latter starting at C99. I think C89 is
> far enough back in time that we don't need to clutter the page with
> it. Something like:
> 
> Conforming to: C99 and later; POSIX.1-2001 and later.

OK.

> Instead, I looked inside the pages that you listed to see which APIs
> seemed "relevant".

Work in progress.  I'll do it for the other types soon.

> You better include suseconds_t in the next draft:-).

:-)

> Having seen how it looks with the header files, I'm going to suggest a
> differnt approach. Let's put them on a separate line, something like:
> 
> Obtained by including: <abc.h> or <xyz.h>

I simplified it to just:

Include: <asd.h> or <qwe.h>

> It's an open question whether the links should be in section 3 or
> section 7. Do you have any thoughts on what's better?

All sources I could find talk about section 3 as a section containing
all C "library functions".
Types don't exactly fit in that description, but it could be stretched
a bit to contain all C "library definitions".

Also, libbsd already chose section 3, and I don't see a strong reason
against it, so maybe we could follow that pattern.

I would still have system_data_types.7 in section 7, as it doesn't
match the name of any library definition.

BTW, would you also add "struct-" and "union-" link pages?:

man3/struct-timespec.3   |   1 +
man3/timespec.3          |   1 +

instead of

man3/timespec.3          |   1 +

> Don't get wrapped up in including too many more types in the
> yet, while we try to iron out the format.
> 
> Also, I'd like to see the types added incrementally (one or a few
> at a time), so that it's easy to comment on each type, when needed.

Agree.

Thanks,

Alex


 man3/sigval.3            |   1 +
 man3/suseconds_t.3       |   1 +
 man3/time_t.3            |   1 +
 man3/timer_t.3           |   1 +
 man3/timespec.3          |   1 +
 man3/timeval.3           |   1 +
 man7/system_data_types.7 | 227 +++++++++++++++++++++++++++++++++++++++
 7 files changed, 233 insertions(+)
 create mode 100644 man3/sigval.3
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
index 000000000..8b89a46f3
--- /dev/null
+++ b/man7/system_data_types.7
@@ -0,0 +1,227 @@
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
+.TP
+.BI "struct " timespec
+.IP
+Include:
+.I <time.h>
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
+.BI "struct " timeval
+.IP
+Include:
+.I <sys/time.h>
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
+.TP
+.I suseconds_t
+.IP
+Include:
+.I <sys/types.h>
+.IP
+Used for time in microseconds.
+It shall be a signed integer type
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
+.BR timeval (3)
+.\".BR timeradd (3)
+.TP
+.I time_t
+.IP
+Include:
+.I <time.h>
+or
+.I <sys/types.h>
+.IP
+Used for time in seconds.
+In POSIX, it shall be an integer type.
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
+.IP
+Used for timer ID returned by timer_create().
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
+.BI "union " sigval
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
+Data passed with notification.
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
-- 
2.28.0

