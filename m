Return-Path: <linux-man+bounces-590-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 835FF87BCD8
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 13:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37D7D1F24F79
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 12:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3343E58106;
	Thu, 14 Mar 2024 12:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="SCAepBNF"
X-Original-To: linux-man@vger.kernel.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E54B42045
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 12:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.252.153.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710419445; cv=none; b=oeTAlWxTBgNK9p5u9NYMtJx0ix/575UBL7vNEDiHVcThSZ8m7sq8duLLN7Ok6cnMwZPvxtdxfVvHvkrjsM4uOr8O4JRHAA8NKOM7WnTQGNm6hvA4xwnaU8LcnH3QcOFVy9fIKNpaFROADWXvOkWkjL+0+Fkm5SdqLFS58h1FBbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710419445; c=relaxed/simple;
	bh=4XaYZ4K4kjoWs7wJlu4ARrWxOwpXL9+TY6h/YS6VsRg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=HFu3JDG62ckTRyedbXel67cpNc+04nFR5mGSvNrRTcNWq94MPAJFkrLpcO1rbwWXJkxi3EpHFLxheRtZ4f//Agh74WAm7h0uHcmF2Ub2CRGkgEq0U7vMvBtBOWFfDd9izpCgCqTWv4IRwyBm9XqLl0ARUNBwdOVV+bvLLZv7XTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riseup.net; spf=pass smtp.mailfrom=riseup.net; dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b=SCAepBNF; arc=none smtp.client-ip=198.252.153.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riseup.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riseup.net
Received: from fews02-sea.riseup.net (fews02-sea-pn.riseup.net [10.0.1.112])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4TwRMX0tQ6zDqFC;
	Thu, 14 Mar 2024 12:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1710418931; bh=4XaYZ4K4kjoWs7wJlu4ARrWxOwpXL9+TY6h/YS6VsRg=;
	h=Date:From:To:Cc:Subject:From;
	b=SCAepBNFFhTz7kSQ2pKq53nSDD2j7v5m08FKOQShdgTa6Em65dLA16Q25X7mDrRcz
	 ThE9M+1BML5kN4pYstOdgfvGMUB/ADcNimLzB/cADIrUST6lCXzjhVAMmSbVYrPI0A
	 t3OXRb00x9cTl1yy1jE8DaXKJfHIqmACaxf2sVQs=
X-Riseup-User-ID: 92ECBBC0854A0FA67EE9B2A930F9428AEE38875DF6669B8FFEFEBB3D6B8B7DF6
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews02-sea.riseup.net (Postfix) with ESMTPSA id 4TwRMT38Z8zFqjg;
	Thu, 14 Mar 2024 12:21:56 +0000 (UTC)
Date: Thu, 14 Mar 2024 12:21:50 +0000
From: Samanta Navarro <ferivoz@riseup.net>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [patch] printf.h.3head: tfix
Message-ID: <lor74cubqig2xpdblvkxgyh6chwveyrdepgydtxfrpo6psmgrg@hqlvktvd7yqa>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

diff --git a/man3head/printf.h.3head b/man3head/printf.h.3head
index a5c7d1c..8f647af 100644
--- a/man3head/printf.h.3head
+++ b/man3head/printf.h.3head
@@ -231,7 +231,7 @@ and is now deprecated.
 That function can't handle user-defined types.
 .P
 .BR \%register_printf_specifier ()
-superseeds
+supersedes
 .BR \%register_printf_function (3).
 .SH EXAMPLES
 The following example program registers the 'b' and 'B' specifiers

