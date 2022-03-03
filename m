Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 338814CBF8D
	for <lists+linux-man@lfdr.de>; Thu,  3 Mar 2022 15:08:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbiCCOJM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Mar 2022 09:09:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231231AbiCCOJM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Mar 2022 09:09:12 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD852CA0C9
        for <linux-man@vger.kernel.org>; Thu,  3 Mar 2022 06:08:26 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id q7-20020a7bce87000000b00382255f4ca9so4889968wmj.2
        for <linux-man@vger.kernel.org>; Thu, 03 Mar 2022 06:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gq55hCn/WLWvFL+n0bVQQO0LwEAM6uyLE+XD3iWeJtg=;
        b=e+TIECHVpdf/uYQ2dZK9kMlB+L/7q+ZRRYpE/f5+1eysw/APh9sYO3RxBnuXUs6+wh
         MPIqu+N3rxqJwg7qTflo7ZS4w20dMMDq/cnka2rj9gjAxVDfzIjsb3J9d109C4C6/fOu
         sMRoNt3ZZ9dmhCc904iUaDbEk1RqLRLEop2ttv/77iD+ZHqryqRSqOBLRlurwwxaPbEi
         LlL6vmGSWxJTcCgpH0nD0QNhi2LSahYftnU3ynNd2PY2dBe+HyA+Ca2mtwhbcZ7Ed7p+
         hQHoMnTekNVo9Ikdo1bq3oRrebJz6nJfkIBFWcWNWIBLJ7qOFIgLB5F6l+piFeMLXSKE
         8IBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gq55hCn/WLWvFL+n0bVQQO0LwEAM6uyLE+XD3iWeJtg=;
        b=jQgC9K5YJPbzA71niWbwLVuz9BxNJ6aAdgriXcTQz112Q/5fehMSjpVXUzqdyqreCY
         QSxBGrI7ihmKS8c1BXfHtqVnZeNRSuOf1MZvGEs+L9GKjA0za3+muT2VKwLScGoXvlbr
         tc8RYr5cV5kf5lH1jTg63NY9+07UxOOVj9G2zcBGwz+sc1v3AzJxLjzejCodowvkNC1z
         yBBnGLdxA9OGpiQcg02UVvNHG0olES8xpsclZouXyaxEBOU9z6J3bNv6pmqzF7c0rASh
         D8Fm1xvIxS+Hib8VeRccK1Vlc/ot+Z11MBxt+FvhsiyarSZxCiTktSbAU87FwhCuwAq5
         RgCg==
X-Gm-Message-State: AOAM531J8haMErxMu3uySroqONH2nygnhfumOpilCrYqOThMv5goHxOV
        TtgKLXmsMCAEE8ZyjqNUg3kPz5azy3jwuQ==
X-Google-Smtp-Source: ABdhPJzMk45AvtDD+nZyo0rxxqHHKZd7jK0zslxjeRaFVAo8jSvVfFw5IX5xCsbt6z4PXwvFAMbj2A==
X-Received: by 2002:a1c:e908:0:b0:37c:3d08:e0d3 with SMTP id q8-20020a1ce908000000b0037c3d08e0d3mr3890636wmc.97.1646316504942;
        Thu, 03 Mar 2022 06:08:24 -0800 (PST)
Received: from l3-dbenini.suse.de ([2a0e:41e:54d1:0:7e70:dbff:fe92:15a8])
        by smtp.gmail.com with ESMTPSA id z6-20020a1cf406000000b0037c4e2d3baesm9016841wma.19.2022.03.03.06.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 06:08:24 -0800 (PST)
From:   Davide Benini <davide.benini@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Davide Benini <davide.benini@gmail.com>
Subject: [patch] futex.2: tfix
Date:   Thu,  3 Mar 2022 15:08:02 +0100
Message-Id: <20220303140802.9930-1-davide.benini@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 1dd77ac2f..d2a99b2d3 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1854,7 +1854,7 @@ fwait(uint32_t *futexp)
 }
 
 /* Release the futex pointed to by \(aqfutexp\(aq: if the futex currently
-   has the value 0, set its value to 1 and the wake any futex waiters,
+   has the value 0, set its value to 1 and then wake any futex waiters,
    so that if the peer is blocked in fwait(), it can proceed. */
 
 static void
-- 
2.35.1

