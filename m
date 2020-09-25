Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FEEA2781A5
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727436AbgIYHdC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727435AbgIYHdC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:33:02 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DC12C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:02 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id w2so1993800wmi.1
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=umIOl8psS4BLspw+/6CXkAvC+G38FPDnrisct85lSO0=;
        b=IsWQVJgsyKV9sPg8e6V+BRhLttc4U7TxFjtTMK10a9xLaqIBpS8w4J0XW2Ffvgj3jE
         C2FH7aqZumd2hiiPer2dfktiDwWauv+HrLo1qfg/acyJ/WF0a8ck1/+FiVBe5bOtkfRd
         6/jnd5X1VR5pJ3NThrEBNhSy7vvUCXNzoWIjyqIGHM+1ot8Y7mwZlc8OdHeVZX7KIgzb
         dHRbIZ4aC76Krh3pUMUBHR0FXQXVS7Tstq8romj0p1xC8qRQ2sFVqExw7s3IYEMzspKW
         T4xbNUFQrnHZ0gTeJ0TxCh+X1fXfVy1dHeLYobOR6K6zHM3MXLu0GXUCoobsBblbM7hU
         qYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=umIOl8psS4BLspw+/6CXkAvC+G38FPDnrisct85lSO0=;
        b=CLmNzKUN9+c8WBlTELGqBFPO/zPXjUJO8yVi9yL4c/S7uxAw4ePlEUA3aa7L4dxY3P
         HWb/MUa0oiwFbVAorNXVq/VUrDaoF3rQ6o6nMiyIBLiEmLeTEnTKLUk7SAFAA+CfsRS3
         jSXkxPR+Utr6P8aXQKPQpegpb2nEvYp+eKrLbicI5F7u7O2LHrZ1lBtyo3QT2QMMRK3l
         FAbXR9rRNZZDzwlZHl9zdkQLjTrHZnxuzimzuBUwogwljo7mrpOcv+C5XUCnC2HDCWlT
         aD79GoD63xtz7Y7IfRYJipcI2zCdHiJlh8AJPK0FNBHwqS5hJPxwYEYSLOCZJSq5ww0Q
         xfew==
X-Gm-Message-State: AOAM533iLrG7nMci6ltcQctw/RfJ/qx0YKBgnMGunXdY9ZA2wKb0Qs4Y
        xBTrbXD5h7hYxXsCiFMT/ucBMObVPOVOjw==
X-Google-Smtp-Source: ABdhPJxXBGxcs2QfT83oOjFihZjB6Q1PeTkHgEBsEB1yIRrIMEq3ZYrliWhb9I08dF1aj5qFX85gCA==
X-Received: by 2002:a1c:5988:: with SMTP id n130mr1655864wmb.95.1601019181026;
        Fri, 25 Sep 2020 00:33:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:33:00 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 05/10] float_t.3: New link to system_data_types(7)
Date:   Fri, 25 Sep 2020 09:31:36 +0200
Message-Id: <20200925073140.173394-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/float_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/float_t.3

diff --git a/man3/float_t.3 b/man3/float_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/float_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

