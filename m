Return-Path: <linux-man+bounces-4493-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A3FCDC8AA
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D4CF304840F
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503D5358D12;
	Wed, 24 Dec 2025 14:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="PT4lIQol"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927F93587CA
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587111; cv=none; b=ToM0waNW7Gq5y4vlzFdjMnka+V6PoZknz+fTYkp08v0bwKHA9NV4M6M0QUJnEqVkeVHOTFDZj9omzwkAUMP1s5/v7pqPJm2ST1yAktzXHqU97Lwn9Z4D29wixnzbZJPecuoao2AP/PtBEnuvZxG21In0mISfuxUFUComW5GHgjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587111; c=relaxed/simple;
	bh=mA0BcRaRu1hJuWfORC4dSK5HMr0dcVxu1FMoiMU1UTs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=MzlGz5KGun97NiR04oryCJkViOerwqbieejKN6Nrp4LgU6rOJaQlRt2WCHUShNaisZzpAyO1DG8+/WY+X40UY8EJe9efw1S0i0ntLLe1c5iaHdJcwn+gssqweAuTFKyY9Pfq3ZbRyKZNnvpxeZUldjBVxgpz0/mRTPRXDpo+v9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=PT4lIQol; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587102;
	bh=yUf1ex6c4qvfgwv2vJB/99rlQ60KUSWDknV3PH+V7hE=;
	h=Date:From:To:Cc:Subject;
	b=PT4lIQolWYFZRPlj72HHEb0pQrwwRj0fdOFcZRilol1S6UQLH4onT2WIqG8Fin/Zu
	 6xbF7co8WWRXr8phyO8X6KgTwChouSi4US6jvI+6R2RJLrM6WDqsBSLJHxrV6pXTLx
	 glpvXhdhgptbL4it4T4wO4lQQGODUw6CDCfXtVy36/t83hlRr7c3+tu2ohrZB2yF7I
	 WlVjzxqsDt9XzB0gF1GfmpljuIScMy3Q6s01hg+GO/AH1Cyps3aAyxtbmikC9q+zyA
	 kc/Q0f4L5ZpXgqXTPGJKzFrXID08XtsdEw/KyO62Zdt+VFNuQFntryfUbPucNvj4Ea
	 FM8x3QiCTqGiA==
Original-Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002081F.00000000694BFADE.003197F8; Wed, 24 Dec 2025 14:38:22 +0000
Date: Wed, 24 Dec 2025 14:38:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aUv63mfzFe9WIr4z@meinfjell.helgefjelltest.de>
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

Issue 1:   modify_instruction() → B<modify_instruction()>
Issue 2:   get_value() → B<get_value()>

"The following files are meant to be compiled and linked with each other.  "
"The modify_instruction() function replaces an add with zero with an add with "
"one, causing the instruction sequence in get_value() to change from "
"returning a zero to returning a one."

