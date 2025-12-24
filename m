Return-Path: <linux-man+bounces-4499-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0800CDC874
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:39:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2B10F3017615
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C26A2358D15;
	Wed, 24 Dec 2025 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CRuYqERa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F125358D17
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587113; cv=none; b=rJQLgOfEMRNhn9SDA6aGS7T4qsjxaAxaYSBBSxxJBATnJloAcELIoTiw/rkk2PaALgKeFIXdZ5mWNGVLC9QKTa3RcFygaXlF4hMBHte7+tV7iLPVcwxkO3zo4fZ3OzGGPCDQDqEozxjO8v3bz4sTFi5CPPayTKZ2f2nV0Sevk/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587113; c=relaxed/simple;
	bh=WQ4TSjeLwIq7uy/FRvDN41auJeOhXOdcVv6lrAOePW8=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=JLvVVA+QfnOKZ+Me8mwkkXMkxo32gCiTtyIVzDXqT8dA6bQHAut871EM3gIBlu3lWbdXs3GQdgceeb0Upk8shOHt4hCNKNFBIlhkdBP+kN8mwHQnrGW9VsE7uqUSfdV2BkbaVxyYF0KmwAx3wCNNjkM7+X93MWMuH/kpsNe7lSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CRuYqERa; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587103;
	bh=sgvCrWhqd+KpSugcnc0FW9Nezvv3A5WktaBQTagrV3g=;
	h=Date:From:To:Cc:Subject;
	b=CRuYqERa7YrHWv+CYzZuIyatpj3wPJq/vbYOz8pQm72SMk2lX49UaJJLmgGaXQjHy
	 zV0VSRPEwiZr7YjUU7hdUy7wHToigJwmGnkZZuWPk+C5ca+X5udhE7t6/svOLMNXph
	 QbQMBqXpDrlkzE8TQBLI6AEXtUEvgdlC7/6MNBVJck/94/h7k5yPDf+pjb6s5X8Hdz
	 EyxIs+4uyZzypxZVbJ9HeKm9qZxfWfV0udngBscGPvDQs/D9MBCtoVKlJ8QogCrMnp
	 clFuYbkwZgedBny6JbtBo6VLhFFG2GuehL8KZZvY8FVUEwtHEFh/J0WxcJnFWsayrQ
	 9dareaRpTof0w==
Original-Subject: Issue in man page  PR_SET_FPEXC.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002095A.00000000694BFADF.00319876; Wed, 24 Dec 2025 14:38:23 +0000
Date: Wed, 24 Dec 2025 14:38:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aUv63xJI6tagZGQB@meinfjell.helgefjelltest.de>
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

Issue:     Is this the opposite to "enables" above? This is past tense, on purpose?

"Use FPEXC for FP exceptions disabled."

