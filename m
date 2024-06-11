Return-Path: <linux-man+bounces-1104-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 581D0903FFE
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7A20284E1E
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779DE2F874;
	Tue, 11 Jun 2024 15:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="fyE3ZZCU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D843528E37
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119825; cv=none; b=d0zqkuswRac8q5BhcPKufZ1u8f7e7d01RJs9Mnw33XXVETv2Y9iYqKAzo2XGwjXFq3RrNgXH2vSTIafMTSVCyCePqQ5PBflytL3QZVfJivIGz7EgxqGXPBkS+cBihLuOXa/ABSQeYOZUJeQwJCVc35AJJU3OH1eeKLqv8HDdvb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119825; c=relaxed/simple;
	bh=3slVsWpazKw+mROHyM/VBDmxa43uLs0bVM32U3asA5I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LmYtSUgYQUnUrL6pGveHZMw8KhgW84pb3X9aCZ0wZN2djcmy6C7sH0iaBuP7fK5PGmuwpt4IP5UH8uj/MSW3xfgPsL8pQU/u6SK4PbTkyXTNyQ5WDN/iuAj9ILVQ6LidWhY1ltTVa0M88etQ/nlFDfBBk6J8VvvNlRQQOYbsyfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=fyE3ZZCU; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 6719D3C00E405;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id ofDt6he_mRFK; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 1E0943C0140A0;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 1E0943C0140A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=3slVsWpazKw+mROHyM/VBDmxa43uLs0bVM32U3asA5I=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=fyE3ZZCUGF30zfl2n2t4f4leIeylb6tHUOh/BRJcqTP1tYyeqRLmGk5XbGh/GSkkG
	 5+p+kVzvFqFRnLcaLuFnARof2SDS5d4TxI3B63ZHUIKwqLeD8K+eqhB1buU6MbO+nN
	 3R6N4P12xErwxdfPBJwYXOvDZCA3LaWk5hxiVw7KU9ifUL8Njq3L4lUxRlOXPXDOxP
	 N07oztyU3AS3Nh1hgxKncV/e1LWAyLyUlVizjiefSZA60vZVgZGqM83f5eQ0cmfaRT
	 2hvNHVs5kk9BiBdukiErAr7wrKfJqvVwIMcIpD+svfoDuSmt9zipRrJlVoB9N3iLwp
	 EOgbaZP/ELRnA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id UWSVEuOKrNYW; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 014733C00E400;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 04/12] tzset: TZ can also be empty
Date: Tue, 11 Jun 2024 08:29:07 -0700
Message-ID: <20240611153005.3066-4-eggert@cs.ucla.edu>
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
index 552401c58..7ddea52b7 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -84,7 +84,7 @@ variable does appear in the environment, but its value =
is empty,
 or its value cannot be interpreted using any of the formats specified
 below, then Coordinated Universal Time (UTC) is used.
 .P
-The value of
+A nonempty value of
 .B TZ
 can be one of two formats.
 The first format is a string of characters that directly represent the
--=20
2.45.2


