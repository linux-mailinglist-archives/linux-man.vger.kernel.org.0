Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7A4786709
	for <lists+linux-man@lfdr.de>; Thu, 24 Aug 2023 07:15:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238990AbjHXFPV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Aug 2023 01:15:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239863AbjHXFPN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Aug 2023 01:15:13 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AA1310FF
        for <linux-man@vger.kernel.org>; Wed, 23 Aug 2023 22:15:04 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1bf57366ccdso3782325ad.1
        for <linux-man@vger.kernel.org>; Wed, 23 Aug 2023 22:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692854104; x=1693458904;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9+1xdtOFq9KwmmBHP1/G9WX8z7gbQmvsqXI1BUaQAhE=;
        b=JvVS2pMaUimTROgp5pXeU67SyA6HtYsA+O+B87IlsvRiUWyBebGSXGw2dGY71/6tn3
         ISZfxyGLoUb1SXJMMRk7FfKOoCb8K8Iz4UIzY+88nYBLWJi+Zh6Gb7zGJGHuFJzwyB7W
         pTxX0j0DoyV/bfIPHiGGeLyxlBzkjuxmIYONQxVHdWPVIx+RTRiPNmoEJw2igNdUvQJD
         YTMweYscvfA80CZP4Pt34DxNvHn8+yNl1GFLWrY0WuTcbDnfGTxVE64lBytolDwksw6b
         7y9pWXESyRWMfW9eWXiXpa0zEC2rQ99KgguymudEltHcZOt1Y/LuAI+GUQuEMrkRgxvQ
         wqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692854104; x=1693458904;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+1xdtOFq9KwmmBHP1/G9WX8z7gbQmvsqXI1BUaQAhE=;
        b=T+ByGOy4k1/7wMxkMducckgHxm/PtmZEkO7eabPuSywrrTnqGjtxxZCW9xDxTVVIDN
         w5f/97zBsSfhW2bAHG5/+yjOro3UNL7sPcYmH8tZoBgfNyaSwqfmpv1gev+dn2CCU2DB
         7PkUs50rTPd4XVWHCslryEDpk+JH1L22N/USfNGCIdVHllPCXhT3MWdTDflA4RPmhhYh
         oTiwAO+IOS++VET3p6enYAJCV1hpHBD8dVSlRpBIEA7I0rhnLijUcvNvasd3ZqDt4Ymw
         zicNXmhvtta4DZX2V4FSILdAjP5nrlCCPK/hJ7mQcEQjwFAuGVT4Pnrmdf28RbxfkTUc
         nTxQ==
X-Gm-Message-State: AOJu0YzciQQayGNglNlH/uTdSC7JGZvyrnJT28hpDonfUNa/5cBnivFb
        8qWCUgqdiD1U0+ayuk4gisWvNAtcWTI=
X-Google-Smtp-Source: AGHT+IEttKT/G8+AozijjDglbgDtwdUMhrLjTQe6muwHU0DGFGYuhn2d3wEnYh3kfnRAkW9W3REM5Q==
X-Received: by 2002:a17:902:d488:b0:1bf:7dfd:5b05 with SMTP id c8-20020a170902d48800b001bf7dfd5b05mr16286425plg.27.1692854103510;
        Wed, 23 Aug 2023 22:15:03 -0700 (PDT)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id u7-20020a170902b28700b001bb9d6b1baasm11761508plr.198.2023.08.23.22.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 22:15:02 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH] clone.2: refer to VERSIONS for raw clone prototype
Date:   Wed, 23 Aug 2023 22:14:52 -0700
Message-ID: <20230824051452.1293717-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Commit 2a15a76bba35c ("clone.2: Document raw syscall interfaces on various other
architectures") adds this note:

	/* For the prototype of the raw system call, see NOTES */

but places the raw syscall prototypes into DESCRIPTION.

Next, commit 1874193ebf07068b ("clone.2: Add NOTES heading") makes the
information to appear in NOTES.

Finally, commit 4131356cdab8d ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections") moves the NOTES section (with some but
not all of the old contents from NOTES and VERSIONS) down, and thus the
raw prototypes are now under VERSIONS.

Fix the comment accordingly.

Cc:
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 4a75b557b..73ad5a6fa 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -58,7 +58,7 @@ Standard C library
 .BI "                                       void *_Nullable " tls ,
 .BI "                                       pid_t *_Nullable " child_tid " \fR*/\fP );"
 .PP
-/* For the prototype of the raw clone() system call, see NOTES */
+/* For the prototype of the raw clone() system call, see VERSIONS */
 .PP
 .BR "#include <linux/sched.h>" "    /* Definition of " "struct clone_args" " */"
 .BR "#include <sched.h>" "          /* Definition of " CLONE_* " constants */"
-- 
2.41.0

