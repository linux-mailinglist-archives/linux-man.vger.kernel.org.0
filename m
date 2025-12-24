Return-Path: <linux-man+bounces-4490-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C76CCDC86F
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:39:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D71B5300EA00
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38AA0358D0B;
	Wed, 24 Dec 2025 14:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="IW0PRHog"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63962357A4B
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587109; cv=none; b=AxVEgW+JDxvNtvGNQNG3rUW1mWGs4LKm72R1wgOCGGtxFR6sz6ZuvH5XXAkLzOn7zYHm5r1tQy/qB7F0ygwAdjq7RuDAFOXX4brKwuH20tWCX7DtG/IQjNZz2ltdyeF1+21eJZG2ofORGeSDYGM2uCP2p7enR09Qv4Y4BkgDDj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587109; c=relaxed/simple;
	bh=Zsmi5aOEq3zlTvds4h0DHwensyew21ytUZbu35PyER0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=j7dlufqGjaxv1VV6wh2VlOKufeEoVWIWdlUVVnbJ/zAmTxj9R2MT1J1zF4dZZZ5N7QXaZTCsPfAYaRRnc1X8lO5jQlGO6FO7/Vr9anAYXifGwpLbzKivcAbAG5eM3TLUsk5/hTkVjWbDRWEOECv/IUML9r/ij5aLszxzs9b2/ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=IW0PRHog; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587101;
	bh=W2eMxnrSQFW2kerVe0HU0KrutU9m9X5mYbEp93+I2xw=;
	h=Date:From:To:Cc:Subject;
	b=IW0PRHogom9UFhN7CSniaCDMTLfbibxa2d8G7ntls9oaNiL0drUaaI/lry7D03hWd
	 PPb4s/CTLBVhup/gMWuBNaEm7wu66vHsnNo2M1jFVYi5LD1Clp1fjWsB0KXphwF8Ze
	 mAI6VOXJUGKPbX+NmCL+sK9XmPnYcrv/OciaZV4IPB8lokgITqPmp8eFVkcUQXRcFa
	 2npVy/MieJ6/OLAb8B4nptwI+SohO1Bvzw8Pv3qTLeypzoXEqw/6HcmOucGskQDnV1
	 PIRHv0LDOL0a4ORrQ9EOg5v+EqAPmh4HXrzzFlz9xMTqs/BaHgmBDSI4YLk97g2e5t
	 4wUMNAdHmk9Ag==
Original-Subject: Issue in man page  proc_timer_stats.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000206D6.00000000694BFADD.00319775; Wed, 24 Dec 2025 14:38:21 +0000
Date: Wed, 24 Dec 2025 14:38:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  proc_timer_stats.5
Message-ID: <aUv63clfbkad-mhr@meinfjell.helgefjelltest.de>
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

Issue:     Other pages don't use FROM and until → to - maybe align?

"I</proc/timer_stats> (from  Linux 2.6.21 until Linux 4.10)"

