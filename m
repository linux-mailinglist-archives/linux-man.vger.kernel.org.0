Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4807C9F72
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 08:26:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbjJPG0V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 02:26:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjJPG0T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 02:26:19 -0400
Received: from bee.birch.relay.mailchannels.net (bee.birch.relay.mailchannels.net [23.83.209.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6C36AD
        for <linux-man@vger.kernel.org>; Sun, 15 Oct 2023 23:26:16 -0700 (PDT)
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id 36349902015;
        Mon, 16 Oct 2023 06:19:35 +0000 (UTC)
Received: from pdx1-sub0-mail-a202.dreamhost.com (unknown [127.0.0.6])
        (Authenticated sender: dreamhost)
        by relay.mailchannels.net (Postfix) with ESMTPA id 9D42A901F9A;
        Mon, 16 Oct 2023 06:19:34 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1697437174; a=rsa-sha256;
        cv=none;
        b=k3gtELEmQTBfwkGogUnii3nP5WyCB+403fEjGSw04TKxCqq/7lxpujUhkWVKUYkQOmKMHI
        hp3cvkQfaEgsMHarnGFpabETZxAcps26Bt/UvDWa8WGIRL/ButK4+1fCxGccBtBqp5+E5h
        96LyZFa2NoBeyt+EtntE57wi4SuRtoPRfK6DYcjYqNR43p2kuA5rBRd6ZWMbQvPCTTczzk
        Q6zw/kxv53tl6V5NlSnYboX93WdpXvuD9gNU6AAaKdAoIrnU6wiuJ7ptkBMgzcpNx00HrW
        GHfVvd78F/K+fz2g9wrX5EaxIm3h0IjDsk5n97DCfqjJjQdRMnO6V759BYnDXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
        s=arc-2022; t=1697437174;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:dkim-signature;
        bh=tBe12F5yOFlSCks3VlOygFbMorSIyTF8Xumze6bjeBQ=;
        b=Vgf+jLbJ9bOalpztKdhQ0X4KoNgpulT+az0iFQ6FDuzYfoMuWNEiNuKMZDqucIIid3cNWg
        8e4r9MpUsWd6QOqDmrgcJyhjVmLTIpY8Kh9KQBV17wt5sIinxPdNKI+gg28joHBAF2Xzq1
        UGq5dV6+MdotdHqXqorQ8Dsl9w2MDEWzXEX5nk1ZYZXsg0g2gvQMQDx3bSbTGDTULQ9t1b
        ZWtpnPQu7t2jmoziL8rj7IiUOgH9vSnKO1dKK0f4M4LWwQvOqzZOZE501IemscVrp+zgE0
        3xCwyjpTYVZAPbLvVBBEeCv8OUx3ONmKZAeeWgneATiaH9ieZ84jOCsHtNWH1Q==
ARC-Authentication-Results: i=1;
        rspamd-554cd65b86-wbfhq;
        auth=pass smtp.auth=dreamhost smtp.mailfrom=siddhesh@gotplt.org
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|siddhesh@gotplt.org
X-MailChannels-Auth-Id: dreamhost
X-Tart-Bubble: 75cfe88643e586d7_1697437174867_2209743539
X-MC-Loop-Signature: 1697437174867:3823262561
X-MC-Ingress-Time: 1697437174867
Received: from pdx1-sub0-mail-a202.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
        by 100.99.68.22 (trex/6.9.2);
        Mon, 16 Oct 2023 06:19:34 +0000
Received: from localhost.localdomain (bras-vprn-toroon4834w-lp130-02-142-113-138-136.dsl.bell.ca [142.113.138.136])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: siddhesh@gotplt.org)
        by pdx1-sub0-mail-a202.dreamhost.com (Postfix) with ESMTPSA id 4S86QZ13X3zJW;
        Sun, 15 Oct 2023 23:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gotplt.org;
        s=dreamhost; t=1697437174;
        bh=tBe12F5yOFlSCks3VlOygFbMorSIyTF8Xumze6bjeBQ=;
        h=From:To:Cc:Subject:Date:Content-Transfer-Encoding;
        b=FEsy/8pX+OsRp/UywDxWYc2Tj1/9TWu6p/ESBpLJSfsJwObFtTzjEGochJ2159AHd
         9BFjUXrpqLDi96R3sFwe3zVZxmj5esYVs+fVxejyCUsYtOurxiOZZDJ4QUItrJv6LY
         PdsyHPMIHD/p10dEFV0sPdVcryg784cqVoUk5eOrKryBJgeKETsHPI/ZTG43CvYglS
         1tXZmG3KVi/ASsW27AvJ9+IWVXyAu/yEhxlZCXzc8pXbv9M/yrMRB8ubT+C/E+WQMP
         l+h+RejvIf3N5KVp6sTEybYRpYjsSVG0IvDCJRrSNQcuLTmS1NR5Hlzp3/CRtm7heh
         JVjom859RaR9w==
From:   Siddhesh Poyarekar <siddhesh@gotplt.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, siddhesh@gotplt.org
Subject: [PATCH] ldd: Do not recommend binutils as the safer option
Date:   Mon, 16 Oct 2023 02:19:23 -0400
Message-ID: <20231016061923.105814-1-siddhesh@gotplt.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The binutils security policy[1] states that diagnostic tools should not
be expected to be safe without sandboxing, so it doesn't make sense to
recommend it as the alternative to ldd, especially since it is not a
drop-in replacement.  Recommend sandboxing instead, since that is in
fact the safest known way at the moment to deal with untrusted binaries.

[1] https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=binutils/SECURITY.txt

Signed-off-by: Siddhesh Poyarekar <siddhesh@gotplt.org>
---
 man1/ldd.1 | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/man1/ldd.1 b/man1/ldd.1
index cca96ec4d..f86798566 100644
--- a/man1/ldd.1
+++ b/man1/ldd.1
@@ -94,20 +94,8 @@ Thus, you should
 .I never
 employ
 .B ldd
-on an untrusted executable,
+on an untrusted executable without appropriate sandboxing,
 since this may result in the execution of arbitrary code.
-A safer alternative when dealing with untrusted executables is:
-.PP
-.in +4n
-.EX
-$ \fBobjdump \-p /path/to/program | grep NEEDED\fP
-.EE
-.in
-.PP
-Note, however, that this alternative shows only the direct dependencies
-of the executable, while
-.B ldd
-shows the entire dependency tree of the executable.
 .SH OPTIONS
 .TP
 .B \-\-version
-- 
2.41.0

