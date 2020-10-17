Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 379C62914D4
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 23:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439530AbgJQViV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 17:38:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439808AbgJQViU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 17:38:20 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3044C061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 14:38:18 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id h7so7290133wre.4
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 14:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=neJfCB84L0huRreBHYiRAR0qgpeotCXOJot6QQa/LQU=;
        b=ZR8hBOkl53G8yTPpBA7d1c6QdWkMd6yTmjNLXlKvRR2U/DNCcLVR8fUCHfEkc45wos
         u/VtdXlJjvBBiNqN17tpKquHjUDXg2D2SW/9AIuuo6fvxxleP63xQjJGCpS+mwzcnYkB
         svleTSh+6GwSD6v4fJO5K0eRDkKJtWcCB28oySblrYyUto+9iR7HW6Nr3DViGVtVecD/
         8fbx67XKEiX8Fk8isDeTj63WM2Zb8BMDoFicXTegaU6pcBrsIuhL2I/boeIU9SJNo7GT
         6Fh7Xp7nK5ablWsD0pE2tW+WB+iHOntTtBywrlc2z8Q4SLwgnLL0o4e7q3IvfkPav13a
         7atQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=neJfCB84L0huRreBHYiRAR0qgpeotCXOJot6QQa/LQU=;
        b=qfOjE/8Zg9dGmhD/ceDSJLpzMqV0m5b3r5v52htEBMRyxvyyYt3SH6DMfkujRvm4f2
         cuxIfxZOQuXC3QjkqWXPH1kJtlyhKwOWTWBHpQUporp6bQWKoYNDZRjS6ns9/fk7sNrv
         Jn9DpAVXzCdcZczrcpc1hVEks/VDlOcfSqF/zqds+tTp1kaNRKVpDjwa5GBxFAD/07+Z
         L98MmRZP/2TajCR/S06Cm4exS/KK3mvBEkOLus3gS8zTl7vlrHJ9oBA9IgZuNPTGt2QS
         YUyZr93amRd8PjxbyxipLKLiQgfxkCSsxGf12SsAbfb8EyPj2Ntq8ZWjriGDI246Z1ge
         jDow==
X-Gm-Message-State: AOAM533Kp2uBdQb/2xygfT+CC4chseeR2VK0E2BthPb56SUHSVnfAwkS
        NyqJZlrqaQfFuTK73cjh888=
X-Google-Smtp-Source: ABdhPJwig9qdaKYkvhI6d2U8pVJja0PgV4cTDvxTWPXAnMjXvoLuaL3k9eryG/C3txnXNXsyU+G3UA==
X-Received: by 2002:adf:ed8f:: with SMTP id c15mr11265319wro.136.1602970697721;
        Sat, 17 Oct 2020 14:38:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p21sm8975324wmc.28.2020.10.17.14.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 14:38:16 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/3] system_data_types.7: time_t: Add Versions note
Date:   Sat, 17 Oct 2020 23:37:57 +0200
Message-Id: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Prior to POSIX.1-2008, POSIX allowed time_t to be a real-floating type.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I found this thing when writing about clock_t.

BTW, I'm not sure about the .PP before the paragraph
(it feels like "Versions" is too far away from it),
but it's unrelated to the previous Versions note, so I kept it.

Regards,

Alex


 man7/system_data_types.7 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 8a894b2e0..dc5f65c0d 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1236,6 +1236,9 @@ defines
 .I time_t
 since POSIX.1-2008.
+.PP
+Prior to POSIX.1-2008,
+the type was either an integer type or a real-floating type.
 .PP
 Conforming to:
 C99 and later; POSIX.1-2001 and later.
 .PP
-- 
2.28.0

