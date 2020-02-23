Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 65A77169A4E
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:41:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727159AbgBWVlo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:41:44 -0500
Received: from outpost.hi.is ([130.208.165.166]:35964 "EHLO outpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727156AbgBWVlo (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 23 Feb 2020 16:41:44 -0500
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLSolS000942
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 21:28:50 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is 01NLSolS000942
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLSlQG022870
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 23 Feb 2020 21:28:48 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 01NLSlQG022870
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 01NLSlNL001978;
        Sun, 23 Feb 2020 21:28:47 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 01NLSl5b001977;
        Sun, 23 Feb 2020 21:28:47 GMT
Date:   Sun, 23 Feb 2020 21:28:47 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man4/*: srcfix: Correct the misuse of two-fonts macros
Message-ID: <20200223212847.GA1956@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Changes are based on the latest (23th Februar 2020) revision of my
local git repository.

  Correct the misuse of a two-font macro, which function is to

1) use the first font for each odd numbered argument and the second
font for all others.

2) join the arguments without an intervening space.

  There is no change in the output.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man4/smartpqi.4 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index a8eef9f56..4646127fa 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -163,7 +163,7 @@ for an explanation of the
 .I lockup_action
 values.
 .TP
-.IR /sys/class/scsi_host/host*/driver_version
+.I /sys/class/scsi_host/host*/driver_version
 The
 .I driver_version
 attribute is read-only.
@@ -179,7 +179,7 @@ $ \c
 .EE
 .in
 .TP
-.IR /sys/class/scsi_host/host*/firmware_version
+.I /sys/class/scsi_host/host*/firmware_version
 The
 .I firmware_version
 attribute is read-only.
@@ -195,7 +195,7 @@ $ \c
 .EE
 .in
 .TP
-.IR /sys/class/scsi_host/host*/model
+.I /sys/class/scsi_host/host*/model
 The
 .I model
 attribute is read-only.
@@ -211,7 +211,7 @@ $ \c
 .EE
 .in
 .TP
-.IR /sys/class/scsi_host/host*/serial_number
+.I /sys/class/scsi_host/host*/serial_number
 The
 .I serial_number
 attribute is read-only.
@@ -227,7 +227,7 @@ $ \c
 .EE
 .in
 .TP
-.IR /sys/class/scsi_host/host*/vendor
+.I /sys/class/scsi_host/host*/vendor
 The
 .I vendor
 attribute is read-only.
-- 
2.25.0
