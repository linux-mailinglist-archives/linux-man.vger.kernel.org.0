Return-Path: <linux-man+bounces-3477-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F14B2AFBB
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 19:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DBF018A3FB0
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 17:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CADC62D249B;
	Mon, 18 Aug 2025 17:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="ERAybNiQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB602D2482
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 17:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755539157; cv=none; b=oGS9+GgXMt1V1OmRDyIl2odtTiuwFOFGUQFduhJtTIE0xwmRx41kitL7zPW0mmkUYgPm4LcwcIbDGtHpG5gO8JDansNE+HR3LXDLfKIhzht0WLFBpAnSM/YUTz4Q7y+Jrz25iPNc4MxWBjaNjMLnu0UYk/ZgP7BFaDRZgP6z7rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755539157; c=relaxed/simple;
	bh=B086LUYzqu3cLbF00UDWAC/pJuX7b0p47rLolKE/3fg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hyXDb0M4e5rlCZPQSRqSy05fDcNEf0MtzR0lx4V7h77sBpStbdG/ue1CzN9tfss8RG8yl7HqfAOp2d+TsCKMpCuXmjfjXfWxJgnDRUqQ3bSoi+Q88CTNuuteV0WFmxOMzA5lulgXrZCT5cWgsVWkCRw1XKMa3subKKHXsrnSby0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=ERAybNiQ; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=xyc/nX4feuMWYNo11WA67vZkWvERp0o1aPP568mesg4=; b=ERAybNiQ6yPiv7jd
	3oJ0aAwGPvMiA2+3aYcTWMDcC9Y8wCXYrVsfy9MEjCETG/dUKusu7FVKayRTI9DZL6bfN4lItnOiE
	P1CfBR/gKRyRmMea9pe2ESh53yTa11dFehbzasWtZ/EZO5JOy+tWCwkOgmm30J84WHHqJcy9c1y4M
	SnKthc+hi9OmZB4+A9pntsixunPfuPMmVqwqBXfarcw4ItqggxrQK8+soHakynUu40mBLCRxHICI+
	RkLMcNFp6A3Nnxj40Y/hSpZg06Crmop4xuSQvZSRlomSVCUcowswVxu1X1I80RRvWucpLiMW+NaoK
	NnNXhDokicvOHpvL8A==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
	by mx.treblig.org with esmtp (Exim 4.96)
	(envelope-from <dave@treblig.org>)
	id 1uo3vd-004f2N-1f;
	Mon, 18 Aug 2025 17:45:53 +0000
From: dave@treblig.org
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	"Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH v2] man/man3/strftime.3: Check parameter
Date: Mon, 18 Aug 2025 18:45:53 +0100
Message-ID: <20250818174553.70132-1-dave@treblig.org>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

The strftime example requires a format paramter.  If you don't
pass one it crashes.
Check for the parameter.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
 v2
    Use a more standard Usage: format.

 man/man3/strftime.3 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
index 4a3f805bb..a27dfd01b 100644
--- a/man/man3/strftime.3
+++ b/man/man3/strftime.3
@@ -739,6 +739,11 @@ .SS Program source
     char outstr[200];
     time_t t;
     struct tm *tmp;
+\&
+    if (argc != 2) {
+        fprintf(stderr,"Usage: %s: <format\-string>\[rs]n", argv[0]);
+        exit(EXIT_FAILURE);
+    }
 \&
     t = time(NULL);
     tmp = localtime(&t);
-- 
2.50.1


