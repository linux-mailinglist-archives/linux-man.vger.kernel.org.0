Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4773068E21D
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:45:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjBGUpn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:45:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjBGUpm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:45:42 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C7A23B646
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:45:41 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id PQ6MpqB8pc9C4PUqTpYXJ4; Tue, 07 Feb 2023 20:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675802741; bh=GolmpVA+8iSsaNjAlPymh2vgQqYbI2Lsx/H9H2hN/ps=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=Kp6JE488gYc+TY6rDBRlyjTcqsxiHMFKGYxgDglk0cIs/MsVpppFmKsXtfwUfZm3J
         geQHgZTEyjbeL8bTS+H52YDpWeV+hBlSlXj/0nPvIk+5cfXL5TxhP/K8pGdLCsad5K
         HYTdlbIVJUDYOwWiIcJzqC1zq4b0mcOWljNf6CxgZ0tAvNDRQRJWw6EXEDXySrr83b
         t4p06/JQnGTmcgUGxRsLiFonVArADJ6im0einP3hiU9CdmI4Oj0zd4AvFJzRIDUPiE
         gq1Mr0+DYslsfXyWYEpjIKSyAt00Cr4Jw2WFQeOl9/jx92lv++ZUAlxJ/qVo/uk/DN
         ylbvUkDyeCETw==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUqSpprrj3fOSPUqSpIwNg; Tue, 07 Feb 2023 20:45:41 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63e2b875
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=pyfBKZyxqbpXIr2M4tYA:9 a=QEXdDO2ut3YA:10
 a=lVMPgzCyRmk84YZQn8YA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 07/11] man2/statfs.2: punctuate hex in docs with digit separators
Date:   Tue,  7 Feb 2023 13:32:56 -0700
Message-Id: <20230207203300.49894-8-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfHYqjgvFYBLyxnRCrOHyELO52TvxMmGL0jpmK7UVCI4vFM5hWXTscYoGRWrl+fQN+h63hp8TqRvzayFcbxZHYstRWeeryBBGQsgm8MnNWkJoC+FYkeNm
 I3tUS0C6irYCYRpLcoUXw/F0px5cvo/KasGtro1EaI8Gsz1ZqteT+ZLEx92dBeNw2QW9OT0SR2DxHqmO06H3khmv/oJ6AAtSV8u8waoHm5d1Tl12gKON3OQr
 e8K/y3Q625CyaNZJYsphqIG4iMYsCYksnsclDAFQcXgUxzwkazSfPn9j7vjj+/vw
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------2.39.0
Content-Type: text/plain; charset=UTF-8; format=fixed
Content-Transfer-Encoding: 8bit

---
 man2/statfs.2 | 110 +++++++++++++++++++++++++-------------------------
 1 file changed, 55 insertions(+), 55 deletions(-)


--------------2.39.0
Content-Type: text/x-patch; name="0007-man2-statfs.2-punctuate-hex-in-docs-with-digit-separ.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0007-man2-statfs.2-punctuate-hex-in-docs-with-digit-separ.patch"

diff --git a/man2/statfs.2 b/man2/statfs.2
index 8c4d6236f258..b2831b3a85b3 100644
--- a/man2/statfs.2
+++ b/man2/statfs.2
@@ -58,90 +58,90 @@ The following filesystem types may appear in
 .EX
 ADFS_SUPER_MAGIC      0xadf5
 AFFS_SUPER_MAGIC      0xadff
-AFS_SUPER_MAGIC       0x5346414f
-ANON_INODE_FS_MAGIC   0x09041934 /* Anonymous inode FS (for
+AFS_SUPER_MAGIC       0x5346\[aq]414f
+ANON_INODE_FS_MAGIC   0x0904\[aq]1934 /* Anonymous inode FS (for
                                     pseudofiles that have no name;
                                     e.g., epoll, signalfd, bpf) */
 AUTOFS_SUPER_MAGIC    0x0187
-BDEVFS_MAGIC          0x62646576
-BEFS_SUPER_MAGIC      0x42465331
-BFS_MAGIC             0x1badface
-BINFMTFS_MAGIC        0x42494e4d
-BPF_FS_MAGIC          0xcafe4a11
-BTRFS_SUPER_MAGIC     0x9123683e
-BTRFS_TEST_MAGIC      0x73727279
-CGROUP_SUPER_MAGIC    0x27e0eb   /* Cgroup pseudo FS */
-CGROUP2_SUPER_MAGIC   0x63677270 /* Cgroup v2 pseudo FS */
-CIFS_MAGIC_NUMBER     0xff534d42
-CODA_SUPER_MAGIC      0x73757245
-COH_SUPER_MAGIC       0x012ff7b7
-CRAMFS_MAGIC          0x28cd3d45
-DEBUGFS_MAGIC         0x64626720
+BDEVFS_MAGIC          0x6264\[aq]6576
+BEFS_SUPER_MAGIC      0x4246\[aq]5331
+BFS_MAGIC             0x1bad\[aq]face
+BINFMTFS_MAGIC        0x4249\[aq]4e4d
+BPF_FS_MAGIC          0xcafe\[aq]4a11
+BTRFS_SUPER_MAGIC     0x9123\[aq]683e
+BTRFS_TEST_MAGIC      0x7372\[aq]7279
+CGROUP_SUPER_MAGIC    0x27\[aq]e0eb   /* Cgroup pseudo FS */
+CGROUP2_SUPER_MAGIC   0x6367\[aq]7270 /* Cgroup v2 pseudo FS */
+CIFS_MAGIC_NUMBER     0xff53\[aq]4d42
+CODA_SUPER_MAGIC      0x7375\[aq]7245
+COH_SUPER_MAGIC       0x012f\[aq]f7b7
+CRAMFS_MAGIC          0x28cd\[aq]3d45
+DEBUGFS_MAGIC         0x6462\[aq]6720
 DEVFS_SUPER_MAGIC     0x1373     /* Linux 2.6.17 and earlier */
 DEVPTS_SUPER_MAGIC    0x1cd1
 ECRYPTFS_SUPER_MAGIC  0xf15f
-EFIVARFS_MAGIC        0xde5e81e4
-EFS_SUPER_MAGIC       0x00414a53
+EFIVARFS_MAGIC        0xde5e\[aq]81e4
+EFS_SUPER_MAGIC       0x0041\[aq]4a53
 EXT_SUPER_MAGIC       0x137d     /* Linux 2.0 and earlier */
 EXT2_OLD_SUPER_MAGIC  0xef51
 EXT2_SUPER_MAGIC      0xef53
 EXT3_SUPER_MAGIC      0xef53
 EXT4_SUPER_MAGIC      0xef53
-F2FS_SUPER_MAGIC      0xf2f52010
-FUSE_SUPER_MAGIC      0x65735546
-FUTEXFS_SUPER_MAGIC   0xbad1dea  /* Unused */
+F2FS_SUPER_MAGIC      0xf2f5\[aq]2010
+FUSE_SUPER_MAGIC      0x6573\[aq]5546
+FUTEXFS_SUPER_MAGIC   0xbad\[aq]1dea  /* Unused */
 HFS_SUPER_MAGIC       0x4244
-HOSTFS_SUPER_MAGIC    0x00c0ffee
-HPFS_SUPER_MAGIC      0xf995e849
-HUGETLBFS_MAGIC       0x958458f6
+HOSTFS_SUPER_MAGIC    0x00c0\[aq]ffee
+HPFS_SUPER_MAGIC      0xf995\[aq]e849
+HUGETLBFS_MAGIC       0x9584\[aq]58f6
 ISOFS_SUPER_MAGIC     0x9660
 JFFS2_SUPER_MAGIC     0x72b6
-JFS_SUPER_MAGIC       0x3153464a
+JFS_SUPER_MAGIC       0x3153\[aq]464a
 MINIX_SUPER_MAGIC     0x137f     /* original minix FS */
 MINIX_SUPER_MAGIC2    0x138f     /* 30 char minix FS */
 MINIX2_SUPER_MAGIC    0x2468     /* minix V2 FS */
 MINIX2_SUPER_MAGIC2   0x2478     /* minix V2 FS, 30 char names */
 MINIX3_SUPER_MAGIC    0x4d5a     /* minix V3 FS, 60 char names */
-MQUEUE_MAGIC          0x19800202 /* POSIX message queue FS */
+MQUEUE_MAGIC          0x1980\[aq]0202 /* POSIX message queue FS */
 MSDOS_SUPER_MAGIC     0x4d44
-MTD_INODE_FS_MAGIC    0x11307854
+MTD_INODE_FS_MAGIC    0x1130\[aq]7854
 NCP_SUPER_MAGIC       0x564c
 NFS_SUPER_MAGIC       0x6969
 NILFS_SUPER_MAGIC     0x3434
-NSFS_MAGIC            0x6e736673
-NTFS_SB_MAGIC         0x5346544e
-OCFS2_SUPER_MAGIC     0x7461636f
+NSFS_MAGIC            0x6e73\[aq]6673
+NTFS_SB_MAGIC         0x5346\[aq]544e
+OCFS2_SUPER_MAGIC     0x7461\[aq]636f
 OPENPROM_SUPER_MAGIC  0x9fa1
-OVERLAYFS_SUPER_MAGIC 0x794c7630
-PIPEFS_MAGIC          0x50495045
+OVERLAYFS_SUPER_MAGIC 0x794c\[aq]7630
+PIPEFS_MAGIC          0x5049\[aq]5045
 PROC_SUPER_MAGIC      0x9fa0     /* /proc FS */
-PSTOREFS_MAGIC        0x6165676c
+PSTOREFS_MAGIC        0x6165\[aq]676c
 QNX4_SUPER_MAGIC      0x002f
-QNX6_SUPER_MAGIC      0x68191122
-RAMFS_MAGIC           0x858458f6
-REISERFS_SUPER_MAGIC  0x52654973
+QNX6_SUPER_MAGIC      0x6819\[aq]1122
+RAMFS_MAGIC           0x8584\[aq]58f6
+REISERFS_SUPER_MAGIC  0x5265\[aq]4973
 ROMFS_MAGIC           0x7275
-SECURITYFS_MAGIC      0x73636673
-SELINUX_MAGIC         0xf97cff8c
-SMACK_MAGIC           0x43415d53
+SECURITYFS_MAGIC      0x7363\[aq]6673
+SELINUX_MAGIC         0xf97c\[aq]ff8c
+SMACK_MAGIC           0x4341\[aq]5d53
 SMB_SUPER_MAGIC       0x517b
-SMB2_MAGIC_NUMBER     0xfe534d42
-SOCKFS_MAGIC          0x534f434b
-SQUASHFS_MAGIC        0x73717368
-SYSFS_MAGIC           0x62656572
-SYSV2_SUPER_MAGIC     0x012ff7b6
-SYSV4_SUPER_MAGIC     0x012ff7b5
-TMPFS_MAGIC           0x01021994
-TRACEFS_MAGIC         0x74726163
-UDF_SUPER_MAGIC       0x15013346
-UFS_MAGIC             0x00011954
+SMB2_MAGIC_NUMBER     0xfe53\[aq]4d42
+SOCKFS_MAGIC          0x534f\[aq]434b
+SQUASHFS_MAGIC        0x7371\[aq]7368
+SYSFS_MAGIC           0x6265\[aq]6572
+SYSV2_SUPER_MAGIC     0x012f\[aq]f7b6
+SYSV4_SUPER_MAGIC     0x012f\[aq]f7b5
+TMPFS_MAGIC           0x0102\[aq]1994
+TRACEFS_MAGIC         0x7472\[aq]6163
+UDF_SUPER_MAGIC       0x1501\[aq]3346
+UFS_MAGIC             0x0001\[aq]1954
 USBDEVICE_SUPER_MAGIC 0x9fa2
-V9FS_MAGIC            0x01021997
-VXFS_SUPER_MAGIC      0xa501fcf5
-XENFS_SUPER_MAGIC     0xabba1974
-XENIX_SUPER_MAGIC     0x012ff7b4
-XFS_SUPER_MAGIC       0x58465342
-_XIAFS_SUPER_MAGIC    0x012fd16d /* Linux 2.0 and earlier */
+V9FS_MAGIC            0x0102\[aq]1997
+VXFS_SUPER_MAGIC      0xa501\[aq]fcf5
+XENFS_SUPER_MAGIC     0xabba\[aq]1974
+XENIX_SUPER_MAGIC     0x012f\[aq]f7b4
+XFS_SUPER_MAGIC       0x5846\[aq]5342
+_XIAFS_SUPER_MAGIC    0x012f\[aq]d16d /* Linux 2.0 and earlier */
 .EE
 .in
 .PP

--------------2.39.0--


