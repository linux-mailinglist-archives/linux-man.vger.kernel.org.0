Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B789E3A4DB1
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230526AbhFLIf1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:27 -0400
Received: from mail-wm1-f44.google.com ([209.85.128.44]:36403 "EHLO
        mail-wm1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231165AbhFLIfV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:21 -0400
Received: by mail-wm1-f44.google.com with SMTP id h11-20020a05600c350bb02901b59c28e8b4so9453949wmq.1
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rb4AuUBKrEV8ftSTGDRdoYFv1hyNUeE18cKuTA1rRH4=;
        b=fQ2LIwEqkKLMmBrAMz/gFUcVa+IlgwuYK8Cr3ez1E4TcYDjHH05C7hNrYXaDqr+7kS
         6rP5Bv0fJ//YtWJ+AHvQu8jM4bi44xVOs1kop1czb/kY+X06FBq51Y85SBDofWqm0wp9
         yzIYutqhFlEu8lIckeE/8v+4XnT/p0KLaqIXkBjDdH1I7Zz/PMh0gHX8ce4KLsvfHfzW
         8ilyjm4jibG2h8g6TzA/o+dcBetJ2lkMJORozUIXOhnwsRy/zT20UG9i6bBobQ3dLhEm
         n5kn2siKrEUKo2k6nZD+7qdY9qOChBzprU4lut343wGkiF1LNVbWhuJC9oapapXVNdlC
         usSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rb4AuUBKrEV8ftSTGDRdoYFv1hyNUeE18cKuTA1rRH4=;
        b=B6JcaCQxBR2WgOMQ+9ZqYuYD7WTCgkS8+F3eFRV2ar8YXQQ1rydzpepluyphXMB8fl
         5rycPKOpdftX6EVx3KQnBcmgRlPAbledTaL5p/Pj7AqOz0UImt3qQJ/9374LPg6He3cq
         NFpdaFfyiIWFANRF2mJ0yH5eSJTdCGkqgmPFyCy+LSZXbSd+X4IxL8QLV0axEqVXsRtT
         QpF7zMj+RSFpGuX0lEXqoRBnZKtsJS46OfELTlluCx0SO6sdTqgMtNeUknK8VZ2LcO7B
         Qb/y/S/fzsCiQmfS6AEQkHOTeaG5VpkFHC/9DC62w/uvPM6u/Rszxgw8UvEh+s/9plrO
         79tg==
X-Gm-Message-State: AOAM533OO+Dq6nRBROk62XEoWha3GeKI3gCGvccVu9Yh0Bwjw/Q+Cpbf
        +7TlE1NvEBvhbabAe+Wq/ZY=
X-Google-Smtp-Source: ABdhPJzudUUOGl2m6dJMb9MZDsWXYXNeYn10Au2eA381gWfppU2+ebQmMllmIA8VTLHyr60nIFMvlg==
X-Received: by 2002:a7b:c38f:: with SMTP id s15mr24375280wmj.16.1623486726963;
        Sat, 12 Jun 2021 01:32:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 27/28] wait.2: Remove <sys/types.h>
Date:   Sat, 12 Jun 2021 10:31:44 +0200
Message-Id: <20210612083145.12485-28-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The types that need <sys/types.h> are better documented in
system_data_types(7).  Let's keep only the includes for the
prototypes and the constants.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/wait.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/wait.2 b/man2/wait.2
index 760f02f22..5ae955b3f 100644
--- a/man2/wait.2
+++ b/man2/wait.2
@@ -51,7 +51,6 @@
 wait, waitpid, waitid \- wait for process to change state
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/wait.h>
 .PP
 .BI "pid_t wait(int *" "wstatus" );
-- 
2.32.0

