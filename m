Return-Path: <linux-man+bounces-2246-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A86A13A2D
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 13:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E51283A7BDD
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 12:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D101DE8B7;
	Thu, 16 Jan 2025 12:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="aUJ4RTZd"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7691DE4EA
	for <linux-man@vger.kernel.org>; Thu, 16 Jan 2025 12:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737031607; cv=none; b=o4QDDGRG/sC+NAT92s+ngF+TeCSQ2sDbFOai5f3J0KrrUx/pbxsqxrpRMA2zd4Z0SCLYMlCiz6amoqEoYyOdGCL8k24Z/YQJRUUAstYYgOEIxdxwaUyEkFzSbhLZp6sqYLNoNjuifq4A/zKYUKLU+9qQ3Zk8qwjMe/xSGB8y5nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737031607; c=relaxed/simple;
	bh=gg387Pqxlm7HewJ3mPc+6XvzPEVSna7KZWXoaPpM7Yk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-type; b=FmYi1LAiTXdZRY5UMLjAln+yjFgaoDz8dFaxcW67MDVWgMxFUbBOCEOh23Ke4YlTOjBS0cN+udVql0FPFepCEYZ5BHW8P29ztb6fafvmJJi+ugIcryhvmFnyITDbuwdhlbWKrcwNVG6OnwJcHkjnNhL5yc1ONHuk5eErUw74FvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=aUJ4RTZd; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737031604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gPpbF5SoiqNaVSk//w8VuOWK6IzTz0Jex5iwN1xlcH8=;
	b=aUJ4RTZdQHM9Nskw7nLZhyq+aWAObeUMNA8JGBv03TRSwocuCAtg2OLxF+ApBik5n4LnvO
	W1/YMmGs1Ke0od/QVrZWE5em1Zs7yjeHTdPsACudHfwSwx42UTYRvemVoAP1nPgGJw6gzs
	93vtwqOi+WvrsC67drCm1AOSpwHjyXc=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-126-sKfSB8tFMRKNWgo7GaRyjg-1; Thu,
 16 Jan 2025 07:46:41 -0500
X-MC-Unique: sKfSB8tFMRKNWgo7GaRyjg-1
X-Mimecast-MFC-AGG-ID: sKfSB8tFMRKNWgo7GaRyjg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4775E1956066;
	Thu, 16 Jan 2025 12:46:40 +0000 (UTC)
Received: from isengard.. (vm-10-0-109-147.hosted.upshift.rdu2.redhat.com [10.0.109.147])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 87D7C1956060;
	Thu, 16 Jan 2025 12:46:39 +0000 (UTC)
From: Phil Auld <pauld@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] sched: Mention autogroup disabled behavior
Date: Thu, 16 Jan 2025 12:46:54 +0000
Message-ID: <20250116124654.2365691-1-pauld@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40

The autogroup feature can be contolled at runtime when
built into the kernel. Disabling it in this case still
creates autogroups and still shows the autogroup membership
for the task in /proc.  The scheduler code will just not
use the the autogroup task group.  This can be confusing
to users. Add a sentence to this effect to sched.7 to
point this out.

Signed-off-by: Phil Auld <pauld@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>

---
 man/man7/sched.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man7/sched.7 b/man/man7/sched.7
index 71f098e48..f0a708cd7 100644
--- a/man/man7/sched.7
+++ b/man/man7/sched.7
@@ -724,6 +724,8 @@ in the group terminates.
 .P
 When autogrouping is enabled, all of the members of an autogroup
 are placed in the same kernel scheduler "task group".
+When disabled the group creation happens as above, and autogroup membership
+is still visible in /proc, but the autogroups are not used.
 The CFS scheduler employs an algorithm that equalizes the
 distribution of CPU cycles across task groups.
 The benefits of this for interactive desktop performance
-- 
2.47.0


