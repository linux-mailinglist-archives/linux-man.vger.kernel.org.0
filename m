Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0565A3E399D
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231308AbhHHImM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhHHImM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:12 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B57C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:53 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id k38-20020a05600c1ca6b029025af5e0f38bso12120365wms.5
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LoNyXOSUdgfh5qDer03pS1RGt4RAs28yASr/OxVrQUA=;
        b=iiG/boQ+qU75QUKpDzpSrfU2wbOxLq/RrpNZBitBegutA2GxVBIONonK0kYCcsrWfv
         T+VdF/VXTX+uXIrmH/Uiat/iJ9Sn2HDoZTAcsskMIiGZQVIUSgKHALy0EwaAYhyYEp/a
         AlSDSLrJ+wbEgoisIIbx62c2saStwvLLE7z7C16vSQuMzzfCfJEw5c+h8mtUrNHtl5BJ
         fzRs5HRn9QHaI0ZK6ChA37sntJjzG6v5wEtX+92XYtRJnGsJd6QVmuDL7jAi776b//V7
         XpIJKa+A3lI3zGFSmWui84oUa25WYlqEw+gwSwkn4q4gx21e7xjbN/cuG4pVlq5qocKv
         7IwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LoNyXOSUdgfh5qDer03pS1RGt4RAs28yASr/OxVrQUA=;
        b=q9crfG7v/rqFplA4tRkce7Pv95SYCdWRNUaJhMEMj+SFSYmJJ4s2zjwhikmCn7Q6Y5
         MR6FWa3ACQkWJaq5TlITsXIV5q3XyKrcVO/nxa/dOFr6h5Zrmf4h/GdEobQb/AvoJg3R
         hOp6Qd1HsdGZGwpkzuVPU3ieOCWDuEt6sregr16uK7t6a0zwAPZpftrs5Bm4KsUwT7Ek
         3y6dYp4T7zqgVDm+he0ehpM+t+wTZj0uWu3eztVzce6A0sOpdalrh+0PmQtYD65CYo6t
         ljYpwhOkle9j3+L4KkLuAO2EXJrmY2c12/pcWXBkzkYIh3P8B0c6nYJAcvazdZzZpWjd
         Fdtw==
X-Gm-Message-State: AOAM532IIFCxs9S+A+JViDB366REpT7eyCmOYtG2dk9GCWMz6CUMpdf0
        fBOyJqd+SWocmlxU4O5/3Cah6pCuc/Q=
X-Google-Smtp-Source: ABdhPJyp22HPkjVFhaYpdq6oBXZ1NTYv02qmYpklsAPJb6fxjCwdNRLMFIVd3oJhjt+GVcHIrDQEAw==
X-Received: by 2002:a1c:9a97:: with SMTP id c145mr28021322wme.42.1628412112111;
        Sun, 08 Aug 2021 01:41:52 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 09/23] termios.3: Document missing baudrate constants
Date:   Sun,  8 Aug 2021 10:41:19 +0200
Message-Id: <20210808084133.734274-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Pali Rohár <pali@kernel.org>

These baudrate macro constants are defined in bits/termios.h and are
already supported.

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/termios.3 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man3/termios.3 b/man3/termios.3
index 797778680..01c209944 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -945,6 +945,18 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
 	B57600
 	B115200
 	B230400
+	B460800
+	B500000
+	B576000
+	B921600
+	B1000000
+	B1152000
+	B1500000
+	B2000000
+	B2500000
+	B3000000
+	B3500000
+	B4000000
 .ft P
 .fi
 .PP
-- 
2.32.0

