Return-Path: <linux-man+bounces-4635-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1993FCF50B2
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 18:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1220A3007602
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 17:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55DC424466D;
	Mon,  5 Jan 2026 17:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="JUO9XIDw"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E550914B96E
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 17:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767634758; cv=none; b=OmygXJmQoFcLtCb7NyRSK6ca+8+dMxs2qRiPqg3lcIOp4TOVsSakijhGouT6RD8rOdtVUFqd6YGDvQ0NMREpljgMVWpf5pS5J/FFHsTRC/t8f3v3ru0JUW1IrH63hSu34oHqJnoCYG2ITXSRuBOKmjkMxyxRIyeHsIkdaQn9lFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767634758; c=relaxed/simple;
	bh=evtaub/QKofpXmGOCM02Jn4pawib1MZuh4J4/bf5oJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Rrup9XP1m+1aiiaqLxy5GPBHBrDeUPOpB3GAtXEPLRfNMH2kS2mqONIz8YaMxKhOEZ1MwbvgdkpvhfeVPEs+unZwqtvR78WgYow6TGRFTMaovDRts1lUooN4GubiXRUGMTEQZ/nvTaLxzald3VHPmkEecQxRd0JACa/qgn0a0Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=JUO9XIDw; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=rbYUSjJVlvQAX+R5Adl8GbKWA+hgDHHvTJqlSec0ST0=; b=JUO9XIDw60FGduQW
	gk8ZIih0miOZ+Ga/UA2lAawhRL0Ansq7AyxRNzUL3vkIRemb6i163H6OZ/3m2/QTojXeehepWpL6B
	ls4pBfRv4JpGaEwHz1AE1IirBV5axrLb/ROco8rBVIcycvPPsqnljwZceroMzliyeQ2y4XBrWNwyl
	gL9jfwuzCaYfpoT2CaVgQYL6K/1Hx1D+X1FGmTeV6xtWyPo7BEMP4x2QW17h4NN0i8DWSPIsnjMOp
	BCY7feLxMuke2ogJp8DonJA91jIRkCGofNBgdotzXlyUh3inOCkyfVEujF0FemzvZ8l7LUhIylzps
	Lddb29Ca21mSAR5h0g==;
Received: from localhost ([127.0.0.1] helo=dalek)
	by mx.treblig.org with esmtp (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcoXw-0000000CVWb-2Laj;
	Mon, 05 Jan 2026 17:39:12 +0000
From: dg@treblig.org
To: alx@kernel.org,
	linux-man@vger.kernel.org
Cc: "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH v2] man/man5/gai.conf: Document glibc label additions
Date: Mon,  5 Jan 2026 17:39:04 +0000
Message-ID: <20260105173904.219815-1-dg@treblig.org>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

Glibc includes some extra entries in its default label table
as listed in the gai.conf it distributes:
   https://sourceware.org/git/?p=glibc.git;a=blob;f=posix/gai.conf

Update the EXAMPLES to include the spec default and the version glibc
actually uses.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
v2
  Semantic newlines added.

 man/man5/gai.conf.5 | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
index ef330995d..0d3c86842 100644
--- a/man/man5/gai.conf.5
+++ b/man/man5/gai.conf.5
@@ -87,6 +87,20 @@ .SH EXAMPLES
 precedence ::/96          20
 precedence ::ffff:0:0/96  10
 .EE
+.P
+Glibc includes some extra rules in the label table for site-local addresses,
+ULA, and Teredo tunnels. Its default label table is:
+.in +4n
+.EX
+label ::1/128        0
+label ::/0           1
+label 2002::/16      2
+label ::/96          3
+label ::ffff:0:0/96  4
+label fec0::/10      5
+label fc00::/7       6
+label 2001:0::/32    7
+.EE
 .in
 .\" .SH AUTHOR
 .\" Ulrich Drepper <drepper@redhat.com>
-- 
2.52.0


