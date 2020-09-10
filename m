Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C3DE265279
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:19:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728168AbgIJVS6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:18:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728048AbgIJVOu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:50 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A197AC0617A3;
        Thu, 10 Sep 2020 14:14:28 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j2so8757890wrx.7;
        Thu, 10 Sep 2020 14:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CRsaeVhcaauvFcHZ+aRnL+oVg5BB/PSpmiLD4CesFu4=;
        b=qSMhYnRKYLve3Zw45NlEZlwwlqJXF859tjvmj4IzRVIOuA82+AEDDnp5lfmmqDUXXV
         J22+hS7TwAOR5zoMe5oGXzfS6dJ2hF0oXPcPRtxvsMvM9mPZUH+s+o+AlBUPRSq5G0Yo
         4ODflp1+YKk4IctrG4ik9b1lU6paFN+GezI3L76W4my/J8CBMAMjx1EENSg7/R02T3KH
         mZwikqy1f7PhOgFwyshZyvHyvxXjDdlQP0iN8wLc8zrIQniSs3CL1XqbYtDmGtwEEpnF
         RUnT8EM3h4SgHkSLqnmIVuZ5khozscpbywQG+oZ6oyQDDsN2xeVzkJwx4KFQk1URBZmk
         KB5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CRsaeVhcaauvFcHZ+aRnL+oVg5BB/PSpmiLD4CesFu4=;
        b=slQGw/wmIT76KZVTyDWTkrGN7vQ49a/C/4dPza1Ha3qSE+htU0NFaKXr3m8YFF2a5w
         qr/CghQ1ez6iPuDvAamIzEUXqT1cFlxNBWOSZJevRPibfn5d48NuiZ+b2vRCIf+3WX9B
         wPLGQkT8ujiC3rKxH03WdA3cUf1Qe2VBmjMxqDCZS445aA1x/imL6kIf620gxxbrEpjg
         fl4D7w077mpnDmUtF9HJEL9ONuU6624UlGmmzDgfCz2XaiKtZiY2i6rOgEMb/lez63FO
         cHqVxdYz7SRztKLISzVYfnZwvFixIw7AnQIFmsrrnyqCQ7X1Ic4AcnsrROXMCtrmUWqH
         6H0A==
X-Gm-Message-State: AOAM533GcJHM+Pn58P/3sAekpUGh5+nX7WyE8lYDHpColVzsOFfKxQo2
        LV5lC4gavwToemT4Y8LtR7w=
X-Google-Smtp-Source: ABdhPJy6AhdBjr5KxHsukUop/YSOxOdmBp6q9bFMtiz0McSFGeg8U0cm51ioiFBajZoi1tDkbyQ2qQ==
X-Received: by 2002:a5d:61c7:: with SMTP id q7mr11072892wrv.343.1599772467355;
        Thu, 10 Sep 2020 14:14:27 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:26 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 16/24] getpwent_r.3: Declare variables with different types in different lines
Date:   Thu, 10 Sep 2020 23:13:37 +0200
Message-Id: <20200910211344.3562-17-colomar.6.4.3@gmail.com>
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
 man3/getpwent_r.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
index 0f7581091..b6c1c281f 100644
--- a/man3/getpwent_r.3
+++ b/man3/getpwent_r.3
@@ -184,7 +184,8 @@ in the stream with all other threads.
 int
 main(void)
 {
-    struct passwd pw, *pwp;
+    struct passwd pw;
+    struct passwd *pwp;
     char buf[BUFLEN];
     int i;
 
-- 
2.28.0

