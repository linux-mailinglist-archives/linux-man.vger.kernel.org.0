Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FEDA26D966
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726285AbgIQKpB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:45:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726698AbgIQKof (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:44:35 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EBEDC061756
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:18 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k18so1532129wmj.5
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JI+u/N0ABKQX3RwxBNaHm+lUrEB5F/R+58Z8F1F/2wI=;
        b=h/xN+xwgIcBgDGrUCr3uze5yZ87A+SZgSoh8XkQzV1nzgiip/qCOaxogPmozq4djAv
         5Hl+CFbmRBPmkI1aWJRK323xOQNR1lNLoTN5fxCTTf8PmvV7rFdgECE4eW6l4JS0c/cK
         5sGr3X83qbsTXWx/WxW+YJ26jiS6Nct2wz83KNV0eYsG6SfMrSnnpXhD0H4dNcMJNK1+
         1ASIJCkSE+2+is+XL2bIS/wytb5d79lbRKo3lSc0mgK9J0UzMN0zjKa+CWDyHVWZiMtN
         s+qXV4L1e6NWpjW4tWDt+X8vfo0LKUFKsNdjPPZi18Xcd1JPNE1v12slPdaIWW0+LoSe
         IHPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JI+u/N0ABKQX3RwxBNaHm+lUrEB5F/R+58Z8F1F/2wI=;
        b=XKK/Z22xahPZchyDivJ++/WEYM9wd8wrHTr6RezoPY3fXJjrF6oltvkW49qEaHl7Ty
         Hitchcyk9Pm5BfX/QdDorFfXTE9Gpj/r2FkfT+FTn58Q3bB2nIsHzlaAJAyi54Bln2qJ
         axAaFJ8qbWgjKcdCwuw+yPLz0BETFleN2cwUTrNom5rDKGXu6qu5S5rLnoCmrcAvciI6
         ylyl72AoaE5PV7tHzcIrdVoQmJV4CPnZ8Zpx1p/paHeuZZ65UTdOhj8L/fju4h/x+yKv
         UhLnWLVyBR97ywNniFvAPyFaOFjvwDuxW2wCzPPbQN5P6aVT7r3pKWc6Y9VtPmFhxcPf
         M2nQ==
X-Gm-Message-State: AOAM532xiFdFI6h6mxnKRZGGF/qi6JozIb43dNDFYTtiQfjkxca8d7cf
        aV4Uj5zhue3nO4Omu4nLa0U=
X-Google-Smtp-Source: ABdhPJzOD5C+1qof7GxL8L+hd7VN4zLJ4t/eQ3mG8DO1FIWqJJBGOn3MvGEH5ffV7AbI/lPxiOMo0w==
X-Received: by 2002:a7b:cb97:: with SMTP id m23mr9100665wmi.173.1600339456946;
        Thu, 17 Sep 2020 03:44:16 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l16sm42807186wrb.70.2020.09.17.03.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 03:44:16 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl, Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v7 1/8] system_data_types.7: Document types: sigval, ssize_t, suseconds_t, time_t, timer_t, timespec, timeval
Date:   Thu, 17 Sep 2020 12:42:59 +0200
Message-Id: <20200917104305.12270-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 280 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 280 insertions(+)
 create mode 100644 man7/system_data_types.7

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
new file mode 100644
index 000000000..8072f739b
--- /dev/null
+++ b/man7/system_data_types.7
@@ -0,0 +1,280 @@
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
+.\"			1) The main header that shall define the type
+.\"			   according to the C Standard,
+.\"			   and
+.\"			   the main header that shall define the type
+.\"			   according to POSIX,
+.\"			   in alphabetical order.
+.\"			;
+.\"			2) All other headers that shall define the type
+.\"			   as described in the previous header(s)
+.\"			   according to the C Standard or POSIX,
+.\"			   in alphabetical order.
+.\"			*) All headers that define the type
+.\"			   *if* the type is not defined by C nor POSIX,
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
+.IR <signal.h> .
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
+.BR pthread_sigqueue (3),
+.BR sigqueue (3),
+.BR sigevent (7)
+.\".IP
+.\"See also the
+.\".I sigevent
+.\"structure and the
+.\".I siginfo_t
+.\"type in this page.
+.TP
+.I ssize_t
+.IP
+Include:
+.IR <sys/types.h> ;
+or
+.I <aio.h>
+or
+.I <monetary.h>
+or
+.I <mqueue.h>
+or
+.I <stdio.h>
+or
+.I <sys/msg.h>
+or
+.I <sys/socket.h>
+or
+.I <sys/uio.h>
+or
+.IR <unistd.h> .
+.IP
+Used for a count of bytes or an error indication.
+According to POSIX, it shall be a signed integer type
+capable of storing values at least in the range [-1,
+.BR SSIZE_MAX ].
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR read (2),
+.BR readlink (2),
+.BR readv (2),
+.BR recv (2),
+.BR send (2),
+.BR write (2)
+.\".IP	FIXME: When size_t is added, uncomment
+.\"See also the
+.\".I size_t
+.\"type in this page.
+.TP
+.I suseconds_t
+.IP
+Include:
+.IR <sys/types.h> ;
+or
+.I <sys/select.h>
+or
+.IR <sys/time.h> .
+.IP
+Used for time in microseconds.
+According to POSIX, it shall be a signed integer type
+capable of storing values at least in the range [-1, 1000000].
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also the
+.I timeval
+structure in this page.
+.TP
+.I time_t
+.IP
+Include:
+.I <sys/types.h>
+or
+.IR <time.h> ;
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
+.IR <utime.h> .
+.IP
+Used for time in seconds.
+According to POSIX, it shall be an integer type.
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+Notes:
+.I <sched.h>
+defines
+.I time_t
+since POSIX.1-2008.
+.IP
+See also:
+.BR stime (2),
+.BR time (2),
+.BR ctime (3),
+.BR difftime (3)
+.TP
+.I timer_t
+.IP
+Include:
+.IR <sys/types.h> ;
+or
+.IR <time.h> .
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
+.IR <time.h> ;
+or
+.I <aio.h>
+or
+.I <mqueue.h>
+or
+.I <sched.h>
+or
+.I <signal.h>
+or
+.I <sys/select.h>
+or
+.IR <sys/stat.h> .
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
+.IR <sys/time.h> ;
+or
+.I <sys/resource.h>
+or
+.I <sys/select.h>
+or
+.IR <utmpx.h> .
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
+.BR gettimeofday (2),
+.BR select (2),
+.BR utimes (2),
+.BR adjtime (3),
+.BR futimes (3),
+.BR timeradd (3)
+.SH NOTES
+The structures described in this manual page shall contain,
+at least, the members shown in their definition, in no particular order.
-- 
2.28.0

