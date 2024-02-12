Return-Path: <linux-man+bounces-435-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D3508850F5C
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 10:09:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71E651F226BD
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 09:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D0BFC11;
	Mon, 12 Feb 2024 09:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b="oRtyBqjT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.smrk.net (mail.smrk.net [45.76.87.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E08101C2
	for <linux-man@vger.kernel.org>; Mon, 12 Feb 2024 09:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.76.87.244
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707728957; cv=none; b=UZiWmuQOizpdo3VqzZt0zQOEgKPdKU/YpgNDoqmucG4Ai7qROQuI/UAukfpySoMDGPeBtPF1UkmKoBmTN8gUM3gErCsk244moOw9OfoQE8AgjGlsZxv9FsYiBKVV1aE39a+Z7BN1wfbQ7a+1X7JzfwrbyxFKc6sIqCRuJIN9vo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707728957; c=relaxed/simple;
	bh=aK5+D/wlseSfKTUpcLp5wLl9AjxrJJ0lR28JiUJPKjI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=We1z/H8u6I4Du7KdROJs/XOzuixWQu+jrsaVh2kECxnGNUjCCUCVBp043558b7nP5RUQDiP+VTWv3ViBWBkC46tUfP5O/g3QwVncQ3Mz2ZcGH/UjPXia//ETTAnZMm/8hjPNUupsyQ6O3vegnf8qG2jz3Ul0vssW5qDpOO9FTN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net; spf=pass smtp.mailfrom=smrk.net; dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b=oRtyBqjT; arc=none smtp.client-ip=45.76.87.244
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smrk.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
	t=1707728946;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=POyFGHi2aTgU5hyw6VHM7CNdRx7r5YlEHUk0xU0nbzs=;
	b=oRtyBqjTX8wRH7ZQ56bWI5s8PNUWaRclKln44OJrfQgQ3b6Q+pe2hqC7s7WHQyt1PSw/te
	W2ULwebuWqzL23KqMl0RemN8XAOMoQMpygMFPnKc6NCP0OrgjldmG5SBSR4LiVfn2M/F0B
	R7Ydam9FejfGLH4oaRHXFwB6TwFX4rhotlVXOK74BrPYy27SKLz1RuhHoMeCAryJnqKmRM
	aILl9olG/nhKEupExDm363bbdTlnmCmRwehWxu5triDmG1eXBU6sSuvHLKnIVB0jWughqU
	dwynSn82zoAGWZuWkQz0zWU6NFb46WPVQK45EfzfNYiYoM9P9R0efVttVvlP4g==
Received: from localhost (<unknown> [192.168.5.2])
	by smrk (OpenSMTPD) with ESMTPSA id e858df75 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 12 Feb 2024 10:09:06 +0100 (CET)
From: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/2] getaddrinfo.3: tfix
Date: Mon, 12 Feb 2024 10:09:03 +0100
Message-ID: <20240212090903.645715-2-stepnem@smrk.net>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240212090903.645715-1-stepnem@smrk.net>
References: <20240212090903.645715-1-stepnem@smrk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

(Incidentally, the glibc function source does name the parameter
"name" rather than "node", unlike this man page.  (The POSIX man
page uses "nodename".))

Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---
 man3/getaddrinfo.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 1d4f2d3d3a49..beb6434606f9 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -501,7 +501,7 @@ .SH RETURN VALUE
 included
 .B AI_CANONNAME
 and
-.I name
+.I node
 was NULL.
 .TP
 .B EAI_FAIL
-- 
2.43.1


