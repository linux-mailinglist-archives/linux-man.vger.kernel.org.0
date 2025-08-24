Return-Path: <linux-man+bounces-3556-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF06B3307F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49DD5441DA2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352D92DE6F6;
	Sun, 24 Aug 2025 14:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="hIRRk3NX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E5B1F92E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046920; cv=none; b=Dz0EWPPL04we5DwdpiYyn5Qf1AZ2rT1E5eT0MpHUHi6znj5714/lX5LcslcMuqsMlSuJ+20UmBqhkcAzrYrcpl7lSEL5PAq+Hslbom1jNAXbZVNHIFIGSehns4SvdEY8rZcMZVV8y0pFq5UhIvwWH//vsy6RFrhsrJg7kvDK1TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046920; c=relaxed/simple;
	bh=9tfHZDcOca66SCArpEdCRVfHF7vPfsBxRjhC7Gd8L/E=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=nssO+XvZk7K521CNjfEYTBJSd4nd/bcuAAhqTk/b0AXZNz9oO6CYfpUBM7Q2eMS1yPzQ3Sn2y55suLWIOGEPBwAe2lVJl2UMCd3DpRJ931f2g977TyebKd81rG+rJJK3KgC8lMEW9uk9O2/k0FHcdmWGyRJJMOJTxykVT0sWh9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=hIRRk3NX; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=2eC2+vHPn7l05s6PFr1HCD+JWQtmLfZ3uVxHKrwAR5I=;
	h=Date:From:To:Cc:Subject;
	b=hIRRk3NXVfbAi2QhdnVJiOHNjJi2UM8WJAAfMxuvyu7+XYuB1tAsd0gI84Cd2fXLD
	 5UZ/plA54A2624u/h8ILxUkObte31HGIJBGcOvFaqlQ98bp3poJbFhmp+2mymY66Qx
	 WjM4g4gjQC3NjYhlgeR5cUATlJh4mtigdeDxXNgjcnkQ1XurkDVI0ArMX6OG+wYyez
	 9MrTaIROVmUE7uc6zo5vBAAVJY3TFtpHiezvOThQiD5eY96SIC01AVLsC2Ev6N1kle
	 wGRo0CIQ3X25GjNwV9hw9KKVuXgJMbwZ8omQhVgMrTbsSvg6S0pXTBcLmFTStLBYGF
	 eQJXaFZpgGkrQ==
Original-Subject: Issue in man page stime.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002147D.0000000068AB2642.00138C51; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page stime.2
Message-ID: <aKsmQsoh51JC5zEW@meinfjell.helgefjelltest.de>
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

Issue:    Does this mean, for glibc 2.19 both options are applicable, i.e. _DEFAULT_SOURCE AND _SVID_SOURCE are necessary?

"    Since glibc 2.19:\n"
"        _DEFAULT_SOURCE\n"
"    glibc 2.19 and earlier:\n"
"        _SVID_SOURCE\n"

