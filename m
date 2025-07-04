Return-Path: <linux-man+bounces-3246-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA97DAF9735
	for <lists+linux-man@lfdr.de>; Fri,  4 Jul 2025 17:43:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7112C3BE314
	for <lists+linux-man@lfdr.de>; Fri,  4 Jul 2025 15:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E43B2BE7A0;
	Fri,  4 Jul 2025 15:42:52 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from zulu.geekplace.eu (zulu.geekplace.eu [5.45.100.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA562D46A7
	for <linux-man@vger.kernel.org>; Fri,  4 Jul 2025 15:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.45.100.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751643772; cv=none; b=GP1eYf0cE291xhDVXuEU//K2HYVIvdUTk8gfnFBV204uYqsLelBPsun7kxLZArbHGQn9sJhdtkoDzc7ahCUrW1zedNve13kFL/TniggPSu2zvNDcak/UQIrhY9R+zqEbytjPsI7B82ktG/t56WeLaUwUO2cYHgKXR8oODFSld7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751643772; c=relaxed/simple;
	bh=uWko04obAjBA2SISiE1tAKjTMuycRmjno4bsVgeT7/M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bhfAXCtXiEDo9C2yImaNkT0pmzg8BkJtEYq8if5KljUOd029MEylZEW+cfJ8qSqK1P+NN7WBuVz/BQOyLTiCtZbiiG8B3y8DG72l+a1PXsz02opO4tR2XlnWDMAri+ZJ1Aewxlx4acszh42nq+JPlnXE1dZsLr1oaA/QthiiXxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=geekplace.eu; spf=pass smtp.mailfrom=geekplace.eu; arc=none smtp.client-ip=5.45.100.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=geekplace.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geekplace.eu
Received: from neo-pc.sch (unknown [IPv6:2001:4091:a247:81dc:34fb:50ff:feac:591b])
	by zulu.geekplace.eu (Postfix) with ESMTPA id C3DB74A008B;
	Fri,  4 Jul 2025 17:36:33 +0200 (CEST)
From: Florian Schmaus <flo@geekplace.eu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Florian Schmaus <flo@geekplace.eu>
Subject: [PATCH] PR_GET_TIMING2.const: Fix typo: s/SET_TIMING/GET_TIMING
Date: Fri,  4 Jul 2025 17:36:30 +0200
Message-ID: <20250704153630.1236769-1-flo@geekplace.eu>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Florian Schmaus <flo@geekplace.eu>
---
 man/man2const/PR_GET_TIMING.2const | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2const/PR_GET_TIMING.2const b/man/man2const/PR_GET_TIMING.2const
index fa62b2fe2c94..0fc0f6c0ed41 100644
--- a/man/man2const/PR_GET_TIMING.2const
+++ b/man/man2const/PR_GET_TIMING.2const
@@ -15,7 +15,7 @@ Standard C library
 .BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
 .B #include <sys/prctl.h>
 .P
-.B int prctl(PR_SET_TIMING);
+.B int prctl(PR_GET_TIMING);
 .fi
 .SH DESCRIPTION
 Return which process timing method is currently
-- 
2.49.0


