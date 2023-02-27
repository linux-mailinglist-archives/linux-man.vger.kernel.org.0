Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 919426A4DF6
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 23:24:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229906AbjB0WYY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 17:24:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230052AbjB0WYX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 17:24:23 -0500
X-Greylist: delayed 1321 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 27 Feb 2023 14:24:22 PST
Received: from 66-220-144-178.mail-mxout.facebook.com (66-220-144-178.mail-mxout.facebook.com [66.220.144.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46AE71ADF7
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 14:24:22 -0800 (PST)
Received: by dev0134.prn3.facebook.com (Postfix, from userid 425415)
        id AA33C80546BA; Mon, 27 Feb 2023 14:02:08 -0800 (PST)
From:   Stefan Roesch <shr@devkernel.io>
To:     kernel-team@fb.com
Cc:     shr@devkernel.io, linux-mm@kvack.org, riel@surriel.com,
        hannes@cmpxchg.org, linux-man@vger.kernel.org,
        akpm@linux-foundation.org
Subject: [PATCH v1] prctl: add flags to enable KSM at the process level
Date:   Mon, 27 Feb 2023 14:02:06 -0800
Message-Id: <20230227220206.436662-1-shr@devkernel.io>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,HELO_MISC_IP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_NEUTRAL,TVD_RCVD_IP autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This adds two new flags to the prctl documentation: PR_SET_MEMORY_MERGE
and PR_GET_MEMORY_MERGE. The flags allow to enable KSM (kernel samepage
merging) at the process level and query is state.

The "mm: process/cgroup ksm support" patch series has been posted to the
mm mailing list and it enables this feature.

Signed-off-by: Stefan Roesch <shr@devkernel.io>
---
 man2/prctl.2 | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 2212331af0e4..d10334484bf7 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -591,6 +591,26 @@ the current per-process machine check kill policy.
 All unused
 .BR prctl ()
 arguments must be zero.
+.\" prctl PR_SET_MEMORY_MERGE
+.TP
+.BR PR_SET_MEMORY_MERGE " (since Linux 6.4)"
+Enable the KSM (kernel samepage merging) feature for this process. If
+.I arg2
+is nonzero, KSM gets enabled for this process. Child processes will inhe=
rit the
+setting.
+.IP
+The calling process must have the
+.B CAP_SYS_RESOURCE
+capability.
+.\" prctl PR_GET_MEMORY_MERGE
+.TP
+.BR PR_GET_MEMORY_MERGE " (since Linux 6.4)"
+Return (as the function result) if KSM (kernel samepage merging) has bee=
n
+enabled for this process. All unused prctl() arguments must be NULL.
+.IP
+The calling process must have the
+.B CAP_SYS_RESOURCE
+capability.
 .\" prctl PR_SET_MM
 .TP
 .BR PR_SET_MM " (since Linux 3.3)"

base-commit: 53a7e5dfc3554a2e8dbdfdc4504e99652e1d6382
--=20
2.30.2

