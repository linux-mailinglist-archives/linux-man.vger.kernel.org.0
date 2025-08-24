Return-Path: <linux-man+bounces-3599-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A37B330AB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79D401B25A1C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAA92DF3C6;
	Sun, 24 Aug 2025 14:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="KE8w1NCT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567C12DCBFD
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046942; cv=none; b=tnZrYNvkJHx1wzmprTXERsoYVyiFP3NBINe8cdukWIlJAukXkPQa/JEA+/DTNpcrbwzBuo/Md0AjB6e4HKqNvVvT5+aYrncRrLjIZ53zUV1V5Hh5QOpHSeE+r0Xj0i1+aDdcqo3raFvzYip/zj45aukygnMHBwUKrlfc1s4OsSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046942; c=relaxed/simple;
	bh=guRNddT0KBiiUSPu1lpXK+RxVx9ozNoehRj6PXz46aQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=f5yuPrdTXjPv+iLwsRx3BLUtebMx5rvFPcSXbWA8x892HIhjK0sZTyg5MsDgLwVMCBoAIlIILXooASiLFB3eEx1BS+NZgYcgA5qH2CVFqZ7LkwFnIfLsmHIMZBh5fDQ2SFcWcSasaPxg3W4r5uv5qqkvP2xVWYGMZKhNB8l+qpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=KE8w1NCT; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046919;
	bh=vHGHWthwJATpiwFDnx4jz858jcAMWnEEggzxNprInAQ=;
	h=Date:From:To:Cc:Subject;
	b=KE8w1NCTV/9muXhyrAfT7hvAJuVSYHynHVPgH5OfbKNnlKhxvjLA1yhgzxkdSR+bz
	 8MVW1dlFe1IiOGwHuL46J/G74C+itUSuyg422GsG1Q1OW01nJJziJmC/6XjRmvvJ+q
	 WOZBlM8XCTPVmBdiQofAomnX2rLFpqwmWsxQMsLQsVVlIRdyIxmFSbCAuP0UBFVrYT
	 /zzXA1AEb9/NBB7Epx8F867+YEYRAvfAExoWPjsvlq1ml4+0nv8XiXpFXnQiWai/Hk
	 Nud6W+U0xvrZtGAm5Mw0rzkNJHbLZnB0Fh2OkqgIsqNbsqPJvJzVpVrTarlLt8XPSV
	 X42KgmFe4cetg==
Original-Subject: Issue in man page fmod.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216EC.0000000068AB2647.00139086; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fmod.3
Message-ID: <aKsmR-cMc4kwtLQW@meinfjell.helgefjelltest.de>
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

Issue 1:  Either B<fmod>() → B<fmod>    or → I<fmod>()
Issue 2:  What does "cost a branch" really mean? Branch of execution?

"An alternate way to express this is with I<fmod(fmod(x, y) + y, y)>, but the "
"second B<fmod>()  usually costs way more than the one branch."

