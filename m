Return-Path: <linux-man+bounces-3581-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58820B33098
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 505721B25A3B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 477E91D63CD;
	Sun, 24 Aug 2025 14:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="kUJGRxaN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00A92DE6FC
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046934; cv=none; b=bP/jNI/dMWCHt0Xfm6sXsb8vLd8f8a1l2xTLdk5brlbA72O/Huiq3i6aEpbXSjeDsQQXvs7chv0V9mntTudu0fvIZsVpBduH7YjrjqsC9Av37UNLkmXe8B+LXlJtrZEt2Cc9yj4mNthkaIz68VVwPoLueVFtqtECN990+uWCuQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046934; c=relaxed/simple;
	bh=kZk3pYidm6rhIc1bWlPp0G8fHgAXkfxg53fDnDayZfs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=g5eqiz0mG+QHUuUhLTwOw9H4oCnGg86gbYlULxnH2jpRO6sXmk72dQ8gqJ/MtMOmbUX4qmINF9LYhssujjNIYqN08Zu/QXQq4SN9I72Wh3vyxO96hJ8vOmqRoxvh/jDk5re1ybK2+oy80FKJ/JQ9DWWHCbMBhAeQLeeTIXELJac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=kUJGRxaN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046917;
	bh=zA/U871bzEDzpIWR9dNY4dTSyV72z4nicmDsZ0njAPY=;
	h=Date:From:To:Cc:Subject;
	b=kUJGRxaN7c/jI4Pa4XPxHMUhRk2RZhfUN6AQecnRAyMDle9GifvDis7AKgrRNc16Z
	 aj+rzvjd9+7+0r7oZ8cP7WsDrmYooF8aco5prWus9dh4mvdAenMzEqjX/E+7VdZGmX
	 8WYyrM3lB1GwNvXuVkM72KaxGxFZt7k/WXBoiNWLY70+W9utYeECcQ7IzfZZSktaEV
	 3/xzNT4VUKg46U1L+hOPXM9zzs7O6IO6uDCoZtYzmm3ld9rJTzrXms8lQhqaVcqIc8
	 QPmcRM3KCyEsCWNqIhtZwA6WqyXcvEqyYrA92Vwrzb/4YXT0bCJai+l1kfpRy4ofvE
	 shLQLbQmuTVdA==
Original-Subject: Issue in man page wmemchr.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000209E9.0000000068AB2645.00138EC2; Sun, 24 Aug 2025 14:48:37 +0000
Date: Sun, 24 Aug 2025 14:48:37 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wmemchr.3
Message-ID: <aKsmRT864bbxOHek@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<wchar_t *wmemchr(>size_t n;\n"
"B<                 const wchar_t >I<s>B<[>I<n>B<], wchar_t >I<c>B<, size_t >I<n>B<);>\n"

