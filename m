Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84D18467C87
	for <lists+linux-man@lfdr.de>; Fri,  3 Dec 2021 18:28:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353065AbhLCRbj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Dec 2021 12:31:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245736AbhLCRbj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Dec 2021 12:31:39 -0500
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8393C061751
        for <linux-man@vger.kernel.org>; Fri,  3 Dec 2021 09:28:14 -0800 (PST)
Received: by mail-qk1-x734.google.com with SMTP id g28so4143083qkk.9
        for <linux-man@vger.kernel.org>; Fri, 03 Dec 2021 09:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=usp.br; s=usp-google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0kCOdNa3N20oW9qOE/1m4RH+0lQkWbSnp4/c0K6GRhk=;
        b=GyWjGARLmdItbmznZm22Zc3Ugyo7Hhu+G5Pmi8eAsltwYyxALenCLuynJ4pnmHnqBz
         mCHnVnS4IFc7qDIcg086NSFRRbHiIurtON0Ruk4PFcBUcMICSPiUEDySNU2A20At4cV1
         26uy5WLz5zmCvnSW7smX6OBsaYIE5E4k454ilxdwSJUrsZrBDK2XRCg1JyroYLEGXN2K
         xoFSjVOwV72hQw6tsmMWASJ5w+7X0t1vMd3pOZ6bbEQTOEhv4IM9X8DIedPehck0uSls
         J0YmDHRL9UJcNJHcNXCaMWPoeIhrfzar1tFDuwiWj48oFtTggG6Bbb7VYZDpeT56HnXA
         NBhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0kCOdNa3N20oW9qOE/1m4RH+0lQkWbSnp4/c0K6GRhk=;
        b=ps1AHKnBV9Aui7JfgzMbW4DD/sIzOFawcl0JRuQbrkaZ2fbZYEy9UCF8VsSzNb1T30
         WOoZ54ZMlbQHNhF/8zsSCwgNqXqAEx5XvGEcfTUKp3N31XzgTA3HTNZnGPo8HYpo8a1p
         0qYPgEs24eRNFapC6xMs3vG46YtW0mzrFu4shns/fnyAdZW6jBuuVrMa8o/ctDOH9gXU
         zAqOxFeF+mtkv8XGLDjTm83N9oi6Go0JBtvIZzi6l60V91kTb207ebQ1p7+TiI71q/L2
         CS4ktWFZrODoRKHkCNNatOjtiWFDWoimIdfi/oN0xzoyjc99iohGXOmbE+CSWeiWnk2k
         Zicw==
X-Gm-Message-State: AOAM532JJLkyyJnrGqlMj3LKaXCA2v5MvrDg8Iiz4AwYSam/B+gq3eqg
        zqRiJRWdIr9koaeFdEHUGCCOH/vMj3NUd5rd
X-Google-Smtp-Source: ABdhPJyIZp38CXqXaUAUwU10IrDfiiB4D0W8if0aUige2Y7RAVyOgcws2syFYOAKDYfP6DW0jFA5Og==
X-Received: by 2002:a37:c20b:: with SMTP id i11mr19427715qkm.300.1638552493795;
        Fri, 03 Dec 2021 09:28:13 -0800 (PST)
Received: from mango.meuintelbras.local ([177.32.116.19])
        by smtp.gmail.com with ESMTPSA id 9sm2307527qkm.5.2021.12.03.09.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Dec 2021 09:28:13 -0800 (PST)
From:   Matheus Tavares <matheus.bernardino@usp.br>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] madvise.2: tfix
Date:   Fri,  3 Dec 2021 14:28:07 -0300
Message-Id: <3ec6befd53f36e2795c71f7d07501eb3067c226e.1638552486.git.matheus.bernardino@usp.br>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add a missing period.

Signed-off-by: Matheus Tavares <matheus.bernardino@usp.br>
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
2.34.0

