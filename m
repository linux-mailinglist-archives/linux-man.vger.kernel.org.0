Return-Path: <linux-man+bounces-2822-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D686A9F30F
	for <lists+linux-man@lfdr.de>; Mon, 28 Apr 2025 16:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 464DA4622D8
	for <lists+linux-man@lfdr.de>; Mon, 28 Apr 2025 14:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1144F26B2B2;
	Mon, 28 Apr 2025 14:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=armitage.org.uk header.i=@armitage.org.uk header.b="UuUv0Ebf"
X-Original-To: linux-man@vger.kernel.org
Received: from nabal.armitage.org.uk (unknown [92.27.6.192])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF8225E82E
	for <linux-man@vger.kernel.org>; Mon, 28 Apr 2025 14:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.27.6.192
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745848935; cv=none; b=XRd0sDBQ3H54GF62V/BobqR7uyQMGRI+4qaZ19fAxaxToC5WzFLlRepSyj8FVpo4UV1aJ3ufgKIg90igXkp7ESd0jH6s0HbV1ch7ADwkExI/NcsYnIhRGVRKAkembDtv5C93bbq6iLWxANKXmqbl1ZDaCYoG8HGi5zKBQaC1ruQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745848935; c=relaxed/simple;
	bh=YP2LXvkO3PCQdNSf1CQlkEj9BJ/iSiPJezImvIX1jSU=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=CMaMuDUFYLDjWMi/C7yXxn2gAGIZ6z7JoMYwx+t3+wOcrN6SrQ7FKS1AmbpmsUU1U3KtyDOZyJBYIotzvnPr1uR9A8DfgQZSijzViGTXSRTAEha/zTGtORPz3WS+tID5kqH8bPA2t+j8/IWyzgDOCT3JwG9UDJVL7hmbJus1XRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=armitage.org.uk; spf=pass smtp.mailfrom=armitage.org.uk; dkim=pass (1024-bit key) header.d=armitage.org.uk header.i=@armitage.org.uk header.b=UuUv0Ebf; arc=none smtp.client-ip=92.27.6.192
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=armitage.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=armitage.org.uk
Received: from localhost (nabal.armitage.org.uk [127.0.0.1])
	by nabal.armitage.org.uk (Postfix) with ESMTP id 05F082E5719;
	Mon, 28 Apr 2025 14:51:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=armitage.org.uk;
	 h=mime-version:user-agent:content-transfer-encoding
	:content-type:content-type:date:date:from:from:subject:subject
	:message-id:received; s=20200110; t=1745848249; x=1746712250;
	 bh=YP2LXvkO3PCQdNSf1CQlkEj9BJ/iSiPJezImvIX1jSU=; b=UuUv0EbfT58f
	JEe9TDvkFrl+LnZwUhIVTGEM3kiVrKsJiB3pZOjSYw4zFHrTeom0eFRgreqw6P0+
	0wZdsrpbPBDw+hvFIFqvrk7nMhZr7ImcjlS0Q7XYL7tomi6KYsK51hOp7VTKUufY
	L7h5nUPzcluvIMnWcLelDj8yZh4QbP8=
X-Virus-Scanned: amavisd-new at armitage.org.uk
Received: from samson.armitage.org.uk (samson.armitage.org.uk [IPv6:2001:470:69dd:35::210])
	by nabal.armitage.org.uk (Postfix) with ESMTPSA id 659242E56E5;
	Mon, 28 Apr 2025 14:50:49 +0100 (BST)
Message-ID: <e8519ea77798c68944717bc6437052a1119a911f.camel@armitage.org.uk>
Subject: [PATCH] man/man2/close_range.2: correct provided output of example
 program
From: Quentin Armitage <quentin@armitage.org.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Mon, 28 Apr 2025 14:50:48 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

The output shown for the example program listed /tmp/b twice; the second /t=
mp/b should be
/tmp/c.

Signed-off-by: Quentin Armitage <quentin@armitage.org.uk>
---
 man/man2/close_range.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/close_range.2 b/man/man2/close_range.2
index c0ae95e2a..ea1a1d2ec 100644
--- a/man/man2/close_range.2
+++ b/man/man2/close_range.2
@@ -185,7 +185,7 @@ The following example demonstrates the use of the progr=
am:
 /proc/self/fd/2 =3D=3D> /dev/pts/1
 /proc/self/fd/3 =3D=3D> /tmp/a
 /proc/self/fd/4 =3D=3D> /tmp/b
-/proc/self/fd/5 =3D=3D> /tmp/b
+/proc/self/fd/5 =3D=3D> /tmp/c
 /proc/self/fd/6 =3D=3D> /proc/9005/fd
 =3D=3D=3D=3D=3D=3D=3D=3D=3D About to call close_range() =3D=3D=3D=3D=3D=3D=
=3D
 /proc/self/fd/0 =3D=3D> /dev/pts/1
--=20
2.49.0



