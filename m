Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46BF377287C
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 17:02:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230102AbjHGPCA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Aug 2023 11:02:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbjHGPB7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Aug 2023 11:01:59 -0400
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2AA010CA
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 08:01:58 -0700 (PDT)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id SvpJqwiTqLAoIT1k5qJKfJ; Mon, 07 Aug 2023 15:01:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1691420517; bh=LKpxX/KvYCljehCiQqGOFW/TLikSm23BbkfUUnCxWtg=;
        h=From:To:Cc:Subject:Date;
        b=AMJc0yXQOUr5YrjTB7+EX5EpMgNj2f4MXkHiLvEfWLUmFSbGy/5Z/WwaJGSTQaLur
         hT13bYqoHGgX5d5ErHMLaC0JCfUJav9UsQxasgaYq54iwJzftIkJvrt2hGrg7/uUq8
         NB5knxZiZe+1IVIUDAmpv2F7zycpcG5iQqRu/09rgHDyWVT8C3F8Nbonp03HMKsVgi
         cxfNk68LzWXq5aSYk+E2mXn2eWmuYa+njINmq0ajnqdtm/S9DBFDiP1wxGgbhl2QSa
         /Yd4ct8CivkYDbTP5QekuzZZVAl6xzGTJHkhCqWS0LiT2XVdZml8X5mLqSD6fB6xqo
         BoJWwGZK4MNDg==
Received: from BWINGLISD.cg.shawcable.net. ([184.64.102.149])
        by cmsmtp with ESMTP
        id T1k4qlqQ6yAOeT1k5qh5e2; Mon, 07 Aug 2023 15:01:57 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=64d10765
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17 a=_Dj-zB-qAAAA:8
 a=vXAFJ_YfTBguEfhQoZ4A:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Deri <deri@chuzzlewit.myzen.co.uk>
Subject: [PATCH] scripts/LinuxManBook/gropdf: use symlink instead of hard coded groff version
Date:   Mon,  7 Aug 2023 09:01:39 -0600
Message-Id: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfMzYjsyqksHje57ai1xJRi7/PvRXLWndjqbLsR5vu4MvOEToHBXwtFC2d2DvUrpRdI8mauEM7+YDG8+mPuVkJDqOeTvQwbC+lVetuV3hAyFYpgoMMwkB
 uVYz6DmjhoqG0wcWh0TCA7rNS8+V1h0Dntd68I93+kNv+AGZXYNk0lXjXyn2cRU+nCoTv4B6KHG3od0uWP24OORv3l5C+KaLmBcWIt2QxD0qpN9E6MUw+GiG
 4svbY4lm/VgPuqubhqBPKXbYX4piC9NjVFLtI8wN6MnDNfC6zkfJ1mhhxJaeynNK1BK7Cjg+tf8KoHljC+rYYUv6ofdagG5hNYTe0XxS1KhwuR9WSoqGXyJ2
 2Gt7P+BJ
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

