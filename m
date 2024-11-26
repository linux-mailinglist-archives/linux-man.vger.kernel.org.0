Return-Path: <linux-man+bounces-2074-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E049D9B90
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2024 17:34:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4519DB2E25F
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2024 16:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 499891D7986;
	Tue, 26 Nov 2024 16:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GzafxUqu"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A681D63E3
	for <linux-man@vger.kernel.org>; Tue, 26 Nov 2024 16:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732637531; cv=none; b=Mz18RUJUS2AQ6S1cS0Ozb2ufwIoXE9fYOd1rJ02DMp1BnG9Tz15VMzPmYMUizCO0EN1uRyPOCQECxywVN815N2Z5H5hNZYRe+JfJ42UrSx5rLczTV/Fv6jpHPbguzVawWKlSMw7GQFs/I7YkOvSyRwY6sR7gkehsEG7UG/7Z+gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732637531; c=relaxed/simple;
	bh=qaanb4SBRcIy8tHbWuhiw9SYSMpffhH757JgZYRxEnA=;
	h=From:Date:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=toyALQnk0Vv4OIN6+X0WRfLidhJp+smVIGhcTx6AecoQPxxC8jD65rMKPXQILBKzcYBiSh6zAtwqFgJRG7/mAJEavV6qv6hXuL2bi6JM5GFb29uO2m8Y6aCgXKLAivRLCbb+2TqCEVFyhJADF88qEUmuQ9TuTdf2kTUCIVEDN1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GzafxUqu; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732637528;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=qaanb4SBRcIy8tHbWuhiw9SYSMpffhH757JgZYRxEnA=;
	b=GzafxUquEeqRKj9o3QVPpAJgo+pF0coK72rb6+W72UgKZ0LMj8B7PPGt2aOZUZKr2dzWcg
	hoFj3QrLqLqvGeftyy4HIJPbQ2AD/5YZeDpfya+PRWrOC5qupcnwn8tjQxUSUBjhLgDbt7
	plkaUZcc7KXAOul25MmpEPBGDIUHBAk=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-121-cQauTxoQOn-XI1bzZn7fLA-1; Tue,
 26 Nov 2024 11:12:05 -0500
X-MC-Unique: cQauTxoQOn-XI1bzZn7fLA-1
X-Mimecast-MFC-AGG-ID: cQauTxoQOn-XI1bzZn7fLA
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2DD7E1955BD2;
	Tue, 26 Nov 2024 16:12:04 +0000 (UTC)
Received: from localhost (unknown [10.22.82.38])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id C77EC1956054;
	Tue, 26 Nov 2024 16:12:03 +0000 (UTC)
From: tyberry@redhat.com
Date: Tue, 26 Nov 2024 11:12:03 -0500
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, lgoncalv@redhat.com
Subject: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
Message-ID: <Z0XzU9R9Kx0RoeUG@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40

If the page could not be offlined madvise will return -EBUSY. This might occur if the page is currently in use or locked.

Signed-off-by: Tyonnchie Berry <tyberry@redhat.com>

---

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index 4f2210ee2..c10dcd599 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -702,6 +702,13 @@ The map exists, but the area maps something that isn't a file.
 .BR MADV_COLLAPSE )
 Could not charge hugepage to cgroup: cgroup limit exceeded.
 .TP
+.B EBUSY
+(for
+.B MADV_SOFT_OFFLINE )
+If any pages within the add+length range could not be offlined,
+madvise will return -EBUSY.
+This might occur if the page is currently in use or locked.
+.TP
 .B EFAULT
 .I advice
 is


