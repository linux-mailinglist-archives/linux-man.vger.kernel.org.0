Return-Path: <linux-man+bounces-3648-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61601B330DD
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 652E41883F2B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F132DEA72;
	Sun, 24 Aug 2025 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="uvE6M3Hc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DCA2E03F8
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046966; cv=none; b=lTOHLE9+nQEvGS5YNGQ1MMFPlMJK7mLdDAu0JlBxpUVyyHZ4cDJ3yvzOjGG1JwgmciZ6Hb7KJ2DtPAEPq6e8ve5JxiRskBlVpm0IvmrTKOiaioyI3lhSx1Y/VFS/hfIpaqK1lGwGTFxuWF83SLwehRG70U0YLM7PonxyGFd0UD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046966; c=relaxed/simple;
	bh=buoGeJJBUPH5Y8DRtYg/zwRZY15KEDHmBpx7mUR4Zlw=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=qjB8IOM932jG42hjblXwduKKaVBnKbE0YzzGq2qeAqy1pFlbvRuCYGoJ6wEb0bVvLqBCyqOmvexool4Fxq+VFew/bjdaQ3tbq1rkC5ZiXdgrYy2rCz8QTahUXKY7ZdHp5AGpbh4MWMTw7KFPvkuOPfnVrJLZ/gKugC7VMCUxzmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=uvE6M3Hc; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046925;
	bh=QkL1Dw0+SoEqgeKmJY8vLVHbSkY6qsyyXOX6GG3WfgU=;
	h=Date:From:To:Cc:Subject;
	b=uvE6M3HcH6LR19eRjUmU4l6euEatHDxF38U/rdJO3Z8pIzhaHWfx3gFNtgeZajh25
	 jqp6wwZwdGUb2q68o/kPw21eSBko/HAHJPrUgqNf3zbGxyUmrYzFCtcZWNDS1WWbsK
	 YKC0FQr+Yyc54b6a+H7FbvrHXsQXtTYfJaw4Ut2ebaXBm3kKqG6CL1Lwo4DRA9liDt
	 IVO31aGnUxS9oCiUfyOPS+znOZK97+QAKnf2FMlh/UMQyD4tPcaRunS20nDpMmwo6L
	 55tdwWcO3M37/4cG7qrXB7h+SKGfmZVFp7lwOlR29sj61IuEKoG1eETuaaSuah2pHR
	 se38GoIstwyJg==
Original-Subject: Issue in man page motd.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002174E.0000000068AB264D.00139551; Sun, 24 Aug 2025 14:48:45 +0000
Date: Sun, 24 Aug 2025 14:48:45 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page motd.5
Message-ID: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
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

Issue:    double space before "after"

"The contents of I</etc/motd> are displayed by B<login>(1)  after a "
"successful login but just before it executes the login shell."

