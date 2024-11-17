Return-Path: <linux-man+bounces-1960-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 158959D0315
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B66AA1F21C58
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F67313212B;
	Sun, 17 Nov 2024 10:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="kgU+pq1P"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C252148FF9
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840701; cv=none; b=p+lvlRtWxVWaTvnRhvNhBhwYT3ch6Drcb2QJcvBpaF3wQ96hWl4m4c7unSg59/65WuSIhU0348tJIHRly4icaQM9/pJudP27keFLTvU6oretCmKStCAzald/1qyNk8rDXeaw2oK5vOvKV1rc2tPEhHx4o+3JzQjeEs8xc9F42eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840701; c=relaxed/simple;
	bh=cveQjBnt8N3JN49PErsRt0/I3jwK4i+2yl3dIXf9oF4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=K6TGnF8r8ms7Qxw9VCxucx3MGAunV9Rv1Z3R2jEXnBI5DBftRD3COy/iIgAYi5+/YHLDrVPX/WHFp/4HH9OKMNAM1mIdQ4X+4RYKLLQGB+Zuffwvbm5oybli1nHNTd3FGfJ0PtR+XD0pNsvbui8ky4FIGKoJMCwauDKegjNOuFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=kgU+pq1P; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840383;
	bh=/cYtSPDOPlq+KVEXo34UGY3KDAHHnCCxkr1JLC82H/8=;
	h=Date:From:To:Cc:Subject;
	b=kgU+pq1PL0XPQ3icd2rGGMTGLRnwvUPbsbpZYSaIPqrvNeb1vyWekK7i+dhwOCkVu
	 cmf69XhMS7b26I50Xxe55TVPDnStRsnMxZcym25HdXI5TdD2TtTevDEtWpaFjJjNpm
	 o3soESdg70LE+PS6OvU/9BAD4dEk3jwgbZM/AVPhSBjG+4UNhmOY4UmvQuG02n2p9q
	 y8kO0q9bvg2fHUIgtbnWJ6FfoMZZBOR/H6tokKnt4ZzCAC6u2AOk0fiV4BsdWrAm3r
	 b0dvfPi+NRVIICcIjWMZc5FZEbcT3Y1xRWCKfjVPZqXNQQew1ku/CLJI6Nr3XyyK3C
	 gTV6WxAI0JWfw==
Original-Subject: Issue in man page sscanf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000208C9.000000006739C97F.003FC445; Sun, 17 Nov 2024 10:46:23 +0000
Date: Sun, 17 Nov 2024 10:46:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page sscanf.3
Message-ID: <ZznJf49XmOt6aDTS@meinfjell.helgefjelltest.de>
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

Issue:    B<scanf>() → B<sscanf>()

"An optional \\[aq]*\\[aq] assignment-suppression character: B<sscanf>()  "
"reads input as directed by the conversion specification, but discards the "
"input.  No corresponding I<pointer> argument is required, and this "
"specification is not included in the count of successful assignments "
"returned by B<scanf>()."

