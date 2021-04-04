Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C79343537FF
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230454AbhDDMAA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 08:00:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbhDDMAA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 08:00:00 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0AB9C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:55 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id p19so4515761wmq.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Em+awrERrgpR+vP9EtLB4H/xnCP91tdyUvlumguvIM8=;
        b=W7/syNPG3DRf/FHeC/A4wYTkiTpG+DDweG/3jKmXbMnenKJpljM0v5CW1Alw5rO5qf
         7/zQd0XiRaiNwG+Mryeh13cdQAWi8fPuc9Lx40Nhj+lD5ncZz/w1Z8k9hkbNVVsgZ1pA
         UpUrIp1bv3mteWhZQmDM26GLZnzV/w/4Kj2OBs9VZUXtadJZG4ssh55Kno8XOvK7/5hN
         57Sj1RNe//g25sqaJesZ/dfEFVq8kyhc4SUfephPnvMQUSIa+N0gG+9T+7WDpOjhDvFA
         MLDeWU+NLxwT6m8vhXQIOjBn15lZtLP4QXhF5zPkBMWSBMvpv5xq6CoYwFIKIu4/ZGs8
         Popg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Em+awrERrgpR+vP9EtLB4H/xnCP91tdyUvlumguvIM8=;
        b=MjQcCR0cXFB+5jdz1YkA3M3J5vLoFFfkVFPpHscT6QIL3o2PZew1b3bPZDMuIQey7/
         eYRJx+zZAe0k1oLEC/DRJ8oOHrFJwbW6ulmZ6jiGDuAGoWYMXEt5ap37M36NBPasFGlG
         +H9NnmTlfHv2fhxnyN8UCzHLrx0o0Di/2Sz/IW/l/rJOKL1FIPTrOMRoi8hQWwT9ZGPT
         P+zbgA5wSaTLECjXX5P4Du8mwo2pvNo5QFPxjh5p/LfAfOVbNfeknGkW5b4VyJoklNwP
         xFwpmeXc8cGGlhZWF/uhWcoFpY8MS0FiY5M/6p5qj627lSPmaX75n+MGtFL0FArD/9fq
         U73A==
X-Gm-Message-State: AOAM533iddIryHA/J44XNbOxW1vKT8mxJfQI1oueO1gGqWT8kEtAZ0PY
        lXltAmihfk9L89p+Sb0MBgE=
X-Google-Smtp-Source: ABdhPJyELU7NPpguF9Tj3AS0vRNXpm7rwmhCQwjn5kngoSfM4pt8vXfbrblLZH3/cW/YhJ8OaxCyDA==
X-Received: by 2002:a7b:c0c7:: with SMTP id s7mr21010480wmh.5.1617537594679;
        Sun, 04 Apr 2021 04:59:54 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 31/35] ioctl_ficlonerange.2: Make clear why is each header exactly needed.
Date:   Sun,  4 Apr 2021 13:58:44 +0200
Message-Id: <20210404115847.78166-32-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Only the one that provides the prototype doesn't need a comment.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_ficlonerange.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_ficlonerange.2 b/man2/ioctl_ficlonerange.2
index 34c171941..75ab14bc4 100644
--- a/man2/ioctl_ficlonerange.2
+++ b/man2/ioctl_ficlonerange.2
@@ -25,8 +25,8 @@
 ioctl_ficlonerange, ioctl_ficlone \- share some the data of one file with another file
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/fs.h>" "        /* Definition of " FICLONE* " constants */"
 .B #include <sys/ioctl.h>
-.B #include <linux/fs.h>
 .PP
 .BI "int ioctl(int " dest_fd ", FICLONERANGE, struct file_clone_range *" arg );
 .BI "int ioctl(int " dest_fd ", FICLONE, int " src_fd );
-- 
2.31.0

