Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 740B1377875
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbhEIUVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbhEIUVT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:19 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2896AC06175F
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:16 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id a10-20020a05600c068ab029014dcda1971aso7859529wmn.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XNV+mujRIwmogCC8rdnl6Zic0qZS5d1woQZddzVQPvc=;
        b=Y4XqKjPkEubNuWUC+ezS5NG0URdvaFBPvgC3dNhnH6NlyetkyvUJR+4aRGbgTJ+5Ar
         6kqKE+GzXUtVifSVRIxJthWFUiJy3y3S1W8dXgf6UvCPYp3b6zvoR5z7KSLVLYvXKaZx
         5xJAaIoLLKL8VDkg8c14iAJ21SocYHIB/73mtjLLMCMDcAREwRsJTsGLOgEcxT7kvOoA
         LsXkPq8uvq0alLK+2e/DbwdyU+av5XRrnbEi5YXrfl8kN6a2wfyf8vDvk45yZAV4xyub
         C2ucMUuhWfreMV1zj1NWsVXpAvjauske9YWrRMiVbOPHO3gD+mik1css5nRPuQ39zi1+
         Degw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XNV+mujRIwmogCC8rdnl6Zic0qZS5d1woQZddzVQPvc=;
        b=TzgTCoIcgGEj24IHuti7oy1lhgZSRFpt7sqzAH/VA18/VoZTUyEBZPngZoK34FrUqi
         FzOBwpZ6SYVeoWzeQqsB4U4xRqMwCxBek+PlsLRzK6p1MAQWy5gIJ7ip6gzpJTV/jH1Y
         4ILTvlcP+46cVZO3+xi2rcjJbJEYa54bXBSMA5tgXbNO3enpDBGvmREwRS8xZnNwscYF
         KWHoFFP851ahCRJeFeJX6RgsnpLJ9jmPZIGrpgqAhI5kIeUy31Vs/NEzW8dIVahrFxwJ
         YzClGPviMFCoBr3WjXUpNJqs/zyOR4TsH3fag1Q6V9Gtj5W49dkCRCKRDeiryTmXs1vE
         tgsw==
X-Gm-Message-State: AOAM531Xf6NpppAkrpabHqOQS/NkEPsMXa3eutid8fKONYND4DjJTqqq
        3NMTHi08g3nnrxBzfdMmeeosBm1rUllQwA==
X-Google-Smtp-Source: ABdhPJyZHOFjtGRyHShrz4tUkHK0jbd5eZZ3fEm0Hd6g7G4UNNE7nNxI9w593r8c3rD+llnaujF01Q==
X-Received: by 2002:a05:600c:41d4:: with SMTP id t20mr34102644wmh.46.1620591614921;
        Sun, 09 May 2021 13:20:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:14 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 16/17] fanotify.7: ffix
Date:   Sun,  9 May 2021 22:19:49 +0200
Message-Id: <20210509201949.90495-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Akihiro Motoki <amotoki@gmail.com>

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/fanotify.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index ebe5c1d7f..6a7e70d75 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -147,7 +147,7 @@ influences what data structures are returned to the event listener for each
 event.
 Events reported to a group initialized with one of these flags will
 use file handles to identify filesystem objects instead of file descriptors.
-.TP
+.PP
 After a successful
 .BR read (2),
 the read buffer contains one or more of the following structures:
-- 
2.31.1

