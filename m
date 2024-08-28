Return-Path: <linux-man+bounces-1720-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 027DE96256D
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 13:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93A62B23FAC
	for <lists+linux-man@lfdr.de>; Wed, 28 Aug 2024 11:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E88B415ECDF;
	Wed, 28 Aug 2024 11:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="acqK9dpW"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432F215A86D
	for <linux-man@vger.kernel.org>; Wed, 28 Aug 2024 11:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724842929; cv=none; b=MHpic1faMdkXW06UzYDT6kz9VoWLAdbeANv36Rwpzh0Sk6nPrFdbd9ZhO+UX43f8JM1iF2eHmUQh9EwM9pxR1NAaU2/RcYZKnI80JZAasssE0uEofB5QhSy6dl0YIwMRHmSdjcVTFKkIseLxOQOOQbpwNfsmtUD5bXVCHQX+uEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724842929; c=relaxed/simple;
	bh=mLa/8ONdI59NgaO0dei4teHk/qykcVlvMW6nbnbaxDk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Rz/dUwMI3AwZ965ujXc/lN2QzflIPqI5w+WXAe9jou+EsbzfaT6XYWQXzyx6+lVmKVTfgClAE1VCVqcU8LcxNYBrCxLCbcssFKjVJiiXPSQvnSomqni17LgukifoWmDM46Yluh2LuN+VLrzBI7PhszVLLRvwLsEX9gvWKOYi8t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=acqK9dpW; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724842927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=mLa/8ONdI59NgaO0dei4teHk/qykcVlvMW6nbnbaxDk=;
	b=acqK9dpW0auK68hk1QWgSkEIXe3ogtE0cmH2IUrBXvyiEGXtANE8Qmfq+tMVOJ3hmg9GzB
	WgopxoYaHs+11xP1wKSjRRZRu6e77PJ1EDM3fEORkkokk1V29dj7UtSdf5rIG++vQd1wup
	gqp7QV6eYncCvCYQOFpJIsSjDUqWgBA=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-492-2A5QhGY6OhaDua5iTu_amQ-1; Wed,
 28 Aug 2024 07:02:02 -0400
X-MC-Unique: 2A5QhGY6OhaDua5iTu_amQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8B6061955F6A;
	Wed, 28 Aug 2024 11:02:01 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 22A201955D58;
	Wed, 28 Aug 2024 11:01:59 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v2] dlinfo.3: Document the RTLD_DI_PHDR request
Date: Wed, 28 Aug 2024 13:01:56 +0200
Message-ID: <87o75chpwb.fsf@oldenburg.str.redhat.com>
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
v2: Fix commit IDs.
 man/man3/dlinfo.3 | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
index 84b696f8c..8158356bd 100644
--- a/man/man3/dlinfo.3
+++ b/man/man3/dlinfo.3
@@ -194,10 +194,23 @@ If this object does not define a PT_TLS segment,
 or if the calling thread has not allocated a block for it,
 NULL is placed in
 .IR *info .
+.TP
+.BR RTLD_DI_PHDR " (\fIconst ElfW(Phdr *)\fP, since glibc 2.34.1)"
+.\" glibc commit d056c212130280c0a54d9a4f72170ec621b70ce5 (2.36)
+.\" glibc commit 28ea43f8d64f0dd1f2de75525157730e1532e600 (2.35.1)
+.\" glibc commit 91c2e6c3db44297bf4cb3a2e3c40236c5b6a0b23 (2.34.1)
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


