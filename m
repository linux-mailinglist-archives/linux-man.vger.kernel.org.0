Return-Path: <linux-man+bounces-4412-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBF0CBD5EA
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 11:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3CF58300D54B
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 10:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E70AB3164AD;
	Mon, 15 Dec 2025 10:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="QboZ0jhg"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277A32D879E
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 10:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765794880; cv=none; b=JTbOzm9mUJ+sIMrAQzu0cOIm76gjyWap6xsqfIlOBj9aILZ+g5EYYWC4ABvaAcOrXsTz+508mjS6gG3CMDhM/KULSNQzZCX7Y/OS2csx1dOVVigI96lheoBDtJPnUMLcJB+BC8IzmAfvrAyP66YBZ9ILtQrRJXK0wS36fEkAFhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765794880; c=relaxed/simple;
	bh=SN184tYnJui8SdTar7dwAm7hVBf+y/+8HWKT5663Cfs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jxH3N+x/W/U8+kGoz8ETQw0NcFEY55SPskZb5dQzLWRELM5gg90iE5w9r1AEC9G587EHrKBCrHQOweLXYrMMQWgEG8uGMdTc8tnI9VbpAOXm0pPCFJeNYN3Xb5ZgbS7QydwHUCb1jPfRFyPUiFKFF5NKcbE7Hz9TBGZJrNYvwN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=QboZ0jhg; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765794877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=SN184tYnJui8SdTar7dwAm7hVBf+y/+8HWKT5663Cfs=;
	b=QboZ0jhgrwMp0nbHcdYw0j3v6rpYo1TBQxmSrw5QWlTdCtif+vdgV4Cb4PjErOQJk6VmHO
	AwR/hh06VOXkzMFeSvOjMfWp3XbtuNllaJYESwBPTMxRaxk+D0JQGL8DSQZ0gnLWnT0e3U
	csAOlQDOfSiEpL9aLDyA+q1NghMVELQ=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-556-r6szmhsIPKyv7_iy6ZC1sA-1; Mon,
 15 Dec 2025 05:34:34 -0500
X-MC-Unique: r6szmhsIPKyv7_iy6ZC1sA-1
X-Mimecast-MFC-AGG-ID: r6szmhsIPKyv7_iy6ZC1sA_1765794873
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7021A18002F9;
	Mon, 15 Dec 2025 10:34:33 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.44.32.8])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7D6E83000218;
	Mon, 15 Dec 2025 10:34:32 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/clone.2: Document E2BIG-based extension handshake
Date: Mon, 15 Dec 2025 11:34:29 +0100
Message-ID: <lhua4zkxccq.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

The clone3 system call uses copy_struct_from_user and the E2BIG
error code to handle changes to the struct clone_args size.

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man/man2/clone.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 74c5a59be..1d62a5df1 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -1188,6 +1188,16 @@ in the caller's context, no child process is created, and
 is set to indicate the error.
 .SH ERRORS
 .TP
+.BR E2BIG " (" clone3 "() only)"
+The kernel does not support some functionality requested in this
+.BR clone3 ()
+call:
+The size argument is larger than what the kernel supports,
+and there are non-zero values in the struct after the kernel-supported size.
+.TP
+.BR E2BIG " (" clone3 "() only)"
+The size argument is larger than the page size.
+.TP
 .BR EACCES " (" clone3 "() only)"
 .B CLONE_INTO_CGROUP
 was specified in

base-commit: 46950a0845de91c422efe6c639091ace42cb92f8


