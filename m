Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 022132781A4
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727063AbgIYHdC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727435AbgIYHdB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:33:01 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34350C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:01 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z4so2443195wrr.4
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CqQEr9T9uuGEo0PcdlXtzfk+/8ip6WKHDoNoQ0qMOUA=;
        b=awTaznV/GqKlixB1mXMP3Q4UBpawhnWKr2WlRQXYO8yR+hjC66kDLZq8tXFGgcn4Ex
         gaaNJxCrcyjfX0P2WzpZh2aCPfC6k7DKy0QxJZasXQk8dm3OLy/eNq1RzqwHT2d0zE4D
         VyHx+T8cMOBASLwzTJGpgJLzV/H1XaK+nxkx2qrDtf3VbYaycdzMf3OcaxWXTpm+TCbZ
         ahKjVv2h8hxdFaWywEzSFx2Igk/WIJKEbapshFyz25y+HAL2Gqqz99FbqbB8nL+9E98F
         peyZ8X1t6mxbb+qT59ga+5qqKfEaHWFySLgLFvkxZbMNgOSwagVenX6G5pVgNZbKj1XI
         Ut7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CqQEr9T9uuGEo0PcdlXtzfk+/8ip6WKHDoNoQ0qMOUA=;
        b=huwhl8kOhY8BnaV0mlQowbeIfYfSQ7pkXkLfuKLUjyuq4BD1JCPosPWAme/3Aha5JS
         zjsWro94W/ys3q9I4hJRK828C3LMQrjmdOLkvAwITE32smIlpJFE+jbJ2XM8jPOjEwo8
         6R9DTYdW8X4FfsXM98nH9jen0fqOGH/6wmENt4IVUfNQ37q+t7uVA15PEOFAcWeregMS
         iWaenmhOb6+ybPodiDicG7ZI2yTpTRT3xXSVvM5cF7U/Sr07IfG87CFHBBfJEsAuiMWm
         pkKuCjHWpA5ZN8J6Cf8mOzlhNiVPdIBdEwcX7NtbSZGKahkpwai1a1rE0BDUXTnPDWD6
         OqIA==
X-Gm-Message-State: AOAM533V3mTMFnpHSK/5Cv6v3spFB31wS6lWixD4PgDL4Keq1mb/FQKX
        0BcvSMRnOg+Sydr7JhmbMxQ=
X-Google-Smtp-Source: ABdhPJwLIRDKSZhXDCTVrKn5tw9FxQKS//qix++yP2nRMysrigzE8KGp4AsNvjYwaFnv7woZLvcWdQ==
X-Received: by 2002:adf:d4c7:: with SMTP id w7mr2962133wrk.263.1601019179854;
        Fri, 25 Sep 2020 00:32:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:32:59 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 04/10] system_data_types.7: Add float_t
Date:   Fri, 25 Sep 2020 09:31:35 +0200
Message-Id: <20200925073140.173394-5-colomar.6.4.3@gmail.com>
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
 man7/system_data_types.7 | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index b04457bbf..238b9593b 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -147,6 +147,42 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR fenv (3)
+.\"------------------------------------- float_t ----------------------/
+.TP
+.I float_t
+.IP
+Include:
+.IR <math.h> .
+.IP
+The implementation's most efficient floating type at least as wide as
+.IR float .
+Its type depends on the value of the macro
+.BR FLT_EVAL_METHOD :
+.RS
+.IP *
+0;
+.I float_t
+is
+.IR float .
+.IP *
+1;
+.I float_t
+is
+.IR double .
+.IP *
+2;
+.I float_t
+is
+.IR "long double" .
+.IP *
+Other implementation-defined values.
+.RE
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also the
+.I double_t
+type in this page.
 .\"------------------------------------- gid_t ------------------------/
 .TP
 .I gid_t
-- 
2.28.0

