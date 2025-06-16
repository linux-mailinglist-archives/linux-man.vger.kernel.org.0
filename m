Return-Path: <linux-man+bounces-3151-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E366ADB231
	for <lists+linux-man@lfdr.de>; Mon, 16 Jun 2025 15:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A20823BB21B
	for <lists+linux-man@lfdr.de>; Mon, 16 Jun 2025 13:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2FE22ECEBD;
	Mon, 16 Jun 2025 13:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gl1Fy/Zr"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56632EACE3
	for <linux-man@vger.kernel.org>; Mon, 16 Jun 2025 13:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750080808; cv=none; b=QCyns/5cl0Bs0RssomoLBsEXF7iokcf1AxuqVcfHjGCiQcwKI1GovQsNT+I7mA+hUEvMGoHFCxVe9Rq4ygJT7TTngA+3UM56hevwZXB0fxBjVNBQo/LbOFGgcA4UzCnM7EJ/MsILuzPqb4WbJBqr2f47YG/ZFC8Jy4R/WvHwhXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750080808; c=relaxed/simple;
	bh=pQ5M6yZIOF0fuzALcr0q2v5yMMzx93bZkkMPyAg0uuw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YfgbUTUH2a/RX7mx7K3pQno4IoS3qRAW0e3oujkb3dfpruRg8OM+ibie4AuBJZdWftwTsoTqchvw4cyKeED3p4JHlM+25JZl1criLw5KbQqYrWhg+HxR4TMxUNqndUCCVYL7bfKmGxgn/tA5BeEUjV5Vg8lsLjJxXnEH4vLObP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gl1Fy/Zr; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750080805;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ZO8wI2H+EZujF13dRgeWUxHdzGwdYW7n3+myBMoLgSc=;
	b=gl1Fy/Zr9aVkCUpnL4GoLpOQmXsgi7vek+omXiq1jmRXqwqO8lxBk2pImbPpV3qlIpEiwM
	G11JBbYwOuYePugyTw3LX5R7tAHePGzF0K0suwmNzbpxT+dABsgruKtLYltUGU2XN8P5eY
	whZ7f/aHBsCByTlCe1tAYukIGoFgTQ4=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-675-b4f6fpvYN9m9bP-vM4zrow-1; Mon,
 16 Jun 2025 09:33:20 -0400
X-MC-Unique: b4f6fpvYN9m9bP-vM4zrow-1
X-Mimecast-MFC-AGG-ID: b4f6fpvYN9m9bP-vM4zrow_1750080799
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EF2E2195609F;
	Mon, 16 Jun 2025 13:33:18 +0000 (UTC)
Received: from carbon.redhat.com (unknown [10.45.225.108])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 183B219560A3;
	Mon, 16 Jun 2025 13:33:16 +0000 (UTC)
From: Jelle van der Waa <jvanderwaa@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jelle van der Waa <jvanderw@redhat.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>
Subject: [PATCH] man/man5/core.5: document the new %F identifier in core_pattern
Date: Mon, 16 Jun 2025 15:32:09 +0200
Message-ID: <20250616133212.131064-1-jvanderwaa@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

From: Jelle van der Waa <jvanderw@redhat.com>

Signed-off-by: Jelle van der Waa <jvanderw@redhat.com>
---
 man/man5/core.5 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man/man5/core.5 b/man/man5/core.5
index 556502214..b1361eea0 100644
--- a/man/man5/core.5
+++ b/man/man5/core.5
@@ -174,6 +174,11 @@ Pathname of executable,
 with slashes (\[aq]/\[aq]) replaced by exclamation marks (\[aq]!\[aq])
 (since Linux 3.0).
 .TP
+%F
+PIDFD of dumped process
+.\" commit b5325b2a270fcaf7b2a9a0f23d422ca8a5a8bdea
+(since Linux 6.16).
+.TP
 %g
 Numeric real GID of dumped process.
 .TP
-- 
2.49.0


