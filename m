Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DBE668E1B9
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:11:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjBGUL5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:11:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbjBGULz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:11:55 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 511E11C321
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:11:53 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id PSpnpqVImc9C4PUJlpYPA8; Tue, 07 Feb 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675800713; bh=l+qyiddfvvI9emP4zI1lWGQT1mjNhtgNhOJw7mK5GeM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=p0j5xLOagMVmfOt/mqgit1Egz4JToWWmCd4tGQ2Spt0KNl7cSi/yf6m9a5DlE0e+L
         8i2N4Ws4j6n1QtstGyWrdLYe4Z0EthYge3MysONL+LFTRCp5ErZpT/mMjZJGsQAMD9
         xEmAyXryYC0ct4DO6A1WvsmyulFWenWLwcKy9cq9bdJfJ2ozIKPR3ol13Fkt8tl6Lx
         Imf+vJGO9UU/GzFCtvat8yok6ALWFErMcFJNbMMsdOMCsYW4TKeZoRuX3oD/V/QQ1k
         CVE82kgsmyJSiBVcjfB1cWi6Ilu+CM6tpplvRdxuJltqKhvtDGQgGqafQntQ6nsnDG
         otNQxYJr7Fhzw==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUJlp7yPryAOePUJlpHLT6; Tue, 07 Feb 2023 20:11:53 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e2b089
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=2WzCN0r21_IaNLv3IZsA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 04/11] man2/open.2: punctuate octal perms with digit separators
Date:   Tue,  7 Feb 2023 13:11:25 -0700
Message-Id: <55dc9a52adaa99408437708f8141d44aade52464.1675800581.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
References: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Organization: Systematic Software
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfDlsJKH6lJ8NEQo1zR0oiT3moMN3DCWLin7AMHXw7FvO1pzg/9T2q2euoOSy74YSnlei4ipbwP2Alu4ZBShHS3ELeZz/tQujvuNGz0+O9HPoruuPSWa1
 hKxO+FQNHBACJV0bSyTfLHjPauWqIBs0gNf6vXOVCC6BijJ751JU2nuJtSutDjHQmrPoWg+mintAJIBZ7zBjxg6stBy3koQ53ujdBozp4dmtVCoa7ubrI+Rb
 DrPmrtF1OdFSGL03ogVK714I4Xu+mLEJzkXTCQrPVtXfWPd6TZCoHeSERcVPJl9Z
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/open.2 | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/man2/open.2 b/man2/open.2
index fc796e25537d..82e3e2102e7c 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -308,40 +308,40 @@ The following symbolic constants are provided for
 .RS
 .TP 9
 .B S_IRWXU
-00700 user (file owner) has read, write, and execute permission
+00\[aq]700 user (file owner) has read, write, and execute permission
 .TP
 .B S_IRUSR
-00400 user has read permission
+00\[aq]400 user has read permission
 .TP
 .B S_IWUSR
-00200 user has write permission
+00\[aq]200 user has write permission
 .TP
 .B S_IXUSR
-00100 user has execute permission
+00\[aq]100 user has execute permission
 .TP
 .B S_IRWXG
-00070 group has read, write, and execute permission
+00\[aq]070 group has read, write, and execute permission
 .TP
 .B S_IRGRP
-00040 group has read permission
+00\[aq]040 group has read permission
 .TP
 .B S_IWGRP
-00020 group has write permission
+00\[aq]020 group has write permission
 .TP
 .B S_IXGRP
-00010 group has execute permission
+00\[aq]010 group has execute permission
 .TP
 .B S_IRWXO
-00007 others have read, write, and execute permission
+00\[aq]007 others have read, write, and execute permission
 .TP
 .B S_IROTH
-00004 others have read permission
+00\[aq]004 others have read permission
 .TP
 .B S_IWOTH
-00002 others have write permission
+00\[aq]002 others have write permission
 .TP
 .B S_IXOTH
-00001 others have execute permission
+00\[aq]001 others have execute permission
 .RE
 .IP
 According to POSIX, the effect when other bits are set in
@@ -352,14 +352,14 @@ On Linux, the following bits are also honored in
 .RS
 .TP 9
 .B S_ISUID
-0004000 set-user-ID bit
+0\[aq]004\[aq]000 set-user-ID bit
 .TP
 .B S_ISGID
-0002000 set-group-ID bit (see
+0\[aq]002\[aq]000 set-group-ID bit (see
 .BR inode (7)).
 .TP
 .B S_ISVTX
-0001000 sticky bit (see
+0\[aq]001\[aq]000 sticky bit (see
 .BR inode (7)).
 .RE
 .TP
@@ -1319,7 +1319,7 @@ flags are not specified in POSIX.1-2001,
 but are specified in POSIX.1-2008.
 Since glibc 2.12, one can obtain their definitions by defining either
 .B _POSIX_C_SOURCE
-with a value greater than or equal to 200809L or
+with a value greater than or equal to 2008\[aq]09L or
 .B _XOPEN_SOURCE
 with a value greater than or equal to 700.
 In glibc 2.11 and earlier, one obtains the definitions by defining
-- 
2.39.0

