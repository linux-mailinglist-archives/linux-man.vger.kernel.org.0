Return-Path: <linux-man+bounces-1965-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 340619D031A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE218283272
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D8AB16F27E;
	Sun, 17 Nov 2024 10:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="V3G+rmt0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30A483A17
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840704; cv=none; b=rc+s5oYUgi6fyWxM9PcJtvgeoFudR2eX60EQnlw+nlzLrXB06RiQXHCmNDGYlwJjS8NDgmmM34aj9+xSVWitcgdTeQDpIAu0jvS43bfV8F9A+wjXGustFNgKmXsTX/SaYiKMtT7Pu42ZnUKwEcom1N3J3UpFFQIUIDhD4EFTq+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840704; c=relaxed/simple;
	bh=oI5BxC0yZm6CT243bLR2qkR8cNgibsLgouwypUUuHlo=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=Bi++hXXEhzmdxtQ0y7en9H6srOpI745KYYuXJ+RQa+Abh45RZ/dyHXL9K8U+/Z7YFbHJNuQdFbkCqcg06r8ElZKwQhb59/f0WcUKbM6egrHJ4NhFTl4gkiQB2t0FLlEa1H7uFfeuEZ6NYmm6NOX0+1V7ljWdcB37XZK/W05smK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=V3G+rmt0; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840384;
	bh=qoBUONrP5ET4y6WDpiPoZtz2yQiZ2X7OO2Y0bJcgStA=;
	h=Date:From:To:Cc:Subject;
	b=V3G+rmt00make+krZ45J2/7wQXQFRilY2zWCZEvcDDFnasgLjOUq2r++KkTW9eeMv
	 I+uMMfpBDMXi3gg9uPyITTyyfPRZuJxZBCNzabObgEAn+btzDEmBzOyojo2Al5JXtn
	 STbnjQMw6brU89J3g7ZF9RyalKmza/ZAEHpPZH2xnbYO7yDfeWv+fc1pJW/788e3OA
	 8b4MFAHF+u8RksBnI5oD+DQYKdeNFyLBfm3i6LhbQkMfeStGHTp5CBEvTMKxrZTuMg
	 LlbOG+hs4RUMEFSxSdOXFXf/92MWxOGCSDHNCf2CmK6OqZxqup6HJGbx/0G+ecQwon
	 W7krQQ0NZfZFg==
Original-Subject: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021647.000000006739C980.003FC526; Sun, 17 Nov 2024 10:46:24 +0000
Date: Sun, 17 Nov 2024 10:46:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page time.1
Message-ID: <ZznJgGCgquI-itJ8@meinfjell.helgefjelltest.de>
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

Issue:    Should be two paragraphs and the first without "no-wrap"

"Use the following format string, for conformance with POSIX standard 1003.2:\n"
"          real %e\n"
"          user %U\n"
"          sys %S\n"

