Return-Path: <linux-man+bounces-4174-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D44FDBE741B
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 10:48:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69ACC1AA0BBF
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 08:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2044123BF91;
	Fri, 17 Oct 2025 08:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Fw9KY6US"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E6C296BCB
	for <linux-man@vger.kernel.org>; Fri, 17 Oct 2025 08:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760690857; cv=none; b=uXHbTdLQ9kVJDkVm2qAfc88w9Vh3vV/OSlNvUFIKF09TD09zZUntxdrELGQskVeTat9cMzokLyJw4HBtLBk42E4ibab+rTFJsAtpfoHOubwfR2hVjqxNyKeyEr3CnTeZYfOcbnio46a+ZV315Tm5ysIfHdoOms5OrS66CNbxG50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760690857; c=relaxed/simple;
	bh=XBVQKSujFaEyjXkG0jVUOrqJmcdAesSNBm8jqAULd5M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-type; b=rDJ70afs9u1epEUbXZAnnWE/+NFQWwXN/648VcUr0lbv84b//yPXrRfMDPvSNjmnCl88N9/ixZBdOdPsd5Bdv15/y/r7jTAtKLnvJFF4xzm0vKttCFuGEPEX4B0UfOH8snVl98qTpQILd03h0pwH0mL0ayMLBXeRup7vrRFSIDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Fw9KY6US; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760690855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oWHKmyRGDnijKGetuUi8i7DuKqQ4X+F9JLfgCF6E7V8=;
	b=Fw9KY6USojMImFSf8Qa1wncOFDLSNw1rj3SeTbLhDEnoBm83nokAuR2s7gIzbadnB+IHtz
	F4pN+4ZUh2519+ZFpgvJFvW8aAA9mY0PYGHf/C4DCcFBubF7gyYteqvjB5PHB9Obnba8DD
	5UTQadP7w9AGbK3F+YDf7vbRXiurvOg=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-482-JMfg9ljqNleHJwnsPdIqfA-1; Fri,
 17 Oct 2025 04:47:33 -0400
X-MC-Unique: JMfg9ljqNleHJwnsPdIqfA-1
X-Mimecast-MFC-AGG-ID: JMfg9ljqNleHJwnsPdIqfA_1760690852
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 55C901800451;
	Fri, 17 Oct 2025 08:47:32 +0000 (UTC)
Received: from MiWiFi-R3L-srv.redhat.com (unknown [10.72.112.94])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 8DBBE1800579;
	Fri, 17 Oct 2025 08:47:29 +0000 (UTC)
From: Baoquan He <bhe@redhat.com>
To: linux-man@vger.kernel.org
Cc: Baoquan He <bhe@redhat.com>,
	chrisl@kernel.org,
	baohua@kernel.org,
	alx@kernel.org
Subject: [PATCH] iman/man2/swapon.2: update the description about default priority value iman/man2/swapon.2: update priority section
Date: Fri, 17 Oct 2025 16:47:25 +0800
Message-ID: <20251017084725.318029-1-bhe@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93

This update the description about default priority value which is
changed in kernel.

Link: <https://lore.kernel.org/all/20251011081624.224202-1-bhe@redhat.com/>
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


