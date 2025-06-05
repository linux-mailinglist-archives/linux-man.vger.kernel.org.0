Return-Path: <linux-man+bounces-3104-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E420ACEF74
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 14:46:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8773F1895605
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 12:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50ACC1FC0E2;
	Thu,  5 Jun 2025 12:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bxW10jkA"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC0A1D8A0A
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 12:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749127584; cv=none; b=YYQPQ6Nuk9iP0lxjzbFJjgbtoXAg4U+JSIi7YzNtloAjYVzwRnCkQNPoKG3RSwVBIr0nXVZYgV4Wk6oCSXbdW81JdpbzFj2KAjq4Kwwmw3mTj2H9vkJm7mjvf8g5bN7XT3FMniVwFSDNFEotvvF4gpIYOBggjcqp1Q8KOm8NuIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749127584; c=relaxed/simple;
	bh=aS0+mjyW1uLXp0Kewyi62cxaNdaRBs8hLRK+r57NX80=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WLz0/3XB3twmW0IMrSSJZz6U0zHsaDXbPi6v4Ej0B/+owbkJqS6CQaGFvFx7HVJdswebxD8oNdc1y+kqvRG+QFvpvgGEu76hClSbJu0F1oFpv5i9Fgqhiv95LMKv6L8K7EqWND5FKlUpmnxYzrh51JhVab52rEos/gCjtHjseCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bxW10jkA; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749127581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=aS0+mjyW1uLXp0Kewyi62cxaNdaRBs8hLRK+r57NX80=;
	b=bxW10jkAcgAXBuH9nn52Yw3R245+7HUDftB/zgWGlW8ZdQzO8iUtfhvtLwQfQMF4jSpmKx
	j7Sa6cDp96w6xQhWnJ2EXLJNEu2ovWeDUDdgNrelT+t28Sol3GUzdfAA+PiJxTnD4ZtSoA
	QllGSmM1eGlhHrCyMxN9rxKUnKOM7mc=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-688-fAU_fXgrNheXzzOfnyZ8_A-1; Thu,
 05 Jun 2025 08:46:20 -0400
X-MC-Unique: fAU_fXgrNheXzzOfnyZ8_A-1
X-Mimecast-MFC-AGG-ID: fAU_fXgrNheXzzOfnyZ8_A_1749127579
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4720C195608E;
	Thu,  5 Jun 2025 12:46:19 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.45.225.242])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 12DBB30002C0;
	Thu,  5 Jun 2025 12:46:17 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man1/iconv.1: Mention that -c does not change exit status
Date: Thu, 05 Jun 2025 14:46:14 +0200
Message-ID: <87msamxso9.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

And that input decoding failures are treated as errors.

Exiting with status 0 is a POSIX conformance issue that was fixed
in glibc 2.41.

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man/man1/iconv.1 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man/man1/iconv.1 b/man/man1/iconv.1
index 2c8ae0d29..111ff9e89 100644
--- a/man/man1/iconv.1
+++ b/man/man1/iconv.1
@@ -55,6 +55,8 @@ is appended to
 .IR to-encoding ,
 characters that cannot be converted are discarded and an error is
 printed after conversion.
+(Characters that cannot be decoded are treated as an error with
+or without this flag.)
 .IP
 If the string
 .B //TRANSLIT
@@ -73,8 +75,11 @@ transliterated are replaced with a question mark (?) in the output.
 List all known character set encodings.
 .TP
 .B \-c
-Silently discard characters that cannot be converted instead of
+Discard characters that cannot be converted instead of
 terminating when encountering such characters.
+.\" glibc commit 6cbf845fcdc76131d0e674cee454fe738b69c69d
+POSIX requires that this option does not change
+the exit status of the program.
 .TP
 .BI \-\-output= outputfile
 .TQ

base-commit: 3c2e9ebe2d5ea15a47c1669f75b280cea42a6f8b


