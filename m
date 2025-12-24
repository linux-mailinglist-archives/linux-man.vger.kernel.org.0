Return-Path: <linux-man+bounces-4485-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B391ECDC89E
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 390ED3040774
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D3313587DF;
	Wed, 24 Dec 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="DqtPvWeC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F13C3587CA
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587106; cv=none; b=kVJcyD2IR1SfsAFYMeuQr2kPhBQXS6jl2l407G0ECxlU8dGIMS/jsfyj7NMrOD0Gb6Z4CaQJki/cbPGmzHKmZtkUR85+J6XktcBA2/bNrNRrCqPBjzY35pLTWEmCeWshPnPPdEoougUssqwnZdvPORA+Ww5Kujkdo54SUN3F42E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587106; c=relaxed/simple;
	bh=mkq/TVpXASIyFzqwclkXunQqQN69AQfk8inDioLKFBg=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=KoVk2SBlrRAEwSe5LyNguc4/goI9f4ITWKfp5qMJWGlj0vo9vCuQ7J7bbFVogLwzdzPDvXWQORv9g9oZhCPjAQqCrOqkPof9CBQmp1LxnNq5u3q3JECICSwlypsiQiPTbswfqT7DBIhViqWw9Z21tdI1cw6BvCFkzYtC8xD1Nc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=DqtPvWeC; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587101;
	bh=7h+Bq0IQYvPZwSjlCW2QMURzr6L6Xg/p1dfJ6MTVDOE=;
	h=Date:From:To:Cc:Subject;
	b=DqtPvWeCzJyZSkZwUpdYJ6nR+ZONpnAVNOMhTV8mq9l3ix3dI5FuG+TTS2d/ur3d4
	 FCHVh3rMo8+DOBIkFCxoAG3vHUekrmR5QuMI7sfd5kMpNKFU5VxonYa2RpogTRlE/k
	 NMJOWhFWmBMSrgP1qOALfDCWac9tNennjBnbMztSk80do9EofbRTy7ech60QDxrsqy
	 aUSSkt3wkOA9Wax1M4VHIV3cCJJiY5ONYIGxx7ccKKQKkM49hTmrPuz70OfU4q8o5f
	 RnpEJ4Ok4oUaju1VRj4dFVqksVR53LXm1C4o2z1KXPYJMxi1BeRwcY4vRjTkAdoECb
	 dQiHykQAkbtwQ==
Original-Subject: Issue in man page mremap.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020550.00000000694BFADD.00319723; Wed, 24 Dec 2025 14:38:21 +0000
Date: Wed, 24 Dec 2025 14:38:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mremap.2
Message-ID: <aUv63blJVbEyCqOs@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    Why is the comma bold?

"Moving multiple mappings is not permitted if any of those mappings have "
"either been registered with B<userfaultfd>(2)B<,> or map drivers that "
"specify their own custom address mapping logic."

