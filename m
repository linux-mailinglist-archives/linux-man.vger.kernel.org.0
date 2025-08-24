Return-Path: <linux-man+bounces-3562-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4B2B33086
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D104E1B259EB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925CB17332C;
	Sun, 24 Aug 2025 14:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="WNPmbGVn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37EC2DE6FC
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046924; cv=none; b=b8yRFFR54CldeIFYOn9AiA616RiKWmLpSX7+w4VhSFgFsmb5AUrM/wM8ni+AbI9QzCJs6mPuocKUQwtjkCVobHF/87/0qy0OSL1QhytDimlCqgKCV2xefshJg9GI9+i4qF/cF9ZN3Yk85oNbeLxDdgG9Wljmini0LOLIT9eSzPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046924; c=relaxed/simple;
	bh=2UwUqErSmyIvyrFF10wmUWNBbYpPlq62X3C2skP86dY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Lf6lqoAFYv5TpgBggkQagC7rtEbBOAFNYwDfRUgGrK/nMO7m5qG+m+qtrR0akd813Vi0whi199D0yq4yw04vnZ5ad6rXFLOnaRZoTc54G2E4orQcD5opnnSrZMB8fZ4nJ4qPpfS8OXlkGOBmJZJrHCc4rV9wslLbKrc60IopGjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=WNPmbGVn; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=GKV1OqGu25zDjso5D8teN54lXDgX4/ToVVjB/tbvxrs=;
	h=Date:From:To:Cc:Subject;
	b=WNPmbGVnTGItb+nRilPwFxnBh+xiBaqRLIqu/qi0aP25rk6AxZPBoPqCyQymxDPrD
	 w4YWWrapmjgDb8BYOjaw7lqmEqEzdG5L0+adpwWHYNhmWAY2CfBqzxol9g4O3gEUjm
	 vu7cjX4s14AjcYfAySjSf7UcjwCf/Fi6Ntp854jij4u60uW6MjA0TTsh/n6YotR8Hi
	 bQdEof41HT6tCZqfStw/L+QnNqIoJ+qly6YuZICLXQcu/B/0dTGRFlf7TLGbbJQ2wb
	 PGfLOxG4XsS/4dYBJ8T26QOlr3w+J9QKYGTd+ojVL5DKVUWSWgnkXun2oP0dEXZlf8
	 HNF3Un6542b1Q==
Original-Subject: Issue in man page strnlen.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000215DD.0000000068AB2642.00138CE7; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page strnlen.3
Message-ID: <aKsmQr9bZFZt2Dh4@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t maxlen → B<…size_t> I<maxlen>

"B<size_t strnlen(>size_t maxlen;\n"
"B<               const char >I<s>B<[>I<maxlen>B<], size_t >I<maxlen>B<);>\n"

