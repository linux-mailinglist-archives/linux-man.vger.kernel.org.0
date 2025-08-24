Return-Path: <linux-man+bounces-3681-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B08E8B330F6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1F951B25F2E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11B102DFA2F;
	Sun, 24 Aug 2025 14:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CgSSDNmH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780322E0914
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046982; cv=none; b=KWZsDiE28NDJIvlA152MzJuVGwc1GjXWpIZ/LZtq5PNGiNJjj4vqF6lsU94mEnahPTvuYhLC7sJmu126RT+x5q00G12qkQqJLBoKckVFeD9IWAQXTxHsdN2o/mXBjEICNxc6dOFiJCKcbR1FWq4A6gx1OTwlewHzavGxXxgbSJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046982; c=relaxed/simple;
	bh=G8iyJ1Ew25Rb7Or8neKCzzIIio9fcJCrT3SyBuZK36A=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=SPELdPeBR5tGihRpJJZmApu87UPTfRwegURjHiOJhzvO0OTFaYqE/5FX/hM9CdBI+YKLx/wWpSJ/2lAjMbUBA3iHxe1Nr7i8e/irwGhF7dDGR7awsWxnkceamsKLjoWCMzWhzgkzjybi2o2XkzA1XlE5xFZehJ5KjG9kQMb8fQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CgSSDNmH; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046931;
	bh=W7tOjFv307p1h3URmcDVXuHlaiyRMJGXSvYSaNdRT1k=;
	h=Date:From:To:Cc:Subject;
	b=CgSSDNmHD27LWTNY3FlFxSTp3TiiMsveQelPsfVhbIe1JSISMWmFxOiV1Lf0g54Ei
	 S+rDIz41z+eOObo829Tr7ymcF1lCD0fUv9d623YnfdNGks/2HoE65SowolH/N5RVwr
	 PRjQKht6KEwtJ5+BwIt8URIW4c4JxN/ymbtK32S2GCTGiyvG66Nbq5FNtoDyl7xDaa
	 jVsRIrNCMFMv+ILr6C5PbtuflXCM0PEFBpQtAsjUY1PAHI6aMhXrvXM2zacpAQL0nz
	 ko1YQ4RNyK45t/GtzIe9Ykyt+bdaDdViYbAzWMa7XRNLqwJJXyAQHpRvDrt/Wxjmu8
	 Q5Jc+/Dp2FEJQ==
Original-Subject: Issue in man page readlink.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000202D8.0000000068AB2653.0013988B; Sun, 24 Aug 2025 14:48:51 +0000
Date: Sun, 24 Aug 2025 14:48:51 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page readlink.2
Message-ID: <aKsmU4aCX_S2TaJZ@meinfjell.helgefjelltest.de>
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

Issue:    What does "like B<readlink>()" refer to? This is the man page of readlink(2)

"If I<path> is relative and I<dirfd> is the special value B<AT_FDCWD>, then "
"I<path> is interpreted relative to the current working directory of the "
"calling process (like B<readlink>())."

