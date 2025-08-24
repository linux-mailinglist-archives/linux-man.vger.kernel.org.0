Return-Path: <linux-man+bounces-3593-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68578B330A5
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 683CA1B25A8E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087072DECD8;
	Sun, 24 Aug 2025 14:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="sU4t/zpG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FBB1DDC1E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046939; cv=none; b=MgqjSy5ZxLDu6cG1m1eu7/Xg7K/APJUIL0Mj1mEIeEr3ruz86J4AcHkAMVchqvF+0pnQU/uRtNoCbs7caaBoxAOi7R79cXAuSJEh/WJ8pUEe0+ezjiwLjWU4ZyDy9XJ6SI0I7xndntrcMA4kIz9sxj37+moqCCT5gkWr57TNDDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046939; c=relaxed/simple;
	bh=md5E3wsuxQganaTAeazHPnVtLs03+aASo3tnxLKwhCI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=X1JJYWRdvv2R46KpJbVwlKuCbxxd1tt3MG5fqUKN/AocWXNE+BoX7+g0bOArC/bt6Zejrsx4NDFn2lPusuw4l8eJtdc0lEKqCf6pZVW/pwp+tNAssQGHDcVcAN+fjcc/+3u81biVQNeGDdr/PxZzA/E4Q/yGnPWqRk/4GHocBZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=sU4t/zpG; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046918;
	bh=D8vLqE1RrvpDGmsyk7NawXABS80Re5EmPjtNXZr+UBg=;
	h=Date:From:To:Cc:Subject;
	b=sU4t/zpGznKsyCVaZde94KvLcezgXg8vbH36WoAPMkVQGpJ7jxybAflwoRMDYdJuF
	 V9b91Q8wp8/arRCCeGQghcGRaGpQJTV93oOTRC9YoQ4R5Gc7JXFsUkrON+pmfJL+gO
	 SPbFGIgtOyCsmfTLnUHPBsksnM7pPpVPyvSiFdzgxkZolIZXLeZF8gfDINX2loJjFr
	 HHTLbrq7HHgsrWIeN6qWkqLmY5CuERMZ8sTHgnqXisjWIFGaE2zYYv3aD9cR360HM8
	 W6tdXy2N4sFMBU4cFWC9PhzZ4IzxoaDHx3Y+q/1CWTwOf93pigjQPuI9gfvQ0MjZwX
	 2GE1kHxad6sXg==
Original-Subject: Issue in man page fdim.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216D9.0000000068AB2646.00138FF0; Sun, 24 Aug 2025 14:48:38 +0000
Date: Sun, 24 Aug 2025 14:48:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fdim.3
Message-ID: <aKsmRteaKpuLDkOA@meinfjell.helgefjelltest.de>
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

Issue:    I<max(x-y,0)> → B<max(>I<x>-I<y>,0B<)>

"These functions return the positive difference, I<max(x-y,0)>, between their "
"arguments."

