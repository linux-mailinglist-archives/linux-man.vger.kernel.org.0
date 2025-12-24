Return-Path: <linux-man+bounces-4495-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A989ECDC8AE
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 697A3304A8F7
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE05357A4B;
	Wed, 24 Dec 2025 14:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="pgI1Hc0q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A92543587CB
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587111; cv=none; b=Q1MpaEfk+k92uezTaNGmBjuFLZL/JjduUXg3WlJgAwmVq+xmXTvNsbI6yFjWtNXMZmaHohlw9OOaBBgHgAi3noQdPjqkTLFKCcZ+qxdMMJyjEqmmcvqtA3VQMQ/ckD8FBxJWwrCGKCkooVl2MJM8UxdPeIajUl0TqBRSUvjsFcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587111; c=relaxed/simple;
	bh=PYKaoafzsWtAczs7AWIdackXoGxZjKaS1mQ+/dGK/+E=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=URfKjZ2d5YaimKH3PEnKUQMk9sO3vIuG/45I+eVkHeFbVzEp/fcRVQQLddIA1qz55NYKsjvTBOnGvuE0ch9TRnZlah3aQ3ISDSVYzscNwep6eFvaqHInkskjzMlykSNQLpwbAVGVv3g/nT6Xji8xV2qW5owAPqSwTUzA6VA+HLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=pgI1Hc0q; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587102;
	bh=sj61/ElbgWJv60TjM08EzYrKqkm1kep1EeDd5eIefoY=;
	h=Date:From:To:Cc:Subject;
	b=pgI1Hc0qACJASN9LCBBfrsOcvZPe9DxJ7+XClJScrHl4g1PCZLkwkt5s1wF6KGg8c
	 kuH9b6m05AOcW9EAeB7pbAo6oWJFXFO6rIl4kxPqjHVTQvVNgjR1PbHdr4J5BJNJ4E
	 0CvfaCuSq6qYjB2ancmA2dH1ZvNsiEfSxd2cYFvJhZYH1hOw5EdaX92U8jWRpIwALs
	 jZTtpSK3i/L0L/Z4toGWSgnOMRWvZrIXnylqQMvmDSyYIDAVBoQIAqINJ8pgHl9q88
	 XKBCC9ICCXoVNKyqUewbBf9XdRMosqxH+Dtha0wMjXBhAj2UBHLoh8TLh6lNz5Teni
	 7OqWeNO/ZfOjQ==
Original-Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002086D.00000000694BFADE.00319811; Wed, 24 Dec 2025 14:38:22 +0000
Date: Wed, 24 Dec 2025 14:38:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aUv63rxcdLJxONzG@meinfjell.helgefjelltest.de>
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

Issue:     cmodx.c → I<cmodx.c>

"Program source: cmodx.c"

