Return-Path: <linux-man+bounces-3572-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C00B3308F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 798E31B259F6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 477642DEA72;
	Sun, 24 Aug 2025 14:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="MvqK82Tu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EDE18A6A7
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046929; cv=none; b=QLaaBe4PZfQG0Hyn+OKrSgjqKys4L1PB5K/p+1NmOazD/EW62lMizPwfK46YNNXvMaJSTU9TytTBp3e1KxmskqixlqMy28ikcuUs0tfASXvgt07MlrT4yX2roTVRfd5ecQZS9tr+SUAfAmYu1vaWUx9qz0CMRpSmxpjBSH/2tNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046929; c=relaxed/simple;
	bh=Hgy+XYQbC60sKEiQOI8W6/ena0sZcUbQnSCdE2YoWfE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=nHaYz5Bb5P88KE+jKR2oPH51UBvEFNgZTssVGtjCSKIaIuaSPOFnpre06HPhcMojkp9B7JvI5Ezr7YN5NFbUl45fRIZe6gnqNp3JeI/qWaJqbK3O2xmXA118oZbKiU+jVVJ1TyYDec6yV389HrT6PjFDS8Ng5gpcrt5Ior7pK40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=MvqK82Tu; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046916;
	bh=bZlRn4biEu4LgJETs5j5e3cxYHyBN8D3t8L8WQgHCoQ=;
	h=Date:From:To:Cc:Subject;
	b=MvqK82TufYmGPaBNjliuvMi8OKquNCX8FlPOE49yYGxHvfIaQ2hT+Roq7Df7qRkD1
	 8k5hd3iql4MybK0hHRzJYEfctGyNt30nxDmGmRepAaXoLJNsFALHJIn7vVNY9ox35E
	 z01PkAys2ijdGx5Ev6MpYqtJbmFJkmKUP6VfXBi6EvRjdzVN2/U3iC7r7X6xeJSaz5
	 MND28o5GtpBv6SIfGC6qaQaFLy8u6CGHATZkLTp4YjpFogPzabMT15CvCHrhxwcZFp
	 ZxudzamQ/lmlh0GCPu7kL4nmapUnId9BcrhIDY5/41830QH4u/5TTLGh2fBlCfwNfM
	 feKCUCJ43AXbA==
Original-Subject: Issue in man page wcscasecmp.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002169B.0000000068AB2643.00138DE1; Sun, 24 Aug 2025 14:48:35 +0000
Date: Sun, 24 Aug 2025 14:48:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcscasecmp.3
Message-ID: <aKsmQ-LAkRPXdYit@meinfjell.helgefjelltest.de>
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

Issue:   B<…>size_t n → B<…size_t> I<n>

"B<int wcscasecmp(const wchar_t *>I<s1>B<, const wchar_t *>I<s2>B<);>\n"
"B<int wcsncasecmp(>size_t n;\n"
"B<                const wchar_t >I<s1>B<[>I<n>B<], const wchar_t >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

