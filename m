Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E12B526222
	for <lists+linux-man@lfdr.de>; Fri, 13 May 2022 14:40:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353953AbiEMMka (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 May 2022 08:40:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230340AbiEMMk3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 May 2022 08:40:29 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E74BC8B097
        for <linux-man@vger.kernel.org>; Fri, 13 May 2022 05:40:27 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id s14so7820768plk.8
        for <linux-man@vger.kernel.org>; Fri, 13 May 2022 05:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h15it+2Vud8fBh3L+oAN+njIFSNC/5bSvbW1v6bMmTk=;
        b=bvVL1GKYtat1Vmwg1xY9LPEd+rNHbp/y7DbpcL3QNhoU/pfYICC5GU9xWtcw8gmAjt
         73bCMerSCGLQfApM5TXw6Nu2ZnN2K1ALzmvJENBEeCatGp65SxsmdY1pITwrkvsgxDfS
         KzfCjw+Xd+zMFutkjCBhIyud5oylpX5X3zDq+ntvYHnx9m4EF+APskOCFZRAJweB4nsX
         Ddpi8GcWWT/67gq+XWyepf1e5VxAmWwoWIoH476OpgZTHthr4QYGesF9fFahasECXkVh
         1C6ewcSZ6GQQH3rxHmnN7/ecqWtYYcyx11Nde2J24Ps6EfY8FX3Qaye9I54LVWW8kAV4
         yvHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h15it+2Vud8fBh3L+oAN+njIFSNC/5bSvbW1v6bMmTk=;
        b=5MSpgLJp8H5h7ISHkq0JeuO1fV8R8hm3XpA2v4MfIWBhulujDj7h70VdwE3ecOvPhs
         PirccmT+OiTc9veiOh3ZIZNHpCI1yonz6fZFwDDLDu3qkX56NWclfRYeIlg+kXl78rI9
         RF2BLF82+B1IiOBGMMGOr5T1qozbqMLZzeRIu4jcOZL/SF4badbFytHRP8ogoLUFeRl7
         4O91Wm7KsII6Pdmi28kiCkiUz5pkd6h2UMfpXvnjk7Z5hiafFwgZ87e1Ivq2WLCFmQEW
         vv8g8qPW9j5CCa5pF85AuzeB5/dz9rVjuhj/OhN7lBEj+UTwdL05kmvn9rfpB6H1Vv9w
         Bctg==
X-Gm-Message-State: AOAM533E4aqFOuPx/x0/pB0RZdCkVw2ZNs05va9t3nr3OWxuGc6eI+BK
        gKl7tfMJ7IN52ubyT9DVTLkOctVRJkIMjA==
X-Google-Smtp-Source: ABdhPJxnlDCz9mFYOYOD28JV5fIlHQk5OkDRvkmWPCiPQctvpviD3G3mTVsyKM1zINiq8AExHVJvvw==
X-Received: by 2002:a17:903:11c7:b0:151:7290:ccc with SMTP id q7-20020a17090311c700b0015172900cccmr4771250plh.95.1652445627185;
        Fri, 13 May 2022 05:40:27 -0700 (PDT)
Received: from lenovo.localdomain ([140.121.198.208])
        by smtp.gmail.com with ESMTPSA id k205-20020a6284d6000000b0050dc76281eesm1668410pfd.200.2022.05.13.05.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 05:40:26 -0700 (PDT)
From:   asas1asas200 <asas1asas200@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
Subject: [PATCH] madvise.2: Add missing period
Date:   Fri, 13 May 2022 20:40:24 +0800
Message-Id: <20220513124024.296410-1-asas1asas200@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: asas1asas200 <asas1asas200@gmail.com>
---
 man2/madvise.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index f1f384c0c..cdcc6cbfe 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -62,7 +62,7 @@ about the address range beginning at address
 .I addr
 and with size
 .I length
-bytes
+bytes.
 In most cases,
 the goal of such advice is to improve system or application performance.
 .PP
-- 
2.36.1

