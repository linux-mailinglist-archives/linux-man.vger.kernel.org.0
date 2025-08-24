Return-Path: <linux-man+bounces-3643-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A76DDB330D9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0EF7203E90
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7616C2DF6F4;
	Sun, 24 Aug 2025 14:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="WMm9+Rw4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AF62E03EC
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046964; cv=none; b=f6xsha+RF1kqafXua461GnMzqId1dtVyuGlE89njgkwekrUgigalul4x4fsILbg5gi+QQM9WfFWCJ718NKHssZ0hnEbHLduZHJ/AoZLXWJRieZNSs1gWr7zZh/Y06qCd56s96CDCsp6Fxzi/U/8vcgChVkq9mWstE6XdFQOLB2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046964; c=relaxed/simple;
	bh=QNuvBeQBLXl/AHR76Y9wZ7oacGW7Yd0qoGEAnek5taQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jtNB0X/AX7UVFlM2Z5GbJZ1NCbz0MqBFIGJJdVcsj7ERZ5YaaExEnSvlWC12Vv6gexcj+CpHv6wZtaULgGiaewUXpnlTH2R1kR4diFj7ZupJeYwptg1GwHQmcUvODJxd1hP4T4NhOtor1mVZjlRyUhpLo/4WRl1TNvZtJetEwZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=WMm9+Rw4; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046925;
	bh=zNMOqBbfyXkUMqYE8dzLglrKApZYJ2EgNBoMBT3t79w=;
	h=Date:From:To:Cc:Subject;
	b=WMm9+Rw40tleU7BD4FjFWx7+qtEJyyrMQzOpnv7LrQPOaBvMw/H2r3tUWgZkNIXuO
	 07uiIwwqN75JBaQaBwIfRAc+emlKpsO/g7l/bEqZXASOKpCNFxD/JYBs3Vt2vpUhqE
	 rNL34A5DQWAAj23Z+QfYXqD+IhXIxbmtChLmIbSpMXlg7n82XQsBqFWOxXYkLQi+4m
	 DDYSxVYZwUw4WKT8LZSJcxJHx8n8FkGDgQyJ5v/Rn8wlEFuLozGzv25+3+RKUl+Lzj
	 wGQql/ZKy4CVY6xF0WX2T5tp2KTfUKqdt/ievPsjmQM49gK1FqrhIjt5say2y2/nDH
	 KasOBB3+RU6Lg==
Original-Subject: Issue in man page mempcpy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021743.0000000068AB264D.001394D4; Sun, 24 Aug 2025 14:48:45 +0000
Date: Sun, 24 Aug 2025 14:48:45 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mempcpy.3
Message-ID: <aKsmTfvGCp1ngVvT@meinfjell.helgefjelltest.de>
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

"B<void *mempcpy(>size_t n;\n"
"B<              void >I<dest>B<[restrict >I<n>B<], const void >I<src>B<[restrict >I<n>B<],>\n"
"B<              size_t >I<n>B<);>\n"

"B<wchar_t *wmempcpy(>size_t n;\n"
"B<              wchar_t >I<dest>B<[restrict >I<n>B<], const wchar_t >I<src>B<[restrict >I<n>B<],>\n"
"B<              size_t >I<n>B<);>\n"

