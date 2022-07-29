Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB1C584FB2
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:44:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235897AbiG2LoH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:44:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236063AbiG2LoF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:44:05 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AAEA87C28
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:05 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id p10so1473545wru.8
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AVnCRSfBYRv5aJhZT9uBmckZhunXrMf0l/01gMVK6Qw=;
        b=b0qgigTm8jhjheJ/NoOYZ1cEKGedgE7c7QSvV+zSzhttb+6iBh3QlFhQQgqwa/jvIz
         G1js0tuFLDFuRpIaqf4Ta2Xi//CkM0ToOGk6fFJgdXjHOPzaEl+y9IXj5R5d7zz2EDBr
         A5mhOKXwFS+h0oqcwmckDSanBZL8K9zZjhGKAzWwXFpdnc0XOAQ0hS64REt8A0p+v4B5
         v4Zjnb9Dk4ZE+UlcKAl13vZFL/EJ677ngqv6Xfv2UiJbSRcMBGqyDRsTLsPrklJNzIcc
         nyUqY8UFi0AjcgtE3iGCoZEQil/xwgZXT2+GPCb3gysE8jewdn8a0qFmdDIkdobEDw47
         2g6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AVnCRSfBYRv5aJhZT9uBmckZhunXrMf0l/01gMVK6Qw=;
        b=LUvMJuKwUtoGtbfCS58RUHIeKq90irCW8r7hrhq3cjRdinDueYoNHPdN/yorqs5ocW
         jV2BX7qXzPQ5tk2+Yy1TnlzgpM8wBYzXLtOGiBg1yGpasw3HdSorlLtJjmvdE+Paj4dx
         jj5fvyagTn31V5ZjJIFaAx0X65yGsa3eNgedNM8X0+QMLaXMPtMdIBzF8aaoCktqIfnr
         6P3ZQve9SYqWPzNik4zk0noK8tOy9HPIEE9ZWKnmwpMD3flPnSzV52Xk+YWAlZCGOp+h
         Gy3jC7lGbv650wgTsfH0LsYD2dF7qIEHO39cwYa6iqsetZdM4Ki8L+wDAUcp+kN0o5DU
         gwsQ==
X-Gm-Message-State: ACgBeo2Y6p2oudK43X1dBGKRYUlcO8r2aFmnz/KGiZPbIwDH28v1KbLi
        jFzrJBT2Fn0nvfFkmzODJduTaDCjjKg=
X-Google-Smtp-Source: AA6agR4Oka8D+DZm0Is18zTV2EcW7O0IFyygYg+G6n1zpaURVAwPuwY5oN7QDD/Y0zyxAWG+2jIbGw==
X-Received: by 2002:a5d:56d1:0:b0:21e:ccc7:c595 with SMTP id m17-20020a5d56d1000000b0021eccc7c595mr2099601wrw.661.1659095043357;
        Fri, 29 Jul 2022 04:44:03 -0700 (PDT)
Received: from localhost (internet-185-112-167-45.cznet.cz. [185.112.167.45])
        by smtp.gmail.com with ESMTPSA id v21-20020a7bcb55000000b003a3270735besm4048345wmj.28.2022.07.29.04.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 04:44:03 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 6/6] poll.2: tfix
Date:   Fri, 29 Jul 2022 13:45:06 +0200
Message-Id: <20220729114506.1669153-6-stepnem@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man2/poll.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/poll.2 b/man2/poll.2
index 9ee7315a817a..ff22045247f3 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -324,7 +324,7 @@ whose
 .I revents
 fields have been set to a nonzero value (indicating an event or an error).
 A return value of zero indicates that the system call timed out
-before any file descriptors became read.
+before any file descriptors became ready.
 .PP
 On error, \-1 is returned, and
 .I errno
-- 
2.37.1

