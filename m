Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2CE828A719
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 13:16:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726391AbgJKLQP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 07:16:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbgJKLQO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 07:16:14 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BD4DC0613CE
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 04:16:14 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id b8so2421964wrn.0
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 04:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ge0NjdN+TQfIRqQLeTmkoreK4bFeN157MoLRI1Cm4lI=;
        b=tzvd7cmhNzLYTwgs3XcjQEe+7JcwEAkhpQduW+Lj74DwX2PRzuP/ilyMhJCdi6GJeU
         l/3SMn4EmiWvtQzZ0RSpVGSCO91/AemYnYtCdxXV2Xw/U9jgD0C1OosFX5u7WfxRoA5C
         c9RntIlDnqftxAX9cOyFzELJbcV9zu5BV9s/6xUmeClb7WvyqiXCtnZ0t2u4+2r4nqZv
         3D8a3/+SJIl1SwfsgXANQjTyrBra7P4k4mx/Mx2xf8EzsdQ4gFl9PKTZCYbem4RY0pZB
         V/VvofPBqieRE1SrVQwYAgEcNj1DX2YA4GZtANIbRDZzTLMl/PtaB0vydlkidjTi6zLG
         B8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ge0NjdN+TQfIRqQLeTmkoreK4bFeN157MoLRI1Cm4lI=;
        b=dJuxHplmkJnULnrlvKdidNRPkPu2DSnHTpPr3I7vFvehQV36FYIkZ120Q093u9pcb2
         NlrKNEtUXBkwFq9OqhqnyR1m7/khxnx7az5eNUIQwhVTGFie3lN/oyXlXlbV85TsQny+
         ++6Bkg8U5YMos8XTpXq/YrKWPqaLEbzVO8JYTAE8U9pE1Bu07ELNxqgmhrChhMDUGt6+
         KSs5S0t+iwCOKpHGgO6EBvV0cOJ4sqYY0njtP+7rB5P2us4tt4K56k0ht5i3Tl2Gsxdl
         5zqyIisi3zXxvifMyy8a44RHWQnbPSTCAtEDMDy/K0N6ym1K4jX/XxDeUMdPw/oKwrHS
         b1ow==
X-Gm-Message-State: AOAM531XMymYFlvnZB10sBB3pIqf4gq8siQnvb0Zaf4vrXkVb2GiKdgb
        /B8cZvTwrallG+KvCXp3DGg=
X-Google-Smtp-Source: ABdhPJx+rEhq357glBjrM/8nxdPJZfiAJqltDCYoRCtE6/VGT/9Dw2roB4daW3ARTME+LF5j0p8H9A==
X-Received: by 2002:adf:e7c8:: with SMTP id e8mr25663542wrn.358.1602414972476;
        Sun, 11 Oct 2020 04:16:12 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 64sm191344wmd.3.2020.10.11.04.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2020 04:16:11 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/2] system_data_types.7: Add 'regex_t'
Date:   Sun, 11 Oct 2020 13:15:25 +0200
Message-Id: <20201011111525.9735-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index a4a2e0ab8..8a894b2e0 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -786,6 +786,29 @@ and
 .I ssize_t
 types in this page.
 .RE
+.\"------------------------------------- regex_t ----------------------/
+.TP
+.I regex_t
+.RS
+Include:
+.IR <regex.h> .
+.PP
+.EX
+typedef struct {
+    size_t  re_nsub; /* Number of parenthesized subexpressions. */
+} regex_t;
+.EE
+.PP
+This is a structure type used in regular expression matching.
+It holds a compiled regular expression, compiled with
+.IR regcomp (3).
+.PP
+Conforming to:
+POSIX.1-2001 and later.
+.PP
+See also:
+.BR regex (3)
+.RE
 .\"------------------------------------- regmatch_t -------------------/
 .TP
 .I regmatch_t
-- 
2.28.0

