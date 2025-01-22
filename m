Return-Path: <linux-man+bounces-2284-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CA8A18E3A
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2025 10:25:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4F6218892F9
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2025 09:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C2BA20F099;
	Wed, 22 Jan 2025 09:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="Eser8w6M"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB440170A15
	for <linux-man@vger.kernel.org>; Wed, 22 Jan 2025 09:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737537910; cv=none; b=SRi8lthyDlPRsTk+v05Jld1o1tijFOIO+FLVs85ZOI00A7RZOByZx+gVM4I9kSrLL7J5Ww+fRz00per6UKy60uFnT84Z8oI8KUo/Di9hcHt2CkvP+VxJJLQwdYKeWrJIqY2uwcLlJm5L9B4nuk9oNZnMoBw0d6C3BHQ5Y099eKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737537910; c=relaxed/simple;
	bh=+Ss5VjPjbvOfs4ui8bIxeHho+4zj7De2BzZysTdz+nE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cRkWoDpsr69vZp+A/4i8BQ12o9t7DcK/jMEIsy3e4p1SJ8HocPWFNqmr2TSJ9sGrR0Z0vFgkDlaDHv3nqQzmUDIBArV78AQ4KYfFYZG6Re4odxSNoeqjX1iERqWnhxncWUIVJd3NeckQLYneGNDagqbvDGyw+Iq8b2tDIRaBylM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=Eser8w6M; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1737537879;
	bh=EzrIf5LIGfZUAZqvdlZ4OnuJ6l1TRsfF+7EJbXLon40=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=Eser8w6MMomS1IFb2wNMdJblXhk4NPfjSUlBYyykXHnX4e1tsTJpbojzb2qhFnZXU
	 sGI2csmv7gYO4s4ZkNiUcsXnPbJGde9rvBNOaSUDJedm+cF1Q8gEqrLgEDHa5zuIJs
	 1U9jtnd5388JB1jyykMauy0kzqVOU5RHWBhMpFUs=
X-QQ-mid: bizesmtp88t1737537875tpq1mkwy
X-QQ-Originating-IP: 1FA/eviuASIF1K55vIQVJ/AKwPajvROztYPzVasja38=
Received: from localhost.localdomain ( [113.57.152.160])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 22 Jan 2025 17:24:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 4985039281966486937
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Chen Linxuan <chenlinxuan@uniontech.com>,
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: [PATCH] man/man2/mkdir.2: Add EOVERFLOW
Date: Wed, 22 Jan 2025 17:24:17 +0800
Message-ID: <A5A55492765B9570+20250122092417.811572-1-chenlinxuan@uniontech.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: OKKHiI6c9SH3FMBwA7yPlZAagLJ6kTgEU3ElWWG+9jh+1ZRJ1PRg5pFI
	DmkM1jO845EnRUgss4FuBXfYVpyTjVVvESODgeJvmpH4Zce5AiWnI0FOBgaxQI1JwUS4dLh
	liA2r9W+JFxNRA89Bm1bC6+LA/gqhc2E5qRyFenAvCjtmY7H54C7pDdA/bVJoEykIAGCwB9
	AjvGpjtQBRROc0BKh2JCcCnc6gTRLLzfIoIKntUeserEX5309erZdhUalUpX1DPkAV00pXI
	XRPiQEKCnjYMlDBQTyy6EpGyvMqbgNGKznh+MfvnyVsF4CjOJFjJMf5VR4hC8Lb3g22314h
	MR/lGusv1xVeDJKwDBkRZzHPm0fksAMrOm9G5H6uU7fw9+z2q6i37DrlIUnto7YjknvbdCj
	QW9KH1MpWnkqAryIwbTetGwXBly7gsYJlkW6TmLPSfdNMTOHR6Jfyai/VxSU8IT8f+5Jfh+
	tjctwJTD4T4fKQqrJ71Cr7dOEEor65P69L9G3T4uCVQUZ8LNJH4yoM9N3dUcRRvqbUdn+CC
	d/17xFE9KxQJlyqINfpeJ2P7Kh8CmmPWnDCIKqf89Il/Cbocb8HCNKf1ZKD716qgWIumU3C
	E+8KJpmDvdFD/yQZTBvACa6f6dlC1+0VhKc6v/36Bq+tj+jreNS5uyXXUBoiP+IeXc+kc2C
	wdGM6AFZp/4ClWpx45lO78IQPlffiPjvBvLH/lZlpCaO2LPYtfivmw6cYMQmgjLrvmpE/fb
	fgeLwfM3VRK1iT31TYymKPcHyHiGIjPwj9+bZN/r81UdiEbrBB8bDJhF5HDcH1RMt6AIAdD
	8wSjvuCk9+PxcTif3zmfx1azMa74AzZrC9cZzJJBZhXY6CDDexLz8V5vvtVR4uVxR6elr5n
	uBt6vy2pydOM0wFy+0RNWcUPEvkvoJ7V11+x2BZV8p61Vk7ZJGGgG8cBfCcUuPbWSdHcTqT
	gf3AJEcPOq9npo0K5mCAIhNqT+qL41/bdUBh73FAyuCE3UzoSm/CamcOJL4+itIdI7LE=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

`mkdir` and `mkdirat` might set errno to EOVERFLOW when UID or GID
mapping has not been configured. See
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=036d523641c66bef713042894a17f4335f199e49

Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
---
 man/man2/mkdir.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
index d84dbc27e..2af618d68 100644
--- a/man/man2/mkdir.2
+++ b/man/man2/mkdir.2
@@ -203,6 +203,10 @@ does not support the creation of directories.
 .B EROFS
 .I pathname
 refers to a file on a read-only filesystem.
+.B EOVERFLOW
+UID or GID mappings (see
+.BR user_namespaces (7))
+has not been configured.
 .SH VERSIONS
 Under Linux, apart from the permission bits, the
 .B S_ISVTX
-- 
2.43.0


