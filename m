Return-Path: <linux-man+bounces-3553-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ED9B3307C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0920441D9D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657972DE1FA;
	Sun, 24 Aug 2025 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="szn/rnmL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21CD2DCBFD
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046920; cv=none; b=a5+b7o6+bPrbV5yDJm5qzGKkK8i89vPh8G+5HjajzkIdMT/1xLv6TgLMLSNcMmHKmuRmkAVrTPmaieK4Q2Ex9zEBwsX03lr85ZOy8ZsdoCX293zGUaZvxwfenMcLC9dpKBm/p1dkjAg0ELHxa0b7qye0Pu9u7CUc8XdxrhfqtK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046920; c=relaxed/simple;
	bh=KDj0MMSqqBODwwL4J92Lo9Y6mAyVK142p4bNbXVjzv8=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=Dxw6n2h89JUNU+8T4C/jZJEUf3LFXKhN6f4EhD822b+dAmCpPP6vAjEp7uT12cO/GrSP1ui/VGlc1ISdFtJduQA/ei56Z3zvFuTgXlUeleHPU5WonNOL5W3RJ0rfEkTgVy7f7YEiUnNocXMDGzwjoIMgGBwbIFO/+ZvpMd94+zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=szn/rnmL; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046913;
	bh=hLg94895s9JlZ4NUTQc2GhQnUCyMCYi5FQ6oGbwBPEg=;
	h=Date:From:To:Cc:Subject;
	b=szn/rnmLGyujoVe1awZIVaAJH+k3ejwe+gMLHu+RDRoeHvdN0a3AJ6hTyb5N0q8KX
	 ve0ndgCS7C4XAgVID7jcTnIAnwXvAjfD/9HoS8843J6JKuKarrIvpabMoGOOLillQ6
	 KgwPSqkkA64TdHlMAqtB4vCzfICMJePIcPvosobv/lmD7lJLOkPEil9fvlyYsvKuIc
	 GapZkGBi4cWVTsC3DXiXRdi2XSYLyXyW92WYV5bXMKSFfaW1t/ZPeEt4f8dbwVrAxa
	 yh00zXP2tggakbH2gxhl3rLj1liGTDKkaxHiWIj2Ohjp3j4MBmM8hhJNid/y97F9mG
	 X0RyBr7fHu93Q==
Original-Subject: Issue in man page sprof.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000211DF.0000000068AB2641.00138BFE; Sun, 24 Aug 2025 14:48:33 +0000
Date: Sun, 24 Aug 2025 14:48:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page sprof.1
Message-ID: <aKsmQcxdqf4EnO5i@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: Assertion `_dl_debug_update (args.nsid)->r_state == RT_CONSISTENT' failed!

"$B< sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>;\n"
"Flat profile:\n"
"\\&\n"
"Each sample counts as 0.01 seconds.\n"
"  %   cumulative   self              self     total\n"
" time   seconds   seconds    calls  us/call  us/call  name\n"
" 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
" 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
"  0.00      0.10     0.00        1     0.00           x1\n"
"  0.00      0.10     0.00        1     0.00           x2\n"

"$ B<sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>\n"
"Flat profile:\n"
"\\&\n"
"Each sample counts as 0.01 seconds.\n"
"  %   cumulative   self              self     total\n"
" time   seconds   seconds    calls  us/call  us/call  name\n"
" 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
" 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
"  0.00      0.10     0.00        1     0.00           x1\n"
"  0.00      0.10     0.00        1     0.00           x2\n"

