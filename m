Return-Path: <linux-man+bounces-3656-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8881B330E3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEE8A18842C7
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56642DF6F7;
	Sun, 24 Aug 2025 14:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="dLQ1s94/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3C82DA767
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046970; cv=none; b=nN+DXY13Kuxt326tuVC1TxG2ZnplmIaqbUujAouk8bxziQ0yEtubTOFq1iaz7wyNHlCku5NwoN+Cy0Jeu+9womxQytKXzI2jATeGj7piT4CLGKaFsI6LVtADngWGCx0edGdSD/OaXfpemnqRF2zvsLpMBjIaYp9Kgv9xTjgisNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046970; c=relaxed/simple;
	bh=iUKgVgAAOa26r0KuaM0fnSqqQ36pmxKMJWeHdli4tKM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bWli+bwOq8N5qcDYoq7H5XqGjz/LPvIvXbJwP/KR1CgHx371IAwwjAWH9bsyJLNljyRGZyrZUMB5gN8X2pivJNLWTKtXyOI5YVh/1tHNZRu1IHU8atr+5Cj/iv6BOuOx+JTPhtLR1UCgB8Ur18vC5AvihhLuBGeTUfYogUsiKNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=dLQ1s94/; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046926;
	bh=7HsQCYb2NUkr9wwI+84qw2R4a4cSxx3E7cDAw8Fme6Q=;
	h=Date:From:To:Cc:Subject;
	b=dLQ1s94/IqhN3vMO1H1u+ijgsoflQ+A/YLqwZP6NXDUdJ8Tr8iVzd3WqUpp46IaLo
	 6i02z/YKehhRo6mLb2ruI09yiNp0telgtOEHqASMtE6lDuwpDMSFSM47Kc0VmYph7c
	 1AJDNdjJIpM0kt1ZiwswejM72HzVN+uqMCWiTwZwu0rwzm9vYMcNCiyUfY0ae2LYPj
	 bH89WP/Rlc6wzSDYj9xnCL/QcV+oB/OIfglPKD36EgT8VFYALeJ1w1+OTLY9pIbiaE
	 qcbVpIAVVoDSQyvinoxRI5mUp71ibcvg+ipjxqMiiwQxX/NCqSrR7IHB82oFSobzx3
	 dvQzrjuYC9IxA==
Original-Subject: Issue in man page pivot_root.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002175E.0000000068AB264E.00139619; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page pivot_root.2
Message-ID: <aKsmTgut2boYJqiN@meinfjell.helgefjelltest.de>
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

Issue:    I<chdir(\"/\")> → B<chdir(\"/\")>

"B<pivot_root>()  changes the root directory and the current working "
"directory of each process or thread in the same mount namespace to "
"I<new_root> if they point to the old root directory.  (See also NOTES.)  On "
"the other hand, B<pivot_root>()  does not change the caller's current "
"working directory (unless it is on the old root directory), and thus it "
"should be followed by a I<chdir(\"/\")> call."

