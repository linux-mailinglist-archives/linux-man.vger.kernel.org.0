Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EF38267674
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725893AbgIKXPk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725909AbgIKXOw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:52 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BB50C06179B
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:44 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id a17so12943061wrn.6
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/Zcoy4xxKbFArVSpQUMFFhqvukuc7HvQCLembq58e5c=;
        b=mNW8rTm77S3FQOjaevCDMbevWWbbvXDnVy8WzcombG9RYxAURlzGRCZY8g/oqVx0R1
         kpZqj5/vBAIYegkpCtUFrwbo/jxmAWGVGlc21jQ2E/uo/duN5Y4CblfWHdy31jiL2jcV
         /3mBNU7TyQe7cnTo2fVI4bX7ktMLihF9nx0p0zDlP+c+GEDd9oPe45xEboZrvkOG41L9
         eA7xR7PmlxCo1Sid0p2yZ23WEuNfEsit7zpV70Zl0RzGIYS8vS67Icq0OW+cm5wjIN8T
         At4APINPDCaxeyaO6ojd4+htKWEiHSHyLQ1xjEJrj4JY6yUEHtyky6SHrOtfVaScAWM6
         dGiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/Zcoy4xxKbFArVSpQUMFFhqvukuc7HvQCLembq58e5c=;
        b=o9EywUGii9Pb+BQd4S1l0e2FHY8v0BlswqGOLz5hnh3WJTQ3D43e1j1E8OroqZBfd5
         vePZLEv9b7l/5qJFhefMtfSMseo9N1x3M72TActqfzVaclcQYK+GU5aqzOb8Yxm3c3zN
         /KRI6RJJ4w3w6NI1qMIFh3bXCccXPeNkMrBXOLhRIr6yqzyzUtmk+a5yt8qOqf4t6E7+
         zQbQUeJEXVDrKCbsflujtaN5e3eWFQMIFj9NqcD1oRsMSomH+pCvIASDd+gV6ZcAXcim
         QBpYdnzlursIAZVcTImQLVW4YP86OdeqxQyP2P5jNjLjs2bWkWB1p1oOy/yX5OHQwgfO
         jvcw==
X-Gm-Message-State: AOAM5318yfL/hOvBF6DOWxMQZASj3keDyZ7ynAtNFeuusMrqP1LEDHAE
        FA2omn4mN3zezWSgNWNN7tQNUD7DqNI=
X-Google-Smtp-Source: ABdhPJyK/moT5rxgjcZYlRclzqhWLgurclDuKRDkwNYoF5z8Tm0ug+ZNrwYt8wcyNd7N4oL27A+Ejw==
X-Received: by 2002:a5d:668b:: with SMTP id l11mr4092286wru.89.1599866083258;
        Fri, 11 Sep 2020 16:14:43 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:42 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 11/12] mprotect.2: Use "%p" rather than casting to 'long' when printing adresses (pointer values)
Date:   Sat, 12 Sep 2020 01:14:11 +0200
Message-Id: <20200911231411.28406-12-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/mprotect.2 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man2/mprotect.2 b/man2/mprotect.2
index 47d250303..885238a8d 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -326,8 +326,7 @@ handler(int sig, siginfo_t *si, void *unused)
        Nevertheless, we use printf() here as a simple way of
        showing that the handler was called. */
 
-    printf("Got SIGSEGV at address: %#lx\en",
-            (long) si\->si_addr);
+    printf("Got SIGSEGV at address: %p\en", si\->si_addr);
     exit(EXIT_FAILURE);
 }
 
@@ -354,7 +353,7 @@ main(int argc, char *argv[])
     if (buffer == NULL)
         handle_error("memalign");
 
-    printf("Start of region:        %#lx\en", (long) buffer);
+    printf("Start of region:        %p\en", buffer);
 
     if (mprotect(buffer + pagesize * 2, pagesize,
                 PROT_READ) == \-1)
-- 
2.28.0

