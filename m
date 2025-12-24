Return-Path: <linux-man+bounces-4494-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD68CDC8AD
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 475AF3049B23
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C323587CA;
	Wed, 24 Dec 2025 14:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Rcn1RPKa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB41357A4B
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587111; cv=none; b=S2Q7INqjZfZhIcoK77xKC7JYBaHbO94hzfX9dbhB6TfcPj4tCcLFgys+wqwwNxbgI+mRH72ZQezX16CRBWiN4VhxRks71tMRKG7PGaeiknDO8GvOckSJzuOC1p11n6vGouIUyI/BcSN7F04bRoT+Be4CeO2WVGWJNJcxwMgz76g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587111; c=relaxed/simple;
	bh=Jb+RqIeTkux7oqreGlgXYFWxhURBxHMtaMfE5U9WFnM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=MAcEDrjTL73Ija8SSX8b5p5wcDz8KzGcJTdMUDodSfws/vjqxWmQjsojX66VLvCfUddTTAGDpPfflOjGAvLCizLUE4nG24JDtRiSD1Em7gkPJ2Pfm+q9/voVYRbB0f6LeSGzLsIFk7bQlvF98YI7kJcc+zL1P9BMYzIqTWIdRo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Rcn1RPKa; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587102;
	bh=qdIKgWiG/A32/X/xJ0hLSPIM8ELqr1tNnwUklK1mps4=;
	h=Date:From:To:Cc:Subject;
	b=Rcn1RPKaJhlWOYectFFgGQpvBOTrWviviiLDquDpBvRJxvTfGETIr29cc1pZFa5PD
	 1Wj2NmrdQUca+odF1yojheM96iaQGjQix6QgtvJa4TKvJzOySAE7EkqdMGLGSkrmHH
	 PlV3eEA+LjUZF45inKqxJE3k6cEKgu2XDAfLnJ/qrEX3rcZs8mo2OrJEgMOpAJAwyi
	 qS0dssX7ud/J87XInG64JGdchOuR06s4nUPfpFssZGo/qxPzVmSV9wbkTIdJs76eJd
	 QcdVR8MTHlweqv0ZdnP4yCxlJSZWW6u+VlSs7qaOi1bt9wg6icaYelHwwB7aTGsz8H
	 4jAHtpIs9xgNw==
Original-Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000207EF.00000000694BFADE.003197DF; Wed, 24 Dec 2025 14:38:22 +0000
Date: Wed, 24 Dec 2025 14:38:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aUv63hoo4aRlLwV1@meinfjell.helgefjelltest.de>
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

Issue:     eg. → e.g., but I think i.e. is correct?

"In per-thread context (eg., scope is set to B<PR_RISCV_SCOPE_PER_THREAD>)  "
"only the thread calling this function is permitted to emit icache flushing "
"instructions.  When the thread is migrated, the corresponding hart's icache "
"will be guaranteed to be consistent with instruction storage."

