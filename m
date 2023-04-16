Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94E406E3CCF
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 01:36:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjDPXgK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Apr 2023 19:36:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjDPXgJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Apr 2023 19:36:09 -0400
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8AD219B2
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 16:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Reply-To:Subject:Content-Type:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=yvMG5XZops0HV2HxgX8rabOXlzl08Lpl0AVPioF2HkM=; b=M7mLiwGwzmLz469mjFjLe3KAXP
        jqQCjKGEg6B2wZajruaYzYp7fjp+erf9X6ewAekP0yHPYIHmJdXlj7EYerALW1ouGWRUeBq0WKO5n
        eDpqdYylMaLLbbyaQooozjesNCsi4SeRReMVd0JJ4m1TDHi1Dk2ekLDS5pDQGvPFm7muETk5b2/Jf
        BItlXXDY0MLZ4U5wEnuF2Hlr0td31GuN5ssDuDoTQ0ytfn3GfLxtgbQ9IiFoa+Dsxj+NZ4oQ+QZF5
        xX2ISxvCqo5JzLu4pt+3FcRhZgziS5jJVjyiI8WCT0sjh7cKvfCunN5B2AEulZjvAJ1K2YnXc0omR
        RVLCqjHg==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1poBuh-0000sb-11;
        Mon, 17 Apr 2023 01:36:07 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/4] proc.5: A process can increase its own /proc/PID/oom_adj setting
Date:   Mon, 17 Apr 2023 01:35:50 +0200
Message-Id: <20230416233552.283776-3-guillem@hadrons.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416233552.283776-1-guillem@hadrons.org>
References: <20230416233552.283776-1-guillem@hadrons.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

See kernel commit 8fb4fc68ca391862b061b3d358a288ccf6abed39.

Signed-off-by: Guillem Jover <guillem@hadrons.org>
---
 man5/proc.5 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 1947957ad..4bb7dd262 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1633,7 +1633,11 @@ a new process inherits its parent's
 setting.
 A process must be privileged
 .RB ( CAP_SYS_RESOURCE )
-to update this file.
+to update this file,
+.\" commit 8fb4fc68ca391862b061b3d358a288ccf6abed39
+although a process can always increase its own
+.I oom_adj
+setting (since 2.6.20).
 .IP
 Since Linux 2.6.36, use of this file is deprecated in favor of
 .IR /proc/ pid /oom_score_adj .
-- 
2.40.0

