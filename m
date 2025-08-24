Return-Path: <linux-man+bounces-3561-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA7FB33085
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F6C0203BA4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3F214EC46;
	Sun, 24 Aug 2025 14:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Hj3qGhZz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E9D2DE6EF
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046924; cv=none; b=GeQj1Ur29rYG3IzeXMm8Yo57kH5YpsUJZ1AnjE+JCYs8Kk2EY2PvwJdT/FXcfYBok5LB5ffMwlXuQHz/SF/V/Kw96heHRiZPjXnUIU8uMprnyYvb3I2GQ85/JyjU9hEbBItjVfFEk6rRws4sy/21wRYxLtbJw1owoEbgI8xZzWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046924; c=relaxed/simple;
	bh=4Lz8vnO5hRjGjhN4DSCXQEzKQYHun2mlR1BnjKN6mbY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=aBxHhbMpuqPoGmJIbvXc0r/U7x2fU/Hou+wlD2aCx6WiZYcl/N5AttaqSptKOeae4ExDRBPw9q+6GZAdtLNtqdNrHNWHGotBoaDEFifdN3S8hzPw7VzPqW40F+bdOPkJ0+FnNb4jJbWZF4Nx3SrSCrv/IE1xF2NMMnIb1KSEFns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Hj3qGhZz; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=8XcRyTKpLN1hYThnEDi9v9UWjURW09qUFIHV7LxIFmc=;
	h=Date:From:To:Cc:Subject;
	b=Hj3qGhZzniaNfnv30+OIr+virUd4s7lzaC9KNrOuFEGEQmPh5lKdogCJDrPaIivGs
	 VkidiTlOvj/yarzPtnNQ0zjIBUE0ldAp7OCagaCKnWIqCFMvontwSDmPvTf8CdZUAL
	 O1OgM4bYIbsi6IrAAze6UN7Xqf7hOD7MeWFISFjA1ddwx3itba4Mgnam+lzfyYjbtQ
	 YxcEy/QvZX2hESytjFWYo3AJCTEB0UJD8we7/+PttVB17x2qpAfeIfasHSlpE5vHr0
	 1Y54Rc2L56U08jqt97z/Ci5yjqeWH/xGIC2PTZdksKnI+dyzCpq2eg+2XkAgGyYqVS
	 rIKwBR9df56Yw==
Original-Subject: Issue in man page strftime.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021584.0000000068AB2642.00138CCE; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page strftime.3
Message-ID: <aKsmQo15z_em-cBn@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t max → B<…size_t> I<max>

"B<size_t strftime(>size_t max;\n"
"B<                char >I<s>B<[restrict >I<max>B<], size_t >I<max>B<,>\n"
"B<                const char *restrict >I<format>B<,>\n"
"B<                const struct tm *restrict >I<tm>B<);>\n"

"B<size_t strftime_l(>size_t max;\n"
"B<                char >I<s>B<[restrict >I<max>B<], size_t >I<max>B<,>\n"
"B<                const char *restrict >I<format>B<,>\n"
"B<                const struct tm *restrict >I<tm>B<,>\n"
"B<                locale_t >I<locale>B<);>\n"

