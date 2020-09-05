Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DB4725E89D
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726403AbgIEPRS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:17:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726360AbgIEPQf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:16:35 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFCD7C061258
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:15:27 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id l9so9376739wme.3
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9wox1Bt37nqIE9yiM9iVHKfd+AsvTH/BGjn4Q61wx6U=;
        b=ttRoG7Ew16XF5XZ2ZdfOzK/pZhyTyEHHSNBU7SVSoURjUEjWTvFfY0Q441N9XnQjPY
         7PbeMFD3CnkH3N0HYwEaMxfELg/sJKuf/m4Ocm0u2KUBtrfAb9WWmZw03sTHxHuezwZD
         OvuLGTd2e/xYNTAHi9yAmvX2ittxf6XnRifHkOla0sxzxcH53fxv+xIQWPw3NntbaeVy
         qxNnRfzJ0xRdYbRI2We8w6x97sUq0GQUYW2wug6a6goKd5qRRq6j3BlZuRL2GnOxwv44
         2YJ83kN5Vx7YBUoo8PoVx0V9JYwzLh+1hq8wzH7IqSsyxAcHvPJ8wQDMylnA8zH3uM0o
         XuPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9wox1Bt37nqIE9yiM9iVHKfd+AsvTH/BGjn4Q61wx6U=;
        b=ro561guRDKPh+ZOmWagEweWIojSzzUK/PbCj2ZApTPgA6UZQCMGFzrH6c6La1WEhbW
         XUY08S2xghAPEvel7rPYSbckaT7ZqsWMEiNbJyMxgmEWBU+d6LQsEpyVZ3NFcEpLE9DA
         2N5lmz/m/EU4jVSFbghbYwtITPY7Lrl8/6D+KVQqbHmZuFZlx3Y4hEtzHFF7R62ajZCw
         tROMb5nWrg5tTqp3L96EaF0o7EEDC49mfrdop7UK4h66fFQiOQVYYU+UVBUuIcbK1ZLl
         9O4s1e6c7qR7SyRDd1aCajStCArwCyecvqWiO+4iUfyCuEAx1B69r8iZpxHGkYddEHvK
         59fg==
X-Gm-Message-State: AOAM5300H6dj1dvRKmNHyAsTaBVtvL6GJiz8gFhm2ob7qT6qEtm0zv8A
        G0Lnn5ilxUDlS/+Kpi5Kpcg=
X-Google-Smtp-Source: ABdhPJyG+Uxg4m9H2f4F3g5GPdXoLH11juVWrhTEeadtgxVF8YTZLcQlj+GehHuAYtRX995ulxjHhA==
X-Received: by 2002:a1c:3985:: with SMTP id g127mr12932919wma.32.1599318919373;
        Sat, 05 Sep 2020 08:15:19 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id t4sm17905363wre.30.2020.09.05.08.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 08:15:18 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 3/7] msgop.2: Remove unneeded casts
Date:   Sat,  5 Sep 2020 17:14:57 +0200
Message-Id: <20200905151501.609036-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The type `struct msgbuf *` is implicitly casted to `const void *`.
Not only that, but the explicit cast to `void *` was slightly
misleading.
Explicitly casting can silence warnings when mistakes are made, so it's
better to remove those casts when possible.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/msgop.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/msgop.2 b/man2/msgop.2
index f992d91a3..373e53aa7 100644
--- a/man2/msgop.2
+++ b/man2/msgop.2
@@ -637,7 +637,7 @@ send_msg(int qid, int msgtype)
     snprintf(msg.mtext, sizeof(msg.mtext), "a message at %s",
             ctime(&t));
 
-    if (msgsnd(qid, (void *) &msg, sizeof(msg.mtext),
+    if (msgsnd(qid, &msg, sizeof(msg.mtext),
                 IPC_NOWAIT) == \-1) {
         perror("msgsnd error");
         exit(EXIT_FAILURE);
@@ -650,7 +650,7 @@ get_msg(int qid, int msgtype)
 {
     struct msgbuf msg;
 
-    if (msgrcv(qid, (void *) &msg, sizeof(msg.mtext), msgtype,
+    if (msgrcv(qid, &msg, sizeof(msg.mtext), msgtype,
                MSG_NOERROR | IPC_NOWAIT) == \-1) {
         if (errno != ENOMSG) {
             perror("msgrcv");
-- 
2.28.0

