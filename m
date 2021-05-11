Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF65137A398
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:27:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231199AbhEKJ2x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:28:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230427AbhEKJ2x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:28:53 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 274D0C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:27:46 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id fa21-20020a17090af0d5b0290157eb6b590fso1013554pjb.5
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SKFvNmuizBL2ecYQ/qk9uf2FvRRFvdjMBlR72s6nRK4=;
        b=nbFUeAYF8oDt/ofl3RNXVLnRmLWb98P0J7hWsOKYzxSAtEyKKakWK9BI979/ngTFkH
         N2e42dy9MceBLag5U8YnGc/lfkUoAymuCXlCNZH1JMqgBCsyOfF41GVD4CgIF3u8NlXJ
         CznyQPZON37BlpWNuEvimj9VVi6tS3o0jmDlJ0z14OodV0HRh6rvlV4wvdjztgDsON6X
         9SRXh3aLYStb5koSA0sC5OBmhJPV7NWISsh/tM/Qwl56dZLqz5KX9kCYH8/pCUJ89kd2
         ubzJFJzlZFVV1YGgytWWiKPaNt/1rmL9mjRjzccDPiDim7MDUPUsqxi7LHo5IvwlCr0D
         zptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SKFvNmuizBL2ecYQ/qk9uf2FvRRFvdjMBlR72s6nRK4=;
        b=mdCgQOMZOrMIn2CVes2BsdJhR5vb/iCLJCS8S8eJg03GrDEbuTE1NwX3b+qLgKgF0L
         IZBtAqErSviOAX/bow13uBoBXhVFqxG/MMUOzEMoFA6TkjfST1YzxsWmCeqyyr7ymlCP
         bwmIlwEjNtXAE4T4CiRhx1JYzy4X3g+YjT6Aupgnb3InknNCzPKUEh00GdYKbdWGczC/
         ai37YN27gg7sMQeTOKsVOrY8s43W791YTHG0DxZl/GEbTe9SGbrJV8Og34xUlrt6z90W
         WxIvbzbBAtAs9pHnQWBmOAcjj0/0xzFDWVK831UN0p8M6lIOj+RNg4jytpVoe1skNkJJ
         mpsQ==
X-Gm-Message-State: AOAM5338sGMU5SUT7Gr5IwD/JR8RZRLiWfHus63acderJWlqPuzRKeu1
        Rv2g/ELoZBTjqxCLtTYsYbDtDHWx2yEvmJuD
X-Google-Smtp-Source: ABdhPJzlBBcs5RGFHNp+CQoD7tTShoN3hE36uV1A10Q4M+Hl7sC+uxRT8OFy29ua6X6OAZKuB8Wq7g==
X-Received: by 2002:a17:90a:55c5:: with SMTP id o5mr32034979pjm.169.1620725265556;
        Tue, 11 May 2021 02:27:45 -0700 (PDT)
Received: from localhost.localdomain (sp49-106-215-222.msf.spmode.ne.jp. [49.106.215.222])
        by smtp.gmail.com with ESMTPSA id s21sm13472691pjn.29.2021.05.11.02.27.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 02:27:45 -0700 (PDT)
From:   Akihiro Motoki <amotoki@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        Akihiro Motoki <amotoki@gmail.com>
Subject: [PATCH 2/5] ttyslot.3: tfix
Date:   Tue, 11 May 2021 18:29:13 +0900
Message-Id: <20210511092913.98202-1-amotoki@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
---
 man3/ttyslot.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/ttyslot.3 b/man3/ttyslot.3
index abd3299e7..8a1f020c9 100644
--- a/man3/ttyslot.3
+++ b/man3/ttyslot.3
@@ -30,7 +30,7 @@
 ttyslot \- find the slot of the current user's terminal in some file
 .SH SYNOPSIS
 .nf
-.BR "#include <unistd.h>" "       /See NOTES */"
+.BR "#include <unistd.h>" "       /* See NOTES */"
 .PP
 .B "int ttyslot(void);"
 .fi
-- 
2.25.1

