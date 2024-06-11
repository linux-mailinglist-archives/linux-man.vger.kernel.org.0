Return-Path: <linux-man+bounces-1109-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 672D8904004
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B9051F237D0
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 353C5381AA;
	Tue, 11 Jun 2024 15:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="LEK0NQLX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BDE376E4
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119826; cv=none; b=rK0Q6SoQlKcP1vAaH+YG/YUh8n9ieHFBLke4oBA6l9qTlCtqdrY7CsgYHVZg0QaAcuAsNfk4K+co4K7T29wHgePvqC7nPXT2oQZXoRGXWstYIt/iuFh9w7gePYUiDiYuqj61N8zdZhpWgYVP24SCnhmXyepuAgeJh54n24SVUps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119826; c=relaxed/simple;
	bh=iUJipW7k+4uM4u19Ywn3RC0E4sRamvVqZEOcmvNDOYo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hquCS410tvX8cktajxyIOrcQWZV1ClmWbl05jvD5WgHgIlHdhubAtZrtG+TCaDxztoIT+feHmSzzSX7pcdaHQmvDX1NcQTPZ//+flaBrrSoo7GPVu25nJgFXtIBA3oPRqk4Bzwao+YjOnfNdqmS10GJNC+XDCoVThL+OUlyLBVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=LEK0NQLX; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id D6CA43C00E400;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id IdrQ1WD_tzaf; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 90FC33C00E407;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 90FC33C00E407
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119822;
	bh=iUJipW7k+4uM4u19Ywn3RC0E4sRamvVqZEOcmvNDOYo=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=LEK0NQLXVODPmV8i2j9ZzlhokXv+0fuGffh465ur7H41B+Zaq9ydSiTxcCxHofEfa
	 BmkO/hCDhzvEb5hrta0wNEcRtRu7yivfICXecqrnA59RRIyXJy9+s0ugm0afDiNM9b
	 B0UiP9BDUVPjGgH9xz5Ot9vRgiKvBnc7TYO+HtdkT6Uh7WWRE5ddHZE6b1/coyBgur
	 LbFpFpnh3xSGfW1RcUvdHc7GKPZ8QG0/3NhzNqfxo+ac7WDLNc7JApd7osMWce8Fed
	 yMV+AgDkgMuFLgOzi3eeU4uNe/WTfp/gOsuEjE/liX+g343h7pYIDq7nm/APqukA74
	 9q/TvvGbS1Krg==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id MQarh8NaKyd5; Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 6FB7E3C01409F;
	Tue, 11 Jun 2024 08:30:22 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 12/12] tm: say when tm_zone, tm_gmtoff standardized
Date: Tue, 11 Jun 2024 08:29:15 -0700
Message-ID: <20240611153005.3066-12-eggert@cs.ucla.edu>
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
 man/man3type/tm.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/tm.3type b/man/man3type/tm.3type
index 1628e0c1f..62e928fce 100644
--- a/man/man3type/tm.3type
+++ b/man/man3type/tm.3type
@@ -100,7 +100,8 @@ and
 originate from 4.3BSD-Tahoe (where
 .I tm_zone
 is a
-.IR "char *" ).
+.IR "char *" ),
+and were first standardized in POSIX.1-2024.
 .SH NOTES
 .I tm_sec
 can represent a leap second with the value
--=20
2.45.2


