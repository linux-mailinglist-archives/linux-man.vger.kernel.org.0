Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69ECB265274
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:18:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727984AbgIJVSf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:18:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727983AbgIJVOz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:55 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 233BAC0617A5;
        Thu, 10 Sep 2020 14:14:31 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id z9so2109379wmk.1;
        Thu, 10 Sep 2020 14:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zt6dADGq4la6BR78DuneffLf5Wa58+oMh0mWkL+TeKo=;
        b=QVWm2UWua4VoPTP4LMW3KiuQF7ciLo+FGwd4KuztOzSngm6aIqcWXKdF5wBIhzN6oN
         QIJUc2pQpDB6oSJSRuB9LXGyVf0pt91SbpY1ppS/GvYbc1HFHfEOao3saC8WT+mf+LpW
         c1oLw7XauccTRLXL6r8pMZEh8zkNjl++D57kpVnVxVLbJz98dfgHfCoObhqiS6zMgDan
         JyWU+PooRKRnMpBQBoLcu3WfwDqn8WVlst1+zrjR17a2cQojSkK0bKnuggGU1sYR0gLB
         HCg7lMkq+B9U0Xg4CwulYpxSkbrLDN9dH8tXzLATNVal1cRiXSmL+W/Wm1nmGRXZtKv5
         /AUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zt6dADGq4la6BR78DuneffLf5Wa58+oMh0mWkL+TeKo=;
        b=hyuYYoudXAzUwP9+BUsyaDa4SkFZMRvHAT/eDwpdO3Vf/7m9spXSOd2BRHgUbfm1g0
         Q1mdkP2ED4sQlSs/6/o9/BX0yPP02eAfHG0OeFpolbH70Q6i55Hbf0+uNCPq6paz5hRZ
         nZAiuFH4cgwkaQ4HUItt7aQP2ZYlXf7ve4KGw9tJ8JlpTYM/3aRIuxAsQDok9F36giMS
         qRgU++XMeii3eAaTeo0AnLg2y8ue9WKGU1LJTYNPgowCb3F+Zul+U1gYhfC0qdwn5mcf
         sKdCFLBZ6cgV8+d6Lj21By9yCccEKhjJCegf8WPlrsn7n7L7Y8byts6UPHdHkbjrHKZb
         /DFw==
X-Gm-Message-State: AOAM532CfPQysbs1z08DlFU9j8zArQeu/QyHK3XeutY5pas3hPum4r0y
        oXalcOo6ZN13Y5ZcRPn05bvA8Ap6YmpncA==
X-Google-Smtp-Source: ABdhPJyZlRqX4zzrq7KHKRPdiMoMLPjOqRmYgcM2ewg6l70DDS8U+f6ClsiKMnKLlXwhGBbLGEBV0w==
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr1970545wmj.79.1599772469561;
        Thu, 10 Sep 2020 14:14:29 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:29 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 18/24] core.5: Use adequate type
Date:   Thu, 10 Sep 2020 23:13:39 +0200
Message-Id: <20200910211344.3562-19-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'nread' is of type 'ssize_t'
'tot' adds up different values contained in 'nread',
so it should also be 'ssize_t', and not 'int' (which possibly overflows).

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man5/core.5 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man5/core.5 b/man5/core.5
index a87ebbaf4..45c9de845 100644
--- a/man5/core.5
+++ b/man5/core.5
@@ -654,8 +654,7 @@ Total bytes in core dump: 282624
 int
 main(int argc, char *argv[])
 {
-    int tot;
-    ssize_t nread;
+    ssize_t nread, tot;
     char buf[BUF_SIZE];
     FILE *fp;
     char cwd[PATH_MAX];
@@ -684,7 +683,7 @@ main(int argc, char *argv[])
     tot = 0;
     while ((nread = read(STDIN_FILENO, buf, BUF_SIZE)) > 0)
         tot += nread;
-    fprintf(fp, "Total bytes in core dump: %d\en", tot);
+    fprintf(fp, "Total bytes in core dump: %zd\en", tot);
 
     fclose(fp);
     exit(EXIT_SUCCESS);
-- 
2.28.0

