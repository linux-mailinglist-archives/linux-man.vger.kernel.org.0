Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C128791D6E
	for <lists+linux-man@lfdr.de>; Mon,  4 Sep 2023 20:54:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237167AbjIDSyN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Sep 2023 14:54:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239708AbjIDSyM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Sep 2023 14:54:12 -0400
Received: from a3.inai.de (a3.inai.de [IPv6:2a01:4f8:10b:45d8::f5])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECD9E100
        for <linux-man@vger.kernel.org>; Mon,  4 Sep 2023 11:54:07 -0700 (PDT)
Received: by a3.inai.de (Postfix, from userid 65534)
        id 636455863A11E; Mon,  4 Sep 2023 20:54:06 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
Received: from a4.inai.de (a4.inai.de [IPv6:2a01:4f8:10b:45d8::f8])
        by a3.inai.de (Postfix) with ESMTP id D13DF5863A11B;
        Mon,  4 Sep 2023 20:54:05 +0200 (CEST)
From:   Jan Engelhardt <jengelh@inai.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] fmod.3: add example section
Date:   Mon,  4 Sep 2023 20:53:49 +0200
Message-ID: <20230904185405.89180-2-jengelh@inai.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230904185405.89180-1-jengelh@inai.de>
References: <9a0c757e-b5e5-873c-a545-a8ea5e292394@kernel.org>
 <20230904185405.89180-1-jengelh@inai.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jan Engelhardt <jengelh@inai.de>
---
 man3/fmod.3 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man3/fmod.3 b/man3/fmod.3
index 944bf4167..13236c425 100644
--- a/man3/fmod.3
+++ b/man3/fmod.3
@@ -165,5 +165,11 @@ to
 .B EDOM
 when a domain error occurred for an infinite
 .IR x .
+.SH EXAMPLES
+The call "fmod(372, 360)" returns 348.
+.PP
+The call "fmod(-372, 360)" returns -12.
+.PP
+The call "fmod(-372, -360)" also returns -12.
 .SH SEE ALSO
 .BR remainder (3)
-- 
2.42.0

