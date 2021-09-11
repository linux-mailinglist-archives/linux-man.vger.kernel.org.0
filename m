Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01E7540795A
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233185AbhIKQDG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:05 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC6C5C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:52 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id z9-20020a7bc149000000b002e8861aff59so3686408wmi.0
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8RGVgf+B4IG2gDxaS1zQdIZvOaNN3FVUBHXEHNVnEzk=;
        b=Bo0rAKi0JYVFihTpQUfy62/xSqIOwLLAlGTk/LzI5/FA6CgeHLtY8WTt8lyT46BVcG
         XD48RVSUyfIo/WtryGHamZJ7agOkXhx/bFEMWf7LTzhleM03hwlaG5NgA+vh3uLQ4O/Z
         lxBD4tT8B5KhsH6x1g7JwYVwlCNzUs0slqgQAfR3Z/C++xrQiQlkGguvYMhpf89uBdYa
         y3AuHbB4k5R5rde7V2aKkXUFSUTykZFs3xfwJcjiJ7teyfPCm5xRpMyi3ePBWGps6iK7
         62uVNFJLDQEkM4qn1pZeDLkgn7EHKEXctjlO0hzamRIP4yMicYWK6e5YrliSTFw4nfgu
         k9fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8RGVgf+B4IG2gDxaS1zQdIZvOaNN3FVUBHXEHNVnEzk=;
        b=lDJnIRPSkTc8PH1KuYU9xuw5QhX7zGGiJPWFdlQiugcOZ1bIZ5DPzMJCshFv929uMO
         u0NeVFmhvl0TjwjdPkPBErceDjn9PU0/z43owyoBPWl1AlVUrJk0zao5meySW8gQ6Qta
         Tdyz8K4odLsIG9a/p/psdDEUCIgHZMlWb8ljusc63TYCWq+ewXroTuqqQH4fAe9kcCyA
         Q0N/unzLKLwwLw620mxrktG70sAGwsxi0aIzE3a24nE65i0K7ZjFA62UlFC0Q1L/I6Zc
         R6TR0zq0DJAvtIAqMRozDRfDtsnn0aDf2fJh6VoevZmQCEk9+W/dvRymt5sHnd9Mga6k
         Ogqg==
X-Gm-Message-State: AOAM530z/wHTDUq8P7YhNPJTEewLzAddnkBhsqit1w9kau78Gp+fsKhY
        cOX7vkC4lIr4JUlmrS5zrSY=
X-Google-Smtp-Source: ABdhPJyXHXIw1R0xmht2gPUwaTmapLYZuGcpM6CH3JWLFx+pv8YVIUK8vbw/ZT1lvE/H/Wz9KcksjA==
X-Received: by 2002:a05:600c:20c:: with SMTP id 12mr1204031wmi.90.1631376111374;
        Sat, 11 Sep 2021 09:01:51 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 27/45] timer_create.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:59 +0200
Message-Id: <20210911160117.552617-27-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/timer_create.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/timer_create.2 b/man2/timer_create.2
index 9d3534570..5d67602e7 100644
--- a/man2/timer_create.2
+++ b/man2/timer_create.2
@@ -26,6 +26,9 @@
 .TH TIMER_CREATE 2 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
 timer_create \- create a POSIX per-process timer
+.SH LIBRARY
+Real-time library
+.RI ( librt ", " -lrt )
 .SH SYNOPSIS
 .nf
 .BR "#include <signal.h>" "           /* Definition of " SIGEV_* " constants */"
@@ -35,8 +38,6 @@ timer_create \- create a POSIX per-process timer
 .BI "                 timer_t *restrict " timerid );
 .fi
 .PP
-Link with \fI\-lrt\fP.
-.PP
 .RS -4
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
-- 
2.33.0

