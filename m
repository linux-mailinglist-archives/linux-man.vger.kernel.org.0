Return-Path: <linux-man+bounces-3602-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BD5B330AE
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 55FFB4E1761
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF031DDC1E;
	Sun, 24 Aug 2025 14:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ldBcTITx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37022DECCD
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046944; cv=none; b=N/lzACrN5JumJ7JnvIvyRNuWWIRs3Q2vZOZberEUFibUFhiCQ4iINqwI0nizpM0IUngb4zym0nYikhMgnjvSVhNj+VlQnWgr2g8iydEW30hl0ncgz5fbeqe82w5lwYiZkD76uRTya7kWfuNqD4ugvMTH/7z+pi3SY0Gd+LSg3V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046944; c=relaxed/simple;
	bh=H68TdJonoZQCmzng4dokvUWtn/E+5XDEM4o/bzEUxNw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=sTnfnIx7AXBHmePApvZP1/NwUSHVJREafXzqEBgpxAIVzkpGbAiJH4ueWCAYwpxcJ6B8rwf+6OudaHyvmBL40JKzU+/csFBVCMuakfQhQNvDPHDh2/TynDSo+l2ORNAQKFxrC4YeCnkXdK5DleGMQkoZyOTLKWn+N8LKkBZwZ5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ldBcTITx; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046919;
	bh=jiMs9bT7UEyc2ddtc5WE2lAeRv6oStvilBoxZsI6gXo=;
	h=Date:From:To:Cc:Subject;
	b=ldBcTITxQ547sBZZk3xJfvmb5wJoSoODeEAzkhxX64gZd4AjkwzUCrADtoGKScakk
	 G2zCkBNUX77cmqZpiiC05fHFDk0IocGOsDh4dUWJmFtD/awP1pbGlmXxtRjs02LENj
	 alocp1CcgOB2NR6Wl9iH9mGzK9t74kZO8jqsJbSNp1Fw5QJGDEQuKbOXwoWIdbn7lR
	 z6s0qvnKAs42yeYSbtj8KIpa1QwowFO2ImhwV/v6PYUcQyzTOndZhLGG+LzPfsYZGb
	 bOmnnRP2WnzU4xo1HHGyydYWd8zd0TCf/B3OPoKigt20iNci/ifq8VtfQ6z3f9PPAG
	 9/4KAQEsXLxGw==
Original-Subject: Issue in man page getcwd.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216F5.0000000068AB2647.001390D1; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getcwd.3
Message-ID: <aKsmR_YdZU3IJ2Yp@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t size → B<…size_t> I<size>

"B<char *getcwd(>size_t size;\n"
"B<             char >I<buf>B<[>I<size>B<], size_t >I<size>B<);>\n"
"B<char *get_current_dir_name(void);>\n"

