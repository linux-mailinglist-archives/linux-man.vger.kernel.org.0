Return-Path: <linux-man+bounces-3674-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5575DB330EF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84A09203F2E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51C472D979B;
	Sun, 24 Aug 2025 14:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="M/Z27ih3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07092DF70E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046979; cv=none; b=AwWEgw873aHKZL9jkLFT8Kug04Zwj9zZ28Q4Haj633vPHL9jK4KMkm/uAiCH63w9qBA+zgYFm9IP3Iv/aQpbwQdC24xQM3iSwrXRP3LtdvUexlFpvUQIOW6pP2OfY+34rc+1tPb0fV/i8EUHgt8cH+MYqovkmJcEQuLTWs/VHNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046979; c=relaxed/simple;
	bh=5BAapxjNVuhQ1DWSV9HwuuCYR3xdCMG3g/GH17F1NPQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kA1eP8IChiqx2Mxwrz7EybwGUpocQOqvMkEuSgR9vV4UMDnw/k1+ZOOetIfBXeWr443Nd6TX8oExtolAPQ2WGWZS1EV7gmby7En9OcGKRmzSi+m/0Mz0j4Awk9ji39IF26Ecw/JXhHOSrVOJGZmoFdIusgHFv+LGi2ju1bLQ/VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=M/Z27ih3; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046928;
	bh=nw9lVsFYeEhPEMNZ8EV+JAjK3N0KAOqr9xvPdtCxqGc=;
	h=Date:From:To:Cc:Subject;
	b=M/Z27ih3ZSmKsXSM2OhrJR8/SEbDci7bazZtaoD5Is2FaubMaP4G4ZQYFKvhHXyDd
	 2CrfEEMExiHPHU3IUXcdomyEdnbH6ubAIv7wx+31OODUSJDE5sBhU9O2swTG4QAZbZ
	 Tmh7yeqyJWRhpHdHeoYo7jiWUikjGFiY7j+l3STQAUhdz8FxdPIviQdKzjCs+hNLxf
	 Azu7oeC+YHEY14w9isJCWuwmEt+OQyNxMjg4yjrPeFifSRYY7hVIVRnRubveuoZfRS
	 RyQ8vxDBL222IpJ91TIBeKPG7JuV2yGqDoyndORhl6fNGADbaSOg56i4YET/TmRDY4
	 srPwIjoOU0Cgg==
Original-Subject: Issue in man page puts.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002166C.0000000068AB2650.001397DC; Sun, 24 Aug 2025 14:48:48 +0000
Date: Sun, 24 Aug 2025 14:48:48 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page puts.3
Message-ID: <aKsmUJzsFnD-5WjZ@meinfjell.helgefjelltest.de>
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

Issue 1:  I<putchar(c)> → B<putchar(>I<c>B<)>
Issue 2:  I<putc(c,\\ stdout)> → B<putc(>I<c>B<, >I<stdout>B<)>

"I<putchar(c)> is equivalent to I<putc(c,\\ stdout)>."

