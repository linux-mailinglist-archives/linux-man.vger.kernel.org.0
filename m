Return-Path: <linux-man+bounces-4492-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3E1CDC870
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:39:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0D648300EA24
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A91B358D10;
	Wed, 24 Dec 2025 14:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="M82Cgc2f"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B8C357A54
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587109; cv=none; b=XLr7tErjyAeMImp1s6vXEOuM0wpZsSNB7oO7+Y4XprLTGPOEOrvfuSJlKsV89oAHYhuViFumL9V9y7+1IoclbWU4g1y8LKs1LXZqDt6U7MYSm6MKzBRN9tvywLjBJPTZAYolP53v0hyt+0QRErRcvFZPmeUjP0FafB+b3K+YMuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587109; c=relaxed/simple;
	bh=l7JG2DsI91M5AxYYK6V5tPuq94hy2OWdjWHCMlH7tbo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=u3Ujxg1a08yAyEWlETmt34NqMHdo75OGOwWS6GsNZpwuvi44kzlJl8MOH5mK3Q9SUJn1FQwJvwSmrY5l8RaA+m71+sJqosNTIcdDScfM3VDlhPW+vDjezMM7xuXZ+57I23eB0JpEirRdD/wbUuc3mC0j8xrCLnqNNUvhyqBEqBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=M82Cgc2f; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587102;
	bh=HUptiKZ47dzT7YiEeLSP62bIEPuPjJU80aPp7/QaL1E=;
	h=Date:From:To:Cc:Subject;
	b=M82Cgc2fXn+HqxV0obU82krRd4BTxuYD8TH7LE3cQS+AF3lQeWxhVWAUxeGs03TMn
	 12DdY0SGhg3sDxmBUfZvSO7HJ3ePI7xtyOJGFjTSeAJg3gZg0AMu1H4ypQIImgCRJS
	 FitRtDCJOCfOx4U4tjy4KBtgQHZGVhe02/EiOZ30u9olh4fElLe2/3nP5v8pIzIL5n
	 ludoE72u273bbjZt8rOCpXrrgA1olNn1ql4Bdhm6LiysKEFdNe3Ns7nqCjP0OmqDJZ
	 bq3D7s7jXQhGjUVrm5zBelZHinfqAT6CXKSHeTZGocAYrYF7YBCc43tOhkwnrcM5Z2
	 uQjYGR2xK4D5Q==
Original-Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000207C6.00000000694BFADE.003197C6; Wed, 24 Dec 2025 14:38:22 +0000
Date: Wed, 24 Dec 2025 14:38:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aUv63u9zgsyD78QB@meinfjell.helgefjelltest.de>
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

Issue:     scope → I<scope>

"When scope is set to B<PR_RISCV_SCOPE_PER_PROCESS> all threads in the "
"process are permitted to emit icache flushing instructions.  Whenever any "
"thread in the process is migrated, the corresponding hart's icache will be "
"guaranteed to be consistent with instruction storage.  This does not enforce "
"any guarantees outside of migration.  If a thread modifies an instruction "
"that another thread may attempt to execute, the other thread must still emit "
"an icache flushing instruction before attempting to execute the potentially "
"modified instruction.  This must be performed by the user-space program."

