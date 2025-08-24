Return-Path: <linux-man+bounces-3609-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 445A7B330B5
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AAF71B25AAD
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B255A2DE6FC;
	Sun, 24 Aug 2025 14:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="eK2y1+j4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B992DEA99
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046947; cv=none; b=hoicAvzSLrvS2LgZcF7XT2TTwvPHERpdqtvNYDQkAa31RDbzVcG2pxcgWLgXHjUZ9ZpyOJQsVuNfy7C8o7v74UkRjDzwIApsfdPr/ITnPet4twbzNZtlmHinoJ5fd/ysqOmPqeFk6zHaoEYpjkVNQmvI/hkbKdtcWV4EHsK/JFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046947; c=relaxed/simple;
	bh=67qRZ5npVD056wI/mT4ANlXv1qkkD7d+SPRgiIVSZ4M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=i23rn2QnIb/pIMuwSU9DaWHNBuaKtzaQDv96UITsk4u0xV4J0Hh0147N11JYzrCtE/dK0ysD5JKWrtwqZDZfl4ZihBh+oT+RtRXVGeKOgU/sPoARNWtV9gGbObrEoTBMVBgGwCQr0p88TW3G8rXiKixEWkmulXyEQXqIPvEQR/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=eK2y1+j4; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=R3/A3B683YybWBi+8oIzHeoTkDbSRtkJPSLyjq6RKYA=;
	h=Date:From:To:Cc:Subject;
	b=eK2y1+j4wY6RHbdEuxKVXOlxXMKsDjtWKCDSTL4+eQBu6WSrh3MUquafitnTaeLlz
	 e3ZGaQfpaNgKX3M1lZy9Qv+ENX4eTmOLJyCNG2xp7n1khe35g8bpK3tiQjoS8Rmrw/
	 uFl2qc/QIz6KAHxOjCnEelwMkg5rK8759Af1Kp/pGzC3J3w8pKURXa1gzKeo0xPjep
	 qgfEUcqOgL1YMTE+oIf4AKl5sts/KtHzPI0piehCNLul1sWzwIOV+s2YF7XnxhH0Uu
	 gNtFwmoUanWa0k1LTumoRQNOZW2hglv9knV6AxuD/rrtBAadd+VveESCLgP5SHMDvx
	 CXVLFxoq9la1A==
Original-Subject: Issue in man page gethostbyname.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021468.0000000068AB2648.00139180; Sun, 24 Aug 2025 14:48:40 +0000
Date: Sun, 24 Aug 2025 14:48:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page gethostbyname.3
Message-ID: <aKsmSAQzMtsBOUgK@meinfjell.helgefjelltest.de>
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

Issue:    B<int gethostent_r(>size_t bufsize → B<int gethostent_r(size_t> I<bufsize>

"B<int gethostent_r(>size_t bufsize;\n"
"B<                 struct hostent *restrict >I<ret>B<,>\n"
"B<                 char >I<buf>B<[restrict >I<bufsize>B<], size_t >I<bufsize>B<,>\n"
"B<                 struct hostent **restrict >I<result>B<,>\n"
"B<                 int *restrict >I<h_errnop>B<);>\n"

