Return-Path: <linux-man+bounces-1043-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DA28C9003A5
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 14:32:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7563EB238DC
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 12:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09A1C194145;
	Fri,  7 Jun 2024 12:31:40 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA3915B0F8;
	Fri,  7 Jun 2024 12:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717763499; cv=none; b=EBzk7UaAUrNGjc2hX1e4Uejx4nb51cJhyxb0borwY7CV3QQdKlBrIaI/T30dFdz3Xqfe+6txyr7KESesjU3Kwsdb9tO4h9h5xMi7baba7IW4w8sojvnPrt7HjjGsVh8acv/aRYUqtsrYd9w7G3q73irDhzJhrnprkTj15CGH1Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717763499; c=relaxed/simple;
	bh=y9eYWFzPSMGZO804Oyvb6+Tg49PHRH9fK3hKAvPEQJ8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gWq3Gnz0VwZOj8mbA1O40IczWLgICjo5qpcE8N/qlMJp4SAiyeWJ5AzEQYWz5SnOUaM/SFxVnNZBzXiLTsblqqOncvuj8s4zNVbAlrTYZWVmv5vrz53rQkdYuqF0P1NLoxAdPrl603mnF3qTpTyf5iPDSX6p8XzvZOo1DmG5k5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 181FE13D5;
	Fri,  7 Jun 2024 05:32:02 -0700 (PDT)
Received: from e116581.blr.arm.com (e116581.arm.com [10.162.42.8])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CEDF63F64C;
	Fri,  7 Jun 2024 05:31:33 -0700 (PDT)
From: Dev Jain <dev.jain@arm.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org
Cc: mingo@kernel.org,
	tglx@linutronix.de,
	mark.rutland@arm.com,
	ryan.roberts@arm.com,
	broonie@kernel.org,
	suzuki.poulose@arm.com,
	Anshuman.Khandual@arm.com,
	DeepakKumar.Mishra@arm.com,
	AneeshKumar.KizhakeVeetil@arm.com,
	linux-kernel@vger.kernel.org,
	Dev Jain <dev.jain@arm.com>
Subject: [PATCH 0/2] signal(7) fixes
Date: Fri,  7 Jun 2024 18:01:17 +0530
Message-Id: <20240607123119.769044-1-dev.jain@arm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is a follow-up to the following:
https://lore.kernel.org/all/20240607122319.768640-1-dev.jain@arm.com/

This series brings distinction between the set of blocked signals
represented in uc_sigmask, and the actual set of blocked signals. Also,
fix a wrong mention of sigprocmask(), and replace it with sigaction(). 

Dev Jain (2):
  signal.7: Clearly describe ucontext kernel dump to userspace
  signal.7: Fix wrong mention of sigprocmask

 man/man7/signal.7 | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

-- 
2.34.1


