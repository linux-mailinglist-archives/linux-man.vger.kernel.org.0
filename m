Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87B353A4DAF
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231164AbhFLIfR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:17 -0400
Received: from mail-wm1-f42.google.com ([209.85.128.42]:50872 "EHLO
        mail-wm1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231165AbhFLIfP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:15 -0400
Received: by mail-wm1-f42.google.com with SMTP id d184so9291065wmd.0
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=omOYxjX8BzFEN+ao/+g3AxnVRYo3p1qkIkGVVr42xY0=;
        b=IvT4t3DqUJ/hhDbL58OmL8/dwrzFjP5qYcFg5+PxcOlXUAEwG7e0hFjeuvkf+3iuHX
         V+eANFG52kp09fzttenIASN5eJekyH/H3fkB57XkMgwTN9mHser5nKxXvRsCo+B371oI
         FCnGFNyDLcT2o/H5HtVYC0FMrvB8gwmk7UfEstPg300MBA2GLsyd1EwnlHwU2FM7yb6/
         aiRvzcdWfTKTQAvSf1vGWluXOiM6dt+nY/KdV9tRFD90n8jjknRZtqafS0br0fpke9Da
         SqUvBWXJ7XridUREU9dDxbhn3Ke7Z1hf+m0b8O3AcozGHsGs9zDJ18oI9kzmYDOegVbO
         c+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=omOYxjX8BzFEN+ao/+g3AxnVRYo3p1qkIkGVVr42xY0=;
        b=ce9TlG4LlCsLBp8+at6LCD9GRVQ65n0LsEaLneH8OrsIwM0ie2U6agXtKxM+BCgZ9+
         T7SxzfSNF8gbormxrSkYI2BYv5gr+pYVoe2TvlulKMKbwNe2Q3uyBff3W7j3BFhJzEyo
         4RYUjc1kupC5ab5nAwI9YpoevJEsRDjTlfDXrlh2On7cmSdF/rVrgPG1Twiw0iScaZiB
         25byjRvsZVU+6wl49DCzKMfE3UdzHSAehd1EC2EUf/5QpckUEycvwbFievGn2kOGhFo/
         ZFnuR/yKP+Zn5WjGhZ+vwxxhnH9QpnR+o01GAI4EV8Ln7PSg0s1QU+kULsZPP1I0JYXT
         vJ/g==
X-Gm-Message-State: AOAM533AjE6a/iKYyjcJKSwbtM+BjDUSxE7JQdbzKIIs5+rfTX0OUVX+
        u3jQdBshf5GFu2FKQX9TnVY=
X-Google-Smtp-Source: ABdhPJyZm3qB2AdoCaXxuLFxkpv1QruCcfQXOsXLIq6ie96UteuK3Le0pApk1V2KOMmrz8otASPJRw==
X-Received: by 2002:a05:600c:1ca6:: with SMTP id k38mr24670596wms.49.1623486723880;
        Sat, 12 Jun 2021 01:32:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 23/28] userfaultfd.2: Use syscall(SYS_...); for system calls without a wrapper; fix includes too
Date:   Sat, 12 Jun 2021 10:31:40 +0200
Message-Id: <20210612083145.12485-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/userfaultfd.2 | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index e1a18a9d9..cee7c01d2 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -29,12 +29,18 @@
 userfaultfd \- create a file descriptor for handling page faults in user space
 .SH SYNOPSIS
 .nf
+.BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int userfaultfd(int " flags );
+.BI "int syscall(SYS_userfaultfd, int " flags );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR userfaultfd (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR userfaultfd ()
 creates a new userfaultfd object that can be used for delegation of page-fault
@@ -573,9 +579,6 @@ non-page-fault events was added in Linux 4.11
 is Linux-specific and should not be used in programs intended to be
 portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 The userfaultfd mechanism can be used as an alternative to
 traditional user-space paging techniques based on the use of the
 .BR SIGSEGV
-- 
2.32.0

