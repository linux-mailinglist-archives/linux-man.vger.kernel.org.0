Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4F0C276E0B
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 11:59:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727325AbgIXJ71 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 05:59:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727171AbgIXJ71 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 05:59:27 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76001C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 02:59:27 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id a17so3111029wrn.6
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 02:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=818985ZCXin6V+coaPI8kgbtQ315CYRipZLcZGv6evg=;
        b=fVWsDE47qELpjTnczV9jKaIelxV5ZzFGqWbjPiu4c/CTxg79w/AI+gZWjYIWyaEgwb
         4AMBZFfTd1Dky5BI7na2HUs6Csc2LurpplrVZm8cn1rXM67D5RP90tglUe6mbJBGyJjm
         +CbGE0UcqgvatgA812mQeYWFRCD4ffUOtNmWDrwz11YkhtwAr+B7gPijlfWJ8YZDJFZC
         NOJAJVXlcyYkFNHdK8BOc8iT790AUOYE0ax5pry9I2W9CjcaQc0V3rWun/hJ3Lra1e4j
         qdvK+ncIZ3bF+zFgEg4OAeDB10rTOCH7KwCSxunH97smEVObl3gzHuWZC6JXO5O5FzKO
         e6mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=818985ZCXin6V+coaPI8kgbtQ315CYRipZLcZGv6evg=;
        b=jp12etrqbiNY9f+CNi+p7zAVT1Q3NOpgEsdYZwBOrzEEO6iXbHfpeHq1THB6a4/ryB
         1Tg1823MdlnSzTKqGyAps3kYY8jOUHNyeiIm0iqciLJ8+MgoDHl9l7RqpEYCRhtfJ2B7
         facNjM7STbbNtqGUdGEROwVGPprvumYpIl0TtdHYfeHF2fyy4QAEXRgBlfwlNx9r3xTf
         +204X79zzpM0A1dGhXIg7ZFcG41gJ33QwlOIk5Ii4nBXTgT4KGuWNK9pN3O0iDAaDzuG
         29TDlAtRNpS4v98N+3DZRsRU/OcZ1UqBZ6fIAxg7+5VaXcVZdha/YLVoosXH2xecFVul
         gJZg==
X-Gm-Message-State: AOAM533Hqbqaf+kBlU0271fNdASpProN4WRejj/fEtZMv/WrdrWBMa2e
        e2IuOlI0J1ZphR/Cek1UxtU=
X-Google-Smtp-Source: ABdhPJwzZ75RyYt8Fq7J6Pm3OWgHJ3cQoWZdAlIHkfwThjeYe1juiLjC86n8KzfsHElBxw7I+TF8yA==
X-Received: by 2002:adf:e686:: with SMTP id r6mr4188773wrm.295.1600941566180;
        Thu, 24 Sep 2020 02:59:26 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t15sm2707961wmj.15.2020.09.24.02.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 02:59:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/2] system_data_types.7: Add imaxdiv_t
Date:   Thu, 24 Sep 2020 11:58:54 +0200
Message-Id: <20200924095854.77221-1-colomar.6.4.3@gmail.com>
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
index ea3e25175..c00345741 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -182,6 +182,28 @@ Conforming to: POSIX.1-2001 and later.
 See also:
 .BR getpriority (2),
 .BR waitid (2)
+.\"------------------------------------- imaxdiv_t --------------------/
+.TP
+.I imaxdiv_t
+.IP
+Include:
+.IR <inttypes.h> .
+.IP
+.EX
+typedef struct {
+    intmax_t    quot; /* Quotient */
+    intmax_t    rem;  /* Remainder */
+} imaxdiv_t;
+.EE
+.IP
+It is the type of the value returned by the
+.I imaxdiv (3)
+function.
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR imaxdiv (3)
 .\"------------------------------------- pid_t ------------------------/
 .TP
 .I pid_t
-- 
2.28.0

