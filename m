Return-Path: <linux-man+bounces-3671-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE505B330EE
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D840E189B21C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B4832E06EF;
	Sun, 24 Aug 2025 14:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="VjkXBbRu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F322E0415
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046978; cv=none; b=Ly652N65URqK6EQfgc9NtIsrr2478GXd1QwlIhG3J4OhAIsWD8eF2KceTOeATMyA1fUGXrkA1w94ZmebbIU8aSPbcuVqyhzFn2DEJg0Dk6WWkxJwpW6cB2q6UUIz1UQ0VG/IO0gCBV+Yp/T6ZCsaFf+oqMHCpkwUxwV1uV4A0JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046978; c=relaxed/simple;
	bh=TiIiQN4cbzMFcJSybrSfdMv/K2OFLFnQGVgwDJLL0GA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ZD3chOzrt2oFTEj5xAG5Fl0g8dyg9SGqmrOzoqfAyon4njb4FI+jn91N4ZtX7YckEPQ5UHoMS+/X3fZkQFctd+Wv0KcvWYcCZJW5apG0ZdStxo+xbYVq6Z5/X5+opQ9dLpCIgrwSpZXJjSWXgqm6y2UU9ED4whmxVJlSgvdXP54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=VjkXBbRu; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046928;
	bh=sWXLIpbP/UiOgJgKEv3EeKZy6PNivZ+iOBXuI0O2G6U=;
	h=Date:From:To:Cc:Subject;
	b=VjkXBbRuti1dJYLqFY4dHsTfos9qmvYw1p+bNMVOIAFDNOtYp72CXgoabXiWtLHlZ
	 NvwUN5jolZx/o5iJQ61NDwNYJp6iMmabcOfvAd4uCH+KXNFTIZ2lktJi7sfagqa43K
	 ITLLLvHgLrV1nE78QyGQx0F87MOr8YpAGOv8vNvQK7wR+Ds7iAwOyxJM0s9y6ewfkM
	 EGF9LdrdA2dujx2W66KdLGaGzcChsjFAfrMMiL6FBPr5VKPo1kGFfiXPXewEEyMs15
	 Zs5TbTaw9R6hB4ohlUltvlUMgMOR3HDmsWY69XDgG6C7EIgzwF6K0OUDB1n8/JiFvg
	 n4TS1tQfELbmA==
Original-Subject: Issue in man page pthread_mutexattr_getpshared.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002164E.0000000068AB2650.00139791; Sun, 24 Aug 2025 14:48:48 +0000
Date: Sun, 24 Aug 2025 14:48:48 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page pthread_mutexattr_getpshared.3
Message-ID: <aKsmUOXEcLwVhC0D@meinfjell.helgefjelltest.de>
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

Issue:    I<pshared is> → I<pshared> is

"I<pshared is> B<PTHREAD_PROCESS_SHARED> but the implementation does not "
"support process-shared mutexes."

