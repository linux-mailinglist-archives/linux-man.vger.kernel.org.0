Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3FB334304C
	for <lists+linux-man@lfdr.de>; Sun, 21 Mar 2021 00:23:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbhCTXWi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 19:22:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbhCTXWU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 19:22:20 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 072D6C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 16:22:20 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id j18so12817542wra.2
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 16:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DEAj1pIKQd+aUBD5PsZy8fCs6ytAbIZutO+NJZgjCbc=;
        b=hx5BuDW5nKIeh/GDHkr7XWuvw8BEXuJLz6AjotE8LZACed91qPG33tDtqoRbVMNZKJ
         P9k3hP/jQNlyDP9IGzVEGAThX4hjDiv0Ngn9oZnGAcEUW5+Jg3jRzasI4R3sKRcvNFen
         h8VvV4TSVJ0YT4UZcychsMPpuDOWvlz72CkPJv++SKPG+AmvV2W7VOcTkclWW3f52UQm
         dgT2Gy0ludzpxcKDkFaChkI5BDDCsx30RDm4xPnVCoUEN+94VHsxaR31R2rhPbzChTbT
         TiH5Jtx4y/4P2CvswUlFpzlUkhTtL/TQq7UKfWECMvCNwS8LthM0zRiALZVOc7JkXaPz
         hwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DEAj1pIKQd+aUBD5PsZy8fCs6ytAbIZutO+NJZgjCbc=;
        b=IARjp+BA4NW44k6Twp3od9u5NnM+BBKomx583k4fMInlxOJDWSuw+UzB6/Hxq7xCyJ
         NWq9ubUgYbnM6XdwRaSX4oIMMiCxIiG450H8kict/UcMJG69p9yQpJoQPd/eFcSA9Wcz
         cRDeVASYGsJHmj/btW/Ll+HgeJ7uARpAKOis4J4UUWwX0f4iC4LWaOJka12sbgfrI3lz
         jwS1ZUuF35tLjvsJd2dfX958JVql4wtenBxpASewpOSbcawoP4tjNFRL0mht+92OrGar
         tPRoiAIRXDFHFK4lIxOXtb8BEXOCzcqD0xQR/ad6I1RBAZ4WfvR6G0jPsqcyQCAVd19k
         UZCg==
X-Gm-Message-State: AOAM5327hf1vef6ixAd948GHIY1rB+KKY6IiQQi5raZIN5L+T4Cj/6yQ
        gUAEwkvviOF2ogGrThhhTi8=
X-Google-Smtp-Source: ABdhPJxYPPrhjERIB6kOqjH85Qh+rspOFyhMiGAZQxSDWG7Llb4PwdPlzIZsLsNg10vfwZeXDSOQYg==
X-Received: by 2002:adf:a1ce:: with SMTP id v14mr11338983wrv.228.1616282538832;
        Sat, 20 Mar 2021 16:22:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c2sm12189140wme.15.2021.03.20.16.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Mar 2021 16:22:18 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 3/3] .gitignore: Add file
Date:   Sun, 21 Mar 2021 00:19:52 +0100
Message-Id: <20210320231949.183276-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210320230659.182237-1-alx.manpages@gmail.com>
References: <20210320230659.182237-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ignore:
    .html: directory for building html pages.
    .patches: directory for storing patches before sending
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2: No changes; resend

 .gitignore | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 000000000..593d39213
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,2 @@
+.html
+.patches
-- 
2.31.0

