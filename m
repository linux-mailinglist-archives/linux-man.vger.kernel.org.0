Return-Path: <linux-man+bounces-3630-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09680B330CA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A71887AB49C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B8D12DECA1;
	Sun, 24 Aug 2025 14:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="B8bxK+A2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC8018A6A7
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046957; cv=none; b=TgVRvh9N+RVTh2z5sy1guYKQPs5xc//ifLEA65AQ7m2MvE0KO0NL3zb9hIWurlR+Ho9Q0AWERkno8HKH5TPjFkt1F6j8sZm9qn65UlEI2FhAuWpljYj12qLI1iMDtI4K2r+N5Gm+ClnTK1MZuDzPsxkjM7C01+BkrV5oll3Leds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046957; c=relaxed/simple;
	bh=mexgWEoIKk/UGoCidThaV3J5wrCT9+MWdJ7WjZK2RKc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=G5VSiIsOdhS7Q0sUE3G71ytSM2wwbGwubzyORBDdwLSPnKTU+EOGL/oicJ/h6RYCSWksK4y6D/mzkg0DSGagnxYh4sZTIcnNgp110xPZZ1ljTxJmjx1ZHjb3Dw+K7DEjmXBhMw1yzj+huEhK1oUXoh9wzbfqtrFVa1qh0QiCupI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=B8bxK+A2; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=GWsGQoxB9IWA0btFoFy2X/ZC7rEnrVPb32Th0rJk/o0=;
	h=Date:From:To:Cc:Subject;
	b=B8bxK+A2VI+n6CoVzODOmKcF/hWyr1Runhl9o1F91WfvRiIYuPK2KzQlGwQ3De2bL
	 kr6Q24rKoyxoG0CarwbfeOvx/JqrwjwTIowPkrkNN1nEQf2vhgrZX+PaXvqaL6Gekk
	 7LMv9CODh0LPx+ZQQCH4NpHNYwKqTK/VH+a6FXTbyav8LvtUYgAOjf77xshFheXWtj
	 AOUAudOrWQ0odD1kP8U9R5yJ3IhWCdzfIdt3AqeLLnZDKgfqhZCDQjLdTzJV7ewxu/
	 evsAWdjdK+H3wyhPRTZiYl3++LHUr54ZxMdAF3T7zlUJzwBEwA8sp+XQ7mOPrzd13L
	 Ne6kCSdTA7Krg==
Original-Subject: Issue in man page lsearch.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002172D.0000000068AB264B.0013938F; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page lsearch.3
Message-ID: <aKsmS6OPOfKDd-Rh@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t *n, size_t size → B<…size_t> I<*n>, B<size_t> I<size>

"B<void *lfind(>size_t *n, size_t size;\n"
"B<            const void >I<key>B<[>I<size>B<], const void >I<base>B<[*>I<n>B< * >I<size>B<],>\n"
"B<            size_t *>I<n>B<, size_t >I<size>B<,>\n"
"B<            typeof(int (const void [>I<size>B<], const void [>I<size>B<]))>\n"
"B<                *>I<compar>B<);>\n"
"B<void *lsearch(>size_t *n, size_t size;\n"
"B<            const void >I<key>B<[>I<size>B<], void >I<base>B<[*>I<n>B< * >I<size>B<],>\n"
"B<            size_t *>I<n>B<, size_t >I<size>B<,>\n"
"B<            typeof(int (const void [>I<size>B<], const void [>I<size>B<]))>\n"
"B<                *>I<compar>B<);>\n"

