Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF60540037
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 15:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241722AbiFGNij (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 09:38:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235395AbiFGNii (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 09:38:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D900F5EDC7
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 06:38:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 75316614B8
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 13:38:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48DB9C385A5;
        Tue,  7 Jun 2022 13:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654609115;
        bh=A8hdyMlMftKrwk0fCIwLMe9UvG5LIxzpCk75imlIQvM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=MGOqrXrLsmv2X02opnDyZaCJAgxcj93VbMw5o9jQNgbnHh4pOEAkBVo7H6ZsHbM3K
         Qh5SiCHpAsn9xLDIl5oeX05vwBV5rQtq22EHWabZ8J3zJwxt9hLD9E3R1OZjidg7PV
         njH9XjVQnIzn3l+trRW3WE9xkS7XN1YOLszhoNHKA+8CYKaKGqtOpiaQJVCKbyahmf
         mJHvwvZcc0bXO2p8UcuMbNjRP3TxTOsyr7ZF2nqFN8ev0R2vk0kCm6qi87JXd40aCc
         2F6eDHJAvL41ZyyDYJPZzr4qTeA2Qyqverfyop4SexLgd8Cd+n8+d8ilkQTNO6EWjl
         sK1YrF6BjaP4A==
From:   Christian Brauner <brauner@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Christian Brauner <brauner@kernel.org>,
        Christoph Hellwig <hch@infradead.org>,
        Aleksa Sarai <cyphar@cyphar.com>
Subject: [PATCH 1/4] mount_setattr.2: add and explain missing EBUSY error
Date:   Tue,  7 Jun 2022 15:38:17 +0200
Message-Id: <20220607133820.1721352-2-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607133820.1721352-1-brauner@kernel.org>
References: <20220607133820.1721352-1-brauner@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1176; h=from:subject; bh=A8hdyMlMftKrwk0fCIwLMe9UvG5LIxzpCk75imlIQvM=; b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSTNDzn+x2PS3+pSTeuDKWZLotvf9cfl8Aruud50zGhWraOC RoNRRykLgxgXg6yYIotDu0m43HKeis1GmRowc1iZQIYwcHEKwETmnWX4X334o8o/n23fdIpMbBLanj I83ef3U9/Ezv7dyY3qXL67PzH8L2dyar5zweTtxB/2256/3TKrkKnXJ+hr7NIrpp71D5g3cQIA
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

In order to ID-map a mount it must not have any writers. If the mount
has writers and the caller tries to ID-map the mount EBUSY will be
returned.

Signed-off-by: Christian Brauner (Microsoft) <brauner@kernel.org>
---
 man2/mount_setattr.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 77233f589..2bf1b24da 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -429,6 +429,13 @@ The caller tried to change the mount to
 .BR MOUNT_ATTR_RDONLY ,
 but the mount still holds files open for writing.
 .TP
+.B EBUSY
+The caller tried to create an ID-mapped mount raising
+.BR MOUNT_ATTR_IDMAP
+and specifying
+.I userns_fd
+but the mount still holds files open for writing.
+.TP
 .B EINVAL
 The pathname specified via the
 .I dirfd
@@ -662,6 +669,9 @@ This also implies that the ID mapping of a mount cannot be altered.
 The mount must be a detached mount;
 that is,
 it must have been created by calling
+.IP \(bu
+The mount must not have any writers.
+.\" commit 1bbcd277a53e08d619ffeec56c5c9287f2bf42f
 .BR open_tree (2)
 with the
 .B OPEN_TREE_CLONE
-- 
2.34.1

