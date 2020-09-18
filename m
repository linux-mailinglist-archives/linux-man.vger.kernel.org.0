Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EECC26FE80
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 15:30:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726629AbgIRNaN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 09:30:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726126AbgIRNaN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 09:30:13 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F273BC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 06:30:12 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k15so5625609wrn.10
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 06:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kx/zCLUn0N/EkjssmDwazOm4rFROomjDdsbIZFUQq1U=;
        b=U+F7cMN6w7G3AQWxAlZ7b5ziqf7maIE4zZFLTiKEMENHh5is5WoZMCxD7KxecS7/Nn
         bN0qDAOp5fK6AQ9F5hTlzgGkGzDExMobnOZTpqdiN8OtspelULItQpBgBhPoRHOipOs+
         Q3AqzcjyelFD/gErWgoCA5I3ILaeN1i0ECFidoc+OmZvDiRyvEUMRJufXRJHikP1O57K
         v5BNL8crUy9B5m7kcvz0TiScVZ7pEDH5ZzSebkJ73yTv6AyShk2DDzpuSKrEaQ+q6Pmg
         mkCn7gaIKbK/uu1vujDWMMbxf6/gF99MqL4EOGnvVseqXWekon1bKDeruA2D9MFkZT9U
         qBfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kx/zCLUn0N/EkjssmDwazOm4rFROomjDdsbIZFUQq1U=;
        b=pIemw6jGtZWn7xUbaLqiFdlXm3exovdHTW2lLni7ED1jBYcw7YLnnV6Fut6clov38F
         5Vk9+pOnZ3Fl2wNfnZPBmh5yjI9zMMPA6HWPylntPsp9+OJ7uWaYAZB0SHTxSsl50cLB
         YWLwn6m7upy4B9AbMC/500tI7af9sGWa5UUM9TmoYWynKijakJ1NQvg8SV1lxm7X2vPo
         B2gJje8RJBbMFh8Qvx9oQOUQXLZXFXctVL+7VWyPkcykLKcS/pXlA3v0DO1OeMIgvjAg
         n6UjgFBYcMzFbv4Txsiub+4fvw4TxysFWqP9NZpR/MC0xSDqHiAbIJMxtsVZHgfPpQGf
         QQSw==
X-Gm-Message-State: AOAM530LpP2FALNI1spmTRxDsakMVAnlWwGBbWfTWHqPCTrcPqa1Lh+X
        Ot5PoC+cRSa2DUp33fsrluc=
X-Google-Smtp-Source: ABdhPJzlJuuZIFVk3oEBxkGChXxDB9WuSiSgXMgsVYw0MqOg6i4sr+CvAscPwU86Mx2pZKksLmYa0g==
X-Received: by 2002:a5d:5106:: with SMTP id s6mr40317761wrt.166.1600435811675;
        Fri, 18 Sep 2020 06:30:11 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id k12sm5304764wrn.39.2020.09.18.06.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 06:30:11 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/3] system_data_types.7: Document regmatch_t
Date:   Fri, 18 Sep 2020 15:29:43 +0200
Message-Id: <20200918132943.55424-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
References: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 2ccbfe817..d3dee2747 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -82,6 +82,25 @@ and
 .I ssize_t
 types in this page.
 .TP
+.I regmatch_t
+.IP
+Include:
+.IR <regex.h> .
+.IP
+.EX
+typedef struct {
+    regoff_t    rm_so; /* Byte offset from start of string
+                        * to start of substring */
+    regoff_t    rm_eo; /* Byte offset from start of string of the
+                        * first character after the end of substring */
+} regmatch_t;
+.EE
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+See also:
+.BR regexec (3)
+.TP
 .I regoff_t
 .IP
 Include:
@@ -104,8 +123,8 @@ type or a
 type.
 .IP
 See also the
-.\".I regmatch_t	FIXME
-.\"structure and the
+.I regmatch_t
+structure and the
 .I ptrdiff_t
 and
 .I ssize_t
-- 
2.28.0

