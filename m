Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44ACA33A05B
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234451AbhCMT0b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234391AbhCMTZ6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:58 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9313FC061574;
        Sat, 13 Mar 2021 11:25:58 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id f12so6584439wrx.8;
        Sat, 13 Mar 2021 11:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=16hG+prRGYsc90zoRGQcsQFv1GBR/nIH049+WtOVoWA=;
        b=ff6OEMogl8ii/ztQqztks/Fv7FNVSN6rKO7PA0+XP1Zt2BT+PGi1YgNidZkwxWn2Qr
         8BU9468PFUKe8HcY12NxBF75FeMR/w4NEBtOSBWPT6Opxi5jLm4VSvHvSHRk5OajBDAn
         f09GBQucAASsK2M9uYC94nfsMIn6tEP0oL1eg2AVWAq18vOhTm54jTmcLcH1otWDSnLc
         LWNlUc5K6tsUSD+YBmQP/kzs/gwqQ8TEmC2+mxxTYb27uZHE9QvKC3A7rTOAyjg+EXzQ
         uTLqI70Ya0q//o7u7AwSrURRCDnRbwhk9hUwVsBLCgkphay35XyWWVopFdGX2Ut0nnS2
         +Anw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=16hG+prRGYsc90zoRGQcsQFv1GBR/nIH049+WtOVoWA=;
        b=UkM4dO/1UOSieUW0skG/GqB+dcUgKPJuJQm9ahCkm5wAkHEo2dKITBW6ulF9dqsLh+
         5Pd57aQB1Plmq7FM6PLIYtP+mAx23+NCIhk8SVd06rOZoUl9pSUuKUGikpJK/gyWbRl0
         5cSIrpZq03A2olbnO0NrXZq04dsCW8VMqb+fCl5v/B4nlySh8gSw1fRiMnthAAecUrUp
         eZV0LafclEmnedIlJeh5E8VeMPkOAtEizJjxdWgo+TOpvzNZcc3PgrTlWiAkXI8NlA8w
         jvRun0unVeoOZjoIZNXJfS1XqnMq4+hIUc2ag1YLZLqsd3epsR9fWPkQ5CsMLQfk8hjt
         5g4g==
X-Gm-Message-State: AOAM531cH4NvEGhnkuRWBaueQooU9AIzMDPFEqlzw8nH09TpeIL+sxhP
        zXS+2v/pFm/W+RcAFmHi8pI=
X-Google-Smtp-Source: ABdhPJy9L87AixTdY5x8ZssPvIuDW/oCBWr4JSxUVtdGl9Wt2BQEc4B8QXOaVssg/RMvaplZLlgSrw==
X-Received: by 2002:adf:f648:: with SMTP id x8mr20244639wrp.157.1615663557329;
        Sat, 13 Mar 2021 11:25:57 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:57 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 10/17] exit_group.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:20 +0100
Message-Id: <20210313192526.350200-11-alx.manpages@gmail.com>
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
 man2/exit_group.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/exit_group.2 b/man2/exit_group.2
index d26ec8c70..5bf207bd3 100644
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
-.BI "void exit_group(int " status );
+.BI "void syscall(SYS_exit_group, int " status );
 .fi
 .SH DESCRIPTION
 This system call is equivalent to
-- 
2.30.2

