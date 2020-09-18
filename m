Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA4E2702DD
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 19:05:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726273AbgIRRFI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 13:05:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726250AbgIRRFI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 13:05:08 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8849C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:07 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id o5so6334858wrn.13
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6XmpYGY/5N8PVzQG8fsEduO6+tH2B8i3BoLl9XVGC7s=;
        b=vG4/uGNzCxB7oTUNL9B0PCvLCFf6glh20TxLs/aT1WjJn+Z0AdUh4jU1XM3Giq00v5
         YvNwYdlVdCN3MHvKCiI3hC4z36/EtbhaDakW6dVxCEnv2gJ93FfqsC4DA4kNYEOI9G4L
         sgwohFDQAqWROpqvU5vt5J0HFmr2c5ffw/06/tHRJV5g+bSPeYQBluoAoHXuwHtTuzZD
         Wx/EKdqwSB/UmQJVFoWQEkGW61TFfR7ZBmSNyPbVT5AVC8xk7ULQyCdLwEEbeuAIrRZk
         Biw2HVGw6guV5onDg8JjKGAqTVt+j53E/oYc18MpAud4iYBomMbz754EpI/Y1CQqYILn
         nCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6XmpYGY/5N8PVzQG8fsEduO6+tH2B8i3BoLl9XVGC7s=;
        b=IoA4caM6VopRHUU2zB9EsBaJi95xNhwJgfH8QcRlLuqyUM0UvxFlFmB2VHA9+Sb6kt
         tv2qFcY3ymRh2gRVksdYgHEBhrwjgVBtTmh+z7L+i62RSoeqNT3xL/tMnPiNxIw4MM6t
         UlJiqB94Kpj1jXwoS6ukZENLSjDqW2MzY+4DBjVoesDdjwKSkDNF72GihuM9FIXoMfpm
         u/Vwzq3RvY5liH+fuoBdmZKxsBAXOF9O4WtlOLvbKat3v12k2D0L4u9kQQ7I6XH9RMc8
         i8MVFZRryxE8/Du6gL3xDteeIYBrtu/g6Tnm0xpwJnJ2mIkrCx4vrbPHQpPdjZU2BFhZ
         FuVA==
X-Gm-Message-State: AOAM533a1qvFB3Ffpk2jzJXoxdDeslZAzqUsZVesHfjZG6MHiWK3cUb3
        BY91Q8vDvtzskWo6PhhNUcU=
X-Google-Smtp-Source: ABdhPJwB8TnfyrPZp6CXY1ISfE3y6/6KbKiIGjlGEL0TUFcme0nZohnQeT+VFKad65nnCNeAK4O+/A==
X-Received: by 2002:adf:f88d:: with SMTP id u13mr41690518wrp.213.1600448706470;
        Fri, 18 Sep 2020 10:05:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q18sm6321208wre.78.2020.09.18.10.05.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 10:05:05 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 6/9] system_data_types.7: Document aiocb
Date:   Fri, 18 Sep 2020 19:04:40 +0200
Message-Id: <20200918170442.94920-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 40 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 36 insertions(+), 4 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 8c0c78954..f7d25bec9 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -61,6 +61,38 @@ system_data_types \- overview of system data types
 .\"		* Notes (optional)
 .\"
 .\"		* See also
+.\"------------------------------------- aiocb ------------------------/
+.TP
+.I aiocb
+.IP
+Include:
+.IR <aio.h> .
+.IP
+.EX
+struct aiocb {
+    int             aio_fildes;    /* File descriptor */
+    off_t           aio_offset;    /* File offset */
+    volatile void  *aio_buf;       /* Location of buffer */
+    size_t          aio_nbytes;    /* Length of transfer */
+    int             aio_reqprio;   /* Request priority offset */
+    struct sigevent aio_sigevent;  /* Signal number and value */
+    int             aio_lio_opcode;/* Operation to be performed */
+};
+.EE
+.\".IP
+.\" FIXME: Add a description?
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR aio_cancel (3),
+.BR aio_error (3),
+.BR aio_fsync (3),
+.BR aio_read (3),
+.BR aio_return (3),
+.BR aio_suspend (3),
+.BR aio_write (3),
+.BR lio_listio (3)
 .\"------------------------------------- ptrdiff_t --------------------/
 .TP
 .I ptrdiff_t
@@ -177,10 +209,10 @@ See also:
 .BR getaddrinfo_a (3),
 .BR lio_listio (3),
 .BR mq_notify (3)
-.\".IP
-.\"See also the
-.\".I aiocb	FIXME
-.\"structure in this page.
+.IP
+See also the
+.I aiocb
+structure in this page.
 .\"------------------------------------- sigval -----------------------/
 .TP
 .I sigval
-- 
2.28.0

