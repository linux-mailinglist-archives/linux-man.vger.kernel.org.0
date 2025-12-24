Return-Path: <linux-man+bounces-4497-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F6BCDC8B6
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C05F4304C935
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D3C358D1C;
	Wed, 24 Dec 2025 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="imHK8RV3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F5C358D15
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587113; cv=none; b=Nxu+KDzVbdq7N17/Hv0aKSmeY45FsP1SjNojCaNkOli6EBWzntD/z7xEGCagufZg5C/hFSB4IUHTwVaCtdRUvcJNvVZVIbgCHvQzBArt3AiExruEn1P2WmF3XgEa9CX3gacFZbdQws/RxiAxMc+JLIOBc7ShS1wdOa9FtA30Qio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587113; c=relaxed/simple;
	bh=XF5UKPBygviZlcut6UQsTJeZztIMW4tkhEkYgFBbmg8=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=XlFhDn0Y0A5/6ErCNN782SqDcEg1mC2FXWqf7wWVdLEuUW3X0fMbBJXN0bN/3j/r/Hty+OYIxFjBujetjYUovDeC8rTyY8RGMLJR+uFTQjLkC1NTq9n+BkoMiYDO1YXG/jOau4rE0cA9QMBl3rji+b0nPy5LBOXbDfMEpBzrnPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=imHK8RV3; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587102;
	bh=HY8ShU4fD9jSc60rMLspOz5OpEFuvoLW7iZPMtZKnxs=;
	h=Date:From:To:Cc:Subject;
	b=imHK8RV3venhvf3U1BnA+kX78KgWMR9hrA0t9IBymFxZWVJJEx8M/YU4/MOyuBD45
	 59lZYVOIhcV/Q3WUpKaZeflIxGmDPnNBoMj07PRV0Zrx4/GwSjFKcdXNxz9tM5COB8
	 OXxVPYYRI/9wzohYEpBGun9MUz+HpbuWwtLlB9L2/nFs82EBWlWWwbHihNl/E0Yqyb
	 i6CFCA3qc2vst6bHHSQOC3v4+kamc+3sErsdIJMTRL7INHwi11i0N9AeVEpfO+O227
	 ukAOwPJxAlD7wCtBhXyzudjQROZ4MTPrusYveyP6FQczZG/VtQESLsd0PRcRN0V4ya
	 AkMpwLMfVScfQ==
Original-Subject: Issue in man page  PR_SET_FPEXC.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002090D.00000000694BFADE.00319843; Wed, 24 Dec 2025 14:38:22 +0000
Date: Wed, 24 Dec 2025 14:38:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aUv63nEitTChFk_g@meinfjell.helgefjelltest.de>
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

Issue:     Colon instead of fullstop?

"Set floating-point exception mode to I<mode>.  I<mode> can be one of the "
"following values."

