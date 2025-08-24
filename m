Return-Path: <linux-man+bounces-3590-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 730F6B330A1
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 693B31B25A65
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C1A52DEA72;
	Sun, 24 Aug 2025 14:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="VqKN501W"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE992DE6E5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046938; cv=none; b=Ufu3PDtG+izN8MwtpxeceFvZTuCm4eBU0t50wnAx5XhkB69dM8CTXjNYfKiyb80wm77aHrBqIguHPTToJyQWBuaUvuRUFVLaA1USUjM7s8NyVkYKX/3TGG+rrjXLYP7hueqQxbZHQaEHk51VwtrEtqHtIhuyGP9La2kSP25wLD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046938; c=relaxed/simple;
	bh=dZeANJOiTYDI/K05s2S+tlJOIK6NQ2jgIaGu5W8cRW0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=K0ujjhW9ybX1zcX9txkeTze41Gth0CP4s8rMqMDWvkac8xUt76Xb+vYAlfbj/v0OIP8ukaLKDQapyvfgH6Nns1dM2Utm3oadoza018+zYxhYc9iWx4a/LYqfP5JX8C3tmpXJT+8RRUjxcm/jLgopJ5yGKoazLSL+tX+WGltB3rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=VqKN501W; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046918;
	bh=9Yk/ptLLNWzEkqEtQ9xS7/7+0XkNAFEoL/6JdGHwhR0=;
	h=Date:From:To:Cc:Subject;
	b=VqKN501WxqcWlwp41BjLa5GK/Qf2T1YuMI+Ke2U0QGi09KQwwAQh/7RUTwUW3NaVv
	 AojsHwayzQ9dQ9PAPmyKZvK1wESIz4W13L1iF/HvFFB9FJxqkEHK+F3GEqZkc6H5ek
	 n6jknwqeeYyce3+2mdNwYg09PBk1dYdfYQ9EVL/XhxY8LommwV7A5CczL3xOz4K2gD
	 oBKGJbj19ByjKLL0CtySq278dmjZrJxM1nbsF0Fo5zh+Sy2Nj16/nx9is3A73c3LXz
	 1/AGwi1GA+4AdjjBvsucn0VCrzlK8YvxyD0vD0/hQiKzYfhImFccx6Pdwv4qw+ba0d
	 Xi4twTsQDq72Q==
Original-Subject: Issue in man page ctime.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A51.0000000068AB2646.00138FA5; Sun, 24 Aug 2025 14:48:38 +0000
Date: Sun, 24 Aug 2025 14:48:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page ctime.3
Message-ID: <aKsmRswWYcojA-3o@meinfjell.helgefjelltest.de>
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

Issue:    I<asctime(localtime(t))> → B<asctime(localtime(>I<t>B<))>

"The call B<ctime(>I<t>B<)> is equivalent to I<asctime(localtime(t))>.  It "
"converts the calendar time I<t> into a null-terminated string of the form"

