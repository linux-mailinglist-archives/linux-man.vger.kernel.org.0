Return-Path: <linux-man+bounces-1077-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE84903789
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 11:12:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F695B29201
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 09:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B922A17624A;
	Tue, 11 Jun 2024 09:08:56 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F36117623F;
	Tue, 11 Jun 2024 09:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718096936; cv=none; b=FuvnkU1SUyYRDHvokx5Z+tyTKTJ3mPPE0BME1c0EhfitLKW5WFOw24rcLYiDyTWcTgnt66a3FlT2hOQ/CMJtFmZPA8ZWI38xdhpeB3+0DeQBRRkj6r8H42D/BFgh/mmM4s7ZVsAlMxc2rVyZeFVi5Mp5bthliMgyodLIO8j/UyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718096936; c=relaxed/simple;
	bh=3Qpcrsi5YIU1o5rErdRHJLQgzJK7YE7M6iPbxLQrzJE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=WT+i1do6IjOdO8bhI6zRlZl28R2l4tJYIs6NKgApdIufcJUV+TYIyfOLraXPEKCkd+MELtka5HSdYwbPOOYvjU1/zd3dcHOamFwxblLuhh1M6Ro7o28876xtNTtBQu8d0BlqzmnSTnrhiRsVW2OFnMWvfSvNx3amLo6v3HmHkg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20A8E1424;
	Tue, 11 Jun 2024 02:09:18 -0700 (PDT)
Received: from e116581.blr.arm.com (e116581.arm.com [10.162.41.16])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1D4B43F5A1;
	Tue, 11 Jun 2024 02:08:48 -0700 (PDT)
From: Dev Jain <dev.jain@arm.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org
Cc: mingo@kernel.org,
	tglx@linutronix.de,
	mark.rutland@arm.com,
	ryan.roberts@arm.com,
	broonie@kernel.org,
	suzuki.poulose@arm.com,
	Anshuman.Khandual@arm.com,
	DeepakKumar.Mishra@arm.com,
	aneesh.kumar@kernel.org,
	linux-kernel@vger.kernel.org,
	Dev Jain <dev.jain@arm.com>
Subject: [PATCH v2 0/2] signal(7) fixes
Date: Tue, 11 Jun 2024 14:38:21 +0530
Message-Id: <20240611090823.820724-1-dev.jain@arm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is a follow-up to the following, or any subsequent versions of it:
https://lore.kernel.org/all/20240611075650.814397-1-dev.jain@arm.com/

This patchset brings distinction between the set of blocked signals stored
in uc_sigmask, and the actual set of blocked signals. Also, fix a wrong
mention of sigprocmask(), and replace it with sigaction().

Changes in v2:
- Make the description clear and concise
- Use semantic newlines

Dev Jain (2):
  signal.7: Clearly describe ucontext kernel dump to userspace
  signal.7: Fix wrong mention of sigprocmask

 man/man7/signal.7 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

-- 
2.34.1


