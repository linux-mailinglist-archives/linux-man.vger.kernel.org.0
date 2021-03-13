Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E77C133A062
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234475AbhCMT0d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234407AbhCMT0E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:26:04 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 809C5C061574;
        Sat, 13 Mar 2021 11:26:03 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id b2-20020a7bc2420000b029010be1081172so17104542wmj.1;
        Sat, 13 Mar 2021 11:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TV3DFVHVd/Io7+uLLsjFQR+YjYMaeU/o3Y+NljgszpQ=;
        b=sG6OLhz2O9p5lENhx253zkkwGpmBHkmKDl3S3sG4io9ytFcgUBiI9xIw/i7pe768iA
         jP9840YfmXq+SVtj8ywV5iq02Jx3wamf5CoHlWJAvgjvsZz45gXqYYZJWS6NMDj0UDL6
         szCqNP/wlDUmoQTS5Fg8L/kaSFqna02RFimooQnNzXjGzMKBoqtOzSaGWjBtZsfwx3VP
         waAZM3ikOrw8V5j/HVLj9UN36j44nnj9c316HNH8e8Au+VMhDYemZJWiTWCXGQB7090C
         PUgYYn05Q5hN3D7DjiwepEclTEknwdWB4nFDkCkNlSo+SNc7HOW+J5a2v3FXetYx1SgY
         nz/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TV3DFVHVd/Io7+uLLsjFQR+YjYMaeU/o3Y+NljgszpQ=;
        b=cGJKp1O1n1vGOYvgZc9BldmOw+06BoxNmVCozSLjM7nyU/t7tLaVEAr8cB2nbX3QcE
         HNhYcNpzwConiSQ7Ll/S31SRbUCXVQE+iz/h8kdvcaQJDXqaXLDxpqUJ3tDxtw2BFpWA
         +gk+G6s3EO/Xjg0mB7ZiuXo3dCilGyZSvOtqlCd6xb+B43Zi0wQzwYTXlhdLjzPXH8zp
         DiZvcvhwm22nDXcuaGqEkanctTPGFG65cEyqsyH/y1SYOpyLLd8VL38bwIIQWOtq2GEU
         5AHVUznc6IdGqeaWrMyxXaTk3r7Lj3SHCJJi1AXRC0zUgUZmczEp1lCymhYi44fDfYUC
         r/QQ==
X-Gm-Message-State: AOAM533p0idSUFOUlRUi5Ua3u0bhFJAwrVdEYMkstIiYi0v8GfRTx2zZ
        /yoGpwBtEuXSIO3xROb4flA=
X-Google-Smtp-Source: ABdhPJzD9hg/843Gf+kBtreorIu06vUEc1s2tjlQDq11kJvOeL5m5eeLMyzZy0+cVFL7C0Bnw5zxWg==
X-Received: by 2002:a1c:dc42:: with SMTP id t63mr18807558wmg.153.1615663562323;
        Sat, 13 Mar 2021 11:26:02 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:26:02 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 17/17] ioprio_set.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:26 +0100
Message-Id: <20210313192526.350200-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioprio_set.2 | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/man2/ioprio_set.2 b/man2/ioprio_set.2
index 91ec03f3b..f0c914ab0 100644
--- a/man2/ioprio_set.2
+++ b/man2/ioprio_set.2
@@ -26,12 +26,13 @@
 ioprio_get, ioprio_set \- get/set I/O scheduling class and priority
 .SH SYNOPSIS
 .nf
-.BI "int ioprio_get(int " which ", int " who );
-.BI "int ioprio_set(int " which ", int " who ", int " ioprio );
-.fi
+.BR "#include <linux/ioprio.h>" "    /* Definition of " IOPRIO_* " constants */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+.BI "int syscall(SYS_ioprio_get, int " which ", int " who );
+.BI "int syscall(SYS_ioprio_set, int " which ", int " who ", int " ioprio );
+.fi
 .SH DESCRIPTION
 The
 .BR ioprio_get ()
@@ -199,9 +200,6 @@ kernel 2.6.13.
 .SH CONFORMING TO
 These system calls are Linux-specific.
 .SH NOTES
-Glibc does not provide a wrapper for these system calls; call them using
-.BR syscall (2).
-.PP
 Two or more processes or threads can share an I/O context.
 This will be the case when
 .BR clone (2)
-- 
2.30.2

