Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADB4826821F
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 02:20:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725963AbgINAUy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 20:20:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725950AbgINAUx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 20:20:53 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73195C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 17:20:51 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id z1so16797696wrt.3
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 17:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UGGphNlFbvUrtiCPYBYCFVWCs9Txcy4DnfHoXkC+mZw=;
        b=mTOLjdQLg/I0SVIqb/+N1knkSpLVW7Yy5Uheu8s/4Zl3mCHmlQwnSl6YQ8RowWqUUw
         Eep5cc4YLxbj/GOKlwwvr55EMFOAQb57e/AQiftpX8ZoafJcG0RF9/gaYuG8CTTG3ojx
         XKf7q4KJLJ2G8NTFG2Vy16JsKppcX/9665Y7Rdf3UrWNq+M12o2njQ7iJdEkhwtnRdvK
         /NkQ6HzGQriP8PHVO66bN56ZZSXMsVllvLyekyd7flLYZIOJ3MJM8VBC1uKp/uNBz6RH
         HCtkMcnCgbbc46RhTaF6XyLzWidWkxOJsfkzaLvYRINOsWzazqQKmjNYolGLGjj7K/gV
         jFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UGGphNlFbvUrtiCPYBYCFVWCs9Txcy4DnfHoXkC+mZw=;
        b=j4BdMON0CyXl2mvpUywL4/fnGUGZySC/CsHs9m52sDbZU3aja5rGkPoZCAjQSPuREJ
         bxFZaqziDEnloCF/eRH7K43KV9jxxs6ClY+nvmNylmNUlhAhLi2WYnaUFaNk1lCMb8SH
         atKz0aBt8u5yXTPrvim6e0cI/CeNvVk8lpIxEK723qcGTcMyyKJmVoZB3grpRGCAIxyc
         16UmNHSVwsnNeY7x5GHdw148hYEo8IwGVdcCQIWWDXs4hycESDyGxm9d2BgN6UN6XUgm
         4Jmrs3tBy1tjGX0OB4W0iQxbfIBFZxue20dly+HvG/TiCh/81eHnZ512vCpv+Bo7bMb1
         Lejg==
X-Gm-Message-State: AOAM530C49LgS5v6c7Amj/ZBttxQGr4yGBQHtTNm80M16TZqCCK9f6RV
        iWk6pt4BE2ZU/Z9A4ic+bro=
X-Google-Smtp-Source: ABdhPJxPYTyurRxi/WlTwOiC8TxF85V1etXvDoPOBweaXKvM/FMV4hoIREmavD4JOSlkXkdHk90e4A==
X-Received: by 2002:a5d:494b:: with SMTP id r11mr13049752wrs.227.1600042847863;
        Sun, 13 Sep 2020 17:20:47 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id o6sm18536585wrm.76.2020.09.13.17.20.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 17:20:47 -0700 (PDT)
Subject: [RFC v1] system_data_types.7: Draft (and links to it: <type>.3)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com>
 <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
 <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
Message-ID: <af73c477-c8a6-c03f-c6db-ab613b8d6d2f@gmail.com>
Date:   Mon, 14 Sep 2020 02:20:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From ffd8ea312527935cd86cc7ed1133a08d4e642b06 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Mon, 14 Sep 2020 02:07:50 +0200
Subject: [RFC] First draft for system_data_types.7 (and links to it:
 <type>.3)

Hi Michael,

This is my first draft.

There are still TODO things:
- Add types (obviously)
- Write specific "Conforming to" versions
  For now I just wrote POSIX, but I'll write the specific versions.
  Should I write the latest one, the oldest one, or how?
  For C versions I did the following:
	If the type has been there since C89, I wrote C89, C99.
	If the type is >= C99, I wrote C99.
	If the type is >= C11, I wrote C11.
- Correctly highlight function names and similar (see timer_t)
  For this first draft, I just want to show you the idea.  I'll add
  italics and all that stuff later on.
- Review "See also" (right now: all results of 'grep -rl <type>')
  I put everything that came up with grep in the See also section.
  Is it too much?  Any other references I should add?

Your thoughts?

Cheers,

Alex

---
 man3/sigval.3            |   1 +
 man3/time_t.3            |   1 +
 man3/timer_t.3           |   1 +
 man3/timespec.3          |   1 +
 man3/timeval.3           |   1 +
 man7/system_data_types.7 | 201 +++++++++++++++++++++++++++++++++++++++
 6 files changed, 206 insertions(+)
 create mode 100644 man3/sigval.3
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
index 000000000..278a6b830
--- /dev/null
+++ b/man7/system_data_types.7
@@ -0,0 +1,201 @@
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
+.\"	* Review "See also" (right now: all results of 'grep -rl <type>')
+.SS typedef types
+.TP
+.B time_t
+.I <time.h>
+or
+.I <sys/types.h>
+.IP
+Used for time in seconds.
+It shall be an integer type.
+.IP
+Conforming to: POSIX, C89, C99
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
+.B timer_t
+.I <time.h>
+or
+.I <sys/types.h>
+.IP
+Used for timer ID returned by timer_create().
+There are no defined comparison or assignment operators for this type.
+.IP
+Conforming to: POSIX
+.IP
+See also:
+.BR timer_create (2),
+.BR timer_delete (2),
+.BR timer_getoverrun (2),
+.BR timer_settime (2)
+.SS struct types
+.TP
+.B timespec
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
+Conforming to: POSIX, C11
+.IP
+See also:
+.BR clock_getres (2),
+.BR clock_nanosleep (2),
+.BR futex (2),
+.BR io_getevents (2),
+.BR nanosleep (2),
+.BR poll (2),
+.BR recvmmsg (2),
+.BR sched_rr_get_interval (2),
+.BR select (2),
+.BR semop (2),
+.BR sigwaitinfo (2),
+.BR stat (2),
+.BR timerfd_create (2),
+.BR timer_settime (2),
+.BR utimensat (2),
+.BR aio_suspend (3),
+.BR clock_getcpuclockid (3),
+.BR getaddrinfo_a (3),
+.BR mq_receive (3),
+.BR mq_send (3),
+.BR pthread_getcpuclockid (3),
+.BR pthread_tryjoin_np (3),
+.BR sem_wait (3),
+.BR socket (7)
+.TP
+.B timeval
+.I <sys/time.h>
+.IP
+.EX
+struct timeval {
+    time_t      tv_sec;  /* Seconds */
+    suseconds_t tv_usec; /* Microseconds */
+};
+.EE
+.IP
+Describes times in seconds and miliseconds.
+.\" Comment from /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h
+.IP
+Conforming to: POSIX
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
+.SS union types
+.TP
+.B sigval
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
+Conforming to: POSIX
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
