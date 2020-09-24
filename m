Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28BBD276E5A
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:13:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727349AbgIXKNc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:13:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726949AbgIXKNc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:13:32 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FC4AC0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:32 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id d4so2916322wmd.5
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ereKgH/OhPvP8Pl+SsxLimFCCqX3CQBGmYUng5V4PZE=;
        b=YONzIrGVUTMQCYnFluGFdVCxwAz1icXWrhE5wuaedtqL5UW9ffDhnlxbGjm7yhMj3M
         Y5HnS8brUBHa3J+5iiuRIVJ7TP2olvzqCS1xan9sxP4F8ij5uDnkAoNYHQ22aho/CxH8
         kJeIJo/qVHYbg3Rg/e7u3KekPQfqhOXPtcqgynVhGbV2hp1gUgeljq0qYa0SKVUH58le
         e0ZKQJmNRoRtrqJkE1s/uWbGEpbEJE+EMuBmQ2WiTuL7SqMRlwyeiCrWm16BJuetlqLx
         vsJii0s3NBVTafesYrU6pp/9EtlV/ofgg8sqVPNNu38szq1w7m1N76FIBDUnSsNvl+Yv
         WcfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ereKgH/OhPvP8Pl+SsxLimFCCqX3CQBGmYUng5V4PZE=;
        b=ntw4QjAr+gLRSimGgJ2sc9AyJrzP7Vy4J6ydXJxwoA4bC3ojgB/GjjmCIAhDbwKIhP
         P+KV/jay8a4NQPIw/xzm3nXUxdp7RwY10tYwmgI8gGwrpe/kTHPVEi4ed9VCIMJivyYA
         L25+qMcJGkRmIR9RxC+5N3t/JBtxu4KHouZvCYcwDv5DrP8GeGk8zfBgnF6jDoZ7/7Fo
         oe6lhnEQkisVhfwDgMpI3ZOP2IQcfLYIETWF80Y4Thm8XEXPjKSB9OJdNK5Dz+BUNwoo
         +XYfr/NcYAn5buBf06gsA9mVdzr9c425VQMh8J/SvrrB3T0YxeLQmsv19XCrfiSPFdge
         +phw==
X-Gm-Message-State: AOAM531UFWreL8hJX62iBJqxwzVorMTf3+moPPuVZ+7JNlAAvS15r7oI
        5cIVQklmF6C1npHoXTvlg60=
X-Google-Smtp-Source: ABdhPJwdCa363I+AGbJkgX5qO0yIYSx/G0wpLy3g2NTxEJhUeKp163d9tDUTR+NcVK4NaXjbHnZE0w==
X-Received: by 2002:a1c:bcd6:: with SMTP id m205mr4097981wmf.68.1600942410910;
        Thu, 24 Sep 2020 03:13:30 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m4sm3333032wro.18.2020.09.24.03.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 03:13:30 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/6] system_data_types.7: Add div_t
Date:   Thu, 24 Sep 2020 12:13:04 +0200
Message-Id: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index c00345741..077d669b4 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -95,6 +95,28 @@ See also:
 .BR aio_suspend (3),
 .BR aio_write (3),
 .BR lio_listio (3)
+.\"------------------------------------- div_t ------------------------/
+.TP
+.I div_t
+.IP
+Include:
+.IR <stdlib.h> .
+.IP
+.EX
+typedef struct {
+    int quot; /* Quotient */
+    int rem;  /* Remainder */
+} div_t;
+.EE
+.IP
+It is the type of the value returned by the
+.I div (3)
+function.
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR div (3)
 .\"------------------------------------- fenv_t -----------------------/
 .TP
 .I fenv_t
-- 
2.28.0

