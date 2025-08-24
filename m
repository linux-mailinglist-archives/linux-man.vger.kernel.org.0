Return-Path: <linux-man+bounces-3603-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF2BB330B1
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E76F7A6986
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD97C2DF3E8;
	Sun, 24 Aug 2025 14:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="c3n1K9Xl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1F32DCBFD
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046944; cv=none; b=o0cvKgV6kbAGYrTwtmcgd22AAX2HU2BNkdpF96HgYd7l1Kt9Cvovd5wK74NLZh+pJjmNlzuszBkbPdIsh5zO7qknzVmbhvOZ23AsV1B5AnHbloUeq3oG/BWVWWyPMGVcZ3yQAv0hkvOQRzvCYwPpbib4yFcvxr6AcS1RW7uC6Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046944; c=relaxed/simple;
	bh=xH/5yCSV1DK65AcWNIFISCz+9sobXeJmHa76R6dcW54=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ntL1GHnUDDQRpToqpGacueVhd8hVgEZQnDrSKQBQBolTSK5LEJhMGQ83gZ/pHPTywsM4pG/3ZzpOAKzj+xE4CmQtYEAeGCOw7PtYV03MS7QE84viPPmLKGMu97RVxlJONto1ek5IbDXyQyu1zmNbxaI+3WdRGlPizNzUlznx3ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=c3n1K9Xl; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=/vWkJleOt2cHi+0lQHsJM7JefCRfeQ3rSADSc2WnPug=;
	h=Date:From:To:Cc:Subject;
	b=c3n1K9Xl4s/ww2+YuPzQroaxUtvVbTqYJs9R6rLb5ZiqJskbd/5N2llOoQnJjhx6Z
	 z48whZN65uLYpiT583q0TMcb4cyh0VgT11QDTxjm2D4suGitgxp1+fA1iqkLNrYQGc
	 yUaq0/KSsqjJ0sl0RHhRNuM3dZLcXVnrhn18Y7Im3oOV2YGBZSRIo3QN5aBDGYuLaN
	 N90/Axtp310VYqdWnRGu00Z0XPLXFIT0cGQzb/+UPnPKxe1xTNGvpR47oqik8Bwwlz
	 7rtaMs1Ib50B1aDB58cGhhYxc1BPuOhgGVzQ0T9YH9dfQAe3a5W/A3bsBtaOqAFdgE
	 cQQYgAf7tJMSQ==
Original-Subject: Issue in man page getdents.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216F9.0000000068AB2647.001390EA; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getdents.2
Message-ID: <aKsmR84IfORc9E0C@meinfjell.helgefjelltest.de>
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

Issue:    B<ssize_t getdents64(>size_t count; → B<ssize_t getdents64(size_t >I<count>B<;>

"B<ssize_t getdents64(>size_t count;\n"
"B<                   int >I<fd>B<, void >I<dirp>B<[>I<count>B<], size_t >I<count>B<);>\n"

