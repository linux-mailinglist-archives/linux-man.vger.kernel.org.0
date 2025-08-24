Return-Path: <linux-man+bounces-3662-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BFADBB330E9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6716C7AD469
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC042DF705;
	Sun, 24 Aug 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="n12Z+SrW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073952D543E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046973; cv=none; b=EPB4r0NFkskzsai/rB3vaE3oDi6C71F2GlqojbHdiXisuccX4NsZQ301XMvnNZs4IHTLu1OW6esG0EaOFS8Cr9x7d+1K8VNpHH1NBTQQM4yD4RVOq+yWe8lDQx3teJvTDwSOIG/ypESP416jgpLNhAaWs0bCMl4yQpg/1LL014g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046973; c=relaxed/simple;
	bh=X+xq4nYu3DI92CMJbsAEWzDihDumMCczso97EJZix7Y=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=HFBXl7FtvXUm5xe+F4N9AbosKCAjxHFiTXbMaWLNBU5l5xXFaV84et2IOTZ3/CIcM2lvbEvCj+QwJ1IraIvZMIaJFTG4cD0liPxQoowyTf8WMYdmqyS3rxcfYIC3KDRWw/IXWG/JqO4PTQ2ixk5XxeMSCVudFygX8GexR3pT65Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=n12Z+SrW; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=CU+pPTA9lX5KibDXdNwzxnZj4Oov7r4RM6Ph1cJzeBI=;
	h=Date:From:To:Cc:Subject;
	b=n12Z+SrWUKUkQxjjIKy1fAmjM1X1y+MRGpsZrPqFwnypnnwYzGm9cEr+LHUDZQWkt
	 r9OuwNgLGuHGGUfuqPsbp9c6nrUoeyBnma4CK15wCtsRArrq9Wc6cApmcTgZAeQls5
	 hwhaelgJEISGCuYwhkGh3HSJKkPxSFWb5wj8GPuv5hY1P2B/9hJIbbTn/ettwkD2yh
	 jEolNHYLjpgA2G+tE/KPxR1TuOtJ2kmp6uuJ+dfVE1ocp/EaZtWzzGOaZzRd3J/+hJ
	 Qalo1Wuc/lAnvYRP2r8cOdfCSBBCJkuvll3t7bMcG9i75CZeQZmkkJ9ByBdiBXFvwN
	 PldtBeeEQn+2Q==
Original-Subject: Issue in man page bstring.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021767.0000000068AB264F.001396AF; Sun, 24 Aug 2025 14:48:47 +0000
Date: Sun, 24 Aug 2025 14:48:47 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page bstring.3
Message-ID: <aKsmTwLE31gv_7oV@meinfjell.helgefjelltest.de>
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

"B<int bcmp(>size_t n;\n"
"B<         const void >I<s1>B<[>I<n>B<], const void >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

"B<void bcopy(>size_t n;\n"
"B<         const void >I<src>B<[>I<n>B<], void >I<dest>B<[>I<n>B<], size_t >I<n>B<);>\n"

"B<void bzero(>size_t n;\n"
"B<         void >I<s>B<[>I<n>B<], size_t >I<n>B<);>\n"

"B<void *memccpy(>size_t n;\n"
"B<         void >I<dest>B<[>I<n>B<], const void >I<src>B<[>I<n>B<], int >I<c>B<, size_t >I<n>B<);>\n"

"B<void *memchr(>size_t n;\n"
"B<         const void >I<s>B<[>I<n>B<], int >I<c>B<, size_t >I<n>B<);>\n"

"B<int memcmp(>size_t n;\n"
"B<         const void >I<s1>B<[>I<n>B<], const void >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

"B<void *memcpy(>size_t n;\n"
"B<         void >I<dest>B<[>I<n>B<], const void >I<src>B<[>I<n>B<], size_t >I<n>B<);>\n"

"B<void *memfrob(>size_t n;\n"
"B<         void >I<s>B<[>I<n>B<], size_t >I<n>B<);>\n"

"B<void *memmove(>size_t n;\n"
"B<         void >I<dest>B<[>I<n>B<], const void >I<src>B<[>I<n>B<], size_t >I<n>B<);>\n"

"B<void *memset(>size_t n;\n"
"B<         void >I<s>B<[>I<n>B<], int >I<c>B<, size_t >I<n>B<);>\n"

