Return-Path: <linux-man+bounces-3480-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1654FB2B443
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 00:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B15BB622AC2
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 22:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E0026E6FF;
	Mon, 18 Aug 2025 22:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="VRWBSiwQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC02B1F12E0
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 22:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755557956; cv=none; b=Vn+oSmpDO+t2R0yiUtLyPsPlC1045DQYhClI90NwU8lRM2qicqRqINfkMa1UTvfrcdjy2IDPq/daGgK9lPzQvzQVJFpjl2G1K3UdIKQ8Vq3s9akcisS/4kCHQBFuM/Eu8ul6svhyKJnglWx6y7tW0atfo621eAusDhOBa5V1BsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755557956; c=relaxed/simple;
	bh=8FBI/ji76X/KR3lL7+1iJMlG6ea+O85RWWXUePR20RA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ltTGcak5yER8+KY1V/JTXIoTj28s8j1ERj7JJDe8YOBcDkkBHJvkthFJp67qDuREqnH5IT2pfZxurzm4qpgAMqO1sO1XrLmlE01BG5bmwvyN6a+WsGFDZ7G9NMysbBIR4LabEi+qBMPCLl5RsHPVgRLGl1LjOjOxcS15FELKMoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=VRWBSiwQ; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=ekbBHNPrTkEs11RVfQDF6UejxGACqGngVWe6+sx55Xk=; b=VRWBSiwQOxiA9obP
	fFztf+7CxH8iGItZUNn8MMBsVavmn29dfwESK/qH+YVvIcqCE6CKkGako/o1u2TQCStuEP8BEz8WP
	nSN8mvprh86S3R9Xs/camt+vvXsiqvcJleeF/tyjJu3zxwRbRgUMkQuX4z+jqElaSqHLKuHfQDgvm
	3LNAn+As07/XjLHFkB0CBBvH/vKlrUVpyvtjvnfgHvCKqgu5S8BYY7Mut7lKABO9An0wj//luCuCg
	xDlWOqNnXW3aTFqBZM8sMj/QALfHATMF+EFswGAEtF8U6y1zO8I1qqMHPiOWgmefQtese9nBoJ6zl
	qtQJqToP42CRdbRtag==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
	by mx.treblig.org with esmtp (Exim 4.96)
	(envelope-from <dave@treblig.org>)
	id 1uo8op-004iQD-12;
	Mon, 18 Aug 2025 22:59:11 +0000
From: dave@treblig.org
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	"Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH] man/man3/posix_spawn.3: Check for executable name in example
Date: Mon, 18 Aug 2025 23:59:10 +0100
Message-ID: <20250818225910.101238-1-dave@treblig.org>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

Make the example check for an executable name on the command line
rather than segfaulting in the child.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
 man/man3/posix_spawn.3 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man/man3/posix_spawn.3 b/man/man3/posix_spawn.3
index 3aaf3873e..0d238f51c 100644
--- a/man/man3/posix_spawn.3
+++ b/man/man3/posix_spawn.3
@@ -730,6 +730,11 @@ .SS Program source
             break;
         }
     }
+\&
+    if (!argv[optind]) {
+        fprintf(stderr, "Usage: %s [\-cs] executable [args]\[rs]n", argv[0]);
+        exit(EXIT_FAILURE);
+    }
 \&
     /* Spawn the child. The name of the program to execute and the
        command\-line arguments are taken from the command\-line arguments
-- 
2.50.1


