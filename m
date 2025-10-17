Return-Path: <linux-man+bounces-4177-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B47BBE897E
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 14:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 41DF84E4BEC
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 12:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6732550AD;
	Fri, 17 Oct 2025 12:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Qdw//Jvf"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A70332EDE
	for <linux-man@vger.kernel.org>; Fri, 17 Oct 2025 12:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760704286; cv=none; b=A21lYOlTADQX+9PLRVgn+w04JnMNjSP/gF2enYb2++S/lv9fIkuk++qJsBGS0VPkeqC2qcl6w0wDpq7t11TUpivXuX1ywvJzoz7/LLbRkX/Q3gVEiVMhYT4zTztjyvLnYHvBq5WKLQuLdKeS+TpJr2HrTC26VvfO9/Q8K77vcr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760704286; c=relaxed/simple;
	bh=iryzrSq6x3xLHArTlxCSZLnDxD/k8xJHRVDh7xLdoKI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-type; b=QopNY5BYhVLYZJf0Mg5Ts8TOjpBJHKxC8wZF1uyI/lqNTXJ8FT/mHHsthciEfL7Y+hsNvq4/thoPiGyj4suMz7jGQ7wPZj5ENHRRY2FB5cXe32RUj+tq25pwXmMd8zunDAvCalfISYB+fBOhW5afuMtrbgMK4nUy0ARRWLabsOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Qdw//Jvf; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760704283;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DG0y+6MzsRny/LKS1dLl1ACAZRvWDomxu+pGFY6cNm8=;
	b=Qdw//JvfH1Q6YrwcK/hYWiLy7iLDf0J5syK0YZnNiz/KUWSF3+8nyE5bAdu/kTgXwjZR3S
	Uap9TxF3FLUt/w+3VLexl7I76LpI/W2Mtifm+CfjveB2yCqt0QbgR/k2ugDePd3RpYqMB9
	6pN+cRe5xmKhdTa5q+IdY1x81olFpmY=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-629-U03A_dPqOkC8tOe_2_I4eg-1; Fri,
 17 Oct 2025 08:31:20 -0400
X-MC-Unique: U03A_dPqOkC8tOe_2_I4eg-1
X-Mimecast-MFC-AGG-ID: U03A_dPqOkC8tOe_2_I4eg_1760704279
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6775B19560B5;
	Fri, 17 Oct 2025 12:31:19 +0000 (UTC)
Received: from MiWiFi-R3L-srv.redhat.com (unknown [10.72.112.94])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 7E4E81956056;
	Fri, 17 Oct 2025 12:31:15 +0000 (UTC)
From: Baoquan He <bhe@redhat.com>
To: linux-man@vger.kernel.org
Cc: Baoquan He <bhe@redhat.com>,
	chrisl@kernel.org,
	baohua@kernel.org,
	alx@kernel.org
Subject: [PATCH v2] iman/man2/swapon.2: update priority section
Date: Fri, 17 Oct 2025 20:31:10 +0800
Message-ID: <20251017123110.321638-1-bhe@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

This update the description about default priority value which is
changed in kernel.

Link: https://lore.kernel.org/all/20251011081624.224202-1-bhe@redhat.com/
Signed-off-by: Baoquan He <bhe@redhat.com>
Cc: chrisl@kernel.org
Cc: baohua@kernel.org
Cc: alx@kernel.org
---
 man/man2/swapon.2 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
index df5e8d8c7ec6..20e213827733 100644
--- a/man/man2/swapon.2
+++ b/man/man2/swapon.2
@@ -60,9 +60,8 @@ These functions may be used only by a privileged process (one having the
 capability).
 .SS Priority
 Each swap area has a priority, either high or low.
-The default priority is low.
-Within the low-priority areas,
-newer areas are even lower priority than older areas.
+The default priority is the lowest,
+and all default areas share the same priority value, -1.
 .P
 All priorities set with
 .I swapflags
-- 
2.41.0


