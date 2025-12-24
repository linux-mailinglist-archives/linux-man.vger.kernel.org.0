Return-Path: <linux-man+bounces-4507-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B543ECDC8CB
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16F1D30552CF
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F6E6358D3E;
	Wed, 24 Dec 2025 14:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="d/6oKaBw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B2A358D25
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587117; cv=none; b=PKVuPnw7GYJl0wpMPmVHGDigeM8OQ+yK0elLHraPA2e7j5zBUNlDdSTQjlBwgo7cNSUBF5sHvjNSi83KmjO/JycsPvKcHv2FTxObW67yYZmolK1aUd1flpwkwrUxtlweGUGEN8CU6qBqPT+HB3zLg3W/GlzNvtK+dXR5CZWFydY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587117; c=relaxed/simple;
	bh=sXvjf5kMIr6XEifmM6Te8HfzgFp9Ps+fHW4sz1Gmn+8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=C/sY37+jFASwkXcmNlaxorhTOH9n9pl3B3rpqV2W0oejwaUyZ7kF04xiMFSgqpCkcIsfoY1/ynShlz04gtZsEIx3xpxO0evp6r4ISVT0wwcaOBB6Gn3OcxaH4mSdOqPlM+6g5f4NlTG/smO6tNJa6lvYeWfd8v2Vmc4SwxT4UbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=d/6oKaBw; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587104;
	bh=LMglQCNyDY7MaYf4wUUFoC6fjADf9gRzTMh5hXGImgI=;
	h=Date:From:To:Cc:Subject;
	b=d/6oKaBwt0caABR3pe1NKlQzCByMz5VYIlEgpLd9TYGHSPYhmOu3U1LPKLZXFv6WZ
	 umCIvCbTr6id6UDW9Fh2ina2OlhViVhQIJ8uyQiGlcs9+CMK7OvdmuuQ/p7oOI39C6
	 KjXPq/tKa8zJ3jTSqmExa5aCxQhDHpzVgmebwfBC6ORgD2k4t+Als2tMqo73wH7bg4
	 9JSNuhztYpwrG2QxpcYzKN4lX0/NakMC2B6//9u2VLj22wSBN1RoE02LqMLCF1No+1
	 wHncHkg9iVisbOX1CT1/zsYFGX5pdD8PquKkZ9jLL8V8c/8rgngtWTRAzgfIjAvTGn
	 MHbOeSyG23nHw==
Original-Subject: Issue in man page  __riscv_flush_icache.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A3B.00000000694BFAE0.0031993E; Wed, 24 Dec 2025 14:38:24 +0000
Date: Wed, 24 Dec 2025 14:38:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  __riscv_flush_icache.3
Message-ID: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>
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

Issue:     flag bits → I<flag> bits

"The I<flags> argument controls the extent of this ordering, with the default "
"behavior (a I<flags> value of 0)  being to enforce the fence on all threads "
"in the current process.  Setting the B<SYS_RISCV_FLUSH_ICACHE_LOCAL> bit "
"allows users to indicate that enforcing ordering on only the current thread "
"is necessary.  All other flag bits are reserved."

