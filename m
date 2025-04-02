Return-Path: <linux-man+bounces-2723-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AD5A79331
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 18:32:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AABC189759D
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 16:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8F51C8604;
	Wed,  2 Apr 2025 16:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=doas.su header.i=@doas.su header.b="tCWFNFKI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24421.protonmail.ch (mail-24421.protonmail.ch [109.224.244.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC6D1F151B
	for <linux-man@vger.kernel.org>; Wed,  2 Apr 2025 16:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743611260; cv=none; b=hhhL51aJfDra54In+39g2yJ24W2BxpF83Sg1NLUxLCtacFJJSSxjohSlz6MRFE5FIBR+7q/aoGSqWOzPqEhZCknTf+yL/kdOeSjcHVW+4+m+P3Z6Fvvvhi+eYng5etCvZm5eZ16U2w95obQvxPB/5cIYmoySOYWsQCWFcI4/0MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743611260; c=relaxed/simple;
	bh=Ljz5ScGXc3wbzCFqYbbU60JA/jSSTXphQqlJH2jbsp4=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=EqOhaZtWDBJC/f0lmmzbFushfnKst93AaP13B3d61RlUqykZBC8qcsOGcojmS+n5zmCHD1n5efwLdesRBTZvP0HmwW8q1IgyYe5MA3/+ZFLtxViLi7WIqO7queFDzDvTJ03PCoTVxgYiDJuYlG0JM42cMWsJZs+vV25o1vhIEhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=doas.su; spf=pass smtp.mailfrom=doas.su; dkim=pass (2048-bit key) header.d=doas.su header.i=@doas.su header.b=tCWFNFKI; arc=none smtp.client-ip=109.224.244.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=doas.su
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=doas.su
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=doas.su;
	s=protonmail2; t=1743611254; x=1743870454;
	bh=Ljz5ScGXc3wbzCFqYbbU60JA/jSSTXphQqlJH2jbsp4=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
	 List-Unsubscribe:List-Unsubscribe-Post;
	b=tCWFNFKIiA8jg43AiSYCf9dZfIIhZTv/bYL2l2Pkm2XfpBsBPBAV5nQDvsH4XcTL8
	 3mvi3AezZQMESOGJi2D1Y0IamaW+2t2huluCj+GcY3pI4a3+b/+/S1s7M/cXQi2NOC
	 G+WlbHrgbRw4dcjBZ01MwL0CfvB8h8RIvjN8iuRCeXzGWqUz3da80xuQfGa44BuXc/
	 y3nBcfaviYkDF/9tGmeLepnYLHjYr3lIZthwqdarnBdSO6EASqw52bLvWBM4ZNWdaP
	 4QFYFBbmKbbiUJnPClLzJOkDKYOAKhx2gR89G7nIdgnKAm9jgMFvPmWfQKWW2XXJgk
	 tcTcOhuebLuWQ==
Date: Wed, 02 Apr 2025 16:27:26 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Miroslav Cimerman <mc@doas.su>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man3type/intptr_t.3type: Fix uintptr_t range
Message-ID: <wsk_s0nLv-HYkjBgAMVkOJW4DSkT5iYYr2anB6R-7X8ftiYyEKKOuNqJlE1jtRjeZjSvnlkxJ4Lm50DmcuS9ftSR_OQxu-8RcySOD5vTaKk=@doas.su>
Feedback-ID: 68733818:user:proton
X-Pm-Message-ID: daf7e4c502ad3bd16c290e965af83c110c4b42ec
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

From 066e0157fd049048e2e5437023c05a674d50c7aa Mon Sep 17 00:00:00 2001
From: Miroslav Cimerman <mc@doas.su>
Date: Wed, 2 Apr 2025 18:01:26 +0200
Subject: [PATCH] man/man3type/intptr_t.3type: Fix uintptr_t range

Signed-off-by: Miroslav Cimerman <mc@doas.su>
---
 man/man3type/intptr_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/intptr_t.3type b/man/man3type/intptr_t.3type
index ac7b18214..30825eb1e 100644
--- a/man/man3type/intptr_t.3type
+++ b/man/man3type/intptr_t.3type
@@ -41,7 +41,7 @@ such that any valid
 value can be converted to this type and then converted back.
 It is capable of storing values in the range
 .RB [ 0 ,
-.BR INTPTR_MAX ].
+.BR UINTPTR_MAX ].
 .P
 The macros
 .RB [ U ] INTPTR_WIDTH
--=20
2.49.0


