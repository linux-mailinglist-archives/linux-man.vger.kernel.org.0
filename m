Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBFEA722541
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 14:09:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbjFEMJS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 08:09:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233268AbjFEMJQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 08:09:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A7059C
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 05:09:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1FCAF6231E
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 12:09:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D424C433EF;
        Mon,  5 Jun 2023 12:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685966954;
        bh=IfZy84vw9dv8V3efJgKqpa+2GX9eIvU5fj/EyI4/sD8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=DIoJwPSjgy+j43gl+wz/c/lmLopEnfY7mdF7KgWLRRRObJyzqxrcffpjHxD/WArew
         HmM8eL7ZboQbiArk6s6m+lO6FODZcpaPzqngK8wcgUG63M+94UYpXfLRVwmDsKYxkj
         QLYHTACGRLBQ0KKAPgAgWhsi8WU0Eq2ly9IcsB/b3pCY30MXgpjVY94X+zmTBf7GG5
         zDSR3d3vFKJLk2mfj9kICGXyHQZnqDXBgxfcebPeGe6WTlZa5JAe+DVPo/E0/WypBg
         O+CWnSaCPOxQp9Tx1R6/L/U3SHVszHMBWYl+s7/8QAWMIIjznC6IBOC6kg1/EWXycp
         SrAWXnGTBs//A==
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Yedidyah Bar David <didi@redhat.com>,
        Sam James <sam@gentoo.org>
Subject: [PATCH v2alx] isalpha.3: Move NOTES to CAVEATS, and clarify some Undefined Behavior
Date:   Mon,  5 Jun 2023 14:09:02 +0200
Message-Id: <20230605120901.10155-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
References: <871qiqcf0o.fsf@gentoo.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Yedidyah Bar David <didi@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
Acked-by: Sam James <sam@gentoo.org>
---

I'm just resending (now with Acked-by from Sam) to test a change in my
git-send-email(1) configuration.

Cheers,
Alex

 man3/isalpha.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/isalpha.3 b/man3/isalpha.3
index 000e816d7..721ca8972 100644
--- a/man3/isalpha.3
+++ b/man3/isalpha.3
@@ -345,13 +345,15 @@ .SH HISTORY
 .TP
 .BR isascii_l ()
 glibc 2.3.
-.SH NOTES
+.SH CAVEATS
 The standards require that the argument
 .I c
 for these functions is either
 .B EOF
 or a value that is representable in the type
-.IR "unsigned char" .
+.IR "unsigned char" ;
+otherwise,
+the behavior is undefined.
 If the argument
 .I c
 is of type
-- 
2.40.1

