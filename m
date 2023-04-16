Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8F86E3CCE
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 01:36:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229606AbjDPXgI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Apr 2023 19:36:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjDPXgI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Apr 2023 19:36:08 -0400
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7790F19B2
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 16:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Reply-To:Subject:Content-Type:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=zSPa7oR8e5IcxClWoGtJohFM5BdFVbzRb6BgymXyaQE=; b=KT51DUsggcNLBFu0hNV8NboWhw
        14hzk+5iq5KTaSDFQfxmQICpZwtp1Fum6RSjBcq2U0Cpu42BfiyO/whxZDW43vIZpIBntqvkhegak
        SoFII48nJ/2MRI5lGNpSUeF4Dl98Uh1ioAneFxLs3DdNEXm+U9QcSRv+KfBrtE4HLJRHUr6HwNhH2
        pIwjdSoWIZy/H9YBBbCnP9FtvKEqKm50w5sLeoao5lBL2xwgEIiaPP/qa7bLI0bFQVGSJ43tZTBAj
        LHKN0/V5myF1aj/mrdq0HKuuFVCh8Izs3FecCeg9zaa+lBcrSSqDkDLzV1d4aGHNkqzEQ8wFC5XCy
        kewipEFQ==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1poBuf-0000sX-33;
        Mon, 17 Apr 2023 01:36:05 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/4] proc.5: Document exact /proc/PID/exe behavior on unlinked pathnames
Date:   Mon, 17 Apr 2023 01:35:49 +0200
Message-Id: <20230416233552.283776-2-guillem@hadrons.org>
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

Add the space which gets appended before the "(deleted)" marker.

Signed-off-by: Guillem Jover <guillem@hadrons.org>
---
 man5/proc.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index dc5397a22..1947957ad 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -634,7 +634,7 @@ to run another copy of the same executable that is being run by
 process
 .IR pid .
 If the pathname has been unlinked, the symbolic link will contain the
-string \[aq](deleted)\[aq] appended to the original pathname.
+string \[aq] (deleted)\[aq] appended to the original pathname.
 .\" The following was still true as at kernel 2.6.13
 In a multithreaded process, the contents of this symbolic link
 are not available if the main thread has already terminated
-- 
2.40.0

