Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE9DC265283
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726642AbgIJVTe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:19:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726419AbgIJVOi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:38 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 374F7C061798;
        Thu, 10 Sep 2020 14:14:20 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id w5so8739885wrp.8;
        Thu, 10 Sep 2020 14:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X3WbVTqqKzlg68fDpT5tykZXFj/sNRCBMiQnCdblcY4=;
        b=fMAyDSALqxgxQTAYyfINhmy0a5ipXkxZEGOyffE1UiJ6KYv773IcvuJr6i4Tw/gdGA
         uJZMsUYKXQm3XfY9+p7RGccU1dCbaO0U7OFAJmsIaS9A0aVEl8ddv+ppsNI0SsDJ9SsL
         knHs8lk4kK1uQ1iNFgCxVM95cqqxQwoB4SA267UU2B+aKnCV0sWudYVgwAGz+AN2DwLU
         vVgp4Sp9gtIAGTsoVRLg9jd6nJzi2ez2AcKZoK5bY/fFfzi0EHK3AgEp5UuXxlPX+DQI
         oyekiMpo2xmUC4D2TGz+8cCTE2IV4QARKJdxZloCGDwJHUfjenKkinA54MIdnq81v9aO
         KuMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X3WbVTqqKzlg68fDpT5tykZXFj/sNRCBMiQnCdblcY4=;
        b=RyBV2Q1kNtbEZISLlXE90LYSXiR7i3kcl5sreTcVf+9HPxv+sKV0QiLhtQr7qLnMcH
         dTNh6adF1Kg7VFMLW+UNF/2FmbAQnSbfyp8hZ2ia6pwJS6DG3Zd8j9xom+X3/6Mxt6CQ
         m867cLRgYDIz43ch2NzDp7LsS2BDJymyVwvMbXAQtIoeUBIllOutO9nxY5H37vTBUtHT
         0rr4EDzrosdKd1BLa00pCmVm0Tbkwy3/mD3F/opHwX5ewc4RCsszhy9/h8oO4Ph7VAmT
         oTo2EuGoexBp0qB+JYKfH/tU9+uQdpvv90TEa9P+9F+KvF3LBbdF95BrIVIbjNt9Eye3
         l4HA==
X-Gm-Message-State: AOAM532LvIaMBArh8D1FKwvpj+5KH2oPNRSTgKjsX/+nopwauVdtLUXg
        D4iW0P1Yapilqo6zVKIEL+o=
X-Google-Smtp-Source: ABdhPJzD7EOKLb0O8bgAFsibyR4OBYm5G/3Zd495KiMjnRvQ5imgAf7BhIxuSj4Pny6FYfN/m8+9ew==
X-Received: by 2002:a5d:68d1:: with SMTP id p17mr10499820wrw.378.1599772458707;
        Thu, 10 Sep 2020 14:14:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:18 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 08/24] add_key.2: Cast to 'unsigned long' rather than 'long' when printing with "%lx"
Date:   Thu, 10 Sep 2020 23:13:29 +0200
Message-Id: <20200910211344.3562-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/add_key.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/add_key.2 b/man2/add_key.2
index bda08c3d2..bbd2d1d03 100644
--- a/man2/add_key.2
+++ b/man2/add_key.2
@@ -262,7 +262,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
-    printf("Key ID is %lx\en", (long) key);
+    printf("Key ID is %lx\en", (unsigned long) key);
 
     exit(EXIT_SUCCESS);
 }
-- 
2.28.0

