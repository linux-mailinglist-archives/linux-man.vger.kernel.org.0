Return-Path: <linux-man+bounces-3567-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E2CB3308D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B244F7A4CD0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D64AA2DE703;
	Sun, 24 Aug 2025 14:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="TGy0tUQX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6622DE1F0
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046926; cv=none; b=AunhbG+4uXEeLGo29nVcjW9F1YVDdBHFXrGI/WUeQLAJb8JFg6djYkQPvOSpOpsgNWHpSDENMEm9zw4oNknMTlHNquAzw4A531oVDppWbHqqHV2/L6d6RrhE1ALzYU/Tpy9xDKmoDEeFSKqmJyEnP7dpxk+639FfplxXig9emQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046926; c=relaxed/simple;
	bh=8HRbQ/dHjpOzOTCrV+W0QxJFgCtkZrvHJqtmiK9/5xU=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=igITgFVTcMb8MgY2n1QSBIIKdQENgrHMDlfOcTLF6GNnPclPrI2FMr2B8xyO7Mbh2fEAMwkUDk+bzWd0+o8/znn8MlOuuBCZrZYUEJAdMRfjHfvgyI/CjUsn/n04odVyE9TKj9nReM0m+4IP8k50hXT3HVUXugMpBfAtVsvtF4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=TGy0tUQX; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046915;
	bh=6n0IWSKA7Z4YiHj1Xpgm2f5Y8Kq950zy7HyM/p31tM0=;
	h=Date:From:To:Cc:Subject;
	b=TGy0tUQXl4yk/cYvuswhQKfXmxaX47F2QTMqkcSnENNqz2dQh6F0jx+Wm0RfV0NVR
	 hXWI75dSB56w5d7rC71JCyecG/egrHYXeMg9LWDO2/epTC2D2aWjDrP2JYdX2RmaGm
	 jm5e8P61JeYO/DvW+bgwVOoRp2VIcD2sKD+ApZ7pUhe8QZHnUmzzAPZ7s1BI4BOac7
	 5a0xXWf/zNkJ5BQ509KykZSbP1ccYnm8xW64zyhu8PG8ougV9m3mX4nL8DKhxsazPR
	 JIgeYBW6C5X4drWuaRFOT43dy+b0L4a5jgJpZ1t91/qq6QoGf7xBp3YPvmWRxM0FZS
	 j4B7vkrwuEJ2A==
Original-Subject: Issue in man page syscalls.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002162D.0000000068AB2643.00138D64; Sun, 24 Aug 2025 14:48:35 +0000
Date: Sun, 24 Aug 2025 14:48:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page syscalls.2
Message-ID: <aKsmQ14u93nwpoaV@meinfjell.helgefjelltest.de>
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

Issue:    GID -> UID?

"returns a pair of GID and effective GID via registers B<r0> and B<r20>; it "
"is provided instead of B<getuid>(2)  and B<geteuid>(2)."

