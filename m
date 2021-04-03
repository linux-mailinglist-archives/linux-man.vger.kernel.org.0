Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E4A135355E
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236768AbhDCTmA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTl7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:59 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B50F4C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:56 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id f6so1393843wrv.12
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EpXhDfjANekpqRoKyHYo29H6mLCXF+4mapysiZHKSf0=;
        b=bWjhE2A7218Y349FhyJmodAJwg6OTrjneXRNiAOVS117qKAxjhgCNxCsirZCkxSGfv
         UpRoEpTOtwQ0LOeBm8kPxWcScayFF4bhUj1sCIYlcKp5TyGHS+eaDKOu3NOM1dus8OW/
         050hH/RewO00g6Hhy5DdQWYShuWVvfXaBLZ9rXs5nhX/35sDTjctzXeM7TJfeMqhUSWP
         RWulqUXp/shnm7LMTHhXAnMZx+1i9xk/pOipBYclEWlCT8N9whgtoDs2TemmDun0Unbp
         G1EPVbAwoe5FfbyCTncRgOt0QW6yQN8/ajHwHUm+n+zz4xs9S8Gtht5T10644IxIWCz3
         fv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EpXhDfjANekpqRoKyHYo29H6mLCXF+4mapysiZHKSf0=;
        b=S72hwziUklKy+ypimiEdvRIMedf+laBLm8w86yeKA5IvhjMyhk0ZtJG23Bgzg7TXrL
         7lJ1MhKIuxslAqovQ5oZwz7vafhi1yLTAl7F9wSV1b6l5kcBvFoE/TLpB2IO/M5V8fBl
         7uuNmWMYJ1MhFCnTwzUdb0dhTDr4kmQbIoUiwK95dHhgdedEhgyNefTc+IrFBynWFoPC
         BVguvBwgmwplhhWbuap3XYLaUCPETfD2V1z1sBZVCjUzKCQMuCFk4KpObbRfhotUUu+u
         69hB1K6sw9t8NSi43gST5Fqm1y3yK6PdFVqfyqEtu1QRT14XzgR7Hzv+8bgr8z0QEOuC
         QKdQ==
X-Gm-Message-State: AOAM530jAGwz/7mqJurzfCMzR68i1lxsUppsgzfkjS85iaUcg8qN5lc9
        I0OfVwol3bKsCQOY6u/E0nc=
X-Google-Smtp-Source: ABdhPJy41U8XiJjHK95H389nPVcIFu2uaXQ7SkV6lQVZJJDYCSVP02Od9i1SkQd/FkfXd8wL1/c3jQ==
X-Received: by 2002:adf:e5c8:: with SMTP id a8mr21799355wrn.352.1617478915559;
        Sat, 03 Apr 2021 12:41:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 11/35] clone.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:03 +0200
Message-Id: <20210403194026.102818-12-alx.manpages@gmail.com>
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

