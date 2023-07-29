Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B7E776826C
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 00:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbjG2WFt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 18:05:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjG2WFs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 18:05:48 -0400
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E22419A9
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 15:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
        t=1690668333; bh=rCjDxl95PZRLZrnAD5jCydmETBv4mYX/tE0rOKtGQrE=;
        h=From:Date:Subject:To:Cc:From;
        b=NuvkaEc7QGnN9tfWDit2actMlEa7NNHehDzoCLobhJIMXVvrZ1KUKybabIfqyg2PB
         Pzr17lmIAK170yC0r/ljOAccTXUeKeOSnhD7ALlUkgYhhWMDnEzHavNthW7ZdyxwF/
         YiQopMoMexmTxwuU/MGlQvWrH5jvOHB2JsxF0Gus=
From:   =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas@t-8ch.de>
Date:   Sun, 30 Jul 2023 00:05:14 +0200
Subject: [PATCH] pipe.2: tfix: refer to correct section
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20230730-pipe-ref-v1-1-813112e880e5@t-8ch.de>
X-B4-Tracking: v=1; b=H4sIABmNxWQC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2MDc2MD3YLMglTdotQ0XWMjMxNT40RTi6QkUyWg8gKgYGYF2Kjo2NpaAHE
 E8ABaAAAA
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas@t-8ch.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1690668332; l=876;
 i=thomas@t-8ch.de; s=20221212; h=from:subject:message-id;
 bh=rCjDxl95PZRLZrnAD5jCydmETBv4mYX/tE0rOKtGQrE=;
 b=nVwF9meCO37OeGpm4mDbP1LJjgpLCD+5shaQ05uHrJdakeN1X3Jyy85gPkvzFVtOj2B6mm5Jm
 BWDRSQbJDWqBB7GHJ9qF8IMX30UYO59BzPP7v9UrS0JRb/+vtquK5ts
X-Developer-Key: i=thomas@t-8ch.de; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Commit 4131356cdab8 reorganized the sections a bit breaking the
reference. Fix it.

Fixes: 4131356cdab8 ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Thomas Weißschuh <thomas@t-8ch.de>
---
 man2/pipe.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/pipe.2 b/man2/pipe.2
index 3634a8c277dd..c05d1bf623a5 100644
--- a/man2/pipe.2
+++ b/man2/pipe.2
@@ -32,7 +32,7 @@ Standard C library
 .BI "int pipe2(int " pipefd "[2], int " flags );
 .PP
 /* On Alpha, IA-64, MIPS, SuperH, and SPARC/SPARC64, pipe() has the
-   following prototype; see NOTES */
+   following prototype; see VERSIONS */
 .PP
 .B #include <unistd.h>
 .PP

---
base-commit: 50301358206cfd866d0bcad7627e83a23c6af064
change-id: 20230730-pipe-ref-326453a58bb5

Best regards,
-- 
Thomas Weißschuh <thomas@t-8ch.de>

