Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 666E9293E95
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408040AbgJTOXp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:44 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A344C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:44 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b127so2123013wmb.3
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hgt+bR4Tevd5sxU7yCKi7CgfsprPB04M5XYVo9EqDJQ=;
        b=BKGocP8+0lDLbg6ArozaTauLg7LMeGZ3u5/Mr74DnVx+7EiORE/uBZb5y7zr8LJfIq
         F/jkzHJt6ZRyqbtqCbqtgoYTlRX5rBjAJhdRURdBRFotIPdo0yNB/AGLOi5CNZBiLhzI
         m6+oIXNKNv7egFaFRygd7hxsDyhuwM9rK2g7Uu1iIhnd8qVrIrMSyzBEsMvpSmb9YIsW
         BV0Aa9TDR6MoaE02ehA6bBwe40NbDfTGrXSXJ33M3ChTdlcquvOByaIGswbMnRlhHODa
         BsJl3KgJOp3woE8yvLRMK4abnHi0HtlA6px0XOky37fCI6A45dvP/ERMSwo2J6PQOBaJ
         dbFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hgt+bR4Tevd5sxU7yCKi7CgfsprPB04M5XYVo9EqDJQ=;
        b=okHe2/AeE3xzzwAOZepK8Z8s38WJKMqjwe65d8c0tGdAE0y4BWGtAlcdqyG37DgwQj
         VeplirH4QTwiWlqfHy6hC1CHNKIELq8IekjTecRCr5bnUZnk9W4nHJ/mDHBN3TZ/6Gm6
         gcardSxDPGGgFhUnMC9Z9T8bUN2FnokPliY2RLxdnvoFEjOquyqPl8b5f0RZ/9eWEyKt
         j+P1UVJR2Zuz8l7SgXlgjpePjd1RMgL1TpDKj5vAHQSTnawKzDlWXjr8ZZGdvocfN2+J
         GtkDMJLHY/jo9oMrCTFtaWqvjROtNMOKxFxelYisfvnZ6u6T5DfhYZUYjiaGnHcrF54/
         7NlA==
X-Gm-Message-State: AOAM533EZqTyR5bls1t/thgxROS9GYcoZrk4DLo1Op0FclMI+qzmREsm
        Rh7al7XcaEPyGlgs/kzc6A4=
X-Google-Smtp-Source: ABdhPJxvXTckkuTNsrVQmsKdjWUfM5hyfWrDPbCE3PJJSV2A8cvuqCTn50aSj10Z5KklEh8uhyAYoQ==
X-Received: by 2002:a1c:b402:: with SMTP id d2mr3398980wmf.128.1603203823422;
        Tue, 20 Oct 2020 07:23:43 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:42 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 21/22] list.3: BUGS: Note LIST_FOREACH() limitations
Date:   Tue, 20 Oct 2020 16:21:46 +0200
Message-Id: <20201020142146.61837-22-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/man3/list.3 b/man3/list.3
index bb64fff92..4aec14cc8 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -261,6 +261,20 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (LIST macros first appeared in 4.4BSD).
 .SH BUGS
+The macro
+.BR LIST_FOREACH ()
+doesn't allow
+.I var
+to be removed or freed within the loop,
+as it would interfere with the traversal.
+The macro
+.BR LIST_FOREACH_SAFE (),
+which is not present in glibc,
+solves this bug by
+allowing to both remove
+.I var
+as well as free it from within the loop safely
+without interfering with the traversal.
 .SH EXAMPLES
 .EX
 #include <stddef.h>
-- 
2.28.0

