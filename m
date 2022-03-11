Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA7984D5D42
	for <lists+linux-man@lfdr.de>; Fri, 11 Mar 2022 09:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229474AbiCKI16 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Mar 2022 03:27:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbiCKI15 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Mar 2022 03:27:57 -0500
X-Greylist: delayed 50299 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 11 Mar 2022 00:26:53 PST
Received: from palmdale.lirum.at (palmdale.lirum.at [88.99.186.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF4BC1B8FE8
        for <linux-man@vger.kernel.org>; Fri, 11 Mar 2022 00:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=quelltextlich.at; s=20150713mail; h=Content-Type:MIME-Version:Message-ID:
        Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=gIKZ9ho0XVvyi53VxzBh1dJjW3DhN6n6OkiEyL15Lb0=; b=Qyl0yUGoyXJDFzXhe50hMCsG+J
        9DVUALj1wzmDP6Ut3QnUlHqlXps3mWOKiuqHV0wlf7RfaLxDPM1tFD7mkND/vEZKHHquTcJg2OI4E
        zCvgQFaK+3ZAO0WfgRgN+qmS5Q7Pz5SbIau9lJcV7M6niHsZncIBkWtNaC7oYcDRy22hqQ5QQmZOk
        ykYTCV+MpXbMdSdwd3ehmwjkBPtJ/SALruxFLQykrv4vgk+PYaKjywlFdgbSU6GlwrnEVcebLmIJ7
        JUWcJ4qt5iTUvbEb9gKZAiAUUX/9xVquKEjgMP2rVFB/JLx7JfvES32GBr4dWTQw+9He4P07flSH/
        k7SYAwbA==;
Authentication-Results: palmdale.lirum.at;
        iprev=fail smtp.remote-ip=192.168.231.18
Received: from [192.168.231.18] (helo=localhost)
        by palmdale.lirum.at with esmtp (Exim 4.92)
        (envelope-from <christian@quelltextlich.at>)
        id 1nSabq-0004tl-V9; Fri, 11 Mar 2022 08:26:51 +0000
Date:   Fri, 11 Mar 2022 09:26:50 +0100
From:   Christian Aistleitner <christian@quelltextlich.at>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: [PATCH] nscd.conf.5: Add debug level description
Message-ID: <20220311082650.GA22399@lirum.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

With only the default debug level documented, neither the possible
range of the debug levels nor their purpose was apparent. This made it
hard to use debug levels. So we add a short description of them.

Signed-off-by: Christian Aistleitner <christian@quelltextlich.at>
---
 man5/nscd.conf.5 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
index 7356bf7..c84d79a 100644
--- a/man5/nscd.conf.5
+++ b/man5/nscd.conf.5
@@ -47,6 +47,10 @@ Specifies name of the file to which debug info should be written.
 .I value
 .RS
 Sets the desired debug level.
+0 hides debug info.
+1 shows general debug info.
+2 additionally shows data in cache dumps.
+3 (and above) shows all debug info.
 The default is 0.
 .RE
 .PP
-- 
1.8.1.5

