Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD0233A4DA7
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbhFLIfD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:03 -0400
Received: from mail-wr1-f44.google.com ([209.85.221.44]:35757 "EHLO
        mail-wr1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231164AbhFLIfB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:01 -0400
Received: by mail-wr1-f44.google.com with SMTP id m18so8474238wrv.2
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2RrThLMgSQhvWsP4JOTnercnAuRuqk6kraF07LWe0pA=;
        b=fhV05WXWR7jc60xF1b5V6MAGYxPUj/f1Pj5plKxxIA7JK942O5wOLXngDhwkScROC3
         dzAEhn5NGVsr3UAacSU01FXutP1FPDoW3RNLzYRCSC2cs24hztn6JLNOiL+JjTG1w2qf
         Z1Za9sx+o0FGVcTrITkLOrhjitjASpFPS4z2isGAF/xDijDJ7YlFBc/yqd+RKuwqry83
         rUMC1nIjig9XoJjTCxftINqrrIsFAgOJk0+nLID3q91tTZCLdLHMTmB5uRH6xTFaL8Jx
         pwhYtDjDgslX++c8Ac7KGRF/1zamkM1j0wm5j641zvzmNhqvzaa+i0zbT0r50hg2M03X
         vukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2RrThLMgSQhvWsP4JOTnercnAuRuqk6kraF07LWe0pA=;
        b=rR19tLuKJPkwoLKOHrfZyhAzWYJB7XVNvvEux0uXOoh/JUM2cPcoxA4Lsx183PezY8
         VWe57U19ly6LaIXxX+IG/W9c8ki+RBohD8L+I9yDjYbozw+SZNgp1o+qzPynC0I+wIIz
         eX3MGOnq4WmUo1c6+4Irsmq/dIESPtgDwcYI+CN/V8vQv23jjb65DAH8i+5T1vVNBlAQ
         6b59dDWZTz+YLGxHLLjkKW/7vWp1vc0m+rPpVXocg1Eus4T1NwH6TY0lRbES/wQ/hXkc
         Z+FGiWxeBvAW7MtlaCnn9iDYHDHKjYW5g6iCbj4ne+zL0KmkHcTdRXjSUWR6dAX2FQHd
         c+Hg==
X-Gm-Message-State: AOAM533NTqA6zfDcnWCs9dCWVCKQzZmdsxM8ONwn6CEIX0nGbWgR4Crr
        Wq5R/Ms1XrEU/NdEWFDvaBU=
X-Google-Smtp-Source: ABdhPJzi4Eo9HSXS484HW4vDcHHnG36/dZKYVi8l9o6CMRdi5jxuN/BEEwH7Y2Z37XUkcuNfHp3V2Q==
X-Received: by 2002:adf:e401:: with SMTP id g1mr7791727wrm.415.1623486721771;
        Sat, 12 Jun 2021 01:32:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 20/28] umask.2: Remove <sys/types.h>
Date:   Sat, 12 Jun 2021 10:31:37 +0200
Message-Id: <20210612083145.12485-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'mode_t', which is the only reason this might have been ever
needed, is provided by <sys/stat.h> since POSIX.1-2001.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/umask.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/umask.2 b/man2/umask.2
index 857a106a5..8a11c50e9 100644
--- a/man2/umask.2
+++ b/man2/umask.2
@@ -36,7 +36,6 @@
 umask \- set file mode creation mask
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <sys/stat.h>
 .PP
 .BI "mode_t umask(mode_t " mask );
-- 
2.32.0

