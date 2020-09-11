Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F81F267675
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725864AbgIKXPp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725908AbgIKXOw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:52 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EABBC06179E
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:45 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so12944487wrt.3
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KEHu+iT1jvJ+CnW7BMEn3IISK+GizyVOmqCo9roL3H4=;
        b=u6Uv0eetJBA2bAjGzZ/1zgAZj4MsJtv7OpK21ntKgGiMVkEEkR4eNdxW5huxHDonwM
         rex6nQMYS+c+yEaPG9HR5Mr0pP7TiARt/nMyCt+JHY1HKYA3HXb+qiF5UBFljsmOPnWq
         k8jceLMbvqmNrwcx0e85Mw+Cd5m8oNyFulTVaL2GiPUvR1PyuXiX/LDoBucR+Z9WP5D3
         W+shHf3FpAdcFnPbmLhKiHCted4DXUdnr/mAsNMB7+ROoz5Si8ZfT8rCHzhGy1sUHvyI
         xyO0tjCWGtXV7VoW55jFiu3Gx+10iWnYRti/RBus+Et1/f3YHxAc4bJffSW5CRFau381
         pVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KEHu+iT1jvJ+CnW7BMEn3IISK+GizyVOmqCo9roL3H4=;
        b=i+vpHuKU1wNGQQ77lOSdth8E1LuhgqkIbAhDN7Dh1TZFbhzfVFttdMpDH5SfXRACpA
         h6uMnN0E73/bdEBgAy4Wk7H+fAUfQc3dYWArTacbacI/dscG3hj8WiqCkAbZvybuHzks
         vvLNCzhwA5uSyKgZTVj2JY3QbvEBbdNUOrON5eGXAItmUZzEVWGn8JveRR5/MJcUaSfP
         ociqAF/WiZCTSSXj7DX7LzgwSh33WW6AU765N2as+t9WOBUa+ou8vz7ROn5xQU5+22Hn
         uOaF8x72Avl5Fgo/2p67bO666eswL5bG9nzQHur3CgcCW39YRfEVb4RF3J0yrpWteJUM
         KOgg==
X-Gm-Message-State: AOAM5331qZ9juzsAH3aNy0hoGf5eIxnh9VaCrfzx2Th8Sh8i3po1jDhD
        Q1pkvyOVlHgn1pL7wGy7PdM=
X-Google-Smtp-Source: ABdhPJy4AMiZytE5dpb9U5mv/IhkzOT/HWG1yQmhfUF3c3dMOxsR8gDZLNqTLmouIFPC5F/0NnN1ng==
X-Received: by 2002:a5d:494b:: with SMTP id r11mr4195162wrs.227.1599866084254;
        Fri, 11 Sep 2020 16:14:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:43 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 12/12] pidfd_open.2: Cast 'short' to 'unsigned int' when printing with "%x"
Date:   Sat, 12 Sep 2020 01:14:12 +0200
Message-Id: <20200911231411.28406-13-colomar.6.4.3@gmail.com>
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
 man2/pidfd_open.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index 0256d6d8c..c51e9fd67 100644
--- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -253,7 +253,8 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
-    printf("Events (%#x): POLLIN is %sset\en", pollfd.revents,
+    printf("Events (%#x): POLLIN is %sset\en",
+            (unsigned int) pollfd.revents,
             (pollfd.revents & POLLIN) ? "" : "not ");
 
     close(pidfd);
-- 
2.28.0

