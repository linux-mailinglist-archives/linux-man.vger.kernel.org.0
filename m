Return-Path: <linux-man+bounces-1608-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 788B7950CCA
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2024 21:05:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAD951C230E2
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2024 19:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A9A918E752;
	Tue, 13 Aug 2024 19:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b="BLec1Oxp"
X-Original-To: linux-man@vger.kernel.org
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06251097B
	for <linux-man@vger.kernel.org>; Tue, 13 Aug 2024 19:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.61.206.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723575911; cv=none; b=jf/MzG8E3Aes8os6sHx/5+QnIYKEyYZioaJxJECNGQMvvuGEThGL4qEk8dr7jyZ6MFTmPcN42xaE7ArVqUdhOjr2j5DXnf//J6AlQmpwUHyAzx3kBBd4pL2S0M92MkWlzr747xHfyNePLTiY6/J4J9VwZUnDcV6h7kw9jRYONLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723575911; c=relaxed/simple;
	bh=QPxNMx1EAuoFeJ04jjwGKs0uofThZhNVhlr2NyVwkNw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=rAF4IvZvC4PZ6aqVkDs4V8rbHHsk3dTiAohiNrWX9bEVY8lu4QSwNgGeK/LUrdXimXtxVMK5uP/IyVbWJ5CtLtoSLXEDUnseQp3uN8ukI7MKmjwWfkr0NC6d3kIl36kkxi0VjbAiIzEeJY7tJDNPktSibMD5UfrwINytDVKZCMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net; spf=pass smtp.mailfrom=gouders.net; dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b=BLec1Oxp; arc=none smtp.client-ip=202.61.206.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gouders.net
Received: from localhost (ip-109-42-114-76.web.vodafone.de [109.42.114.76])
	(authenticated bits=0)
	by mx10.gouders.net (8.17.1.9/8.17.1.9) with ESMTPSA id 47DIoghV024343
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 13 Aug 2024 20:50:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
	t=1723575044; bh=QPxNMx1EAuoFeJ04jjwGKs0uofThZhNVhlr2NyVwkNw=;
	h=From:To:Cc:Subject:Date;
	b=BLec1Oxpou22vY6sM4TEJuphgl07fj0hgB50P1Z/A9EuLeFhbCS30Smxun66HMb10
	 iFELAwiOjeekeCSNJVpvJT3IVRVT+8wfvomyKn0myRzlPyNG67KDnV7gpV2jtFh+v4
	 eK6VACgCTrBhnADGqWi2oPG6iCeWkolUzYHTFmrc=
From: Dirk Gouders <dirk@gouders.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Dirk Gouders <dirk@gouders.net>,
        =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH] regex.3: *preg is initialized with regcomp() -- not regexec()
Date: Tue, 13 Aug 2024 20:49:51 +0200
Message-ID: <20240813185011.3806-1-dirk@gouders.net>
X-Mailer: git-send-email 2.44.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixes: 1838a55edd6c47cb ("regex.3: Desoupify regexec() description")
Cc: наб <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Dirk Gouders <dirk@gouders.net>
---
 man/man3/regex.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/regex.3 b/man/man3/regex.3
index d49bcd465..3069489cb 100644
--- a/man/man3/regex.3
+++ b/man/man3/regex.3
@@ -135,7 +135,7 @@ is used to match a null-terminated string
 against the compiled pattern buffer in
 .IR *preg ,
 which must have been initialised with
-.BR regexec ().
+.BR regcomp ().
 .I eflags
 is the
 bitwise OR
-- 
2.44.2


