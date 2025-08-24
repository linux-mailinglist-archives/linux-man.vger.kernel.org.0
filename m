Return-Path: <linux-man+bounces-3669-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9137DB330EC
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92FFA1885CA6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20AC02DF6E6;
	Sun, 24 Aug 2025 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="LrZLsuZl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916FF2E06C3
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046976; cv=none; b=ppurVNS7nMJaZcZaU6ViGsIeqz8gR36kiwloy55z8R9vJhVdzRwl9o2CSB71gRcLA0pS4Cs6QC8xORJYm2mLm7CtasspV1jmJmuUk1rlFK6jUtHqEuWtAFSrWcQLwwv3d9dV6fYmTFQa4YR8Pc6w2Z7X2mH4l/GEOu+WhjyeKjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046976; c=relaxed/simple;
	bh=pi/v8OhDvRmQlDj0oGQMirWYD3UtZELSqfyJNAgbkXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=q/Jd74m44RtF9vY+nDAyEO+D3vH2WW8hlX6xkHB7kVTiWLLHUCg/JIfC7pptlNtvuaHA3EhVGKK9vJpWtY2xeUL3CTxYR4M9jgfcbXcAsikp40H4R+xhMHe7g04YGKuSRbK5yCLtWu9cvx+5vEkupOtawFtykED4VLT+4C9mTck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=LrZLsuZl; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046928;
	bh=/0+KgQc8qh9f+00h7nXPfyGtiHsgkLscwvACeDUoTEE=;
	h=Date:From:To:Cc:Subject;
	b=LrZLsuZlIeh9IkBuhXhhZr8uuLF32wakOHTI3Vx1JRj2CktSIlKUmZLBlRpgA15eQ
	 GFrxogDL02I5QPKiebUqmSeRub/stJi5rImeSZVwie4fxLvXRK3UL8KEvu5g7McaaQ
	 n4eWblqKQVK86QM+wqDV0ZE4mYxP3v0OPf6XFjI45Bs1o4U2LqoFk7KOyGz/cZ5T0t
	 oUl7PslQvxbp0Y3foY/DO9IANfY9GjmA4EXDrHEqSif7izINEnt4yhZ9WCun5DL/z5
	 rCixkmHT9EIhF3hFmbXaF1l4tKt0XLg0EeJsAl5mJWRFjHGQl6c5cYg7dt+db1vSjo
	 idQtiNCeyNUDA==
Original-Subject: Issue in man page PR_SET_TSC.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021776.0000000068AB2650.0013975F; Sun, 24 Aug 2025 14:48:48 +0000
Date: Sun, 24 Aug 2025 14:48:48 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_SET_TSC.2const
Message-ID: <aKsmUE6-gzMjISis@meinfjell.helgefjelltest.de>
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

Issue:    The SYNOPSIS does not mention an arg2

"I<arg2> is not a valid value."

