Return-Path: <linux-man+bounces-1717-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A88E996206B
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 09:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4C281C20ED4
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 07:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6FED158557;
	Wed, 28 Aug 2024 07:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JAt3u2pm"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3D99328DB
	for <linux-man@vger.kernel.org>; Wed, 28 Aug 2024 07:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724829237; cv=none; b=Vrn0qMbSstOPnbSyL63WIRrziW3FfCtVaySk0ULKwQboVxSe14XPCNjgGjFImBnuGsI46g4xbML/Gg4CLulsCcblkJyFTfXiYmKNmyCcGsLiZE+p3CF5ETEyTv6bBj2DAEs4dM1+RfcxJLmsNyMSIkbarcgdWU0Yh6/n2Px/NrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724829237; c=relaxed/simple;
	bh=41h9WGde+/21JdbJwvZq6ZFLZwNWnLj46FRqyLeIlnY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=RXQ/i32/uKF29kfZoZ4Jcjd+fskX5Daof5iUyQx9exFHdLst/ccmnRjeawbNp3a9mRYLSQRMTMDwdk86Ubz1lBtizfIm5eQEU+Rm04RaS8SsWjPD72cheQ1tbNYt8093o0k8Lx/8pzvduGmN71XpoytmKvWjUQC5Arxp29jLa6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JAt3u2pm; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724829234;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=41h9WGde+/21JdbJwvZq6ZFLZwNWnLj46FRqyLeIlnY=;
	b=JAt3u2pmx+wE6+FoAN4BWSI1EN47ZkXOeYHUa2xv6wAxzfrEtdBUJ3WHtXeMtw9CfdaBiq
	8FIYE2dr0eU/cCZw4sYBg4W6KLZsGn2P5yQ7zSq5U1hwKV7vP22uQnjMtJDlN+NJ/F1FCm
	Rkm3au+nbhgezZlS+YEW1SfHBh4x+60=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-1-uXufNxFjMUSe-wPCBS5C5Q-1; Wed,
 28 Aug 2024 03:13:47 -0400
X-MC-Unique: uXufNxFjMUSe-wPCBS5C5Q-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6A1C01955F45;
	Wed, 28 Aug 2024 07:13:46 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AD7511955D42;
	Wed, 28 Aug 2024 07:13:44 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] dlinfo.3: Document the RTLD_DI_PHDR request
Date: Wed, 28 Aug 2024 09:13:41 +0200
Message-ID: <87jzg1p1ay.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

First added in glibc 2.36, backported upstream to glibc 2.34,
so mention 2.34.1 for the first version.

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man/man3/dlinfo.3 | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
index 84b696f8c..8d61f81e8 100644
--- a/man/man3/dlinfo.3
+++ b/man/man3/dlinfo.3
@@ -194,10 +194,23 @@ If this object does not define a PT_TLS segment,
 or if the calling thread has not allocated a block for it,
 NULL is placed in
 .IR *info .
+.TP
+.BR RTLD_DI_PHDR " (\fIconst ElfW(Phdr *)\fP, since glibc 2.34.1)"
+.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.36)
+.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.35)
+.\" glibc commit 91c2e6c3db44297bf4cb3a2e3c40236c5b6a0b23 (2.34)
+Obtain the address of this shared object's program header and place it
+in
+.IR *info .
+This
+.B dlinfo
+call returns the number of program headers in the shared object.
 .SH RETURN VALUE
 On success,
 .BR dlinfo ()
-returns 0.
+returns 0
+(if not specified explicitly),
+or a positive value corresponding to the request.
 On failure, it returns \-1; the error can be diagnosed using
 .BR dlerror (3).
 .SH ATTRIBUTES

base-commit: 6a7f1461b0e5474d50ef1920558dec103c0c058f


