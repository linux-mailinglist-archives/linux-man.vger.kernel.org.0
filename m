Return-Path: <linux-man+bounces-3655-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6445FB330FA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A74333B5ABE
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6DA2E0409;
	Sun, 24 Aug 2025 14:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="SqilBnNi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D752DE6E5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046970; cv=none; b=kIieKUV17wMgyxebwnhWRYTkwCTOrhz9dDGL8Iif0HCQ5egTKZ20vM/gQNb7O8K3U7a4MzxECKnQX/zCpuU6GnoU9WQO8s0CHGR2mbAW0Gr81bVBaCHrOXeo5KYqHZZNpgFx2hqIJcesOE5ynpo6f8XxzpDm7bq6VomJnWxiSCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046970; c=relaxed/simple;
	bh=j1phTuicxjm9DnLtG56g8n9NmVSe5LmIp4E16va8mlk=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=U9UaNlNOgFa8a+kL8y5LORbZLnipArc4Zz0Wo6rEOi3uplkfunTRBiZKA8pZ4iFPA9QFkSm1itwAxfmSlMSFpo70lJJSHiNsSRNT6VDFKqSM5Mt8Tg3Pfzmft2S+M+uHyF53gK1aibjlRYaL1uX3klPxQ9xaDTHuO6U8J7GTjFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=SqilBnNi; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046926;
	bh=0R1qED9mPyfxyIituKgVOhsGJDn/XGal/f+GPlMhV0k=;
	h=Date:From:To:Cc:Subject;
	b=SqilBnNiuf3CVLwPJLrvD0NdsD6fUXikTk9LZkUzoXHPhOw6lHFEUKkGeYDYt7nYF
	 yPm60CGaBvq9jGrC7+ZnrhGV4Z46sD5iKl0ocOEGInB5tisakV/KEQemX1dgilmdZx
	 OgFyGYJqqprmxqsVBHmxaFnQfe9XBhykyUptZ3et+tNsnxmZLh6aRNZfBfnN71iNqO
	 Hkf3jmrjYO9X/PXoHAun7fCaCt9pSNZS2zEPH0pO72Kwg58pTaf8Tbid9KTBv8EEpp
	 Ani6u23eVqKT3r+T5GF1ismpuX5/xqMova0fX862fcnUQOb043hby680f4QTh6B6iA
	 kCEy7emEV950w==
Original-Subject: Issue in man page pathname.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021622.0000000068AB264E.00139600; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page pathname.7
Message-ID: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
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

Issue:    The URL is invalid

"For maximum interoperability, programs and users should also limit the "
"characters that they use for their own pathnames to characters in the POSIX "
"E<.UR https://pubs.opengroup.org/\\:onlinepubs/\\:9799919799/\\:basedefs/"
"\\:V1_chap03.html#tag_03_265> Portable Filename Character Set E<.UE .>"

