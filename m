Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1C2A3D951D
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 20:17:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbhG1SQ6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 14:16:58 -0400
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:54303 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229542AbhG1SQg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 14:16:36 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.west.internal (Postfix) with ESMTP id 33182320031A;
        Wed, 28 Jul 2021 14:16:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 28 Jul 2021 14:16:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tycho.pizza; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm3; bh=itd7HZwquMBFYc1x0GQvGedJyt
        7/AME0Z+XsWevluIo=; b=vzAFNmsTHqdU+pa+U/Oy+56uTPgSLkFhKRSmUmPdqC
        oVu+tnHOwvMTNYqJlWfW1SVia+62AADTl10CNJf3N/ETLWim/E6uaA3roQ2v+h11
        IkWMQa9RwpP5USjzz58QRQjsOgeH269k4htElV8vP4QJwN/MLV8meVFuhkmgdhXj
        eoDUKD8qdjxJcNYOfFMAgOJTzEhRbpndP9l94zO+EVSZq4kJZeYu0mHbLpXcxYY/
        r8JJZo9dq6wmaXI4WDu4Tbd1K+HFFF7ACiliSQAemXgjezRIGPgpGp4Lk9dfmW0M
        QyWoda4FJgRO0q+tKLbAc24hwq+7T7xo/BIOAdIIbLPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=itd7HZwquMBFYc1x0
        GQvGedJyt7/AME0Z+XsWevluIo=; b=lkurmH+ZNISEE1BMxOU/LJjLOY/LrnMwu
        bSwoVk2WQbiP+bJtoSTWrGLkTCkkaZMohLkbLNQ7YLcfPx6ySCUzDLT9cjh/8jUy
        kmfg71CYngIimEF19XvQVJ1XgdF3G2jJRADhe4IIKlkuchCwGALRJlRv5E/8qOUU
        mkNYje9omEn6xc+PA9iTwIpopk1Jel60oRSm0QXjkWpilvZxQ2cL0hKIRdcYBA8C
        B37Ci/Up7xhzxoIvmsRI6gk1xelfTsdFnb+dx0afsa6+/59fWD7H+YF3I5FXiyZE
        3PNaAglZHFCOcixkjNbNyHnCs689Yo3RgQuEEpFlIG4Am5x4+0hRA==
X-ME-Sender: <xms:8p4BYblrt2xiXfStmsEGvBTMleSLl3YVvwhx3lHazwUwgd9Ho3xRUg>
    <xme:8p4BYe0vYxnvYe8excvvMsfv03TpTKsR80W8R8bJUrghXlKbdEA8e_3Qj_CYdmFyi
    Rtnl4vIoBFbUNRx4z0>
X-ME-Received: <xmr:8p4BYRquJpjhDEoM62b-Dee4gt6JyjZX4qQqxanqBx4YME2RXasRbViwKLwS9NaB4zqT-klsekpSCE0GYc4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrgeelgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpefvhigthhhoucetnhguvghrshgvnhcuoehthigthhhosehthigthhho
    rdhpihiiiigrqeenucggtffrrghtthgvrhhnpeelveehveejgefgkedttedvteffgfelfe
    euveduteelvdduhefhjeetjeehheelkeenucevlhhushhtvghrufhiiigvpedtnecurfgr
    rhgrmhepmhgrihhlfhhrohhmpehthigthhhosehthigthhhordhpihiiiigr
X-ME-Proxy: <xmx:8p4BYTnpvtkFpTUV-567ChvuVXCSLNUYoiTU1tOoF0BrbD72soz2rA>
    <xmx:8p4BYZ1HouYywWBcZyW_xxuoz88OdaT1NSFBhivOQUdThijZDsvU0A>
    <xmx:8p4BYSsoEqsjKulPkAgwM29f4HhkVJjWr7qFE4nfF908D7hkVAWPPA>
    <xmx:8p4BYa-CCtx-TnZekNCTK2Mw39_na8gpxmo1YlKTX5J3nD9buLjUGw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 28 Jul 2021 14:16:17 -0400 (EDT)
From:   Tycho Andersen <tycho@tycho.pizza>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Tycho Andersen <tycho@tycho.pizza>
Subject: [PATCH] fsync: note syncfs in in SEE ALSO
Date:   Wed, 28 Jul 2021 12:16:03 -0600
Message-Id: <20210728181603.2694191-1-tycho@tycho.pizza>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I didn't know about this syscall until just now somehow, but it seems
reasonable to mention it in the fsync.

Signed-off-by: Tycho Andersen <tycho@tycho.pizza>
---
 man2/fsync.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/fsync.2 b/man2/fsync.2
index 0f070ed2c..32238dc07 100644
--- a/man2/fsync.2
+++ b/man2/fsync.2
@@ -200,6 +200,7 @@ to guarantee safe operation.
 .BR pwritev (2),
 .BR sync (2),
 .BR sync_file_range (2),
+.BR syncfs (2),
 .BR fflush (3),
 .BR fileno (3),
 .BR hdparm (8),

base-commit: fbe71b1b79e72be3b9afc44b5d479e7fd84b598a
-- 
2.30.2

