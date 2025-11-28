Return-Path: <linux-man+bounces-4343-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE550C92795
	for <lists+linux-man@lfdr.de>; Fri, 28 Nov 2025 16:50:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0AA034E3BB8
	for <lists+linux-man@lfdr.de>; Fri, 28 Nov 2025 15:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C812179CD;
	Fri, 28 Nov 2025 15:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="R/cQkcfW"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638B122129F
	for <linux-man@vger.kernel.org>; Fri, 28 Nov 2025 15:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764345013; cv=none; b=e86/5Skqd4wQlWWQJk88nYPxx1fdOD6Ep65+m2uZR7ef+xPqKG575Pn8Nnx/lbG5obrPqVBzTzM8cuGYFl1+y5IIvIOoYqbgmfT4W+/qp2X+W+DqjfkWw3BgemEx7oXOR+cssY7xnHayqV5gutaebTfsanzdcND5wQmDMp6dNZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764345013; c=relaxed/simple;
	bh=xmdjjSY8NvyersfBmJtvbOtn+svjJdwkMdsIYYhDyRY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ifblpwvFRfnli+p0C3UkUUG+DO6xcPJGBb98+I5302iLvauUvsuBsXifyz2IP3rHLT1yQ9UredcxXLOTpR9F6ED3SbjKZGCNcpa1HgIHsvSEd2IMn9CHFADaUD/zRlTvF1fJr39yvrTi/Cwc+aWih1OdGDr3WYXWe5BXbILdDPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=R/cQkcfW; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764345010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=xmdjjSY8NvyersfBmJtvbOtn+svjJdwkMdsIYYhDyRY=;
	b=R/cQkcfW6d6yB8Tso0Z6wYwWKfM+rscnIt9oKs4ZyoGtA+mGH7PZ/amxQyQQ8b9jPLy1Pm
	tHpjrrpqRlUVZBcHbYAgKVoZ29/ONGi1bgXI/0RB+EF7Wc/A9RnzJ++lD/aq+sApA/zv6K
	ryHfCQhpC7sOzQ4Hg/k1+T0CTQ8RH8w=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-402-Xwj9GA0RMuyhx_ubUS_Njg-1; Fri,
 28 Nov 2025 10:50:08 -0500
X-MC-Unique: Xwj9GA0RMuyhx_ubUS_Njg-1
X-Mimecast-MFC-AGG-ID: Xwj9GA0RMuyhx_ubUS_Njg_1764345007
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BB3B51800359;
	Fri, 28 Nov 2025 15:50:07 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.2.16.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C8AB219560B0;
	Fri, 28 Nov 2025 15:50:06 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] sscanf.3: Document exact matching for %c
Date: Fri, 28 Nov 2025 16:50:04 +0100
Message-ID: <lhu1pli6tsj.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

The glibc manual has always documented this behavior, but the
implementation differed, treating the field width as an upper limit.

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man/man3/sscanf.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man3/sscanf.3 b/man/man3/sscanf.3
index f0b248518..fa4cd0db7 100644
--- a/man/man3/sscanf.3
+++ b/man/man3/sscanf.3
@@ -172,6 +172,9 @@ and these discarded characters don't count toward the maximum field width.
 String input conversions store a terminating null byte (\[aq]\[rs]0\[aq])
 to mark the end of the input;
 the maximum field width does not include this terminator.
+Some conversions require exactly
+the number of characters specified in the maximum field width,
+or they fail.
 .TP
 \[bu]
 An optional
@@ -480,6 +483,10 @@ and there must be enough room for all the characters
 (no terminating null byte is added).
 The usual skip of leading white space is suppressed.
 To skip white space first, use an explicit space in the format.
+.\" glibc commit 2b16c76609350ec887d49afd4447743da38f7fab
+This conversion only succeeds
+if the number of characters specified by the maximum field
+can be matched.
 .TP
 .B \&[
 Matches a nonempty sequence of characters from the specified set of

base-commit: 081d4f6779ac39da0265cac6e67d1c9a281e6990


