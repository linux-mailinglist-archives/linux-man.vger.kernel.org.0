Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F0BE753051
	for <lists+linux-man@lfdr.de>; Fri, 14 Jul 2023 06:05:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234925AbjGNEFn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Jul 2023 00:05:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbjGNEFm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Jul 2023 00:05:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D691FD8
        for <linux-man@vger.kernel.org>; Thu, 13 Jul 2023 21:05:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9D47161BCE
        for <linux-man@vger.kernel.org>; Fri, 14 Jul 2023 04:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1EEEC433C8;
        Fri, 14 Jul 2023 04:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689307541;
        bh=HaHL8F1ur2/nlapPFZlIcnxBCNIL0W4xq/CmghqIFEA=;
        h=From:To:Cc:Subject:Date:From;
        b=VEiAD8wx8QSrMPkV+ySf9HSnemMaGVmpUkVeMbixuF3nH/7i33F16qhgYLfbG+6wy
         PC8bKsUVv9HqxeVkkETVkfE7dcTq3gbISqXBCwnwOkFX1c7wgAtjTAMwtqxCkJpizF
         WqITaJMq+y5rqBoJNVVnC7GwTF42olCZmiA2foFLxyNRidaLAhlGSNWYFDO76WuafN
         5H413ymwpWt/kbJBKs75LcvsHngzjZuHcIpNLuo7lbIanuoIucW8yLVCcmepsy4UeH
         mOKBwbUqlkfehLJAZXIq6D7gjAfcc7IGmBnaeQSPkQQxCKdhtyvYP3k3LshPGWrgu/
         DlLO/BHD/LH0A==
From:   Eric Biggers <ebiggers@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] prctl.2: tfix
Date:   Thu, 13 Jul 2023 21:05:17 -0700
Message-ID: <20230714040517.5989-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Eric Biggers <ebiggers@google.com>

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 man2/prctl.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 30211a9e2..fe403d76a 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -2030,13 +2030,13 @@ Return unaligned access control bits, in the location pointed to by
 .\" prctl PR_GET_AUXV
 .TP
 .BR PR_GET_AUXV " (since Linux 6.4)"
-Get the auxilliary vector (auxv) into the buffer pointed to by
+Get the auxiliary vector (auxv) into the buffer pointed to by
 .IR "(void\~*) arg2" ,
 whose length is given by \fIarg3\fP.
-If the buffer is not long enough for the full auxilliary vector,
+If the buffer is not long enough for the full auxiliary vector,
 the copy will be truncated.
 Return (as the function result)
-the full length of the auxilliary vector.
+the full length of the auxiliary vector.
 \fIarg4\fP and \fIarg5\fP must be 0.
 .SH RETURN VALUE
 On success,
-- 
2.41.0

