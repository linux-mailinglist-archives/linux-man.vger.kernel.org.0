Return-Path: <linux-man+bounces-3575-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33702B33093
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B016203C03
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8D112DEA7B;
	Sun, 24 Aug 2025 14:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="gG7uk+uC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FC319ABD8
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046930; cv=none; b=XdsbYXntQPuPe+4XYum8M65rvEafuZSdnEXKJ0Tk2YDvAoNICx86OyA3+k34S8vIkjysQWhoSjyCxxD4wHa9w7e8MUh15vHiPwxTzJD7s2r7j6B9TJ6NisSYjwkq0QLSxPXZYmqsZepAcWBWFJIkMtqSDQo6rJy3xS13EXE0zDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046930; c=relaxed/simple;
	bh=NxD0EbBehbPQ9+kQ5BP+YSFf1ugJv5pKWs35iFQrM9E=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=mszPrOgmoz1wh985JbbLU+DzNyOu+fQXN3mWQIqmTzkOVYwvkkoYvEgRpFgtjwM9Z3cwW5r/hnn8vAsVnmLyXe0b40ZCl14aVg9n4HH75Ie/iNOs3uziwJAW8s+qeA9IP5+6WPi9ulU3oh1L1cJ1470eR6P9ALSWU11q5iPrZtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=gG7uk+uC; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046916;
	bh=t6e3GghZKnWgWs4sZx9c1rVtRsRNlKGGYM6+05EIn2E=;
	h=Date:From:To:Cc:Subject;
	b=gG7uk+uCyTzy42h9vDfZoDxy5UbNsQLYytSej9BQFa4Bl5zz/CxRSNT2DAuzYDXtv
	 OiSYuVpZBQeTOYPYa3wOkONAPKJpJUD0p8Fph9/2tPHpztThkl6LXl6pz0bVKmkDyR
	 7pZxQyAiXio2dT2/SSQu5hScy7jjOtHvRiY1dVxXVca0Cs/Wj4LWZw4vnJUB1NTapW
	 rFj+8MKkQKDw9owL2OXp39hZmbjjGL9loVrw576Oa80OTBs8Yl6A3nITy7nH+6ihAL
	 wM1IYBESfxyj8OsLYWifB8YZIyjhSpw0SAc43rAUGg85RjrbmAaQpfJadIbIV2X7To
	 pjao/d6Ax0U3g==
Original-Subject: Issue in man page wcsncpy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020594.0000000068AB2644.00138E2C; Sun, 24 Aug 2025 14:48:36 +0000
Date: Sun, 24 Aug 2025 14:48:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcsncpy.3
Message-ID: <aKsmRBaQOUxYyMer@meinfjell.helgefjelltest.de>
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

"B<wchar_t *wcsncpy(>size_t n;\n"
"B<                 wchar_t >I<dest>B<[restrict >I<n>B<],>\n"
"B<                 const wchar_t *restrict >I<src>B<,>\n"
"B<                 size_t >I<n>B<);>\n"

