Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85045527BFF
	for <lists+linux-man@lfdr.de>; Mon, 16 May 2022 04:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237914AbiEPCfZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 May 2022 22:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229881AbiEPCfZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 May 2022 22:35:25 -0400
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6805F5BF
        for <linux-man@vger.kernel.org>; Sun, 15 May 2022 19:35:22 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id t16so11197878qtr.9
        for <linux-man@vger.kernel.org>; Sun, 15 May 2022 19:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pQG/wxJHrFCtZzyT//DFS68PeenXkIBHvqUHNfOYKjQ=;
        b=UmLt7lcyurpg83D4HeIb0dMfR1C0NhLk5V8KkqJUkuDeE/54842q1nUdUC83wqrGER
         C6ddVQH8rzCI9iQQQIlAXRXN8SJUjNPKBplzgK3yPVPasDgz+XY5P+0ZoMIEWwibIu6R
         0Bd/N+S8VGNU+toZ/Dv2Kf06dpv7z3GkLTNriIxXyt4MU6ryd8f2NBJ0zcQXM8/qKS54
         76ih6caiIkZAmay0PL2oKtNp+qaNz0+e3mKNwXvO5p6TrHlvfaGG2atttdzagjDuXktg
         2pmnKTjTkt9eiJhJIpeGcZqxyV3sTJpJT1ug3xIv9tncKN6cbeT0fYb1GFOS8v7QhgAR
         yXAg==
X-Gm-Message-State: AOAM533rti+fIL+rgKDDXL22HI8JcDLlz4eUt32gZEjRqUdxy+8hF8Nj
        gxx8ddGkViaJsV3w7uV/s88=
X-Google-Smtp-Source: ABdhPJw9j60WYVmPaTXId5cT6OavlQ09G8eCCHjC0soo2FLIOjFjNE5FGeCyZEp+EKXDFg+nL49z3Q==
X-Received: by 2002:ac8:7e94:0:b0:2f3:ce2b:c320 with SMTP id w20-20020ac87e94000000b002f3ce2bc320mr13628772qtj.670.1652668521702;
        Sun, 15 May 2022 19:35:21 -0700 (PDT)
Received: from localhost.localdomain ([2601:184:417f:5c0a:6c29:c8dc:83d5:5968])
        by smtp.gmail.com with ESMTPSA id d23-20020a05620a205700b0069fc13ce1ffsm5116183qka.48.2022.05.15.19.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 May 2022 19:35:21 -0700 (PDT)
From:   David Ward <david.ward@gatech.edu>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     David Ward <david.ward@gatech.edu>,
        Michael Welsh Duggan <mwd@cert.org>,
        Nadav Har'El <nyh@math.technion.ac.il>,
        linux-man@vger.kernel.org
Subject: [PATCH] poll.2: Set fd to its bitwise complement to ignore
Date:   Sun, 15 May 2022 22:33:44 -0400
Message-Id: <20220516023344.803-1-david.ward@gatech.edu>
X-Mailer: git-send-email 2.35.1.windows.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Unlike negating the fd, this works even for fd 0. It is a better fix for
https://bugzilla.kernel.org/show_bug.cgi?id=79411.

Signed-off-by: David Ward <david.ward@gatech.edu>
---
 man2/poll.2 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man2/poll.2 b/man2/poll.2
index 205468f3e..cd65bc6e8 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -83,10 +83,9 @@ field returns zero.
 (This provides an easy way of ignoring a
 file descriptor for a single
 .BR poll ()
-call: simply negate the
+call: simply set the
 .I fd
-field.
-Note, however, that this technique can't be used to ignore file descriptor 0.)
+field to its bitwise complement.)
 .PP
 The field
 .I events
