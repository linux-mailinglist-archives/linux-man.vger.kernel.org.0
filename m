Return-Path: <linux-man+bounces-3548-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8329B3307A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B8177A37A9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 163A72D543E;
	Sun, 24 Aug 2025 14:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="tejCgTn0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D0B1F92E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046916; cv=none; b=eBfwvb1MLjMTLpdHtW2KyuAGerV5emaq34SBJ/ok7OF3g84bQ21Y1P3sNaacw/vP4V82UxujDJJ3ArS8YYrm+d+Ag5swHhrJRtX1WwfZKZAgqUVZsrLZCmGHbXp8RLCkuXUD2FHp2wd0bzRmPJNRkvKGudWRXi7l32xoNLvyXLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046916; c=relaxed/simple;
	bh=214zSCUyMnMjejTlW2WF9AmjGefs6nLFbNfe0sDBZdI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=dcnF8rfZBduYi2gIwSVUarv2QgpY3CY4xASGqtg8GCRjBWBYzsS2xirUSY+MwoYlvdLedktaiytLq2ndkRR7UVHP8+ltHlgiXphRxphiwIkl31epRve/vGEk/xPFsj13wUW/y5S6BHEZR5OBBO4qab3+BYyR8ayoQVegLM6dw4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=tejCgTn0; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046913;
	bh=y2uqXVabO5mMoIvOg324UDxisDqDtcypm9zAq//LXPk=;
	h=Date:From:To:Cc:Subject;
	b=tejCgTn0LzvjFgNh5sTcS8GjjvpiU7suG2UJTGe1kdvvSIeFOYbcvgp2TmKdBiB5D
	 FjYslvT1tkY5P3Ntjh0NEtQGHU2TMFQL7J5sEXNNp52xpYSqYt8dxiOmoFgj3seOvg
	 i98AkmdYHGiHHXmAuUBOjStEip+AHRyNtm/wSjYjWj8Uw/vdWaOQw5Y7AkMYb30e1l
	 xdZfq6c2vbrqZ05tVoxdSXl9Qaalpy5mLySVJCgVeeW+9bK3Kv0XE/yPn4DE6ogibm
	 MrU40vov9FVzqYY1REp3F2NKvqpTTkWpjq8xgYkRNhxN/bS9HJnf4XGqfExAPZToYh
	 BdRYBV5Tf2R+Q==
Original-Subject: Issue in man page resolver.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020943.0000000068AB2641.00138B79; Sun, 24 Aug 2025 14:48:33 +0000
Date: Sun, 24 Aug 2025 14:48:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page resolver.3
Message-ID: <aKsmQfDAWKGtKAjs@meinfjell.helgefjelltest.de>
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

Issue:    B<…>int msglen, int anslen → B<…int> I<msglen>, B<int> I<anslen>

"B<[[deprecated]]>\n"
"B<int res_send(>int msglen, int anslen;\n"
"B<           const unsigned char >I<msg>B<[>I<msglen>B<], int >I<msglen>B<,>\n"
"B<           unsigned char >I<answer>B<[>I<anslen>B<], int >I<anslen>B<);>\n"

