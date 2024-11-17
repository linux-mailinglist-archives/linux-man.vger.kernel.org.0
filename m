Return-Path: <linux-man+bounces-1961-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADB59D0317
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9F5EB23EB4
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ECFD156C63;
	Sun, 17 Nov 2024 10:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="JNIat809"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A7114A617
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840702; cv=none; b=Uv3JE7EFkHAMopezA0JKp4F4C1s8QsZe8zMi6zfwfjBzv7o5ONcz8GCTDE781tpRNL7iKhISvtQmhIynPvnsZJOjdPXAbGidsPR5+VHc6ps1sD37pyK9/F7wjD9/y8DwPpRB55+yvNdXKvm8w1sxzbcqlpFk6pataGajL7N4q4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840702; c=relaxed/simple;
	bh=h6U+FYAySOCfpZJQZU6TS1lmiTDIzbhkSuOvigLWyv8=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=hi2E7/WnuWnGfk44g3SP5xnxKJgSgEJvAgw4Nrt0AanJkchmlrEsxFZ+s2a2ojttNL5E/3McL9SbfM6DVKH5Sa6+rLQiH1skZh3mNbK2cw3RZSAYGpqZqpngHY1EzimUUZ8eRiWQUfzM+Cw4tvtZCQTzfzHn6wCrQPQ4PktATgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=JNIat809; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840383;
	bh=5vxtpBNJE6a4n5uULyd0H4Gnw5srJ3+HWwGRpgOAxXo=;
	h=Date:From:To:Cc:Subject;
	b=JNIat809s58R5UnGvNChHqH92rJnBHbU+qllZWUsMdUlDfYkmymKl7uHY5hrwfAg0
	 tD3cU67mVDFdzm7yxBNZDValE+X4u5hgtk3KRjs67C4CRXzEfmjGhRy+Lt1y2Kyx7/
	 Hv5trE6RMhjvlReFbbWr9wa1pCUzU9LAhryrrmA/LfrMa8g2MDCLkMnyhVSykCOtlm
	 FxABjaA2t4c2DeMUOZJ42O5bXarg9+ougDhXWIb63QDySBMqjWlY7c1RP0WLLHi/bq
	 jkH2HN/SISTuVMcKZogmz6ImaZaYrtkLkumHIgmUTUWVXOBw4EhOSkTuyalpsVAvNG
	 4IqbhX3vKXM5w==
Original-Subject: Issue in man page sprof.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020826.000000006739C97F.003FC42C; Sun, 17 Nov 2024 10:46:23 +0000
Date: Sun, 17 Nov 2024 10:46:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page sprof.1
Message-ID: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
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

