Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68AAC7717B6
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 03:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230354AbjHGBRl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Aug 2023 21:17:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjHGBRk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Aug 2023 21:17:40 -0400
X-Greylist: delayed 90 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 06 Aug 2023 18:17:39 PDT
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4F371711
        for <linux-man@vger.kernel.org>; Sun,  6 Aug 2023 18:17:39 -0700 (PDT)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id SddjqpQdp6NwhSoquq8KTm; Mon, 07 Aug 2023 01:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1691370968; bh=LKpxX/KvYCljehCiQqGOFW/TLikSm23BbkfUUnCxWtg=;
        h=From:To:Cc:Subject:Date;
        b=uf/dgT82UfF2gOOhtRnTwl0wYXOfM3uTDQsBm/lZueN24mkRi03TpWuLO1L47uqOX
         Vq5Tzyl22lCoMnG24QgogYBB1u5r0vlNeJuW0QZsGa9l0ssNW6P7qE0Ass81nRhZkr
         N6ZlE9qxZPcr7EwFENhf/9ehw6AzDGhddveh1s9xo37mM9mPNrxYZtstIeT+3CLhkt
         m6L0BrfU6MTkWFPR0TTkhgZQnj5URBTii/BuWm9pecHu20uv11iGsBqaz1E4hAYN3U
         vghyDgo6Ai7EKhwDAbQ92RtvQ266TcM1CRbLdQYu+QrxPD3KM/U/JxC2PZdaG5v1Kk
         n1hG07UrBAXEQ==
Received: from BWINGLISD.cg.shawcable.net. ([184.64.102.149])
        by cmsmtp with ESMTP
        id SoqtqjLjYyAOeSoqtqgNla; Mon, 07 Aug 2023 01:16:08 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=64d045d8
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17 a=_Dj-zB-qAAAA:8
 a=vXAFJ_YfTBguEfhQoZ4A:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@Shaw.ca>
Subject: [PATCH] scripts/LinuxManBook/gropdf: use symlink instead of hard coded groff version
Date:   Sun,  6 Aug 2023 19:16:01 -0600
Message-Id: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfKDaqE/WnojK2hwmiFqw2rITvuLzFJIaEA6YTTB6D8c/zHMBhqsQjtAE0YSyyM+c/nTnlUiMkLMr0jE4qvv9vSHsS/oOxubJ5QVNmXVJXp3XgylohnN+
 1hRsvlF/Q3Lm13mlAvUP1x4TXTM8usP/7d7ivgnLwn2P5lxcfWyjYa86peAglXPcnUhLGw1H04pJ/9wC9ZXMKeHrcZb1DcTukwsOkoEQXgQpBSJjBYY7VXK+
 RSQwbE/VtAMVAnMx/glL6kC2UTuUIWTdKaD/JzXwuaOwA9FbshTJPIzVmlrVOAXCHWY6TQymK43m85wSRbzj1g==
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

man-pages custom script gropdf has hard coded groff version used in font path
groff provides symlink current for version to avoid the issue; use it in gropdf
specify failing font path used to open font description file in error message

Signed-off-by: Brian Inglis <Brian.Inglis@Shaw.ca>
---
 scripts/LinuxManBook/gropdf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/LinuxManBook/gropdf b/scripts/LinuxManBook/gropdf
index 8474e583f57d..fb205395015b 100755
--- a/scripts/LinuxManBook/gropdf
+++ b/scripts/LinuxManBook/gropdf
@@ -58,8 +58,8 @@ else
 
 my %cfg;
 
-$cfg{GROFF_VERSION}='1.22.4';
-$cfg{GROFF_FONT_PATH}='/usr/share/groff/site-font:/usr/share/groff/1.22.4/font:/usr/lib/font';
+$cfg{GROFF_VERSION}='current';
+$cfg{GROFF_FONT_PATH}="/usr/share/groff/site-font:/usr/share/groff/$cfg{GROFF_VERSION}/font:/usr/lib/font";
 $cfg{RT_SEP}=':';
 binmode(STDOUT);
 
@@ -690,7 +690,7 @@ sub LoadDesc
     my $f;
 
     OpenFile(\$f,$fontdir,"DESC");
-    Msg(1,"Failed to open 'DESC'") if !defined($f);
+    Msg(1,"Failed to open 'DESC' in '$fontdir'") if !defined($f);
 
     while (<$f>)
     {
-- 
2.39.0

