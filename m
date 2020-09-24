Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 796DB276E5E
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:13:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727374AbgIXKNg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727368AbgIXKNg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:13:36 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44D4AC0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:36 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z1so3181435wrt.3
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=quR+LBAqEENcAJVmeSZzV/Zk1+FHqDswWC+vHO4vbpQ=;
        b=sD3FApVZGHblNXRja7HHO84zUZ1hU59E5qoczWMv8gSpcXw3HRW8py9cCjIVKAZe/F
         sAMwD5z88pJ4MBehytuasmvammiChgMOxeozJkiX4svswxt/hM9pj30H2L93hQjDAHfN
         pToMULecF0Lpgfc3ZmDURXiaWYNq21EopBy+Ci5IZbcFsCylEz8+d7PnjFjDTHcqvRUs
         LWxvJMh5msk1wti0QIZmvTdSXN1yBpH/4rhVjEJA4EPJmzRy3rsSyv6a0uKj4PKhmzdP
         DTnW/J1spfALEbF9EN1FpctnX/Ur4Yzr5cNw5dQlQ2PsjdEFPy29zqgC04YysQ+Rh6O3
         dcwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=quR+LBAqEENcAJVmeSZzV/Zk1+FHqDswWC+vHO4vbpQ=;
        b=YtHi+Ad7HBirveDRwC9Mcc8nXiHtRvsldSKoSPaw52IqMP9MS7k9GrbWjdzN3xu4fe
         s7DLgW4wUMYHf8nc/OKej46kukXkHn01L9tmYDNDpUuhI8YbaHLyrGnV2mCTEtSk0efe
         VtQDpl/YohchmCKDeQM9nwYVeaWG8qj091xMv3RHx1NBWsfmBI1MXe20a+YkHmkpzLsM
         H37V2OUeGtYQ7qDXFY4tpXLQ6wQrU/AI/dfiQafv+InbIha47iylHZo29aX1+80KZAa6
         ZM7J4T37BXKAUMFCiorFiZi6AtT6EkMwqXv0uW6qeewjgocH+ugPKvdLJVVjJYoTu8Zq
         WmPA==
X-Gm-Message-State: AOAM5332jR0m24l6SWMBY+bEPeC5KdDdFhmsNqYBmkPg1qYYjBf6CniP
        lulWg6cLuXqj5uSmYDhFnIk3Vsc8n8I=
X-Google-Smtp-Source: ABdhPJz5nu4fwutznk7giqzmuhm1wk+fxkNLlQ/gvnH9rDP6P7+F8XTpXwdXGSQ1OKgoinF1khoFzg==
X-Received: by 2002:adf:f3c6:: with SMTP id g6mr4645317wrp.340.1600942414984;
        Thu, 24 Sep 2020 03:13:34 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m4sm3333032wro.18.2020.09.24.03.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 03:13:34 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 5/6] system_data_types.7: Add lldiv_t
Date:   Thu, 24 Sep 2020 12:13:08 +0200
Message-Id: <20200924101308.78204-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
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
index 1f7c172d7..c3add1400 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -248,6 +248,28 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR ldiv (3)
+.\"------------------------------------- lldiv_t ----------------------/
+.TP
+.I lldiv_t
+.IP
+Include:
+.IR <stdlib.h> .
+.IP
+.EX
+typedef struct {
+    long long   quot; /* Quotient */
+    long long   rem;  /* Remainder */
+} lldiv_t;
+.EE
+.IP
+It is the type of the value returned by the
+.I lldiv (3)
+function.
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR lldiv (3)
 .\"------------------------------------- pid_t ------------------------/
 .TP
 .I pid_t
-- 
2.28.0

