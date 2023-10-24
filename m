Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A89597D5430
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 16:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234482AbjJXOjx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 10:39:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234479AbjJXOjw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 10:39:52 -0400
X-Greylist: delayed 430 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 24 Oct 2023 07:39:47 PDT
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0CA8C4
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 07:39:47 -0700 (PDT)
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.97-RC3)
        (envelope-from <vlefevre@cventin.lip.ens-lyon.fr>)
        id 1qvISR-00000000JuC-113P;
        Tue, 24 Oct 2023 16:32:35 +0200
From:   Vincent Lefevre <vincent@vinc17.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Vincent Lefevre <vincent@vinc17.net>
Subject: [PATCH] mcheck.3, mtrace.3: update examples for glibc 2.34
Date:   Tue, 24 Oct 2023 16:31:17 +0200
Message-ID: <20231024143144.76490-1-vincent@vinc17.net>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_40,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The glibc 2.34 NEWS file says that mtrace() and mcheck() have now been
disabled in the main C library, and preloading libc_malloc_debug.so is
needed to get this functionality back.

So the examples now need a "LD_PRELOAD=libc_malloc_debug.so".

Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
---
 man3/mcheck.3 | 2 +-
 man3/mtrace.3 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/mcheck.3 b/man3/mcheck.3
index 285ea946c..e17650a4c 100644
--- a/man3/mcheck.3
+++ b/man3/mcheck.3
@@ -169,7 +169,7 @@ when running the program:
 .PP
 .in +4n
 .EX
-.RB "$" " ./a.out"
+.RB "$ " "LD_PRELOAD=libc_malloc_debug.so ./a.out"
 About to free
 \&
 About to free a second time
diff --git a/man3/mtrace.3 b/man3/mtrace.3
index f30511cd0..d0cde42c9 100644
--- a/man3/mtrace.3
+++ b/man3/mtrace.3
@@ -153,7 +153,7 @@ diagnosed memory leaks at two different locations in the program:
 .EX
 .RB "$ " "cc \-g t_mtrace.c \-o t_mtrace"
 .RB "$ " "export MALLOC_TRACE=/tmp/t"
-.RB "$ " "./t_mtrace"
+.RB "$ " "LD_PRELOAD=libc_malloc_debug.so ./t_mtrace"
 .RB "$ " "mtrace ./t_mtrace $MALLOC_TRACE"
 Memory not freed:
 -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
-- 
2.42.0

