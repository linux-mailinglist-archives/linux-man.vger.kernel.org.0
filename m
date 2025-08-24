Return-Path: <linux-man+bounces-3598-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B08C9B330A9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BF61441DE4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ADE22DEA7E;
	Sun, 24 Aug 2025 14:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="gfjfv+3k"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B272DECCD
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046942; cv=none; b=Ld1ZhWC5AQVIN3N9sO4TIa0twT5qHqGfKAEZ6D/Xr7LdKs2EtVvNO2ebgHGnPyWSyP4/EJG5HS+EI8KwoQGrwjbyoHbMbJNG6BqanCON6GM6SVvU2rCNp9cwlAgT41atHWj6FzF6Zp8Ejspt1p/+LQBcXILUBKgf5R2a6piW6Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046942; c=relaxed/simple;
	bh=3H1uCCMYWBODlfkYNhTWY8ZN36cLkPuEoZ6FU7D5g7Y=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=Mv+DDrZzHwDtnuWLcCL8OeDn4f1KAWXsAfkrUYhxTSep5vqIi+GG+iXE8Hmdkpum+KyIXr2qr+E8GcEOMAhOmw27HhpLBn1T+oQnqZGAeRRjfHs1nPrpsMxPCbzxxaio+cRgjUqMT5WSiIbSVIUtbXcbYMheQkiGqZrq7icczGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=gfjfv+3k; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046919;
	bh=4rC4kB5RRPKkheNzgEU+IuUL6qj+Bl1HlwcFctLRyQQ=;
	h=Date:From:To:Cc:Subject;
	b=gfjfv+3kLai/ITTqYHNoDBwdtgHQb4xtYeaGjz+4B/QsKEfwiVK6YZlUULjjfG7gS
	 aTZUKyK5nyYa8fRMg2eE1YoFSNIOxot9t3cPyAsbiUpVY8WxCcHtAM8yFg8c9HhhqD
	 S0ruOX1+7HsAdCM/eNYFirZZJXGIv5ljld6lDgmX/qf6fc392gEmBCWwdEz8fG6KDn
	 fp+AZPvVDUTynjneZ9SFV2PtmkxVT86CeQi2CIK1FdFHBHpbelt07BqLuBss80HeaR
	 d0K4350b26Wgj7eEGcXlWfafmMS2a5/pSTAb/sJmc+azG1Hy+sQosiDJM3RjSpLYBt
	 4c/s2ytcz1dkQ==
Original-Subject: Issue in man page fma.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216E9.0000000068AB2647.0013906D; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fma.3
Message-ID: <aKsmR8KMxEjAmxGL@meinfjell.helgefjelltest.de>
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

Issue:    According to above, a domain error also occurs when I<z> is a NaN?

"Domain error: \\f[I]x * y + z\\fR, or \\f[I]x * y\\fR is invalid and \\f[I]z\\fR is not a NaN"

"Domain error: I<x> * I<y> + I<z>, or I<x> * I<y> is invalid and I<z> is not a NaN"

