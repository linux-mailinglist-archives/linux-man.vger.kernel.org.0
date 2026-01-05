Return-Path: <linux-man+bounces-4615-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B466ACF178A
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 01:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8162E3009819
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 00:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C751B3A1E9D;
	Mon,  5 Jan 2026 00:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="cXKNrmnh"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0613A1E68
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 00:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767571454; cv=none; b=HMOVwilZh+ecft8kGv+QOUF1ASvgj3KQqUYNsmYH5FONpd6ZD/E6J6wnPW4oAsF+psOBCR+v6d92ZbYBMBz2C9pwWLaNv41kjMBA/6t+a+hze4LSc/3/ItbXjE4QqnPA5O6iXtGUDqjJUyd+kzOiDAZ3n/dxs4ja5QteVHLSWbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767571454; c=relaxed/simple;
	bh=ocQgNX36fu8wdj5mNDQxCShJqzmr4/nchHi+xu5a8+8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kXXWjyWR85X5nZX7YuUd4GH46msGI7HumlyDchafh7XYV6zmyyUTV6zAEy/bU8fXfn5V4JK35KaWMpqLWoOd0yHm62SXjkR+fIKWtSH6I/itJaA0GZBtBc8k/WXyK6ofNEdD94PxaiF/Z+c+MJau2AElFgmcUvl0FpdyFju80E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=cXKNrmnh; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=nrBJD8/4VvaBmDpr8JHRCZAgD3OwqreoT9aEQyJxWXY=; b=cXKNrmnhoqF3vsKL
	DIAgstgT9OpkebV2fS8LzBGwSeIa4NspOYpSEfEQwNhHhKdIO6P9gfR4AdLFDvleFikBb9E9VAXyw
	SaCNeGHzGuEB/XKTn5OGalMsdK0Rk8sAgNUazQPHp8sg2ChsjpTq/foLubxPO30Gg1TwXD6o5jKf/
	xKTlyL6x8lsB91MsyrSQzGOhaurUDqlUXbMqEPqC8Hp2bj+oV++dOd63yrdFzcK/0lI330IPALOo/
	Yh8IPIsYHGxkqub1jikQ+tB5L5uOwmrboU3ZPZv88ptt/tpUhQilwQ023kYtpX4wLe6VBcPsFMzU3
	qJhlQJPIZQNA63m5xA==;
Received: from dg by mx.treblig.org with local (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcY4v-0000000CKKN-1sOq;
	Mon, 05 Jan 2026 00:04:09 +0000
Date: Mon, 5 Jan 2026 00:04:09 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: linux-man@vger.kernel.org, alx@kernel.org
Subject: gai.conf(5): Example table
Message-ID: <aVr_-WDqRyRBL_G_@gallifrey>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.12.48+deb13-amd64 (x86_64)
X-Uptime: 23:53:30 up 69 days, 23:29,  2 users,  load average: 0.00, 0.00,
 0.00
User-Agent: Mutt/2.2.13 (2024-03-09)

Hi,
  The 'EXAMPLES' section in gai.conf(5) has a table that matches
RFC 3484; however that's not what glibc's default label table is;
it's table has three extra entries:

https://sourceware.org/git/?p=glibc.git;a=blob;f=nss/getaddrinfo.c;h=c0f496f96c752220e68bf0257d9ff1ffc624ebe6;hb=HEAD#l1341

and partially in the more readable:
https://sourceware.org/git/?p=glibc.git;a=blob;f=posix/gai.conf;h=4616ed005b2e064175c88609b6d6022a6da4d5d8;hb=HEAD#l31

I wonder if it makes sense to document glibc's default rather than the
RFC default?

Dave
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

