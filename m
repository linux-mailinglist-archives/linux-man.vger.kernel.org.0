Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC473A4D9D
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhFLIeI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231133AbhFLIeI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:08 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23A16C0617AF
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:53 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id r9so8449651wrz.10
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qdmRO9jkvWRtteAYwetjmvwjGumYi1/A4xnCg0vLb8g=;
        b=lRIBOSkxNOZJdfa2v6ZMq008y9dzH0YjWTRuiBIhRD5XpKTb33PbdSGreuTnJt3F/A
         PpoOp8ORksYk+tEcX4RTnJUG+x9KuGPs5I5gM2gR01UmeBXRYziOjNGyxDUQlJfWjAOp
         Ty9tDXsWqlJlrrFHrmE++726CFKx9luFV6ZLH9w2aKEOsXXF1Af2ezd7JSNOscutip6G
         jZgWziEyZz9Ll++ZdMHJOv+QHTtCNtVf7IBTqAmQrxtkrpIl3WcRanoYCx4O5JrRZbr9
         h8vA/0t7qnqg02Nes2aPa9YUkuvKcOp+e1PWKMJy5jcYAEAl2ZL/o3hdsS6NqxP/E/0V
         M52A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qdmRO9jkvWRtteAYwetjmvwjGumYi1/A4xnCg0vLb8g=;
        b=GHV1D3EPgMcPw4JseL0+WG6ZSIehV66rVTH8dxhfcttrm0+vXQCGqg9ZdmJpRksEe5
         1EpO/zvOLIweEK2lY6+LsRXmGjfJDBcd/MdCYEMtwubhcqhkmd/Mq+lps3qtMKuOk7Uc
         1n/7pQSTVvIWWDeUWojThyvOb7DcvAR/knkaJgTnvUjhM1Q9TVImDYW1A4CrF1rjG+kt
         ykvMNMYevEfk+rFtEJfBF3oDhPawvFD91QjJ0gICrRrcCOvLYAZGGb/kn2h0+C8IaHMy
         92hUbJJOOTyorxGIR9xZmubTKChh2V4gnWjBHuX6EP6mprCeH7rBH7lhxPcwYxQfxXTf
         gyJw==
X-Gm-Message-State: AOAM530KhAfxXeGkRFR+3ymt00v0URVyStlOw4sL3IXSP5ry5OioHeYb
        5+UoDJYeFakY1RiF+5wnzNA=
X-Google-Smtp-Source: ABdhPJyThIVfuHSBwT/THJo3MPHQDUKd8H0adaLpLRt4PipA1rIJjSRI0tWrXxKXwr5gKu8x9I7f+A==
X-Received: by 2002:a5d:5104:: with SMTP id s4mr8033468wrt.306.1623486710883;
        Sat, 12 Jun 2021 01:31:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 04/28] spu_create.2: Use syscall(SYS_...), for system calls without a wrapper
Date:   Sat, 12 Jun 2021 10:31:21 +0200
Message-Id: <20210612083145.12485-5-alx.manpages@gmail.com>
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
 man2/spu_create.2 | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/man2/spu_create.2 b/man2/spu_create.2
index 6541a6e9a..746a86ed6 100644
--- a/man2/spu_create.2
+++ b/man2/spu_create.2
@@ -27,15 +27,20 @@
 spu_create \- create a new spu context
 .SH SYNOPSIS
 .nf
-.B #include <sys/spu.h>
+.BR "#include <sys/spu.h>" "          /* Definition of " SPU_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int spu_create(const char *" pathname ", unsigned int " flags \
-", mode_t " mode ,
-.BI "               int " neighbor_fd ");"
+.BI "int syscall(SYS_spu_create, const char *" pathname \
+", unsigned int " flags ,
+.BI "            mode_t " mode ", int " neighbor_fd );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR spu_create (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR spu_create ()
@@ -259,9 +264,6 @@ This call is Linux-specific and implemented only on the PowerPC
 architecture.
 Programs using this system call are not portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-Note however, that
 .BR spu_create ()
 is meant to be used from libraries that implement a more abstract
 interface to SPUs, not to be used from regular applications.
-- 
2.32.0

