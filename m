Return-Path: <linux-man+bounces-4509-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B798CDC8D1
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F6F630567AF
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B173590A7;
	Wed, 24 Dec 2025 14:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="O9mfi1zu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB5C358D34
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587119; cv=none; b=e3Vhx/1pNSi1v+7gh3aU68J3qKA15i1k+nQCgqcOmLTGBFilUtADA0DrOucoyu6ikNVqVaB6+vXb1RjuVN78+0XMq5Mgv1WRzlzytpLecXdCGffhD/Tm3itPMd7dQWf9SnYf67aE6IErE2WEO2iUCAiu73RqRVRwVF9uaoREMg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587119; c=relaxed/simple;
	bh=og31fwbLM/2jywa8f2Gv31sqrhwKMdq3ibOOHlB3+S0=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=Hj9OVGpcqMD/9Q3fjMf8ZksiYb0KrVQU+flD/t3GztLYu9NIUpODx+zT3qrbBa50/QYzzeWPyUf2uSlB+MijSRa1ZZzHewI4FNYokXH95DljjcRPnGl2yjmtHNRYksDzFG5C67ZtiQmFY6vSh33u2gazakpvz8F1vSFjewKAYLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=O9mfi1zu; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587104;
	bh=PiT/z4zTjLaAW/8zdFryuy/g0Tb/h9Q9vZSbhjWwEj0=;
	h=Date:From:To:Cc:Subject;
	b=O9mfi1zu+/PY3d5CTbmcSMj4iY5X7cg5m3eOEZ33UY+558Dw4tkGdUdAXNhVrow9W
	 cKZ5I2DFr9W80UZkgQZZSJnbrNvRuKUn5XGpAyEaZQgfyUQ06A1IQa+duiSlfEszlh
	 kh0dd+WueH+wrbE8G8TV/o+2WnMVgTGE8vUj55aT8eyD6BVvFEOG2koe/9UEbTGMwJ
	 4EZbnZCwkLq6Ks4EEM1Qt0tQ2qY/tBfJ5lKIAa12pUP8iYTsZlpqZcnau/LVJVRnwa
	 beFVc+hWFVXRFyAEDTYaqtMSht9x3LPtnh0wQxwOHLPfa+JizbsPy9neYeR4oc49l7
	 wZG86ydqlkmeA==
Original-Subject: Issue in man page  sigaction.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A69.00000000694BFAE0.00319972; Wed, 24 Dec 2025 14:38:24 +0000
Date: Wed, 24 Dec 2025 14:38:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  sigaction.2
Message-ID: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>
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

Issue:     Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: Assertion `_dl_debug_update (args.nsid)->r_state == RT_CONSISTENT' failed!

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

