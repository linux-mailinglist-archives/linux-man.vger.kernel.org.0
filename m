Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 387DC3537EB
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230366AbhDDL7r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230377AbhDDL7q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:46 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8097C061788
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:41 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id a6so2590497wrw.8
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EpXhDfjANekpqRoKyHYo29H6mLCXF+4mapysiZHKSf0=;
        b=Yf3lejD6GRmFMJ0NOHCi9T+FbJ5V21a2M9DCurSt30jDZKemXF2iCT4Jpr8AJ4akzR
         78kRyiy33bFQUENXMExZn1P+5j8MXM+OsIhbE89Omjy5GeAbeeoRTejD9sJ3MV1WN2xs
         fss3Z/w+Lj28mSJ82zXhaWRCqNSsdQIXysbR1JUCx+yIAXsIAR6vQmeJvLUx20h8N3Bm
         FuPpn4NaoQJB0KdJ7N5U0sQcsNZoEKAubwDWw/0K7MkE3kAt95xyhyyJBjUni1J0F+Hq
         ipj0srblsJ0+nM7sWSVptzva08s72q53YgIid8mx1yy1pd+/O/wkq86bSgtJUz2oXGjN
         EYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EpXhDfjANekpqRoKyHYo29H6mLCXF+4mapysiZHKSf0=;
        b=S79bLKDiFCboydlqj1baEh7OYAKcVdCxrCHlXGy7vWVEOzj5RAf+9uwDS+RDK3oZEm
         OMhO+UmdMx6957sGajODmk9afg1FJEBSDihS75KegH9nHHCpwstLH4dGLWQEkSA58rfq
         I3yioYXW9HPmBm05XpWthKuFIBuzh4OTiWbX/H0vnts9mT90C5f9XD/xCvn/U59442g6
         C1dvxw4hfajtzHdGqFC5xKkmJBF7O5reWUv13GExJLbDHd+DTbAeYbIukzpWGYMNfiCz
         lB5CrddhoJlm+yWBlj7nt/vK932V67VvejtuoQ4QqMnPW+Yx1XeSj6N8dBgB3O/l5xVh
         E9Cw==
X-Gm-Message-State: AOAM532Dtv0+zmmkscSSYEphnr+DsIieZfCbgkeT/I/XoPLLnnjfpJD8
        lokkoidYFaNur6H0D/jFoqo=
X-Google-Smtp-Source: ABdhPJygohrLnitUEuqcQPZHQm2AQx7ZtOaHFfJ4yDMiiY9NIhK06UxUmYQo+hdA/0sg1vfWgXo+Jg==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr24420578wrt.203.1617537580673;
        Sun, 04 Apr 2021 04:59:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:40 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 11/35] clone.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:24 +0200
Message-Id: <20210404115847.78166-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The CLONE_* constants seem to be available from either
<linux/sched.h> or <sched.h>, and since clone3() already
includes <linux/sched.h> for 'struct clone_args', <sched.h>
is not really needed, AFAICS; however, to avoid confussion,
I also included <sched.h> for clone3() for consistency:

clone() is getting CLONE_* from <sched.h>, and it would confuse
the reader if clone3() got the same CLONE_* constants from a
different header.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/clone.2 | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index fa7d1103e..f455c97d8 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -56,13 +56,13 @@ clone, __clone2, clone3 \- create a child process
 .PP
 /* For the prototype of the raw clone() system call, see NOTES */
 .PP
-.BI "long clone3(struct clone_args *" cl_args ", size_t " size );
-.fi
+.BR "#include <linux/sched.h>" "    /* Definition of " "struct clone_args" " */"
+.BR "#include <sched.h>" "          /* Definition of " CLONE_* " constants */"
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.IR Note :
-There is no glibc wrapper for
-.BR clone3 ();
-see NOTES.
+.BI "long syscall(SYS_clone3, struct clone_args *" cl_args ", size_t " size );
+.fi
 .SH DESCRIPTION
 These system calls
 create a new ("child") process, in a manner similar to
@@ -1541,11 +1541,6 @@ One use of these systems calls
 is to implement threads: multiple flows of control in a program that
 run concurrently in a shared address space.
 .PP
-Glibc does not provide a wrapper for
-.BR clone3 ();
-call it using
-.BR syscall (2).
-.PP
 Note that the glibc
 .BR clone ()
 wrapper function makes some changes
-- 
2.31.0

