Return-Path: <linux-man+bounces-3666-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DF0B330FD
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 285603BDA13
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7942B2DAFDF;
	Sun, 24 Aug 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="a+Wgb9jN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56862E0415
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046975; cv=none; b=JBH87rHOJ8mLOhaSygSV/j44mwUfE0auJx5UQK8CEy2cQg1jfsDgHI0iQHkjhQXbKhNd6uehGE8LtXD4mY8RqVKGk34l5fku8VDiNBmw13kavRkhH84fNoWrcfrFuEsbSDIWUzcf4aG8Ip8d+9hE0AOSiewEFod5f6zj7faomDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046975; c=relaxed/simple;
	bh=L0lQ/qLVcGJOitiIwTsEiIQGU0+DvhicAgLOBDOpd/s=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=SZqPOQCWfHalukghpT4YWiHn0HQVXipsLovIFZoN4QGE9F0VQSojN2gHLMdVcy/tnnR+glov4W9sLThoOdyw4NH2Mn0HaAxvGuXSbOI2Kcj59ftPEszQWKmMKo5k4g4ubojOwVSZeP1pZwnOfe1DPFpYs0IdnkS7WH2hkLZF1uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=a+Wgb9jN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=0T2Wypg7FJ+w2MIcAWC4Q8o1JDql4LZMjpg4RxkJTIE=;
	h=Date:From:To:Cc:Subject;
	b=a+Wgb9jNckt/puxI+wTMRDSpZekfxLDoCWqlxwffaXn0Kl9vEti8R2whodcmxvjur
	 0LNK/tRNNxS121G3hiJaS6geZDr2Z4QE6PAxQkAkaY7OpI5VfP7hgqsPgfQkByhdr8
	 d3UrBxtcvup1ubOC8aDlelyhClfqQGjHxMLr9+1/X9n/9VQAIJphkoGmJmzfaPNxIH
	 pgybTs7MEBiwvb2hXoXOtus/qknip42bsmXRx3ndXTK1aHCKbEiGP2Pt6cWgCxHAWy
	 cjUeueE8gn40dVXEDNW0RREUtnVvQ3xtdbsyOhLz2ldfsCXau7NpslxSd6SzIh/u7C
	 WGxy2Gw3nbo1g==
Original-Subject: Issue in man page PR_SET_FPEXC.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021770.0000000068AB264F.00139714; Sun, 24 Aug 2025 14:48:47 +0000
Date: Sun, 24 Aug 2025 14:48:47 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_SET_FPEXC.2const
Message-ID: <aKsmT4x-9Fy2gf9N@meinfjell.helgefjelltest.de>
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

Issue:    This is not very good to read. Maybe a table or a list?

"Set floating-point exception mode to I<mode>.  Pass B<PR_FP_EXC_SW_ENABLE> "
"to use FPEXC for FP exception enables, B<PR_FP_EXC_DIV> for floating-point "
"divide by zero, B<PR_FP_EXC_OVF> for floating-point overflow, "
"B<PR_FP_EXC_UND> for floating-point underflow, B<PR_FP_EXC_RES> for floating-"
"point inexact result, B<PR_FP_EXC_INV> for floating-point invalid operation, "
"B<PR_FP_EXC_DISABLED> for FP exceptions disabled, B<PR_FP_EXC_NONRECOV> for "
"async nonrecoverable exception mode, B<PR_FP_EXC_ASYNC> for async "
"recoverable exception mode, B<PR_FP_EXC_PRECISE> for precise exception mode."

