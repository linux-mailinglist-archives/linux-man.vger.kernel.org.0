Return-Path: <linux-man+bounces-2126-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9744C9E67C4
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 08:18:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E96E161293
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 07:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5883F1CB51B;
	Fri,  6 Dec 2024 07:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="AkHl6l1a"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-40138.protonmail.ch (mail-40138.protonmail.ch [185.70.40.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470D118D65A
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 07:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733469513; cv=none; b=ous+TvCOBt1HTWp4K6jNLnVgw8vGFxFjRDdkjWTfgUUuGROLHCnuvUTJX7tfnD9bueEyn4XdMBQKgCBQeaj/jTuutFOOjUIC+WuWIuDwfUMJFYepdM0+yxXHXBc1+ufO0cfFvK4hU5c8TFZeUj4UdgjBDdtH8O2/sgGkqcagHy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733469513; c=relaxed/simple;
	bh=BZvyQoKWDrmZA1d2qS14x04HKOc8Lq9E7xf1XedTIiE=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=gKUwg6dDVoZi7sdhLZ3FocOXj5Spm49RcI1V87/fNf7Glr2bAe2Ity38C25G8u4UxzILJ85eXx/1eLmERGd2lgM1fTdwYX2HCP0SnhJnOCvZUMmSya3Elo2RWVHpmNYxucU2Qn2rsKDbcoIWD68tJjZecFkZr6DLFu1/0QBFE9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=AkHl6l1a; arc=none smtp.client-ip=185.70.40.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1733469508; x=1733728708;
	bh=BZvyQoKWDrmZA1d2qS14x04HKOc8Lq9E7xf1XedTIiE=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
	 List-Unsubscribe:List-Unsubscribe-Post;
	b=AkHl6l1aIfZruJN+hcEoyj/XhaB0aTrude2fAeEUU4x9ma+uV7mkfHlVK5evKCc+K
	 0bV68gq3d/6qL/CxEQtctEQGbOf/8bPjQWm/eJ4i5D/YP4PES/HdENClpkX0DdLJfa
	 tppLj+NSLIDMUgDJI+1id93Kw3jzFvLN/pTDesZg/BU1le5Z0iChuCHUEywpC0bjpK
	 /S6egxiRQcnJAYQgrXAFOcbJf7oW15ejy9LDc7pi+ReubhAvV0k1w3fDPd/XHrnTH6
	 xhPp4MTVSwOjxRCiuK/IYGEATmSTQFpjp6CI3ZKlK7noVcUgkmaqGi0Ym8PQUXtqZw
	 f2sFxwo59WlsA==
Date: Fri, 06 Dec 2024 07:18:23 +0000
To: alx@kernel.org
From: Anhad Singh <andypython@protonmail.com>
Cc: linux-man@vger.kernel.org, Anhad Singh <andypython@protonmail.com>
Subject: [PATCH] man8: ld.so: fix grammer mistake
Message-ID: <20241206071814.55913-1-andypython@protonmail.com>
Feedback-ID: 46503027:user:proton
X-Pm-Message-ID: 56f4c297f048eb906044e81f4fa884752f949895
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The revised phrase "...one or more of the following..." is more clear.

Signed-off-by: Anhad Singh <andypython@protonmail.com>
---
 man/man8/ld.so.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man8/ld.so.8 b/man/man8/ld.so.8
index 23cddb9..9ac471f 100644
--- a/man/man8/ld.so.8
+++ b/man/man8/ld.so.8
@@ -548,7 +548,7 @@ one can observe all run-time function bindings.
 .TP
 .BR LD_DEBUG " (since glibc 2.1)"
 Output verbose debugging information about operation of the dynamic linker=
.
-The content of this variable is one of more of the following categories,
+The content of this variable is one or more of the following categories,
 separated by colons, commas, or (if the value is quoted) spaces:
 .RS
 .TP 12
--=20
2.47.1



