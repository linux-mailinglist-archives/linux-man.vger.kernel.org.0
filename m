Return-Path: <linux-man+bounces-4610-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E988CF164F
	for <lists+linux-man@lfdr.de>; Sun, 04 Jan 2026 23:04:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5319E30038C0
	for <lists+linux-man@lfdr.de>; Sun,  4 Jan 2026 22:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD24128A701;
	Sun,  4 Jan 2026 22:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="oZ0YRiR3"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5FE1DD877
	for <linux-man@vger.kernel.org>; Sun,  4 Jan 2026 22:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767564292; cv=none; b=D1FJT54a0bNxvXm0rvcrAmg/A6xYUzkp1NJCA+ybYHoc0O268/GibjYkPxEpB1awE4AbDxaZE+42OxAooZHHGXkHxLHnZiavzmwKHYGRY24Cw7OOXuFCxAxh2Pc4asDKgX0Wul5ZyHa0UhPymp9iN1o3dXaF3Wx3WwaJVULCCj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767564292; c=relaxed/simple;
	bh=iSEEYFLZDCl5Y2bs5wLF9R0MksOXXMLXxJoRbDDnpyY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tLHvqX9HatgmUo9hmJuMktQydCF9npGLrIzC/hfrxP+xcaxe2ft+lcItEet809bkCLtwUcYr6+3Q2/nZBCVvG+qswKiT/NRBwABe4NTo06uK+/c2oDq4S9r0Ls2WpEvEF3TUwD2PAVSFvq/PQwGRKTaqRm/mc9RbTyIUOP98Kzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=oZ0YRiR3; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=xf89+2TN8LHISJ4Q4H4Oo26XBdEUZvvHYj2Gd51MTrs=; b=oZ0YRiR3oRNsmN6d
	a+sjpvVXfqSxGQsnttSVLI15EthmeQJVmyl/m22pQ2S/M0QDXYcZjAt7D1Kau28+pB6jZUIwP65go
	j7FpUln/h3g3CPTW4iHqUhiDZwh1Ps8QFi6usRq1NCh0nerLNmR1x3kCeQcx+VjIje/JuTgk2NP61
	AwVvURBw0k0Bo6qaT9qTrVLYjuFRFsDFsuwcMUejFlhweJfz76Z8M8eGX93kDC/Ektr776C0qBH10
	cBcv8EcNGWAEgu+Pz46P9Emv9AIy8h1xUjABGn8SViLkFkoUNokF1+vsTn+QYQpFR8okrHPqvxiWd
	0a1oR2YZlrt+RqO3TQ==;
Received: from localhost ([127.0.0.1] helo=dalek)
	by mx.treblig.org with esmtp (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcWDQ-0000000CJl1-0glZ;
	Sun, 04 Jan 2026 22:04:48 +0000
From: dg@treblig.org
To: alx@kernel.org,
	linux-man@vger.kernel.org
Cc: "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH] man/man5/gai.conf: Labels have a label not a precedence
Date: Sun,  4 Jan 2026 22:04:38 +0000
Message-ID: <20260104220438.265626-1-dg@treblig.org>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

The numeric value on a label entry is a label which is separate
from the precedences.  Labels are compared with other labels, not
precedences.

Rename the field.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
 man/man5/gai.conf.5 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
index 4aff0b0b9..ef330995d 100644
--- a/man/man5/gai.conf.5
+++ b/man/man5/gai.conf.5
@@ -26,7 +26,7 @@ .SH DESCRIPTION
 .P
 The keywords currently recognized are:
 .TP
-.BI label\~ netmask\~precedence
+.BI label\~ netmask\~label
 The value is added to the label table used in the RFC\ 3484 sorting.
 If any
 .B label
@@ -35,7 +35,7 @@ .SH DESCRIPTION
 All the label definitions
 of the default table which are to be maintained have to be duplicated.
 Following the keyword,
-the line has to contain a network mask and a precedence value.
+the line has to contain a network mask and a label value.
 .TP
 .BI precedence\~ netmask\~precedence
 This keyword is similar to
-- 
2.52.0


