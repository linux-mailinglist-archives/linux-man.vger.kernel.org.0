Return-Path: <linux-man+bounces-4488-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D98CDC8A4
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6904E30424AD
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E33A8358D03;
	Wed, 24 Dec 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Bh1PUKr/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C503357A54
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587107; cv=none; b=hHdHAIuMtQBlODISLu+jA7mpzJQs2auE6Axq/Cn1rH6Zc4PxO0c/uXYTbchXjqQhD5sASdmgm8yCmxUoJanXjWe8jhkpYEqqjIFCHzN7IUoV1wkbvFxec7GpeASXBnqdMfZ8FzVer0xLB5Eh+FDwjMf0EsTsP54bLvhM27Q5BJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587107; c=relaxed/simple;
	bh=PIAcBlCzuBu291L2yF4as6ftxFdRyv50QppFzeAdCVM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=K0WNtyHiDnVX1qCpmGfw+swO6QVI0r0sLPckX3RVLSvh6z8uhFkPQSbu1P4xtH8lYmMLjtPb5D2hNB3K8H5tcUJRJajS0BD9gV3FhqeVRIiTDJS3nAqpx+SUOPDmY65XfP4c9v9XY6vzHTLQ7hbwZINukGzAlRxc0AfeEu4G0NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Bh1PUKr/; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587101;
	bh=nP9DT02pHYqv3GDrkQPICPOVAZbSDSPLvikgQBjRKwE=;
	h=Date:From:To:Cc:Subject;
	b=Bh1PUKr/63icQTGTtSTuEI1jMBb422U+KibYnx7ZOqF0lp2pPQZxhHvgN3YsUi5uL
	 k5MJto+9fFbzg7nCW8s1WQMON7FXejTx2ybh/oS/DuEChNDpCu+kWxgFS7gUrVWl2B
	 Pu0QOXLQgUU8ofGwF0EVyJyY84IaoYiRp4aIP3vtvXRnT/HTXm0+Qs94f+s18ha8L1
	 NdORObcdX3EoyT51dt3Fl6WjXMZUIaAInzrhgremMgogs9ejqUdskn0w3TOrHOB49u
	 hmfCGVUOdHFYCFaUO+WgTEvkQImH9kS+Hko0yDVqSh3aL3l2G3SjVzeAn4VlLTHwlm
	 C/c+HnG7n90sQ==
Original-Subject: Issue in man page PR_FUTEX_HASH_SET_SLOTS.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002069D.00000000694BFADD.00319758; Wed, 24 Dec 2025 14:38:21 +0000
Date: Wed, 24 Dec 2025 14:38:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_FUTEX_HASH_SET_SLOTS.2const
Message-ID: <aUv63fBRjmONXg93@meinfjell.helgefjelltest.de>
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

Issue:    behaviour → behavior  (according man-pages(7) american English is used)

"Use the global hash.  This is the behaviour used before Linux 6.17."

