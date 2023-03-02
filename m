Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B76EB6A8BA0
	for <lists+linux-man@lfdr.de>; Thu,  2 Mar 2023 23:19:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229803AbjCBWT4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Mar 2023 17:19:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbjCBWTo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Mar 2023 17:19:44 -0500
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050:0:465::201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4956E227AF
        for <linux-man@vger.kernel.org>; Thu,  2 Mar 2023 14:19:43 -0800 (PST)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4PSQWY5NKyz9sTj;
        Thu,  2 Mar 2023 23:19:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1677795577;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=jTuhjLrDi8EvZzHd7CoZ6rgj9rkilVvrP+3EWwTbOYo=;
        b=E1LPmMNrIfJ6roRnibDjjbKe4fD7bM2I7bEcQmyW5pY8nnwK/WEzUHoIk7sim3ED+e14Ne
        wCri3yMYITF1xwU3ov5F3lOkrym4qpiFN+Z6UCFU8yd3M0KxWeQQ0Ydz0R3rflK7tNFe7h
        LQb1fd0Zj4RgRXe3iDeY5F3PosDXXXzrBEx1zzF6A2Y0VgKA0F8ed6DemQuD360PAZF2qN
        b3fwHPv2YV9Dg4DujG/sYvw++G501Qd5oZsUR0LqHuUR5FmxeUAgckymZYoNtx376eV5A6
        OiRRp4FOBKTrvUhaA2VZ7rysNTtzigOny8cuUxkYn3GK7X9iQMG4QTJ3rMoVkw==
Date:   Thu, 2 Mar 2023 23:19:37 +0100 (CET)
From:   elmono@mailbox.org
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <2025709465.130364.1677795577336@office.mailbox.org>
Subject: [patch] read.1p: Split format and argument of printf call
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-MBO-RS-META: 9gmgcoj6epqrig3r46soeni8g9ntuwyz
X-MBO-RS-ID: 7cc6eeccd1227c8c48a
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As printf expects the format and arguments as separate arguments, split
the string accordingly. This is already fixed in the HTML version of the
standard.
---
 man-pages-posix-2017/man1p/read.1p | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man-pages-posix-2017/man1p/read.1p b/man-pages-posix-2017/man1p/read.1p
index e09b896..d7e3a0a 100644
--- a/man-pages-posix-2017/man1p/read.1p
+++ b/man-pages-posix-2017/man1p/read.1p
@@ -196,7 +196,7 @@ The following command:
 
 while read -r xx yy
 do
-    printf "%s %s\en$yy$xx"
+    printf "%s %s\en" "$yy" "$xx"
 done < \fIinput_file\fR
 .fi
 .P
-- 
2.39.1
