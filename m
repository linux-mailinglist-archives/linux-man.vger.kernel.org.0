Return-Path: <linux-man+bounces-4484-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C584CDC89B
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFF6C303D6BA
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12743587DA;
	Wed, 24 Dec 2025 14:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CmT+LANR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9E0357A54
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587105; cv=none; b=olNNlD64GBOV0esxqzRaNpXrhqHFQw0NdmaSyX4xGLf1gCdUjmmY+r/MOEPtz51HndQcPbZsrEAO5ZMoKQOZFF+PKnNy7KIND88AaPtE5CruXIusEP6mZpaFbQaXpauwl3v+Os9K+hURu0tQMSFAgMmA6ocUXXRbbtv32mfnhlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587105; c=relaxed/simple;
	bh=PYGIxfVShVbbflBcBdK1TVmrZcSwNSmgRLz2ywvnPiE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=OG9f6LakBlAgI1Pu6mCkZhtQ4EqASSBKHUcunm50mCXzjaIs1QoWcCWheJ55+34AMXgTC2psOvDHXbcD24c+Ml/avYgRnnzsSs9GQnLy3A4+3qMY6H5b1EBTxKaQqTEisBlpQz43mXKfwAMos7vOqXTQn9fnoDz4+Pn8udTvJys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CmT+LANR; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587101;
	bh=robXx0FQli9nsAipHRaiv9WOJC0l0elNWbAQHRYzCqs=;
	h=Date:From:To:Cc:Subject;
	b=CmT+LANRuM2RVDNMnht+Osl3jlWDtzicCjMy9cYvxHVWx1yo3h7Ac+n+rwi0myrR+
	 JoCVHbZUDVzkUXh6WKPNnonQUrZlrzBtai225TZ2XdqbC0gxxLutfDsLloPueI55sS
	 RHzn8sQ1dgEfuHMt0R7GUEoULglnogL3Hie3rG3kapoqT3D7a3dfQPLy6Is6cTyjI0
	 LmRkeiYzZibKvPbZO6PelKNB10+UhNX7fkOwHKFpcYfIdGBmFyKO1JeCoLr+EUFZBJ
	 Dy2PY5TGV13ILT6Fs5t77R1yRWlE2s6E3VvKIMgG6Vf3DXNJEehRRT7uS7FzP9XjNT
	 eK1cM+ogFBJxQ==
Original-Subject: Issue in man page mbsinit.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000203D8.00000000694BFADD.003196EB; Wed, 24 Dec 2025 14:38:21 +0000
Date: Wed, 24 Dec 2025 14:38:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mbsinit.3
Message-ID: <aUv63cs-jMDji_PZ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    state → shift state?

"The function B<mbsinit>()  tests whether I<*ps> corresponds to an initial "
"state."

"B<mbsinit>()  returns nonzero if I<*ps> is an initial state, or if I<ps> is "
"NULL.  Otherwise, it returns 0."

