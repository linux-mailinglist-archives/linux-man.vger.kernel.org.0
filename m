Return-Path: <linux-man+bounces-1959-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA729D0314
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E80AF1F219C4
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68147155312;
	Sun, 17 Nov 2024 10:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="jAIHPZJp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25EB13212B
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840701; cv=none; b=gp/BTji7KDjqBDiQ36J/xX6lZjvygpsqxVF37+giB17RC+AE++3lyMQBKO+XYzyvH+Zkovoz8gSr6qnXE5LLx1IjcyZbmedO7i+LF2H/NLhebIiAAsVUqstGbD6LMI/nIeXAbsk506xEA1PpRZ1ktVsyW5NCO2BQZUllyV6kM7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840701; c=relaxed/simple;
	bh=MFp8FOblJnzCQVr4dSm+KhHgDmcVNuVHtqlVXaE9ZtU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=t4r4x6Z888PXOko2RrxyYgvwNaymWrs3LZf6MsFoPJZLmItPEZ/1QLHuFDO5GGKhqHnmvOqHZpeeij7Z3EBHBCCbbYd7xtQGyw0oT+Z66JT1qfGcAg+ZDx4XTMQ25FDb+m3+1kDC+F6rbB4UkSbcY7OjOnF+nar3s7x2NBENLvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=jAIHPZJp; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840383;
	bh=SHhTC3Ku8lWYJHF8DQAVAl0ZDa64m2Y8Mb/H27ZT/JI=;
	h=Date:From:To:Cc:Subject;
	b=jAIHPZJpTFVg8IeZLOF5KUPr1OG3ETAwrHE2GfGh2CU8lLPi84jgV9Ckalz+kUA2x
	 9xSsJMDl/Smj1VaPFU4O222hQG2iEPht39PZrMnGwTEfTUXnXbhXFaBiAcXkgBtmdF
	 wTlPMYLbpjra+jRnZ8HZQttJYTpW2LEqzLlDr9tEA5n0+bfTcpsJu7BZ97/NOWyw0t
	 dNRl/YcvnynKHHPScRj79NQo+p0ujcfpoQa1D4aTmh3CSBf60ka8QN1RE8x0lBVqoJ
	 t/x92w1it1MN48YUVka9lQNfvBOky29OkVGRViVXjQHUVgxsVe4L5/xnlG5sdDGIn+
	 qzZnB3fi19URQ==
Original-Subject: Issue in man page sscanf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020956.000000006739C97F.003FC45E; Sun, 17 Nov 2024 10:46:23 +0000
Date: Sun, 17 Nov 2024 10:46:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page sscanf.3
Message-ID: <ZznJfzfiBOnRbni5@meinfjell.helgefjelltest.de>
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

Issue:    I<info> → B<info>(1)

"The Linux version of these functions is based on the I<GNU> I<libio> "
"library.  Take a look at the I<info> documentation of I<GNU> I<libc "
"(glibc-1.08)> for a more concise description."

