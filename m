Return-Path: <linux-man+bounces-1314-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A95924FF6
	for <lists+linux-man@lfdr.de>; Wed,  3 Jul 2024 05:52:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D76F21C229C4
	for <lists+linux-man@lfdr.de>; Wed,  3 Jul 2024 03:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216C017C74;
	Wed,  3 Jul 2024 03:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b="s9OZD3LE"
X-Original-To: linux-man@vger.kernel.org
Received: from esa2.hc1455-7.c3s2.iphmx.com (esa2.hc1455-7.c3s2.iphmx.com [207.54.90.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C6417BCA
	for <linux-man@vger.kernel.org>; Wed,  3 Jul 2024 03:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.54.90.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719978753; cv=none; b=m1HYZocodUetXV8M0esdpbi+lls8L42f2e3ELiJVU9dMchruPOS1L6vceFv9EFzsMvL2aBdzXgWZZ53GAmrsJtjw4L8nWuDkmLncuikNBKugImk8b4uu6KluYESk/vmfsEsk8c2BRas8y5pK/4j2HAU1czzvfbFfSnFouJRPQSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719978753; c=relaxed/simple;
	bh=QAO5/EYJ3xgpRCk/sYc5O4b3Z0wrG1YDPzfSzLctsdI=;
	h=From:To:Cc:Subject:Date:Message-Id; b=WPdASv3gxl7O0O24HkWJay9OyN+4E4Hv6kT6jaSKPsaXHCCDmXvlUelnQXc13Lpa7gzEdSHEq29BtwP9qcv2UA0zE2/4Ck7ul+k9i5EW0GVKpuKFJ/0q+gMehcBZgR/MfEaWLZTfQCUg6Qdc5pZrnzEBGhJc23/3YP0lu2PvN30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fujitsu.com; spf=pass smtp.mailfrom=fujitsu.com; dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b=s9OZD3LE; arc=none smtp.client-ip=207.54.90.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fujitsu.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fujitsu.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1719978751; x=1751514751;
  h=from:to:cc:subject:date:message-id;
  bh=QAO5/EYJ3xgpRCk/sYc5O4b3Z0wrG1YDPzfSzLctsdI=;
  b=s9OZD3LEA/nauPW66Fld4cntkS575eiDbi2oiktFlRJVIvA7rGYfbbWl
   Eq1sM+GnGUZQo/lNgZZfAYu2r2m7FMaZSH4Y/AidhzW370knDEYs18hlJ
   BMydZkIkh+dsyaqpbsIEokSXbeqvXf9dE3cGXnMwf4sO+5Dxj8BHwS4n4
   6gaBnmepqtT8X778BwHvM90vrKRmxHY8965JL1cqxvN0CdN04TFuPx6gZ
   tFYYds4eCird1sAjp9M9ZT0IApxBJzoUVUFtfJAnqAl31d2VM0kZJT1WS
   6Ha+GyA3dW0Mxs/oFTjiysrrKX/cdSHi6po+DIAnk1w6Xwn4hSMXMDMDC
   A==;
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="165772533"
X-IronPort-AV: E=Sophos;i="6.09,181,1716217200"; 
   d="scan'208";a="165772533"
Received: from unknown (HELO oym-r3.gw.nic.fujitsu.com) ([210.162.30.91])
  by esa2.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2024 12:51:20 +0900
Received: from oym-m1.gw.nic.fujitsu.com (oym-nat-oym-m1.gw.nic.fujitsu.com [192.168.87.58])
	by oym-r3.gw.nic.fujitsu.com (Postfix) with ESMTP id 4697FD64AB
	for <linux-man@vger.kernel.org>; Wed,  3 Jul 2024 12:51:17 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m1.gw.nic.fujitsu.com (Postfix) with ESMTP id 8BD3CD8B8B
	for <linux-man@vger.kernel.org>; Wed,  3 Jul 2024 12:51:16 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 195EA2005018E
	for <linux-man@vger.kernel.org>; Wed,  3 Jul 2024 12:51:16 +0900 (JST)
Received: from localhost (unknown [10.167.226.69])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 9825F1A000B;
	Wed,  3 Jul 2024 11:51:15 +0800 (CST)
From: Ma Xinjian <maxj.fnst@fujitsu.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Ma Xinjian <maxj.fnst@fujitsu.com>
Subject: [PATCH] utime.2: ERRORS: add EFAULT
Date: Wed,  3 Jul 2024 11:51:09 +0800
Message-Id: <20240703035109.6087-1-maxj.fnst@fujitsu.com>
X-Mailer: git-send-email 2.18.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28504.001
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28504.001
X-TMASE-Result: 10--4.661700-10.000000
X-TMASE-MatchedRID: wjdoQEOKyrakSoeAfA+QP07nLUqYrlslFIuBIWrdOePCPXSO232P77YA
	CDHDlRTxCJf68FH5PPF3ZVcbJy0H7gzyMxeMEX6wFEUknJ/kEl5MvUK9rYp8a9PokMAKQp/bFdA
	//ep4QUPdB/CxWTRRu+rAZ8KTspSzk8rEDQk6kNtB3LYh4pIUgTH+rRdSK9AgjPRrpEeBKH/fHK
	sZJfiBbWtztcN0ZFmuTHqfsbQTz+5NFn2qAXWmTlGzUgIUh/8CiB6mlDKe1V7S/yytHeCN9GXv4
	CQeNUk7G6qTOwq/n71+3BndfXUhXQ==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>

Signed-off-by: Ma Xinjian <maxj.fnst@fujitsu.com>
---
 man/man2/utime.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man/man2/utime.2 b/man/man2/utime.2
index f4858d3e3..253f1fd3a 100644
--- a/man/man2/utime.2
+++ b/man/man2/utime.2
@@ -7,6 +7,7 @@
 .\" Modified 1995-06-10 by Andries Brouwer <aeb@cwi.nl>
 .\" Modified 2004-06-23 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\" Modified 2004-10-10 by Andries Brouwer <aeb@cwi.nl>
+.\" Modified 2024-07-03 by Ma Xinjian <maxj.fnst@fujitsu.com>
 .\"
 .TH utime 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
@@ -132,6 +133,10 @@ or the
 .B CAP_FOWNER
 capability).
 .TP
+.B EFAULT
+.I filename
+points outside the process's address space.
+.TP
 .B ENOENT
 .I filename
 does not exist.
-- 
2.18.1


