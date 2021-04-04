Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70BE23537EF
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230406AbhDDL7u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbhDDL7t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:49 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44FDCC0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:45 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id k128so4504161wmk.4
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PmEQnn7Rc35IBLQYixL7E97gBoLlm/QBiyhyexZdivM=;
        b=YYrlIJF/jpYCEstNdqJxQJGui1jlzojlULQEfONr/KpwDhMoqP8eS3EDAihV7pMVEk
         lY7HnqyP9LypUI60N0JgD3kULztEA1Te9BKwcV8myMYBLiDYIhgIkZN79RqRm0Jsy00L
         Bio/FiM8OfbECSpNSxtcoPJfQDHZXp4cQB22s1XiBzdZIudinGd3rkLTK0eUW3C/XjmL
         g11vUzUAOVjxEcGYEJhTMFKWPoN5prixnOvUWBXiWlg1d4oeJohdUjgtBgtt7poe9nR8
         o62PiQ4FqmYnGom+Ef66y6OEhYc1VHfmUdx6v1i4TahoxgBCYMNsEOuiyoggN9YU10KG
         2trw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PmEQnn7Rc35IBLQYixL7E97gBoLlm/QBiyhyexZdivM=;
        b=j6LXaBwK/pM+EtZJ3JSXD+rl9Cy/RcYN4rUHR7RMlFFxbHPxWK+5Mxh30/DZ/lxjOs
         OOFz76pV5LhPP7MWatCJOXbUdqir9upyAtnwii2vQMHPO2SDk4QiUgrA6+pOKOBftbYm
         tZDhtJIchAqeKRQW5v+T6P543tpLMzAP+g2qtPNabr/gckawJRpsExTdSsVcdHu0J/Xf
         JRIxkByJZfUg57NXW13xMRuw1Y4jW7GVTS5jqFHH2i106b7dH68IpPlg+x6omHlI43qN
         Msuzr2ux1B/j+jeCzH9RESlexv9OzJBSHWFjVraxN1G7URcyaJLq2j9hb1qELmjuLo/T
         D2iw==
X-Gm-Message-State: AOAM5306BAa6Y/YFn/6FCTGG/IpacxePof1chYPbb6lQTIaDd588ajD1
        2eDh5mMxkzCjOrEgDvWlzBc=
X-Google-Smtp-Source: ABdhPJzPDzrA5fQlJ1MSUqSRLRTI0VUpy4vBWyGvZTL0lTRdyMuEVv6jBedcN153LUs5OTJG/nPeXQ==
X-Received: by 2002:a05:600c:4410:: with SMTP id u16mr20550219wmn.174.1617537584044;
        Sun, 04 Apr 2021 04:59:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 16/35] exit_group.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:29 +0200
Message-Id: <20210404115847.78166-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<linux/unistd.h> is not needed.  We need <unistd.h> for syscall(),
and <sys/syscall.h> for SYS_exit_group.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/exit_group.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/exit_group.2 b/man2/exit_group.2
index 4fd314262..b512927d4 100644
--- a/man2/exit_group.2
+++ b/man2/exit_group.2
@@ -27,9 +27,10 @@
 exit_group \- exit all threads in a process
 .SH SYNOPSIS
 .nf
-.B #include <linux/unistd.h>
+.BR "#include <sys/syscall.h>" "       /* Definition of " SYS_* " constants */"
+.B #inlcude <unistd.h>
 .PP
-.BI "noreturn void exit_group(int " status );
+.BI "noreturn void syscall(SYS_exit_group, int " status );
 .fi
 .SH DESCRIPTION
 This system call is equivalent to
-- 
2.31.0

