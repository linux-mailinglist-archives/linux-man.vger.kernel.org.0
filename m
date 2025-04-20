Return-Path: <linux-man+bounces-2788-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE25A947EA
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 14:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EE3E18941A3
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 12:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B64B1925A2;
	Sun, 20 Apr 2025 12:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="r69ukjq1"
X-Original-To: linux-man@vger.kernel.org
Received: from outbound.pv.icloud.com (p-west1-cluster5-host3-snip4-4.eps.apple.com [57.103.66.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CA81FDA
	for <linux-man@vger.kernel.org>; Sun, 20 Apr 2025 12:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=57.103.66.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745153266; cv=none; b=AOEaFGsfp/IuD0AI4dE5Ram+w0AhEvEm9JbQvtIcTOS39BCtov9LzxsMDp5IGPSwrUmQDx5MPuhyRc50U8jffYjedN+FdmbKuo2RlRSDBSGziP/ikB0C7maCxcmQ2DTCXTfvzhYV94wxGqUtRhD+fBMy5UQRrrOesuJZd4u2TP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745153266; c=relaxed/simple;
	bh=UHXOfGOVG9E5/oU3WXzXrrULV5c9BjWuXp8jyuHePmY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j2gplmoLKBKrO30flIRmN/Owi6b47JWeKW329lHk9is2g4+SM6RlzbnYAiSFPPi94HgEU+P4t2hlTtooA/I1I2QwPV+E7NOYpBglcsyBXwPWtmHUESjlpv3gxdW88hIHGEbKNeyD36sh3ExMqv05wgBodl16NqQyqBkVoxyFk58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=r69ukjq1; arc=none smtp.client-ip=57.103.66.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=XBkFPWGlyH1P9X6TtMuo9mBggXkeBQJLrs52GONBJxs=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme;
	b=r69ukjq1P3eH7hLq2iYgxPjHuFXZFxZM7D6LezBIEQ2xxMZaqZmeJKCAyFo0YflXr
	 WaWJea+S7eSxeApzSgo295sn0KT4AD1tduA7C8zeM30vbeXVWBFwgCjgPaC4aeru71
	 Gjsc5Vbi6fwheNA60jb8xKuDr+4aSoDP1p+e2fOfcp57uo4iThXyfja+Y/X5S1GKxR
	 5tiQ7pySfLmYF2Kfs+am+Al43mWF/qJtVOG2orXY7myezBV1eqWX48rXxFF/fXhM0T
	 U1mABPbEqdN08KVVxcUWP2X0tpp/Sn3D6CURxso55qYiUYCy1YoLzQMa6Qv8Q0RgAV
	 UXh6x38Z6TC2A==
Received: from localhost.localdomain (pv-asmtp-me-k8s.p00.prod.me.com [17.56.9.36])
	by outbound.pv.icloud.com (Postfix) with ESMTPSA id E1A4318004A2;
	Sun, 20 Apr 2025 12:47:40 +0000 (UTC)
From: Solomon T <wjsota@icloud.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Solomon T <wjsota@icloud.com>
Subject: [PATCH] man/man3/slist.3: Add missing argument
Date: Sun, 20 Apr 2025 12:44:48 +0000
Message-ID: <20250420124447.1552510-2-wjsota@icloud.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
References: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 2F7VYIp0BtaoSVUqhflsprXra5f3u9F_
X-Proofpoint-ORIG-GUID: 2F7VYIp0BtaoSVUqhflsprXra5f3u9F_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-20_05,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 clxscore=1015
 mlxlogscore=877 phishscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 adultscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2504200105

`SLIST_REMOVAL` has four arguments. This commit adds in the missing argument.

Fixes: bb8164dec0c4 (2020-10-22; "slist.3: ffix: Use man markup")

Signed-off-by: Solomon T <wjsota@icloud.com>
---
 man/man3/slist.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/slist.3 b/man/man3/slist.3
index 50cd1d452..ff68e72d6 100644
--- a/man/man3/slist.3
+++ b/man/man3/slist.3
@@ -57,7 +57,7 @@ Standard C library
 .\" .BI "SLIST_FOREACH_FROM_SAFE(struct TYPE *" var ", SLIST_HEAD *" head ,
 .\" .BI "                        SLIST_ENTRY " NAME ", struct TYPE *" temp_var );
 .P
-.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", struct TYPE *" elm ,
+.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", struct TYPE *" elm ", TYPE,
 .BI "                        SLIST_ENTRY " NAME );
 .BI "void SLIST_REMOVE_HEAD(SLIST_HEAD *" head ,
 .BI "                        SLIST_ENTRY " NAME );
-- 
2.43.0


