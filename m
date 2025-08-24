Return-Path: <linux-man+bounces-3658-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E9AB330E4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 510211895B22
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13122DF6F6;
	Sun, 24 Aug 2025 14:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="NtMhp2Ph"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2260F2DECCB
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046971; cv=none; b=YpBDlE6RL4YrX0R9GFqQhLcRdLijpLkr4N05ZuSEuVveGSJsJBYvtRvHAW8a52YISdGfNgUv4GziHqFb/SiV4mfFbw68XPzqN9ViZu3nZq/PaODaI6yGir1h6HOqcMwsSPPqzJWC+PKOlxhOqCHPEuKZMnpLA5/4Eprd81GqERI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046971; c=relaxed/simple;
	bh=dMeusXMPMJAfRGZj8skO/ca8XGLgvdsQpPjCBNP5gZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=U4nZ/5M0b5KC7jmUX+6+NP67E23NHR7TFLquu8q4JmzpOAJS8CFwA2c49iUeFpKvSnCGt4wkPw1OuAIpBPBJCVn89nlr0X3zfMl93+149kRn1mm4ib2Mn4Tx05ILUMMheETuWzRufDdbzKChIuuteA/ckukEr9QnJvruQzJpXXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=NtMhp2Ph; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=qIoTnVsl6WrZqlP4jSyn7qHZn6x/02A53PuOODzpNo8=;
	h=Date:From:To:Cc:Subject;
	b=NtMhp2PhVZ9hbHReous2bna9G9JAjxIcxDOTrZ0cuUwG7VhaILPCpipIxUmnv3KXz
	 dQ8Yr6ute5evdG0CmbcOnUW0Ur9d2S0DLvZHwEByL7j4hWWZN9gaJjd3rFXlY82EMn
	 I1BVwjDAnvcIi+r/BN9v30Izstrh5n/hQ/mgst9LcPKoIZp2aSxsGYbKsE6oYalaK4
	 5gwYbb2BkrGNvm1xAD7gNzAQ+znRzvYQXXfzLKB0/JKJ2tX2nJvULtf6y2LmoefN23
	 kNXKfMXAJRo0SC3/CfJ5kXZmsIv9UbUX7MRtddVMXc1maDTktOcwMOy4kE/vHVFcOi
	 WOWYyas5A0nUg==
Original-Subject: Issue in man page PR_GET_AUXV.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021633.0000000068AB264E.0013964B; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_GET_AUXV.2const
Message-ID: <aKsmTiwiVDxouiE_@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t size → B<…size_t> I<size>

"B<int prctl(>size_t size;\n"
"B<          PR_GET_AUXV, void >I<auxv>B<[>I<size>B<], unsigned long >I<size>B<, 0L, 0L);>\n"

