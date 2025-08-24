Return-Path: <linux-man+bounces-3559-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75066B33083
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C97C203BC2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B416A2DCBFD;
	Sun, 24 Aug 2025 14:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Pszuex3T"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2330F2DE1F0
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046922; cv=none; b=fALcBu7kHWToqmLyqhcFoqR02IAmgZoB/goz8uXvDoIV/94xeW4F/sJ+MubjWd/zg2E6kO4Pw9Cy3PE5lYDEbwIvIfRc+bLAM6zr+t9hh2mYqzB54NKF6DWfUK/XcpeISc+tppvnFP0Xg2NqHiiJkL145WEgUYUz/2gyO13hJgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046922; c=relaxed/simple;
	bh=i+6696UU3XCYn433ScO2bxsIRPGQREPHNbJdn0eo6LM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=eIvDu0dUTXBRq/SrFK7DpVPos6UN2HSUM3HwAb3L7UKQgi+2r61KftFKAfoBgvJJbn64u4WTJ+ZOh3twmcC/rQFq4qCe3/HSSKwHfqcBkRdnNdtR5fxfnZwttKjGgqhLyhB246pcyA0i7oNbq830L/Qh1nZYwT9ieiEIU0jKbmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Pszuex3T; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=2tR00l2o5mRF4qhvZ18mgt8x4muc/co2BzdIURjUMZY=;
	h=Date:From:To:Cc:Subject;
	b=Pszuex3TNEIXKudKcT3Wep/l4xIVMFNPPNNub/9nRRoRhQNq8r7nMMoAC4APMBxs3
	 5Wb7K3E71F23E6vBabbmuMB7JiB+K0bTMouGbQZXdCGN8xldUoHDEcoTn47nBKov4/
	 5FfxspzainLRyUiCbzlrx41We4nA4s+TTrB6frOcqnUw4LfIOKmzaWISb2OSUH1tej
	 i8KW8kD4mtQxRvIQzrV3R8ziZ3AMt8vcAORzBQzJTUxs8XGd9zMeWDfmhzV/8IIA0s
	 eq1+uiMT3RiysNM/s0iMOLrBBSXGPjSxEfkEPHqCECIqceKXHnulaKBUvaC4Y9jCtt
	 1jx0qGcABdKPg==
Original-Subject: Issue in man page strdup.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000214D3.0000000068AB2642.00138C9C; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page strdup.3
Message-ID: <aKsmQtnhVTLR3ODY@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>          (2x)

"B<char *strndup(>size_t n;\n"
"B<              const char >I<s>B<[>I<n>B<], size_t >I<n>B<);>\n"
"B<char *strdupa(const char *>I<s>B<);>\n"
"B<char *strndupa(>size_t n;\n"
"B<              const char >I<s>B<[>I<n>B<], size_t >I<n>B<);>\n"

