Return-Path: <linux-man+bounces-3600-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 13580B330AC
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1775C1B25AA9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F252DECD3;
	Sun, 24 Aug 2025 14:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="oyStZzYg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A5F21D3C5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046943; cv=none; b=kWQTF1CmAHOE35cSiFao5rOztVl0KOunehmDjzGD+iYApwZne1WHkkE2bEU5d8/dhCi6GGWkvMauW7wbauCAeRICprQe261REZAQWuEcURbVZr8miK5x0QFI39kfPEIbZ/QWm+xMLfKHNuTDId1suOeVH3Hf5D1rYSdIhPm4a4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046943; c=relaxed/simple;
	bh=uY+WgpJQvzQrwlAq/y4eC2xzz44QQG474pgH6jqW+5s=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QU3AkFY/scDbfvyNf7WkViMOgQWAIpMwKRlrLO4cChVfV6GIC7oRYTo3CRBkNKbrq8NtG1byrbS2aNHB9NPDhDS2K9JEC1pGdMWJv4t4u273qd3/zbsqpCx6GrGIlaGt3QT/mYHqlJ8Hs+Jqik6DZK+1Moy0i+kv5AT7OQ5Q70M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=oyStZzYg; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046919;
	bh=D8L6h3TGq4+tT/D1VxuVlTXfSKOza5XefwFGmBuisNg=;
	h=Date:From:To:Cc:Subject;
	b=oyStZzYgmB/PlGuEkTxgkIPmi8uILLtNLzShnAGFdT9Vlja2aq8OFxMy1JzgrM/+6
	 5VCh/1gxg0IrqfQJnx7PK+Z7r3IsKn+JDKo6wPOg3rbUa/fyjUrWaUui6/tfuwMn17
	 DvBA9jgs3WTObBgyyvgoQF7TsPPHM6Oo23Cu3rCRv/Wnp26hWGyhIczt1n4U5YF8fV
	 RzDQMEndBfDSMqxWnuB3hJJWLmJtabk8vis+RN7CQvP1epGHVlFvVwaOTPp3TqcJSy
	 5Yr6BvSemJOn/FCplJtdQ4mU+ejR4SoWZscEyLT2Oa9okNImKlbwFk1ZxAq5G+6XFy
	 0y9UE6oSB+EmQ==
Original-Subject: Issue in man page fmod.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216EF.0000000068AB2647.0013909F; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fmod.3
Message-ID: <aKsmRzY_wS0JhTW9@meinfjell.helgefjelltest.de>
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

Issue 1:  I<x\\ -\\ n*y> → I<x>\\ -\\ I<n>*I<y>

"On success, these functions return the value I<x\\ -\\ n*y>, for some "
"integer I<n>, such that the returned value has the same sign as I<x> and a "
"magnitude less than the magnitude of I<y>."

