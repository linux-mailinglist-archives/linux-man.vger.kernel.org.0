Return-Path: <linux-man+bounces-4511-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B4DCDC891
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CEE4A302DF6C
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ED303590A8;
	Wed, 24 Dec 2025 14:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Ae6jomE+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAEA358D25
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587120; cv=none; b=EJYyoZFFjiG/fjQbMS3PcYZ9mX8LmSoowfN9iCgJqC5KU7JjFgcMlP45XuBNLKWjRmQL9Ez2ug8ihwWleV0g4V0VKjnfpoaPosib39yQFnHJsO1/KYIncHDeXaS6SoBXNXaNJt0bpRJx63LTOySKny8lvy9L9nZUxXgX3e1HShg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587120; c=relaxed/simple;
	bh=kyrquRnlP1Gng4JlUTWtjbcqfYXOZTTfSZEpkAjfRxA=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=U10uvBkt/4VVd0pU66wTh+tYCH0Ml9hv++ZXhtf14byEYrfFJVCFCH6sopo7E8T2TUN19574xp5MS7Ds9CHubcvchPGnMhCV5yZaQHQdTFtYvLGFlKg1nmV319tJ/ojhfouBG5t6TCIqvoYSp42UXcUNR+/TKfXTFqrhXyB7obc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Ae6jomE+; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587104;
	bh=VuHE3tdmqGTSKRfpOsgizGbzEBpbplVQ8g5DlEt3CvY=;
	h=Date:From:To:Cc:Subject;
	b=Ae6jomE+wCQgGjYbxYbqEFJAbeXGOuEYrk/y0yPXp1Dp3P4Z0qZ1A2CdDnzJPqbGC
	 sxNMuKjYTsxdlX4zXZ/C4nYfCRI5xw+uk3mJg/v4qQTGETX/u5Jr0AsxI0sJ1/iLfY
	 66sE/DWUEm5puoKkUU2yPZ5RGVUUoYobps5af0TioqINvvjg9jd+R3XO6m086Fnv38
	 9/74j1mAIfxfFSVFGoHwo/B8nKHFCKPE1iSRTnnyTwGT307udjF8KtZEquUMoxjKJp
	 OiUIEVOqLxD8WclMPaInnvuE9tnFFBUVFTKpCIRu0vB7/wlY2KfXg98TnVyMSg2m1d
	 zfTqAr2zdqWMA==
Original-Subject: Issue in man page  sysfs.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002024C.00000000694BFAE0.003199A4; Wed, 24 Dec 2025 14:38:24 +0000
Date: Wed, 24 Dec 2025 14:38:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  sysfs.5
Message-ID: <aUv64Oi-OYpIBxVA@meinfjell.helgefjelltest.de>
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

Issue:     This strings is slightly different 3x in this file, unify for consistency and ease of translation?

"[To be documented]"

"[to be documented]"

"I<[To be documented]>"

