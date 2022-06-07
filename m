Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9335B540036
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 15:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240600AbiFGNid (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 09:38:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235395AbiFGNid (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 09:38:33 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 901FD5EDC6
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 06:38:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1EB44614BF
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 13:38:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC5FCC385A5;
        Tue,  7 Jun 2022 13:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654609111;
        bh=efJDVYerGupKZgAhW7VtQnFdAI+4OkODBi8RLvSrNjs=;
        h=From:To:Cc:Subject:Date:From;
        b=hB2Tnzo3KHud5SXegk42vkNdDCIZDL2h01O2k3POo52O70JKfh0nBCAwG0RIryOdM
         IN3qxTHcl/GNKNT2bbOZXDucWPquWWsAaUeCAb5d8vUVAmbgrfEfix9nvGlvXWw2pX
         DI7iT8Xvu47jUVWyR2z48BnY1qzexSBJpNUqKm+qLAGVSwGUnGjUhaW/dLlm+nekA/
         emh7NfdnAOVHAV/NmGFHXgroswSbrcz1prFM5pTfi2AMM0H5ER1ZqXyFYd9xjdMNac
         +Jx1UvfcXZgJVBiKheGSJK9w5qAGQqP1LpgGvF1UkS+7QOxzs5H4aExwXXU4TXG1F9
         cMcN5+g6qjQKg==
From:   Christian Brauner <brauner@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     "Christian Brauner (Microsoft)" <brauner@kernel.org>,
        Christoph Hellwig <hch@infradead.org>,
        Aleksa Sarai <cyphar@cyphar.com>
Subject: [PATCH 0/4] mount_setattr.2: updates
Date:   Tue,  7 Jun 2022 15:38:16 +0200
Message-Id: <20220607133820.1721352-1-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=661; h=from:subject; bh=ed4MXdSQNCXs/GnHFow06wCVn0itFgnA5kKwBrRgTMY=; b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSTNDzletONHV5+0WvzxfJF3ofZucq43M/b9rWub+GJi4m/O j2LfO0pZGMS4GGTFFFkc2k3C5ZbzVGw2ytSAmcPKBDKEgYtTACai28jwP2LXFKHrXf8vLI57nnf1/U xGz1NL1/z967/LcBK75L4s0d8M/5359jKvap27xkLZ48jBzImieQJJGdNlPUP5rz61jo1gYwAA
X-Developer-Key: i=brauner@kernel.org; a=openpgp; fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: "Christian Brauner (Microsoft)" <brauner@kernel.org>

Hey everyone,

Here's a set of updates for the mount_setattr.2 man page.
I would really appreciate it if groff syntax could be fixed up by
maintainers. I tried my best to remember the guidelines though. :)

Thanks!
Christian

Christian Brauner (4):
  mount_setattr.2: add and explain missing EBUSY error
  mount_setattr.2: update conditions to create ID-mapped mounts
  mount_setattr.2: update list of supported filesystems
  mount_setattr.2: ffix

 man2/mount_setattr.2 | 64 +++++++++++++++++++++++++++++++++++---------
 1 file changed, 52 insertions(+), 12 deletions(-)


base-commit: ae6b221882ce71ba82fcdbe02419a225111502f0
-- 
2.34.1

