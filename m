Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EE3B540039
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 15:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244817AbiFGNiq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 09:38:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235395AbiFGNip (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 09:38:45 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EBB75EDC6
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 06:38:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 53251B82017
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 13:38:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54329C34115;
        Tue,  7 Jun 2022 13:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654609121;
        bh=2aQqo88M6bBYJQXFgsnyHeUquwN5te49RCePwJhbj7c=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=rDiIa9bR5lIOxc003y8Jxl6OPQVXqiGvLq0eCYqXj4Fq62qGMu9N2roqyrIAA0nE7
         JV5vj0CYbB9mC2mGfR6yrIkQ5mHOsEbKA+rUtt9dbL2HPX4+VlO9WZDeq1e7xeuH8/
         8YGq1ATM3Jk69Cww00B4VjrapLygkRNpohvFqUwneZ5x4Psao+rF2o7ye3RWjoPgRl
         UadWcc7siqOzvORBf0mKznnUgWLS+zeUVCb/bWkHyRDpBI/MIYzO3msmgFHBPluhNy
         poCLJYQnpYetR8CB3JoAAVU8+ZYAZLXbXHjk0e1rSEsIetjXsXiVhI6T3DrVfm8UPj
         HshltvHrEiBpQ==
From:   Christian Brauner <brauner@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Christian Brauner <brauner@kernel.org>,
        Christoph Hellwig <hch@infradead.org>,
        Aleksa Sarai <cyphar@cyphar.com>
Subject: [PATCH 3/4] mount_setattr.2: update list of supported filesystems
Date:   Tue,  7 Jun 2022 15:38:19 +0200
Message-Id: <20220607133820.1721352-4-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607133820.1721352-1-brauner@kernel.org>
References: <20220607133820.1721352-1-brauner@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1680; h=from:subject; bh=2aQqo88M6bBYJQXFgsnyHeUquwN5te49RCePwJhbj7c=; b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSTNDznRxlkWGX3i5lmdrPbXP8MT1EUXb14+O+js95XtRy7f Ss6+2VHKwiDGxSArpsji0G4SLrecp2KzUaYGzBxWJpAhDFycAjARscOMDPdduz+XnD30LVD/BvvsPm Yz9dR4l+5rtR+t2nWzQ5NZexn+Z07VyD+wTDvfnqXJTfYm/zSV6pfHZ3ZE6BW4vJ50ecoVfgA=
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

Update list of filesystems that support ID-mapped mounts.

Signed-off-by: Christian Brauner (Microsoft) <brauner@kernel.org>
---
 man2/mount_setattr.2 | 43 ++++++++++++++++++++++++++++++++++++-------
 1 file changed, 36 insertions(+), 7 deletions(-)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 0999373d6..13d66db4f 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -656,14 +656,43 @@ capability in the user namespace the filesystem was mounted in.
 .\"     support ID-mapped mounts.
 .IP \(bu
 The underlying filesystem must support ID-mapped mounts.
-Currently, the
-.BR xfs (5),
-.BR ext4 (5),
-and
-.B FAT
-filesystems support ID-mapped mounts
-with more filesystems being actively worked on.
+Currently, the following filesystems support ID-mapped mounts:
+.\" fs_flags = FS_ALLOW_IDMAP in kernel sources
+.PP
+.RS 3
+.PD 0
+.IP \(bu 3
+.BR xfs (5)
+(since Linux 5.12)
+.IP \(bu
+.BR ext4 (5)
+(since Linux 5.12)
+.IP \(bu
+.BR FAT
+(since Linux 5.12)
+.IP \(bu
+.BR btrfs (5)
+(since Linux 5.15)
+.\" commit 5b9b26f5d0b88b74001dcfe4ab8a8f2f4e744112
 .IP \(bu
+.BR ntfs3
+(since Linux 5.15)
+.\" commit 82cae269cfa953032fbb8980a7d554d60fb00b17
+.IP \(bu
+.BR f2fs
+(since Linux 5.18)
+.\" commit 984fc4e76d63345499f01c0c198a4b44860cf027
+.IP \(bu
+.BR erofs
+(since Linux 5.19)
+.\" commit 6c459b78d4793afbba6d864c466cc5cd2932459d
+.IP \(bu
+.BR overlayfs
+(ID-mapped lower and upper layers supported since Linux 5.19)
+.PD
+.RE
+.PP
+.IP \(bu 3
 The mount must not already be ID-mapped.
 This also implies that the ID mapping of a mount cannot be altered.
 .IP \(bu
-- 
2.34.1

