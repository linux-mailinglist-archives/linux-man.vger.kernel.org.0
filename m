Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98FAF79313F
	for <lists+linux-man@lfdr.de>; Tue,  5 Sep 2023 23:49:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231343AbjIEVtf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Sep 2023 17:49:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230041AbjIEVtf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Sep 2023 17:49:35 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 093E91713
        for <linux-man@vger.kernel.org>; Tue,  5 Sep 2023 14:49:08 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id 73FAB240027
        for <linux-man@vger.kernel.org>; Tue,  5 Sep 2023 23:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1693950530; bh=vv17uZZRf2jo8UHaHnzJqAs9mKpovFVionLSH5rooOA=;
        h=Mime-Version:Content-Transfer-Encoding:Date:Message-Id:To:Cc:
         Subject:From:From;
        b=Q2ci6S7ScNbjKw/6jWADnqnBrtgeQHx9o2aogv1P4T0Dc+8RcIA2X8S9EPTec6UfQ
         brZgpsHlZaGOHig43YMU4POyO2s0xeCSdh7KlU0dtteHzaYAFHty+S1dV0LmqXeXfn
         j0Y1zUNQ2s1FBRL469mUwxs+onF9FVK43Q4MDB4MDD6cd+D5wrk6TQeKkFlIFAPyvY
         kkCgJaBco3E+5jfSTaLiI4BHE2iLh53YOhQP1SIfTFSK980AcR+vR2ljTl8rumYA0Q
         1TzKJi+guKsqM+I3ZV+Yu0O3WdC8yUtXKug7cGrMeUVUNJbh6W4n4Gk2f8+B3J7Y+O
         cR17sqox3600Q==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4RgJzk0K45z6twb;
        Tue,  5 Sep 2023 23:48:49 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Tue, 05 Sep 2023 21:47:46 +0000
Message-Id: <CVBBBP64XD23.254ONRFRJQI3I@posteo.de>
To:     "Alejandro Colomar" <alx@kernel.org>
Cc:     <linux-man@vger.kernel.org>
Subject: Re: [PATCH] popen.3: wfix
From:   "Tom Schwindl" <schwindl@posteo.de>
References: <20230905121822.17672-1-schwindl@posteo.de>
In-Reply-To: <20230905121822.17672-1-schwindl@posteo.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Sorry for the noise, I missed the signed-off here too.

--=20
Best Regards,
Tom Schwindl

From 2e7eb07667c0b13a0839e8703275547872dac398 Mon Sep 17 00:00:00 2001
From: Tom Schwindl <schwindl@posteo.de>
Date: Tue, 5 Sep 2023 23:43:09 +0200
Subject: [PATCH] popen.3: wfix

Signed-off-by: Tom Schwindl <schwindl@posteo.de>
---
 man3/popen.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/popen.3 b/man3/popen.3
index 533561d60454..9530acfaa217 100644
--- a/man3/popen.3
+++ b/man3/popen.3
@@ -188,7 +188,7 @@ before
 .BR popen ().
 .PP
 Failure to execute the shell is indistinguishable from the shell's failure
-to execute command, or an immediate exit of the command.
+to execute the command, or an immediate exit of the command.
 The only hint is an exit status of 127.
 .\" .SH HISTORY
 .\" A
--=20
2.41.0
