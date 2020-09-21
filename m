Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B69D2729F2
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 17:25:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726749AbgIUPZa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 11:25:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726471AbgIUPZa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 11:25:30 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 538DEC061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 08:25:30 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id y15so13171500wmi.0
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 08:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w5e7F0TqDn3cnOIhAmMjAN9py9d5KqFZ6BXuydjs3vE=;
        b=jbuRhAGzS7R447lgmDhvYu2SGqYjyMXBc5YfhO7op/QPrmMmRHs7eoXjK6uXmdG3nF
         u2dqNubQtNFjvS7f3wAyt+0YrrazI7A0LXQb62Obm+h/Xg9ELv2ez2iQTqaQ2IBwdSZB
         6CKjCZqU5dBF4/7ggpIgaN3Tg/taEUfSRNe98xpFWiLgIcUxsQZle+rUYYL3TK98MmaV
         BHrEiPzmlySGYpy7vA7ztqC1n+SeV7wkM+QwYgGzk3cySnIENMhkv1tuC0RlJ8HIqGqf
         0pEvZ0GK3mVyp7cbC+LE+LvHJeJKucfw1bAyEOu30efIXJ2A4elZIxsBNZS1Ha8mKlIC
         y9lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w5e7F0TqDn3cnOIhAmMjAN9py9d5KqFZ6BXuydjs3vE=;
        b=W+FA/5rC9FvySyvJwnI5R9DN3hkURsjKD9at05S1/VKiZ938OCS/tXwOlqn63ifCdG
         i3A2w4Oug9IVVP3FfsazFY/TY49rGabbALSsNRDtdlfu2M2vJuDX3a8i/DKVkDu1Rwqf
         JzlkOaLqQ+GgWa+VQokB4aEsYDH5lSzsyZY+ioCLLSZ+JoYYD5pLxjWqv3pS6IrCkhL/
         dxP+wucVBaZKi58jgwsvNb5YRSpOstbkueOdENJzxMenDa8e6zpv0XjUG+Lpo/fZtG4g
         j7c8Dr2IqFnW9dkvwky4Ykw57Ejo0rsJfwgf7E5gOgvzek5wr90H6AkdW7Mw3vJKgkb9
         DhVQ==
X-Gm-Message-State: AOAM533y0cTZuunSd8uaiPnvX2e0IW5tdeGPPp9wCCee76Tj8bfLTFP6
        wVX8B/037yLNdQUjfm+qaDM=
X-Google-Smtp-Source: ABdhPJyg+mlPxSpS+f5uzltboCFYMlBUtGMcRpflxJPlV8RZShrTmzmpLzaLsEVrWovLbmZ2owk9Xg==
X-Received: by 2002:a7b:c925:: with SMTP id h5mr207403wml.28.1600701929019;
        Mon, 21 Sep 2020 08:25:29 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id d6sm20609155wrq.67.2020.09.21.08.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 08:25:28 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/2] system_data_types.7: Document fenv_t
Date:   Mon, 21 Sep 2020 17:25:16 +0200
Message-Id: <20200921152516.85879-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 6a078270a..00d041c2a 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -94,6 +94,22 @@ See also:
 .BR aio_suspend (3),
 .BR aio_write (3),
 .BR lio_listio (3)
+.\"------------------------------------- fenv_t -----------------------/
+.TP
+.I fenv_t
+.IP
+Include:
+.IR <fenv.h> .
+.IP
+Represents the entire floating-point environment.
+The floating-point environment refers collectively to
+any floating-point status flags and
+control modes supported by the implementation.
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR fenv (3)
 .\"------------------------------------- ptrdiff_t --------------------/
 .TP
 .I ptrdiff_t
-- 
2.28.0

