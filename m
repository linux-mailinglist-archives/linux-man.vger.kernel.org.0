Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BFEA71226A
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 10:40:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242506AbjEZIje (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 04:39:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242767AbjEZIjd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 04:39:33 -0400
Received: from mail-ej1-x649.google.com (mail-ej1-x649.google.com [IPv6:2a00:1450:4864:20::649])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2911612F
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 01:39:29 -0700 (PDT)
Received: by mail-ej1-x649.google.com with SMTP id a640c23a62f3a-94a34a0b75eso44580066b.1
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 01:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685090367; x=1687682367;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PRIt8W/MiaF6lPcHuLVzFpJ+wNq0fW7CrcuDWPH1HXQ=;
        b=7ly2lxYKoorKZw6TBr001FJA61fc9ThVr98IXCsPhnqKgvivnCRSkpV7BINhPVr+sM
         v420mVunERvTwUrWJyPCPGMNi294ZZ0+3bTY6EXG+3AEephvlLk2G1Mn/vG8vgyiMGjI
         //GX5zVgFwB9bT4ZkxBIhdfJaQgxzL8NR9/6dne/ISnb2oEIpQc7SL/eIBkgGu/AD+L6
         QKp+l5vcX5caD3Gkl1Jpu/7Q6GIkvPcqVfWwkYjH7K9YcVqrMdvFNYRMkEhNZ9naKWxp
         dfsEqV7c8yIxj/25eS0lnfVubDtE6HMQU8ZPYiEfSRsk3VZgfrXNb7wvdLu1eI48FW7u
         Ixxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685090367; x=1687682367;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PRIt8W/MiaF6lPcHuLVzFpJ+wNq0fW7CrcuDWPH1HXQ=;
        b=TZjl+ed29V2BsNbA35LpAr0wF6pFcYfE9rlfmkifG8UbWFuO0nZYal+fX0JZ/BvjnC
         ucghtMmcuJf49N7L7X9Uyu17e02epQZH4Opa9kaBRjOsLhEqBieYkEOzJTd2DCMfaE4C
         lmkYc2au6TxD8s/Cqse6gG71abH9whA2vfmiXhN0AalUh/wD+SUaXjpJCJR5zEc6l6+d
         TZPmRNh2bA6Hrexu8gbDbqQCDX8SJH3AcDNvdWne/QycGdyT5VzidM7QpnZDnyCCeXBX
         SHGEfOT2qVCyLdyTLuGwejqGd9YJ651IEOXsM3IJ4a2G9S/npSMjcikM5v52+cxPLwc7
         vZzw==
X-Gm-Message-State: AC+VfDyP19G/5F36qptKph5yQJiEGhG7aTav1RhXdG5YCqHMb51WLDcO
        +4J96y+cExkey3XK4kQPbja4rszbRTU=
X-Google-Smtp-Source: ACHHUZ6LYnZ2SO9Ctene7TKm0gM4OEyh9fIgLgA2Ihmej/1uOE5dvg5e5KkBqIZ5EErpQ7u/rcdiWYBgfRo=
X-Received: from sport.zrh.corp.google.com ([2a00:79e0:9d:4:df90:bb34:788b:2cbd])
 (user=gnoack job=sendgmr) by 2002:a17:906:5a52:b0:965:b046:c704 with SMTP id
 my18-20020a1709065a5200b00965b046c704mr388615ejc.15.1685090367606; Fri, 26
 May 2023 01:39:27 -0700 (PDT)
Date:   Fri, 26 May 2023 10:39:23 +0200
Message-Id: <20230526083923.2628450-1-gnoack@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0.rc0.172.g3f132b7071-goog
Subject: [PATCH] unshare.2: ffix: indentation inconsistencies
From:   "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/unshare.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/unshare.2 b/man2/unshare.2
index 58d57a86b..1e06d8064 100644
--- a/man2/unshare.2
+++ b/man2/unshare.2
@@ -532,12 +532,12 @@ main(int argc, char *argv[])
 \&
     while ((opt = getopt(argc, argv, "CimnptuU")) != \-1) {
         switch (opt) {
-        case \[aq]C\[aq]: flags |= CLONE_NEWCGROUP;      break;
+        case \[aq]C\[aq]: flags |= CLONE_NEWCGROUP;     break;
         case \[aq]i\[aq]: flags |= CLONE_NEWIPC;        break;
         case \[aq]m\[aq]: flags |= CLONE_NEWNS;         break;
         case \[aq]n\[aq]: flags |= CLONE_NEWNET;        break;
         case \[aq]p\[aq]: flags |= CLONE_NEWPID;        break;
-        case \[aq]t\[aq]: flags |= CLONE_NEWTIME;        break;
+        case \[aq]t\[aq]: flags |= CLONE_NEWTIME;       break;
         case \[aq]u\[aq]: flags |= CLONE_NEWUTS;        break;
         case \[aq]U\[aq]: flags |= CLONE_NEWUSER;       break;
         default:  usage(argv[0]);

base-commit: 2aa85ce3b0a85fbf6909e873c78959c2fbcc25ac
-- 
2.41.0.rc0.172.g3f132b7071-goog

