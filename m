Return-Path: <linux-man+bounces-3589-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A6049B3309F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAE221B259DC
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116921DDC1D;
	Sun, 24 Aug 2025 14:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Sbuh6BH/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA951DDC1E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046937; cv=none; b=rkMe2OPrIQBg7q2I9dSBeRHElTy7n9WffuNiSWjoI3LhQxp3eoZvqVY9+nAxoGPqY3WT/L6EuantfIZGVIXd5OjmvFoaF1P70nrQbH1lhSE419lOyAST5WJ7TyT6HjEu8fRfjkws05t5vzwdN/DGrrdKi0e6MZnsIsiyLEHgxIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046937; c=relaxed/simple;
	bh=KJa1NNV8rbgrl+dK426725TIciaapw09YMxLzYU2R6M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=t4VKD05hR0KMJzS9xKvAM0nq2foUZ1tCWXwduOrk+rQOd+I8l7dwWs+iWLrPQe+jrpawWq8Fhi1+a2wkbzSJbRsaJ+0XsVru63DVrIsSIWr8EoK+fuYk1DUnlNLf6isYpJC80fBmKiTF4RAHrQDYT7xGEKEL0rYQ8Ny/fDwI2bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Sbuh6BH/; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046918;
	bh=8nGmRRwaBc5oS2I8/xcaSdrYsJqfK7nDfERAdo0CFes=;
	h=Date:From:To:Cc:Subject;
	b=Sbuh6BH/ocWTVo5bFXb8IIg+dj5nD9rDTp9T8+99i5eVodF7DhDTq97UEDo2cIHsz
	 69nDFYty/RN1fmIIfXMbKJUDRCtYuBdWO1PFrbo2wKzqvHrao7ESUQc7RQ4iyju4RV
	 gvwlb8Fko45rEfxsuyLh8OChI0XXkmNNR9TftW3khy6LMWO2CPizd1HThLtQD9RiZq
	 2DX7yABtvWdA4LuXQL6/+/oYfabRiA24lBWQSl6izRTKS/Qfp+h+dg/bFPwH65no6I
	 k+z4+GJVViBWmv5FsXPQPINmphxrXvL2VT7TiPI5UY8dbTQIvp6Uvky00jsn49JD8m
	 HWSge8LQevdIw==
Original-Subject: Issue in man page write.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216D2.0000000068AB2646.00138F8C; Sun, 24 Aug 2025 14:48:38 +0000
Date: Sun, 24 Aug 2025 14:48:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page write.2
Message-ID: <aKsmRkOsuwBsqkZ_@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t count → B<…size_t> I<count>

"B<ssize_t write(>size_t count;\n"
"B<              int >I<fd>B<, const void >I<buf>B<[>I<count>B<], size_t >I<count>B<);>\n"

