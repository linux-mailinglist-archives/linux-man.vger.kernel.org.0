Return-Path: <linux-man+bounces-3637-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A59EBB330D3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4BF0203DF2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C2162E03E0;
	Sun, 24 Aug 2025 14:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="tCboCHCN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16E92DFA3A
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046961; cv=none; b=r1TRRu9EyjmV6ByVJLAnwt0TycFjZCMEkpAFyWDYLhvK4GOY7njUl8Pp5BCTQ6jieqkzuxPe29p1i/H3FGNE5k3ivcYm31RMfykUIEwM5bEX+6A9dg2+4AO+v+yWkP1GnYmzlhEqPO/GRnYR0b3gOuZuqeOfMOY96Msv5NlTL7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046961; c=relaxed/simple;
	bh=B6GdtHuF9WmWEmddC8ORb5kiELhxN3YCwtxYGfDqZOc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kO50vGOR7i4IE1tdngBgy1RcB2mFp7ajUvE8Jz6Fs8ltrohMxx/C8Miy+bQZS5h5GsY+JnpjzoyK7hAxVR7UuvfL566FMjjgQfGE3oUpknvWlO9L74nuzxXjQbXr0RlAHCQcogBoEwYaRCG1r7yZOHBJoGLcovrH7uA7ZyeaMps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=tCboCHCN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046924;
	bh=9R7/umsgwDgdgONmDJOrsmy6owTXwLwxmy4u3ZSqWYk=;
	h=Date:From:To:Cc:Subject;
	b=tCboCHCNBzweq54SvuvFMriKbXuGFUTbkgIeE/jP7F1j7b5XjYdUuVAAj7ovJUntj
	 F9knT+2aTpP/ikjnGO+3+fbpFFLAmWfXBVTIHYOlo6HaH2UtEMAiGKGHoSFaQCewLM
	 71Cy1MVjqcLrRCD3B/43GV5TeTj4JizrsB+BV0qBR3q5JRScf0oGY/uXIyLQEonAQc
	 2Sm7fd3Qn0Lj3CHH90+yS+W50dSCJtmeNP+Jb4A41ogxY35cLzliki6qszxu6E7duE
	 Cs76n6YSXTkiZiC4qMpoqKLn9ah7C7ney1OLgeKWjyU7DanyH6GFZAAq02TKdNzjCQ
	 X0D/3+XW8ef/w==
Original-Subject: Issue in man page memcmp.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002173C.0000000068AB264C.0013943E; Sun, 24 Aug 2025 14:48:44 +0000
Date: Sun, 24 Aug 2025 14:48:44 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memcmp.3
Message-ID: <aKsmTMgy8D3-xwYm@meinfjell.helgefjelltest.de>
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

"B<int memcmp(>size_t n;\n"
"B<           const void >I<s1>B<[>I<n>B<], const void >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

