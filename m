Return-Path: <linux-man+bounces-4496-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 932F1CDC8B3
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83E02304B949
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 141C8358D19;
	Wed, 24 Dec 2025 14:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="EgP4O7qS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D2C357A54
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587111; cv=none; b=B0OdNMnfARgnQvbhREcTyPBd6aSI34SEEanVFhfDsjh1KRuPUlFARPAGeLGnP63T312Ut/sANi2F36F2TcbRdBjIs5xL0fN83ZmC6189I/2/eL07GnxQtLO3bnus4X7GX/cqSoStFv1GK4VLteesiAFH/5+xJhZ+XW2by7kKiTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587111; c=relaxed/simple;
	bh=hqJOtV7ZvM+IVCwxNsPbkhnUwvHGPACGq4qX87IlaLo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=oyeXx2CSb9dr6004f84jOM6dWp+yNs7swHsWBqX0Lpx3J8Jh/pJQPO6x25vOzYUM6FLffRlaSpp11eduIiFVDwWpritrPMXx4N7jFbGVCJVq84icJwLaED/TLfE8h4vWYCF/kA37jVlDSYnJJg+J3cdTxv9NH4bVUcXg6DH7uwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=EgP4O7qS; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587102;
	bh=7Q+0133eUt82MwnL6ZdVirpIC7ZSfUD65YE5HQlxtLU=;
	h=Date:From:To:Cc:Subject;
	b=EgP4O7qSt+TP7I94RA17xUxzFLKwgCayn6nJ6LlxQmCk8I53n+olJYAvd/C8jcWeP
	 CvZlj3WJB5owLKwQyHT2oxRrBSUmm8o0+4ntRwbyrZ68VD2G/oiRrlRtVg8bso6yQd
	 kkQEcnTOcElcLyXIAGyVZ98hzLOEoKk3E1xOIDAsQerqReima6atB7A9xDj2mT0SeL
	 dFOC5wMhPAbEN0Qou/9PZYccLvvyk2Zbd6fyxiPWC/ZrveGy5paF3MQckNXk7oVl+W
	 bOmtSZa7M05BANfg2OYaJAdM3UqC7EblJ1lyLAjQj+8UBL3itknhvCsmX9OnPdc3Nw
	 GEYTTBRKnwY/Q==
Original-Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000208AA.00000000694BFADE.0031982A; Wed, 24 Dec 2025 14:38:22 +0000
Date: Wed, 24 Dec 2025 14:38:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aUv63rnxHP_pKH9l@meinfjell.helgefjelltest.de>
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

Issue:     cmodx.S → I<cmodx.S>

"Program source: cmodx.S"

