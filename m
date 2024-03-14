Return-Path: <linux-man+bounces-589-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7805D87BCAF
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 13:23:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3491328243F
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 12:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFAA96F51A;
	Thu, 14 Mar 2024 12:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="RWELXn4j"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0.riseup.net (mx0.riseup.net [198.252.153.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303746F50F
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 12:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.252.153.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710418971; cv=none; b=CMogiAZaBrXpuRwSQnpYWEgCZ7uy5MR9gBzRSVy1xX0P/WFjEbPXHQ2Yqj2OtLjmtNW/HWopF/z9nXoZflfWrgpX66K0FyLsOXd/rimpFnFsry8JZ8DhpVgjsHmdCb2Q8EZ9avh1Sz5DLrv7+vwyL9+RYwXuDkT8717iA+a/414=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710418971; c=relaxed/simple;
	bh=v2no2IJU7D1WR1HZkmsDO47X2jcsFUxeuU1co0xR38Q=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IdAsN4vui/iwt4ZvSNXTXLfmaaPpL4ry4jbMOhdWe7kWZLLR9XQlttwfCRxoGUh8IjlM1JDOYIST3neduHI7XbK36lYDwaBOz1aPinLesmrtKgttb11TC4zOjtHsSn1wCvySq4sGZfYaULch9Mq2Uo+uwuIY+pOquhURBA0+BKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riseup.net; spf=pass smtp.mailfrom=riseup.net; dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b=RWELXn4j; arc=none smtp.client-ip=198.252.153.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riseup.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riseup.net
Received: from fews02-sea.riseup.net (fews02-sea-pn.riseup.net [10.0.1.112])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx0.riseup.net (Postfix) with ESMTPS id 4TwRNT425jz9tsw;
	Thu, 14 Mar 2024 12:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1710418969; bh=v2no2IJU7D1WR1HZkmsDO47X2jcsFUxeuU1co0xR38Q=;
	h=Date:From:To:Cc:Subject:From;
	b=RWELXn4j8b5sGhXXyqOdvY3mvgKHhTRqsZYdGgb6wBfewImKeaHQ6HRIjBSAGzRvL
	 ZOuBVEawaIm4Fhnz/3Pl4OAKqt4NFsXobaIFfXMr123GitrZ3zD8Zgz3eZ7WLhn4wo
	 pxkNo7J7PsXFczmg8g4RFyCiuSH1K8Bro60A1gr4=
X-Riseup-User-ID: 8FDA64926C8BCDC2CF3A8BD338E75718735D22AB53BD6FDDDD50922F37A3FDAA
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews02-sea.riseup.net (Postfix) with ESMTPSA id 4TwRNR6dsKzFqjg;
	Thu, 14 Mar 2024 12:22:47 +0000 (UTC)
Date: Thu, 14 Mar 2024 12:22:42 +0000
From: Samanta Navarro <ferivoz@riseup.net>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [patch] utf-8.7: ffix
Message-ID: <2i4ogysp365dz3vtoaotr3j4lohycye7j6osvgo26x3wu47oer@ftoniborqb7u>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

diff --git a/man7/utf-8.7 b/man7/utf-8.7
index 2ea14b2..bb3807a 100644
--- a/man7/utf-8.7
+++ b/man7/utf-8.7
@@ -43,7 +43,7 @@ This means that files and strings which contain only
 7-bit ASCII characters have the same encoding under both
 ASCII
 and
-UTF-8 .
+UTF-8.
 .TP
 *
 All UCS characters greater than 0x7f are encoded as a multibyte sequence

