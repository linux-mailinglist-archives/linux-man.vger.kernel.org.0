Return-Path: <linux-man+bounces-3558-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 125FEB33081
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 053F01B259C6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6361019ABD8;
	Sun, 24 Aug 2025 14:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="IYsV+8Ej"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00822DE6EF
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046922; cv=none; b=uczv80QGz6txp6fzntDvn4RHG71KQgDG+cgJDnS9t1LKJEpdwVZgT4P0VQ03vsbSZV/U92r3C6bqh2PCYp1d7bN/eVoKU1TZmSPcKSEe/+A3DnFJUT2Z1OiF67cCVZHCXubdMu4TFeC61Jb9oJhJBLMlkAruylfoRFledQ5cyOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046922; c=relaxed/simple;
	bh=pxdjON6qTD0LEMUe/oIq76JsPs279JFTFMlC1FVv7vQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Bble2ieHhfBaUTVLqUgLsjwXCe19sTvQuwlzOQKxX70LNSZ0HytmWMqgNPaj56+e2jDWZtq0ay840E8G1z5NBrGgw5F7IZlhj0iowXXY83753K3l+w2MC86l5Dn7E8c4lJJfaxkcAE2xSEyzax7xlgWB3GjzaOT9bk9/hgGxyBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=IYsV+8Ej; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=YYX4T3hoAP8cXmcQ/U4st3UIoFr4hEyQiliR09dtePE=;
	h=Date:From:To:Cc:Subject;
	b=IYsV+8EjMq/CnS6+PASAOXPt6UbLcVDyLgs87fCcu8H3q5H+7xLP2dr4dy5s9Sqpk
	 sup+jogJ2hj19jVR5/C4h47fg5qarVcpBSQqALJPQfCbZN9QEONHh10YYDwvtoG84p
	 Y9YWvJc9e8iG/YDbIWSy88bGcEw7fb7xdrY0zbmtjhnrBNaqQ23KaZwZ6VE1tJN59U
	 sieC2YR58xmKibbTsIqGbpUTiG7PSPSTLQ/ocZrTABUBHJg4DE6MLwG9GTSRW/Xt4g
	 dBl2dracu+zjMMSeWa+dAf0YBIrllfI55hzsgEC4tYqZTdZ9aoLxJ+iNNpWSly2oof
	 N1jAmGqJAswTw==
Original-Subject: Issue in man page strcasecmp.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002149D.0000000068AB2642.00138C6A; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page strcasecmp.3
Message-ID: <aKsmQm22yBvmE2DX@meinfjell.helgefjelltest.de>
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

"B<int strcasecmp(const char *>I<s1>B<, const char *>I<s2>B<);>\n"
"B<int strncasecmp(>size_t n;\n"
"B<                const char >I<s1>B<[>I<n>B<], const char >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

