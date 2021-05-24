Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22EE738F2D7
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:19:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233380AbhEXSVW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233103AbhEXSVU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:20 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62B99C061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:52 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id p7so25773101wru.10
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gxCmG5Kd+TaaV5+mAaigLRxnoTYuzJvrptNwSvlLxFs=;
        b=nmtTFsCDgtuRgxPtXyf3UyErqkY2elMn9cFUVHkYFR4Zykeu/5Ry1yxuwEmNs9Gh6G
         Y+3/AGmHGiv7P4i9fRd6dDv8um+BKI1Nv0DdT6gsPPEYpnXWVku4N+rAr+JJxn2ozesp
         82kJGUrfCqxfljSDvaZAzPHDd1B34ik7cxWYc6by4jBEEiv90sSbTWTJk23ERcLcw05r
         8Ey7kNxOxweHiswdQR8cVlcetw2XB996R4r8wgNrfigjdA96IaLYqmU5eGjrtls1i+GU
         ZIVE5Z0zmj3K7Iw7bepThERq58kzG7L4J9HvQPMKj0qD0McAEbssdqdkj7c5NlC+mqR4
         6ckA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gxCmG5Kd+TaaV5+mAaigLRxnoTYuzJvrptNwSvlLxFs=;
        b=RdbjAlmr5qddH6g8devdm8gUOUugkewhKl3pU7dtJSQXFX+UW/HRrakLm+sP0XTIVn
         8X6pv4/zAKLcTJNyZu94NruF+W9oHYO37NV1fqJASk8EePZbLGBynGqrOpqA/R/PvcTQ
         6Jsow48ZFE1PkKvmffci9lLfQ0PoTgTtqgVqDJeJ6nKJMrsXF2QreoW6ugwRzsoCN58q
         AJ4oiV7ZCBfiwRksfWhCQ1zZwRvVTT5+mZnHGqyp/CA4hJLgMbQD4DGiUM2bBm4+076R
         Z7fldUqQrqaoiLOAGRVKF3i7axu/aBCMOkul29HQSdm7PbaKz5HT9cheBiffdR1nUNBK
         0J3g==
X-Gm-Message-State: AOAM532zPvsvqA4UW0f4XsLwH9bS8BNZAFrdfX7VXbnH4u2jZZXCfotZ
        qu/aSsXoIQ1NCkRuZMS0AEQ=
X-Google-Smtp-Source: ABdhPJxU3F6RCCkhKGHhDl2ouWgzmFRmTRTtArPBDE8V+0c9x3lD5ArCkczd63mLgO57jxQ4k06GIg==
X-Received: by 2002:a5d:64eb:: with SMTP id g11mr23830796wri.260.1621880391085;
        Mon, 24 May 2021 11:19:51 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:19:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 01/10] open.2: Remove unused <sys/stat.h>
Date:   Mon, 24 May 2021 20:19:38 +0200
Message-Id: <20210524181947.459437-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I can't see a reason to include it.  <fcntl.h> provides O_*
constants for 'flags', S_* constants for 'mode', and mode_t.

Probably a long time ago, some of those weren't defined in
<fcntl.h>, and both headers needed to be included, or maybe it's
a historical error.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/open.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index bac1ee806..1bcd995f4 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -53,7 +53,6 @@
 open, openat, creat \- open and possibly create a file
 .SH SYNOPSIS
 .nf
-.B #include <sys/stat.h>
 .B #include <fcntl.h>
 .PP
 .BI "int open(const char *" pathname ", int " flags );
-- 
2.31.1

