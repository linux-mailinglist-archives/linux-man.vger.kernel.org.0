Return-Path: <linux-man+bounces-3660-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 91765B330E6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DB2B203E8F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE5B62E040B;
	Sun, 24 Aug 2025 14:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="JOifUtf9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544DE2DEA7B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046972; cv=none; b=ebKOGYm8vhuZ7Yl6iAL1EdedDRPQPrw7vaSj1sKhHC180muhox2tzPGEAA4fge4QzJpGVv2MRpkUcfvl/u0q60bM9pNfgexA9QJbuYZ1E1zQxm3x4SVCmoBWwISiQHQlFo7hUDcceegShu5/VxjnCLcwdKrPjBnm7G7GZGHo66A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046972; c=relaxed/simple;
	bh=eKQpsaPnrZy5U8agR5yYM8VVCy6l23viaQ/VCulmdBE=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=MKnREM2iLjn55NkBwfA5AuzxIqxcUzb+8Dqe/IBB6l11JTJ2UI6GhLFY8hmzo0/t2uIKxWEUHVlZjZdUjk5ZE2JN2RDCuXfY00MfkHxGO/D/4AFT9Cs9968ipTxvkPzh9dzj5lpaQCrguC8M7P44Bqte5kyTA5rrNtYuowZFq3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=JOifUtf9; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=GhQIL2RfrZPu+dVeOagErwcsNuo+vekxluV0ryCOZpQ=;
	h=Date:From:To:Cc:Subject;
	b=JOifUtf9cdL9TOfVm6ozg6ro11qBIUPvAJBAlgm3CRWNDlAmCLvK9/Nr4F0UWV4kn
	 nsQGG5Fp7C14MI+UvDB3Fs6d7MGadWJ7shQAlua1Gk9u1uI9HY/OH8KgugslBWyOJs
	 /GKC1Hk9f06ofDUrelkjywTdlFGg7lP9E7w1JVk18X2ElsrBQrgANMC34essf5+uJA
	 yNgzumql70IZC3VKZe17FOCv2mY8A+taNvyWCiwb3aXPWCJxRfEyS6NUJtCihjCOen
	 7AnQWE/6Mcj9FJ+l80jrVNX1CZ4fVttaHIUDNcS32aUYblIplNCTv2JmRCg4yrTQGG
	 AxkMqnEWXD6/Q==
Original-Subject: Issue in man page PR_GET_TSC.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021634.0000000068AB264F.0013967D; Sun, 24 Aug 2025 14:48:47 +0000
Date: Sun, 24 Aug 2025 14:48:47 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_GET_TSC.2const
Message-ID: <aKsmTylO-YgrkKzL@meinfjell.helgefjelltest.de>
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

Issue:    I<arg2> has not been mentioned in this page, ist it <flag>?

"I<arg2> is an invalid address."

