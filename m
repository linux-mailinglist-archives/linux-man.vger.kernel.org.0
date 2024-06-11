Return-Path: <linux-man+bounces-1106-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC01C904001
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 596C7284E1B
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA76C381B9;
	Tue, 11 Jun 2024 15:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="ZZkIu5IC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E4F364AE
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119825; cv=none; b=bONq73Zq1eBSoc57q4LvwMQGM81lYEfGQgV+l9815lGj7Cki23z3Bgkx5tA1tXjrYNlWkPNPPbXfOf7pbE6ws2t4asITQcwWVDjnTbgqvY5luht6JAF15HO+rmKmBr7Lcf/4gDZotpJqgnZZcvusr8NuvOXle+zsKU+d5twMOTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119825; c=relaxed/simple;
	bh=vuSrmJZ7SvDohk7h+IyhPpuUOeOM7TelZJi2mClaTCw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HG9X20bsMTZvfL0snkt8b2tLmQWDN7bPNYD0zWfcKZGmQ3joDfLfvkMpv8WzqZZUutTlLuQpNbjJqy5lXcY/4mghgm98/GPf2NywQXcyHm0WW/YjDL/nUnYzwqY6pPT3zi4T0SSBoDevaqkV6tsKoCQbjTxh1W8zGaoYmg8HQXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=ZZkIu5IC; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 98EFC3C00E406;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id nmKEOn0X902J; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 576333C0140A4;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 576333C0140A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=vuSrmJZ7SvDohk7h+IyhPpuUOeOM7TelZJi2mClaTCw=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=ZZkIu5ICPZKqG60Qpvx1aTkD+wWL3FbUBtYKadSK0cEPXTW0vgOj3s4hH4mVJkkiX
	 KQAkESu6yYwW14rPKwyKyDVfCavE4c8ROEEcY62+gbAXrWany63QO0CgnD2vvJYy40
	 yghxdBbtewfuoSSITJKlJ8gSUaL4iaCprYJJnL46Qn9XkcpajsQxws4vIqNsAID5H8
	 rTO/zh9kqrHO7hQtNBHKedqEnM6Eybv/mU3fkdm5rfcouDAU43VaLR1gXsTaVFJAtd
	 Llvk/XLvh7ox1Pt8Gy5M0pAh70J2rY6DswoTq3WqWZYPMg4NrIRugb/g+HN6Q2PukY
	 8g+tDx/29Qlfg==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id yg1JFMPiD9dI; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 31C5B3C00E406;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 08/12] tzset: omit colon in example
Date: Tue, 11 Jun 2024 08:29:11 -0700
Message-ID: <20240611153005.3066-8-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

---
 man/man3/tzset.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index f3e6c8748..4c7e286fe 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -189,7 +189,7 @@ Here's an example, once more for New Zealand:
 .P
 .in +4n
 .EX
-TZ=3D":Pacific/Auckland"
+TZ=3D"Pacific/Auckland"
 .EE
 .in
 .SH ENVIRONMENT
--=20
2.45.2


