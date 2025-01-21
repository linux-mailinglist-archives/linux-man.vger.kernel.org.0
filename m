Return-Path: <linux-man+bounces-2279-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0783AA17637
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 04:15:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33948169910
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 03:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B8F187346;
	Tue, 21 Jan 2025 03:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="Qyyxu+zI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9EF4689
	for <linux-man@vger.kernel.org>; Tue, 21 Jan 2025 03:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.19.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737429305; cv=none; b=k1dx4CR8ChwhlY8Q6ZaLeVyxv/ChDUVAGJFK5P72NU1gZGeDXKKygrCY+C4d48I5TBqHIOv1Hve3OQ+EPoQ1k/MZ8LdxRB99cNI7oxQgFfFyzfJ69AVWPMJ6/N3SLThqOw5Z7B2NjmiqNlgycmuM6rqmJ+69BAORMgJMV5fQ7Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737429305; c=relaxed/simple;
	bh=bTDPVS0IzXvkKTimNHB3C9FpFMJ5ztJ0g9TbYfpZJa4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hPKTSk24JOvMVrrtuMgiy2GdOk3f4LGZm9RSaEBenGeyqpPy8eaCwIW5dXIhoxH/nX923KuD/M1mkBPW0OLpb0IySNGxzrlGe67KMTnGNfxU7DuQWfLxB3XevV+YwHoMkvYFbADBvE16HTW6TOgKGKr5TQeEjiPOI/kguJMPKz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=Qyyxu+zI; arc=none smtp.client-ip=54.207.19.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1737429275;
	bh=an1XpGWuqnNZMPvAsrQYGPYnMwO4Qe6wnDkY02HO1Qk=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=Qyyxu+zI+Cxm3rA5m5GlC6EFJKKuxUrIDmhHK7xznzflnBEp38xsOadmmMeeF0GKr
	 HbjRwEwF4cLW3v1LzICEDcke2iQHoFV/5lpWKCy62nPr3q3v05QfcHD7JKDFBtL8nf
	 M3QC3rvm9usNev97feuaBTWfoKVtzT2JxJITnyGk=
X-QQ-mid: bizesmtpsz10t1737429270thanx2
X-QQ-Originating-IP: gVB1yW/VYZtoOgKGLefoZwZRVlZgDLsx65THukbxtFo=
Received: from localhost.localdomain ( [113.57.152.160])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 21 Jan 2025 11:14:29 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 3859439278329505939
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Chen Linxuan <chenlinxuan@uniontech.com>
Subject: [PATCH] man/man2/clone.2: Use munmap() to free child stack
Date: Tue, 21 Jan 2025 11:13:51 +0800
Message-ID: <647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: N17Koc4oSm0pgjFDwTOhwV/bdjkmuJTWrceeIi70C/akwv/o0dBhqpj2
	qYh4HH5KDRo7fO08Avu5ecGkr/NVn2Jce6649e6aUjzSbkE7iep2SjMtabnUpd3sgFBgglh
	vBJ/XQVYu54TExMeW7PVLe/AJGwdmoLXHCVea+39ozAoWu92WulU0jMwbZXcTS7qsTEP9rP
	uZay84dGMOPYZXMizOHTTHoSlxp23kOkY3EJ83kIo0GN1RZigCYSyouGmm1bRM/8kpEaAVn
	xjWlGD3puFNExQh/PsNM1BsNHAQkgwdx/5u+bP0d5HFgGBNgRBCKnCUPlh49rRcmsLEoHoH
	ePMVyXbEqr60jUUzx+xBghARV33cyxpX+DkOVy+ZisNCuDO/N+niEOPUjXxEor0VgRmVgBR
	ZkPkMNsR9B7uSTko7BUcRhdNFffhFFSPC71OBZwOrv0VvUkDWxDhLTIvbnjsvpnUA0ADSfR
	w3HSV58BUZVVU9IL7mm542Qno5NPoZ9VQH8cmcZc0rOJcQbN3uMtMijzYXVe3srCabHJs6r
	DGZIMHGzNdZY0D7sfZ6R+nv+mP+3cGNxHWXwZg4p6BvK2uGLYF+aXfUr3+BlAOzXVWCztMl
	fIFz3UAOiFqjWJAJ9S7juRj9agEVxWnhiYdOMYroktqhxyzxImGPyaKJ4gLOWuaVLUUCaYh
	xSqgwgwqzeM9OdneCVKHH3ms+86/bxgFtjh8pl52HZ6dt5/3430ekeHNLJbN57ZQo94u3dh
	1ZPL0P9+KyygA4zeL+UCj7S1Y5D8rV5YR4DI3OK7ZLqSZlKC/Iiq1SwjHMl37jo7z84GYQA
	CDehK1lQK8KhB31u2h+okq5fOif/q9ncq4FVoUeRSOWgDRXJ92Fq1GFxl11ElgYWCr9A8SJ
	qd5z6J+yq+dnSogJmjbVOZix8jn/fs2TAkUuV75WqQSMcTGoqZ/LQAIHj55l+RsXYS9m1lG
	50nJhQ2U1E4SeAdKR6E/je6LSItxqn8HvcUdGJb4yksAghvHCQBjGyiOF
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

While reading the help manual for clone.2, I notice that the parent
process in the example code does not release the stack of the child
process.

This is not a problem for the example program, but it is somewhat
misleading.

Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
---
 man/man2/clone.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 3ffe8e7b8..5e6b2ef1f 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -1910,6 +1910,8 @@ main(int argc, char *argv[])
        child commences execution in childFunc(). */
 \&
     pid = clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, argv[1]);
+    if (munmap(stack, STACK_SIZE))
+        err(EXIT_FAILURE, "munmap");
     if (pid == \-1)
         err(EXIT_FAILURE, "clone");
     printf("clone() returned %jd\[rs]n", (intmax_t) pid);
-- 
2.43.0


