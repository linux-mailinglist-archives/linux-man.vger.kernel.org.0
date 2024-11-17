Return-Path: <linux-man+bounces-1944-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C92DE9D0302
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 829091F2313C
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AF5B155312;
	Sun, 17 Nov 2024 10:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Z0FKSEd8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CE1224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840693; cv=none; b=KWCQfj8iNc90aCV2V252IWUtXvPUPThgTMwJH+yez5lrfYu0jjDYlX1biZs0kYuPuqrKlGwC0rMDTjXNqjHVNXdaCtdFfAQWOgOf05Sdbk5rs96GjMAZACjUk6vXJmy8hgx6MgC7qCO3lcG8koo4kx69Os7je3D+ePnl5UCOzu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840693; c=relaxed/simple;
	bh=+37hkHLC1Y/uSodi9u9rYSq1jo3CTbxNtoO4R2BNnGM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=D7bT9oiPHIL+KnCB0EaDZPhs3xVCDbc4BLGldzw3dXYVKzWNkDE0TsDKCXZQI3M7GQ/0g2jI67YKocZCUqUl9xEsmKpl44hZBxpXzORMpbSpbHOvazeXGXDepwNJUSg/qznsyLjIvDjr2PsWAXiyynlmsC2R9odOAEfHxn2BzHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Z0FKSEd8; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840381;
	bh=9kG0nBdSNGFPm9d5YsA1uXQFspJ8/7oZ3Lrx4fq2hgg=;
	h=Date:From:To:Cc:Subject;
	b=Z0FKSEd86FmRHAZVe7SFTT7CixC7Qq55a5AzDEweoI55yC5cTefWF2oa10F01haHK
	 EEALEWCY8LiFLCxq0DOH2TY2zk8muZsc0USpZLpF+kqPkB2QrxiHukS91KNYKgJ11Z
	 mqE+LsMWWu4BDPY6T4qNjkSN1EnwwPSkvLf0NV0VsDi/FJS0Y5bY81w4Pk6AgUIaZd
	 jaMXgrp+H2Zgr/LzYxQZpyRYyQiMYZ4fZPICYCiUEqst3HlL/ciYPCOk2Ds2s7PbVn
	 8gdaghIkBPOHQtEJ6VwRweqUhy8hrbbUco9UV3gWWJpaTas7di2AtjSdJlpcVQA1Ck
	 ahsRSin8kcR+Q==
Original-Subject: Issue in man page memusage.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002025B.000000006739C97D.003FC2C2; Sun, 17 Nov 2024 10:46:21 +0000
Date: Sun, 17 Nov 2024 10:46:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memusage.1
Message-ID: <ZznJfd6TxHLeyFf_@meinfjell.helgefjelltest.de>
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

Issue:    bash → B<bash>(1)

"B<memusage> is a bash script which profiles memory usage of the program, "
"I<program>.  It preloads the B<libmemusage.so> library into the caller's "
"environment (via the B<LD_PRELOAD> environment variable; see B<ld.so>(8)).  "
"The B<libmemusage.so> library traces memory allocation by intercepting calls "
"to B<malloc>(3), B<calloc>(3), B<free>(3), and B<realloc>(3); optionally, "
"calls to B<mmap>(2), B<mremap>(2), and B<munmap>(2)  can also be intercepted."

