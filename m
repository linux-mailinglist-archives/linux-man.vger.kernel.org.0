Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E5976E3CD0
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 01:36:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbjDPXgL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Apr 2023 19:36:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjDPXgK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Apr 2023 19:36:10 -0400
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15F9526A6
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 16:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Reply-To:Subject:Content-Type:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=kYUDIkuFwXp5eyW+uXZW59b1s8QoQHNZUupkHtH3UZM=; b=glBMGIdn8Z2oVNTSvIaBFzpF+G
        RFwdv5od60Xn+M2LWHhUNB2IYXk1GWaydEWSzmK3xpU0lYfPHtCQObjY/G9reAujAlwiuRXw/qZ0B
        XVw/jRlEpM3ijnldow6f255N3dDUYcp9lsQ83v976bnXp0BDW6BX7jYU/0Tgv0GUETA3h1GGGhcSG
        c7O18BA526nVpastLL9csW/kCg1jUQewfGdhJkQY5o+HQnmFHgS3fgX2FQe4wUqi39stTdPvWyLzq
        48yY2tCOZ34+61ulXes8TiPArsLqF14L08zmCuhHe6BnJrkJ09akQSlKG6oCJFMVFZakzEEXEvgWr
        dExxBYHg==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1poBui-0000sg-1r;
        Mon, 17 Apr 2023 01:36:08 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/4] proc.5: Document that /proc/<pid>/oom_adj is no longer present
Date:   Mon, 17 Apr 2023 01:35:51 +0200
Message-Id: <20230416233552.283776-4-guillem@hadrons.org>
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

Signed-off-by: Guillem Jover <guillem@hadrons.org>
---
 man5/proc.5 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 4bb7dd262..a3b5ffc7b 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1640,7 +1640,9 @@ although a process can always increase its own
 setting (since 2.6.20).
 .IP
 Since Linux 2.6.36, use of this file is deprecated in favor of
-.IR /proc/ pid /oom_score_adj .
+.IR /proc/ pid /oom_score_adj ,
+.\" commit 01dc52ebdf472f77cca623ca693ca24cfc0f1bbe
+and finally removed in Linux 3.7.
 .TP
 .IR /proc/ pid /oom_score " (since Linux 2.6.11)"
 .\" See mm/oom_kill.c::badness() before Linux 2.6.36 sources
-- 
2.40.0

