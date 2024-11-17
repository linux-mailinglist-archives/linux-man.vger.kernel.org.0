Return-Path: <linux-man+bounces-1950-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 606489D030A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68DB5283484
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B47E4170A14;
	Sun, 17 Nov 2024 10:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="AKYNgp3k"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2034215B0F2
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840696; cv=none; b=RY3av1x60dXMQPJ6NTfluKlgOMGceRm3+tIe7XAMlHOcqqo/lplJ9y/rD+0QmczyYANuAjj0r1UzIFDiBtazLMwrjyIQ2aana0Mx1b2Per27q0W9UIV71rCg8v6MTQe0hNOKtfIDAN6vFvwPN5vsB9ExiAySU9iCttX/IZY785w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840696; c=relaxed/simple;
	bh=t5aki67jHhuyqZrb66tFnTon1OcnMivx5cBVhHKccsE=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=hiR5HMA6CD8JgsOOCYycwQl4rSN92StJPsNFwiwrn9y74ZtP79nbpFT4yiX83Vi3QEvBOVAoVXgAKCWTgXsvL0G0vaw5oknUfxcnZkS+LZYHwtXnYAzKrW+m5gSMXsxCcDHEh4HI3CZMMD+YsMN+9rCRke8TbCPkJir1WxJWvTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=AKYNgp3k; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840382;
	bh=Y+mQ77LGRuI897YeQbSz1g18QyXLiTvUGjtcoWzK3XQ=;
	h=Date:From:To:Cc:Subject;
	b=AKYNgp3kRHIrGwgCLG1GwXLKDryib2E7/aumC5Ou407dyhZAjyofh9ziD0hEuzwQY
	 C2KiEIWTbj3sLkDN8lzGScNg0wmne3d5mlxNKCaP9N2ywn17OcfBkc5EidsrCUk1Xk
	 xKfl17QlpSZtii8M65gOQse2u1Kgz65goptB+AndAVUQl0H1aZVLjFJXoWGLu9608C
	 gqlCrbeskPrcj3c6KtbiEJ35oPA40GHtKIoWtmjc8Ul+AZyhWcDDOmhNKcii9vx1Vl
	 Sev1Se4iAXfZGqND4TqzBMT5H/zO4yYpczHcfC7mgMHOARbAqZ0VDgFjHh2O5hVp9K
	 G2pQZRqpDBYfA==
Original-Subject: Issue in man page regex.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020672.000000006739C97E.003FC3AF; Sun, 17 Nov 2024 10:46:22 +0000
Date: Sun, 17 Nov 2024 10:46:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page regex.7
Message-ID: <ZznJfodBCrTTrRbU@meinfjell.helgefjelltest.de>
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

Issue:    alphabetic? Do you mean alphabet?

"If case-independent matching is specified, the effect is much as if all case "
"distinctions had vanished from the alphabet.  When an alphabetic that exists "
"in multiple cases appears as an ordinary character outside a bracket "
"expression, it is effectively transformed into a bracket expression "
"containing both cases, for example, \\[aq]x\\[aq] becomes \"I<[xX]>\".  When "
"it appears inside a bracket expression, all case counterparts of it are "
"added to the bracket expression, so that, for example, \"I<[x]>\" becomes "
"\"I<[xX]>\" and \"I<[\\[ha]x]>\" becomes \"I<[\\[ha]xX]>\"."

