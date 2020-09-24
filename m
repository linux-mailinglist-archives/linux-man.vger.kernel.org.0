Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06526276E5B
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727352AbgIXKNe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:13:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726949AbgIXKNe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:13:34 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B4D2C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:34 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id q9so2937371wmj.2
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y+KApmXJsA8IRNFNFOAKrcsi7uFyg47zK/eZwJ/Wtzk=;
        b=J89molIbyjrtGuNsqhCEkMqTAa0TO/5A3f6sRLBTz28/d9/fQJtEsrjn/OrvQc7TJf
         /Q9uODYRLItloMVV5bieD3eV4FgbAEpC7prITLzqBJrBbpwN9GYCfEtSEfvZteYyrVOB
         0hvTjTWjSxipADANuzxcH2Fie60ebu0Sn22jDxqLv2F8VGV49/sNJcJ1Rp0JsxiWKNVc
         hctpj3+d0BEHORw5OOlmG/OzS4k1HbUMAN5ELamZPmmrZAGueyJydUxW+6qiMyLc0M+N
         V9ZwEl+Mff4a/0VueCGcQ053X6039jDz+2uEMR+W6U807lE/KXb4pMjtolZ15tqtMcBd
         fBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y+KApmXJsA8IRNFNFOAKrcsi7uFyg47zK/eZwJ/Wtzk=;
        b=Mm8nqFWY1cTx6+foUKUg9U4Mu+N17JdGAaTRm5UoGzOuRnggJ/BD/LsgjsGvy0tBzZ
         ylLoUa8Sd4l6LaCoyM99Iv3ah5j/LORIYCmKmmgQ3Bl/zD40sNmURzP77aq2aHjMAMut
         avr7lcEmUj5zJcQFZ65asQc5SjIm59+BfCNgztXeVk/kx0ZDmtEThT7MACA0pTvbaMC/
         asLS525QdJ5k6Dar1e5549P8yrEi5IZilOAv6okqG70Wf/RmgiGUhwehEScnS6mieQBn
         kqf4wvy5TBnFN6rMPxidEr3uwbHclUBoPeWMfDXRu+N5yV/avscqCeonPUSLFhe8hV4Y
         7dZg==
X-Gm-Message-State: AOAM530+xQdpnzAVXvZ/wLRXgjlAJ/fWyr/7AlSp6jds448ILGWVoIAt
        37Wk2RIquZCgB0UN7Sprtun3Opfz1xM=
X-Google-Smtp-Source: ABdhPJzhcycM38Du5AxuvVmBEQEkEV0rFS2I+peJeX+572k2qBRTp9OO03STQjAE6tBj07zT/iq94A==
X-Received: by 2002:a1c:dfc2:: with SMTP id w185mr3898791wmg.15.1600942412973;
        Thu, 24 Sep 2020 03:13:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m4sm3333032wro.18.2020.09.24.03.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 03:13:32 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 3/6] system_data_types.7: Add ldiv_t
Date:   Thu, 24 Sep 2020 12:13:06 +0200
Message-Id: <20200924101308.78204-3-colomar.6.4.3@gmail.com>
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
index 077d669b4..1f7c172d7 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -226,6 +226,28 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR imaxdiv (3)
+.\"------------------------------------- ldiv_t -----------------------/
+.TP
+.I ldiv_t
+.IP
+Include:
+.IR <stdlib.h> .
+.IP
+.EX
+typedef struct {
+    long    quot; /* Quotient */
+    long    rem;  /* Remainder */
+} ldiv_t;
+.EE
+.IP
+It is the type of the value returned by the
+.I ldiv (3)
+function.
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR ldiv (3)
 .\"------------------------------------- pid_t ------------------------/
 .TP
 .I pid_t
-- 
2.28.0

