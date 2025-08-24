Return-Path: <linux-man+bounces-3568-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4445B3308A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75111441E2B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 317B927381B;
	Sun, 24 Aug 2025 14:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="OU4LpOjE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C2E18A6A7
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046927; cv=none; b=cDNv5TUSux4ojgLxBqTZDBFx5EVJLk23Q2T4/N48h/Vao/ru79lEtNVeMjt5xRa1a5p4xUclMOo8jwvzK31mK/pH/i0/3IjJUiR2kTY8av6YwHreihV5nPA5U2DRddBwCP1Y4gHgJizH94x83hAxi67oNGKyqFSbudzmFp3p1Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046927; c=relaxed/simple;
	bh=cT1Io4kfogIldxw/sAkjc0qDwEPhZrPweriuL1O4r8c=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=GqGYXvsm3BYUo2Ee7RUAkb2NQSGHNqabR2NKsCkDSwRc8LF2dIRdZsr3yNy+lCrK3mrigShs1OErnh0WM8kLAvkcsdj5QmOIQuBPknVG16C+uvapU/v7w98cCKAtfZpMIF2R+r9T26aecgXxm0iohKemK7uFFkALQ47Pan+S1OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=OU4LpOjE; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046915;
	bh=xGZx7j7ciJ2i9joooau1FBwp+F8ww/XN5aXZ3XL9ENs=;
	h=Date:From:To:Cc:Subject;
	b=OU4LpOjEtwfBoFGmaWCfP8bEcB9kbPN2ZqwUHPwcyGtUByUV8ns9nekU5AD9OM56S
	 6gwU+jTZXCN7O/hm5AXcHn5XY9U8ElggV6PmPMCWqLiWffSSMsEAH/Vm9eJSjvJs7C
	 eaSS+YV0vDEtmSubmkpvp7c1Rtzf3E7kWgD+sQGJK07RxMWWwgWK0E/dx8DNf5O3uk
	 vwQ2V0fbyeiqZ1Sr0OP+T4/hHE+oStZXkshF/+Vd4p2rsnch2OnVfUXB+W59jlWhJK
	 dVUJk0uqBkqdd1hcgQX+lKMVC47kxYBs9Bl0GRCfBpOPPXH+EDK96h3H+pLqR66Hcm
	 CrVJBOroelIVg==
Original-Subject: Issue in man page syscalls.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021634.0000000068AB2643.00138D7D; Sun, 24 Aug 2025 14:48:35 +0000
Date: Sun, 24 Aug 2025 14:48:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page syscalls.2
Message-ID: <aKsmQxHHcdMZfePH@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    Why these strange line breaks?

"See\n"
"B<chown>(2)\n"
"for\n"
"version details"

"Alternative name for\n"
"B<setpgid>(2)\n"
"on Alpha"

