Return-Path: <linux-man+bounces-3647-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E086B330DC
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A26501885B70
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF171DDC3F;
	Sun, 24 Aug 2025 14:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="WsYwz3PP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6132DC32B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046966; cv=none; b=smMyT5iWPBRX+xD58TAL+5Kk9XrcUFhOUg5N/VqxVIpPIJpDiEcNd2nBJnx8HNUmCq9jVxanO9uKjHjsGbJw3pP2Jykd84pl7JeNNzuSKc8j1G2yK2fGpgy8h4/GqeYG9qlF2qKa7gbgIUf7UjctYo0+dA385nCvWliBZt8M8MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046966; c=relaxed/simple;
	bh=CFKgtte+pYD0d8QDY1u4pJZ28N25FBKI8lfffHy3Qcs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=qbYJL8h6epj8NRJoZtByxTqTMEU4Gg+wblpcduJZaWVLU6vlExlP99Js+0vSQKJdTy1YoeUSSGPp5fUny2avDJdsich91nooauFAB82FBfPrwYmFabcmuU9voRKQj5hgbdF6n8LuaKQuoDe57HQGh+i3TQfDKWHqEsZBJvCRatI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=WsYwz3PP; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046925;
	bh=NAoy5Sd0HKSvhrlaC6jH6Cv3T0RcJ7ncIYTc99wTZjo=;
	h=Date:From:To:Cc:Subject;
	b=WsYwz3PPKDF7a0dkPlOrhjJIExSg4W039CLRS8sYLu/PaM1uRVtG6b1WKHSCsoNAo
	 mA5Wha/tybg/y/R/N7Oct5WE6cSGdikVsn9SGswXWBKH96hev/6/7/sL3iO6onIoY6
	 yaYKMZU8jMPcZXjv0ORU49MqHByyDVPexSfJUJVmeTe9cYmKmovZBbDdhQq94Z7EzV
	 a+XCzChwNzR2xygeWSN/bQ+E+oh98zAoa8KOGuAqYgfOgCJdgVVnf29pDFnujPXfpT
	 wHnZuzTY9JFz1BG5OX8Ms8+dJ1AgmBRks6RcM4d4cRDbfsLNYKzKtMu8fzH4ocECmQ
	 oN3q8kyXxjdUw==
Original-Subject: Issue in man page mmap.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002174D.0000000068AB264D.00139538; Sun, 24 Aug 2025 14:48:45 +0000
Date: Sun, 24 Aug 2025 14:48:45 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mmap.2
Message-ID: <aKsmTbV9sq9DzI9i@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t length → B<…size_t> I<length>

"B<void *mmap(>size_t length;\n"
"B<           void >I<addr>B<[>I<length>B<], size_t >I<length>B<, int >I<prot>B<, int >I<flags>B<,>\n"
"B<           int >I<fd>B<, off_t >I<offset>B<);>\n"
"B<int munmap(>size_t length;\n"
"B<           void >I<addr>B<[>I<length>B<], size_t >I<length>B<);>\n"

