Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCF3B38D1E9
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbhEUX10 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbhEUX1Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:25 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A12C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:01 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id q5so22493785wrs.4
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5MDuAUMcaouGkWyhWZWfCYYNzJ8/QQkPYARTrBgkIzM=;
        b=fSz1y+cdbS61beJtbMBOPhuYxDAeZ/IG8yiran2f/rz1zeNP8zxMgO19/PPdW+aheO
         TWT/g/jC7eB5ncZAsUbSHOy+SoGXXIyF2HUS0Oo0VK1HMuN/3xv0ZkjYUwkVIjoqI1WU
         rb1TIWEKGjyo63bn79vy1FEuGAfj6qYlLpnTQQ6BXUAX2x8O7ODESBmPpPDbdNZY7xnS
         9wjWLGPcpTFsghTwM3FKNzMfOYRmAkJR3eu5Iy9LPfRdtq/5ecdcD9i57LrL8hEA20M2
         5/Pw7xP6hhPVYckVhVPzS4WsVnnWTgso7/H1yfIFYfoIvio2ghVaYxKpKM36IfA8ddf3
         EWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5MDuAUMcaouGkWyhWZWfCYYNzJ8/QQkPYARTrBgkIzM=;
        b=Rct9SrNwj7WLCSMv8vTbEIUgZ6kWi2WLA1fYCfvx6JVDH23HSIMGlvKAPhEORxyyg8
         VMXPEyHi7d7HLw/1+/wAkV8683+FvU27nS+58xR+fP4bQvz+UETYKvao60K9Gqbo2lgT
         //YGvIkz/j40UTSd4wI2qJbwEgG28AWJHy6oWWiHm72wXcxjLQbLdqtb3lpnBZvXGzZn
         2dAEirpBxXCPHhELYbg/8j8ffzJdyxeWKmngDM/iRaS9aBrHbu7T3vMFnlgAsqm+ZNI5
         s+qUSL5LzCDVpONJwZT3jO1+5EHv1bSKUNTihGg+Qg7F6l36bnrePOj7+rJ/pjVLfHIJ
         mhmg==
X-Gm-Message-State: AOAM530itQkBHLhu0x0ZdIuapLDWypD32smLWm7UmftlLK6asSIA0lI8
        xn4dksGyOYRNn30J7hV0Ey0=
X-Google-Smtp-Source: ABdhPJwrhPIn9ZfyXSylo+pVWWWsphQzjlw2GW9zsSpKbHX9OeT/+EWwAbrCCBxlFOma4pbE+g85Sw==
X-Received: by 2002:a05:6000:244:: with SMTP id m4mr11699688wrz.225.1621639559766;
        Fri, 21 May 2021 16:25:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:25:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 02/10] rt_sigqueueinfo.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 22 May 2021 01:25:46 +0200
Message-Id: <20210521232553.161080-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-1-alx.manpages@gmail.com>
References: <20210521232553.161080-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/rt_sigqueueinfo.2 | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/man2/rt_sigqueueinfo.2 b/man2/rt_sigqueueinfo.2
index 2dd1a5877..d48ecbdcd 100644
--- a/man2/rt_sigqueueinfo.2
+++ b/man2/rt_sigqueueinfo.2
@@ -27,9 +27,14 @@
 rt_sigqueueinfo, rt_tgsigqueueinfo \- queue a signal and data
 .SH SYNOPSIS
 .nf
-.BI "int rt_sigqueueinfo(pid_t " tgid ", int " sig ", siginfo_t *" info );
-.BI "int rt_tgsigqueueinfo(pid_t " tgid ", pid_t " tid ", int " sig \
-", siginfo_t *" info );
+.BR "#include <linux/signal.h>" "     /* Definition of " SI_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_rt_sigqueueinfo, pid_t " tgid ,
+.BI "            int " sig ", siginfo_t *" info );
+.BI "int syscall(SYS_rt_tgsigqueueinfo, pid_t " tgid ", pid_t " tid ,
+.BI "            int " sig ", siginfo_t *" info );
 .fi
 .PP
 .IR Note :
-- 
2.31.1

