Return-Path: <linux-man+bounces-3653-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B6037B330E0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A7AB54E1256
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580431DDC1D;
	Sun, 24 Aug 2025 14:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="r0lFLQQ3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC682E03E1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046969; cv=none; b=Td736r8j7IptCD4mCP/YIivH5QR/7QRrZadsRE+8/8KArjiyU5KBfJ6tfj9ipmOqymY/GNa3dw/Cukj/q6KjH8fkTRAjAZ//w9z6+ZwGnVJlcXm9SpSIy95mCb2MR2iyjSkZqPd4bHrGR8leq2DDgkiZznjz3EdzxxvKtfNa/6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046969; c=relaxed/simple;
	bh=nbe8MtDr0riqsIr8mJxOlBdgTgIOu1BCj4J8/xVFKZg=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=qJnmJ1afrysg4g6CDCfmVEF5Rg6VcTZ9ewO1fhRf56LSjj1Ujs9yTl2wOvqE1lq1QHhtXlzbO1jmbXN0ieoJavQKRU1fd7zDBR/3Ini/asPY2J3A8AfleokZvEbxHndq6WsI6KRVKljJNHI02acnoA/w+OKfoqIhazUQv9AuOqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=r0lFLQQ3; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046926;
	bh=UHcsZj8qsWkN7VLdeYKs9mJvfy+naq4pFM1gzDx3QzE=;
	h=Date:From:To:Cc:Subject;
	b=r0lFLQQ3M4uPRE9xSlHAwP4ZGoJaSLeK8R5GP0eap8x2x3bq0dKbJctBxRAe+osvH
	 sL8zzMQlue0/GhnINAfIn6QHMXPMClZ8EO/gnZflscGcO4XPNOTEq6ztOuLuNXd77J
	 qToHXedbgzcrhdnc6DfEcnhbnicxxb6ySsf/raDldH0xL1ayp472/kc6dfhqUYZ30l
	 iKVz9nPVjzK5lsU0ViY+LIaSvch8qYLxerUlxPIfIa2uCfRwiNN14zkN1tYO+y5Uxs
	 Q29FAYdZPCmRveJUm0l3CGUa7ZKHE40bpgIfWy3hgKqUOkHT/GARQNO3UKSgj0X4Ia
	 EE0n3echuznhg==
Original-Subject: Issue in man page open.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021603.0000000068AB264E.001395CE; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page open.2
Message-ID: <aKsmTl5FJnqsByS7@meinfjell.helgefjelltest.de>
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

Issue:    What does like B<open>() refer to? This is the man page for open().

"If the pathname given in I<path> is relative and I<dirfd> is the special "
"value B<AT_FDCWD>, then I<path> is interpreted relative to the current "
"working directory of the calling process (like B<open>())."

