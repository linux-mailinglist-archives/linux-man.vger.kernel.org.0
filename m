Return-Path: <linux-man+bounces-3628-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6B4B330C7
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76B30441ED1
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A152DF712;
	Sun, 24 Aug 2025 14:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="VeEwso0H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8432A2DECDF
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046956; cv=none; b=n//sVeZyObMnXKJfWi7F4iHIGYAM02VABrZiu0PGnPHwzR0cBUr+9NOmVD3iTQb7hp6Cd2y+Vpe6z3xiXeJqfMxi/exsqoA8n4tJJVCl6l4dKQ+k4X9oTd5NJqBeTXLk1HXVZzrVvc+4/7tvfsGp1nNFtqKwCy0hikdcNo/I0aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046956; c=relaxed/simple;
	bh=VycfgUAcZ1iWjL7dhWvHmQ/cM/3ZHSPNF34Hv8GbYko=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kuy6cvEhrGitUIeWIGTguVbwLuCj/tvKh3yVodSfKSw9QLJOntuJ/H5p7++3fGmUwTwJMxvZEXDSZkE0ZSD4O3oKXvv4H0ZVzqjki5srHfsdMFG/rxogBYum4zBB7LhdKvUtsAiVtRUesquiBgo1v6o9p+89DfC7qk246l8Y+FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=VeEwso0H; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=fe090Cn4Mr8oXanBz5hiDyP45jqaHuyhB/NjVC0OdTk=;
	h=Date:From:To:Cc:Subject;
	b=VeEwso0H/uy5s1YDgeXnPPHXLtxESMYNB6Zw2ABsYQE3u6Cp2gKg2BTbF4Vp/l7ra
	 LGwrImyCIKtm8WP/tBXn6HQtZnItMBL65JB6GY3U5LkS9M6KXPBjdPmYl3ITPZrkc7
	 586W/exP+1fc7ei+f1siC/HyzeOH0ICATgXqfX6+lQ/sttN49bQTusKYfU6iXzbyqa
	 3t4QnSRUa1bmNiEYLIbHcC+rYzTZTR/t7p7E6cUlnwb8d2PaDrtsEMzKKAkvVLxwxL
	 6gc/8svsRfAJp8Dw1gbsPEQG43HWzLUXYPIw7G9SjYbfHLzZAyXVtiIOvGQadPzfQg
	 gEpDdGucTi2WA==
Original-Subject: Issue in man page login.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021558.0000000068AB264B.0013935C; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page login.3
Message-ID: <aKsmS333O7ZZJsST@meinfjell.helgefjelltest.de>
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

Issue 1:  utmp → I<utmp>
Issue 2:  wtmp → I<wtmp>

"The utmp file records who is currently using the system.  The wtmp file "
"records all logins and logouts.  See B<utmp>(5)."

"The function B<login>()  takes the supplied I<struct utmp>, I<ut>, and "
"writes it to both the utmp and the wtmp file."

