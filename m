Return-Path: <linux-man+bounces-3679-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 124B8B330F4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD7BC203EBF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47BB72DFA27;
	Sun, 24 Aug 2025 14:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="YLv39Mht"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B333F2DFA21
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046982; cv=none; b=ZTRQIPAvRMQFtp8Mt2lqr+f9W7uy6HBs9n3tL6gW32vobdo+SB8vj4+cSr9o+/XDsUjb28e/GuJkmAUJdgywhRJV9ij4S3/0tMQkTV4GxVgJLXRBiWg/yCfU9fCAttyZSONpLxCDua2eZ4MM6FK8fgLy9eYswkEBd2wgJv9wetc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046982; c=relaxed/simple;
	bh=N9DqhupJLJb2kRV9w2GDXHBE4rax1uiBRCZTxGTS5tQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ZQSl9PEoRkSsBRSBPhBKkam7ZKznyCNSpfXvD1yw2PtL5Z3qDac8+Xv9TEUkuiFDyA7RKwaGIwpfugk2c7JmSNUu4OvChxyDAGCLj9CIX2OkVC9DQ2IuYb4OTKoS3JkYSa2fPIzzU/AYPr/ltDoTZcL4B1r2Vmi5wGmY8dLmGAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=YLv39Mht; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046930;
	bh=Mye8NablHZvpYuOO9DMANkqFxTUyjDAwHbp43JhWMSA=;
	h=Date:From:To:Cc:Subject;
	b=YLv39MhtqDaV6iB/JQGi1amXFNo4gD+E23/hyofycBeJIOb2ksAUAI/4MrZ+XuP/L
	 0M5GnJuGHNxIxill9qEV2qzfSVH2N7+bdyCdiJUmWkxnVl7Wi0mS4qq23OgRdbE/B2
	 4ZDG4UHeTquQtmwjEiKuzz+UVrpphWGwZqyx6rQoVMsjlHn/7xGDoAdg814pT2h/WP
	 TiW/6TRZGQcd0SiWmgUaVjQ7bzG//BiLyY/Doqshk2xfa97bNDx7UjBem/wxeko4hc
	 Cs42pU/nwCUcDqMcMP42hQluSoyHB3ClSRN9m/bmFtTlCEbQlXWuMYvdlC/RTi4PsM
	 mSLWQIZ52e28A==
Original-Subject: Issue in man page read.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021787.0000000068AB2652.00139859; Sun, 24 Aug 2025 14:48:50 +0000
Date: Sun, 24 Aug 2025 14:48:50 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page read.2
Message-ID: <aKsmUlayOwMfxvbR@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t count → B<…size_t> I<count>

"B<ssize_t read(>size_t count;\n"
"B<             int >I<fd>B<, void >I<buf>B<[>I<count>B<], size_t >I<count>B<);>\n"

