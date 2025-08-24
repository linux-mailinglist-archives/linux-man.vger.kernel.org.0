Return-Path: <linux-man+bounces-3614-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8EAB330B9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0127F203D4F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D3DD2DCC01;
	Sun, 24 Aug 2025 14:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="rd0yO1si"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E36A2DF6E6
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046950; cv=none; b=BTtvbwX+tMX6aFTQZYL9tLsigmulWsXdXAPsgsn2l7P6moIuu7UY7DcDQjchr7YJEWTA8vk0oIt1+7PQGPQIKG2RVAkGUK5mJ2D9uu7TXAMinDF62YCzUNtCSOkILWaiVXLwJWXTZvwBP5zdiotT0rgzm6/i5hjeOQ7/JGfMhMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046950; c=relaxed/simple;
	bh=BFgpSiY1L4xpbnEZEuKg5yJAvxb+C6/2FgBaaX+6oyU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=a3TNNhcvB2VcGN06qnsrwI+12ujHjHzZyC8ka3OgFFIQ727jIFGMp8Jr+R5srZGFtsl3LnHfgtKoLILRn20ivI5ZdiE5ldz/e2nltilfghrDmdri8WIW9NR3XF+CTXB1QtyBni0p8s71Jcxy86bAXzRwJJ+mkvFZbc/b7CBGX5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=rd0yO1si; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046921;
	bh=8UqTywLT9fN4FVu8SFjPHJJbOjQ7x3P/JuDZz8g5u+Q=;
	h=Date:From:To:Cc:Subject;
	b=rd0yO1siALVWwBnzup5751xLoyWYCdUqWi22w2rj+CduKSPQ72F+aeOGnz/nZmPj8
	 0nridclg8Mz8DhdezXxri4RHPxCDBOKxTTQxK+iGYLZWlN+MQ5rnNAal/3RSnwfDBn
	 U8rP+F7UMOOVg9Gmw7EEFDeFmj6CPbvRZ940Bsc0V+cAl+SNQGp0kyklou/ztbU7uj
	 ULtb7RptpDriZw101rwxhex7uWdaJjTuWAVUIUVduIL/ohNpeuNsX4X1ZVqrN+CBZM
	 vB1f0WW95Mb2cSkMfBEGTucUXI9vQ17s+C7+GB5JQH3Y4VnpZHm1oV3ctlxIMuxVLn
	 Pk7dIDIYR29xQ==
Original-Subject: Issue in man page getpt.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002170F.0000000068AB2649.001391FD; Sun, 24 Aug 2025 14:48:41 +0000
Date: Sun, 24 Aug 2025 14:48:41 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getpt.3
Message-ID: <aKsmSaMGovnInrf4@meinfjell.helgefjelltest.de>
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

Issue:    multiplexor → multiplexer

"B<getpt>()  opens a new pseudoterminal device and returns a file descriptor "
"that refers to that device.  It is equivalent to opening the pseudoterminal "
"multiplexor device"

"on Linux systems, though the pseudoterminal multiplexor device is located "
"elsewhere on some systems that use the GNU C library."

