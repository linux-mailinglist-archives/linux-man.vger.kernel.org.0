Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7562B6E3CD1
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 01:36:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjDPXgM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Apr 2023 19:36:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjDPXgM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Apr 2023 19:36:12 -0400
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF632125
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 16:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Reply-To:Subject:Content-Type:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=ym0MgBkaSMTCNVPMWWKr+2oNKtu4UUATx8coaKR22c8=; b=HMBnWwXVegqlweILJXlMFQrAnu
        SOigfH+BqpwUD6YK4FDalZIuoaqv0tfXkgjTi0UWlghZhhmbkWH0VUinjCGwd6jTwtPUZRtfPDth2
        /UZKFMUAhyl7CSWShV5qNN7N1xgUMfKXdeXzVPC57TvxHi/R1/batQC8UBZSP9nhPrc0yalxwLWes
        H7rNLnoRYpVndsFCGOiuOZIFFDG0PEDnJp0gdsawtqXTG9+l9y8zjE+4lV70jbObjPEMrOKrHbfbq
        M2bajRBGTI+tpomkv5wJYYj60eAAih7vY1Of1I+jEpFUBWDyVeg9Q3UNKGdCbwGf3W21ihHp/rYzB
        oGNJvx3w==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1poBuj-0000sy-2N;
        Mon, 17 Apr 2023 01:36:09 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/4] proc.5: tfix
Date:   Mon, 17 Apr 2023 01:35:52 +0200
Message-Id: <20230416233552.283776-5-guillem@hadrons.org>
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

Use Ctrl-Alt-Del instead of ctrl-alt-del, as used in all other
instances.

Signed-off-by: Guillem Jover <guillem@hadrons.org>
---
 man5/proc.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index a3b5ffc7b..535bbc61b 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -5001,7 +5001,7 @@ When the value is greater than zero, Linux's reaction to a Vulcan
 Nerve Pinch (tm) will be an immediate reboot, without even
 syncing its dirty buffers.
 Note: when a program (like dosemu) has the keyboard in "raw"
-mode, the ctrl-alt-del is intercepted by the program before it
+mode, the Ctrl-Alt-Del is intercepted by the program before it
 ever reaches the kernel tty layer, and it's up to the program
 to decide what to do with it.
 .TP
-- 
2.40.0

