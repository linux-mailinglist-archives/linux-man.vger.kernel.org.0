Return-Path: <linux-man+bounces-3664-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93033B330E8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2409203F51
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E69E02DF6FA;
	Sun, 24 Aug 2025 14:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="TCKhD+FN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640212DECCB
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046974; cv=none; b=mkxkKCCcN7HOAN4lwO1VQw25v6zxQDOybnX4Q8LIjzNhhngjR5wA4CBcgeFE9m364YvgTK0ETVPceEZHvth46kjBNUKWVb2GQeJpldfBzaahCOk2rPodCwGwZzLKQqyIn9nBXz5Ee/a5HibFpKR1uq/8eo24pyFvQ5hYVDaBaFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046974; c=relaxed/simple;
	bh=zArmv+7+RsL0z9WWH/PAJTG7V2lYIur7ZHERV+zwdys=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=U9u1cLKlDXMp1m1Tfqq2sqszjAUtcxarKYiv4MyuJZA/NpXvOpqtCppJRYY2uVWnsO6c2ydy3g8LhsltKVH0ICfqUrZduNTYHX1cs00etijn4AuJIq46kMS+MRc70JEQLGd8qGC8ABR+odX5YSb1ZF9ccmceZlkKd98y7ALugJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=TCKhD+FN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=W2eMxnrSQFW2kerVe0HU0KrutU9m9X5mYbEp93+I2xw=;
	h=Date:From:To:Cc:Subject;
	b=TCKhD+FN5ScA4z2Rnl0Z2jiCHOxt0Vh5hpcpnP/QDm0s+IeH+FYxiLlC+oxfSRVAy
	 0Z48f7Ezch9Fwrgedjvii+006n90OZm2tGs8dRdZGhESR8VofRz9glvpmUDfQfEhak
	 46ZaqaCQKroh0IgEVN0wnzbFxgqjUngv37r8rAEGNyTjIpCw1BAmpyJCaBoUcIIZGv
	 k0dJHxnDHknMZ/N40BdTRQ148uZxP79N8urPnoOSpLRFnU3K1yr/RWzb8SjN1/7FFE
	 cqjLCxJbLaAkVY+Xcaxl581SKXEyHXcI5Yh8IpEtdI+UMyeCGkj8/hsUEGpSQDPtCa
	 njES5aXiUFY2A==
Original-Subject: Issue in man page proc_timer_stats.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002176D.0000000068AB264F.001396E2; Sun, 24 Aug 2025 14:48:47 +0000
Date: Sun, 24 Aug 2025 14:48:47 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page proc_timer_stats.5
Message-ID: <aKsmT7pqUFnobYvV@meinfjell.helgefjelltest.de>
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

Issue:    Other pages don't use FROM and until → to - maybe align?

"I</proc/timer_stats> (from  Linux 2.6.21 until Linux 4.10)"

