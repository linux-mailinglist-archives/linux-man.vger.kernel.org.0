Return-Path: <linux-man+bounces-3584-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8B0B3309C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 567CE1B25A5F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 758032DEA95;
	Sun, 24 Aug 2025 14:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="eOKkB+55"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCC42DECA3
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046935; cv=none; b=BFCFmm0ApQLH4b9SWITY2g+YVdkdam9LEz8HdEN/KH0yTLyS/hXG2ruvRPUeyQyFd6g4lxyuFCcC4QZUeJ3RnsMUEULgHI7w+vYUh2XozKJ3j79Hk9S5CUujYjvnx3S+b+aYQNDay5CnCntsVp7vGWO3fQQ8G43I1dRkSKo77w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046935; c=relaxed/simple;
	bh=OSnY5qUwX1wjBGg5O+8x46NRPdehTYeTXniXRpEsq3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WUzheYf0g9w6U+zKcJA7orXNdcSfcvb1Gz05ld7t8XfLEo96A3d8l7iZo/fvdeTtng31+g04CASxdTzhoFxaAQhS3ZuM0ugYZ9K4U1G+3AfoBkGY0gnRdWdUVFxkyJ44ci3tnxe1PGqtHQX4nCrvYyzGJ007J1VXV4lwCCJA7rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=eOKkB+55; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046917;
	bh=EVUkj14jDil2PFbm9+UjdXS4fEnhZ30Jcc5/ND+WqLY=;
	h=Date:From:To:Cc:Subject;
	b=eOKkB+55Ti4qPi2r81aKHNbF8l0AyM7d3k1sCEzPOzg1fjyDMkj6zRL/XJbqYQy6B
	 7cNX9sTNWuK/otctP3WgYa2zlUGI2u9t5T60pI/mB0DoYsWpdMNzh3XThcxqvg1Y0a
	 Qr8tm6On1MTVBTPznIq9EA3yriBYu4MWHc0iBjeQcpl8djHDI/BfQ2AySi84F/h6tI
	 TDTWBjTTwxrhgWBEZz0MR2tekhuSTHvalKCgyMXZpyP8lFXS25p9ON4KS949mPtuq2
	 ZDOZ2o4Qr6NJ/DNA7L9meWo+X5PgbVWuNxspL/HDuzP0RgbF1qfd0evQnXQ/qk8RZy
	 +HVsIv/DifglA==
Original-Subject: Issue in man page wmemmove.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216C5.0000000068AB2645.00138F0D; Sun, 24 Aug 2025 14:48:37 +0000
Date: Sun, 24 Aug 2025 14:48:37 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wmemmove.3
Message-ID: <aKsmRZpVehJwaXl6@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<wchar_t *wmemmove(>size_t n;\n"
"B<                  wchar_t >I<dest>B<[>I<n>B<], const wchar_t >I<src>B<[>I<n>B<], size_t >I<n>B<);>\n"

