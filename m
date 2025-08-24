Return-Path: <linux-man+bounces-3636-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAA8B330D2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C1FF7ABA35
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4812DFF12;
	Sun, 24 Aug 2025 14:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="nnXEynGW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AACD2DFA29
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046960; cv=none; b=eyRDVnuDG8ioJ8MPHMeLMlTAsWtWb6icQ1l3svKusHO4onDwJdvQgqWn95tz9GowcjFHcHKtdgCHSrP2NdUWCjG4ITlvG3ukCWxENK8h4wBNFiBEeKKtW+ONou663h3U8Q+W5LUvFUdmNmmIrSIuKAHzTDw+8tctKAJRYJredck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046960; c=relaxed/simple;
	bh=BDCSrNFbuRtjRlcznqf5XMTjGEinnTIsZwUfiJslvXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=HUSz1k2HfiaHwmOYwmMYXlNBfqXf/dNQYqVQ2y7xfGwAQwEy0WvlymJmssB5/JAAXaH1W1QmW2iQt5kRG36zF/O01j4EPj9Xcq+o31uUNMHGwBcjxdFv8tuvBqIaUMcZGghzRkOL3+XZ6io9ec+m7oxIJFHw58ic+vk7HvqFIkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=nnXEynGW; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046924;
	bh=ovBqfYq//+Gd9KFFPWJgg7g++Wj/Zih+kLWwXqsmcws=;
	h=Date:From:To:Cc:Subject;
	b=nnXEynGWuJ5YnAkUjbXel4LU1W3KX1AA9kS7VQIbRzMOQIbJMpDzkBJvsVVXRER7/
	 agKvlGio3MdqmlCcSqxxiF/ro5qq2SSNirLE8cwbY/BtRhtvEN76ADTe59N3V0fZvi
	 cZCb29Pj5/DxWZijtX82C+xcUJoGcl7lsDAVqKQmbuwNDgzM3DoaPA40Vfw/zsLh7T
	 PbG9+8FOzFlOiTNBRvt6nId/XU5lalwkhjS9bitcqqcAQ4JpijfTzG9JHPSABCwJJy
	 foTuJu9pqUz/K5Ly4n9fXmqU85aJCQWI3JlpLlR66mpYcClRu1BG6o8Uy8d9zID/oC
	 QqK4zzECCVAXA==
Original-Subject: Issue in man page memccpy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021589.0000000068AB264C.00139425; Sun, 24 Aug 2025 14:48:44 +0000
Date: Sun, 24 Aug 2025 14:48:44 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memccpy.3
Message-ID: <aKsmTKqJeMaSvwYc@meinfjell.helgefjelltest.de>
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

"B<void *memchr(>size_t n;\n"
"B<             const void >I<s>B<[>I<n>B<], int >I<c>B<, size_t >I<n>B<);>\n"
"B<void *memrchr(>size_t n;\n"
"B<             const void >I<s>B<[>I<n>B<], int >I<c>B<, size_t >I<n>B<);>\n"

