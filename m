Return-Path: <linux-man+bounces-1962-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0C29D0319
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A922B23E72
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED2914A617;
	Sun, 17 Nov 2024 10:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Jf6zoyRN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEAB14D717
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840702; cv=none; b=Tj9MQnLnR/OTf3ivRAgWxdoZ8E2lfkMprDbElSdGRrkvIn6ZK4MsVSVrKEWaQMfo413MEiwvBfvaN9F+mDPq/54nDEM5v59mdX0naajET+ynxJ/YFnAwxWJaQ6oJlfuG4JCksLEhhW+DtX0L0V1+6OPA3Hdm0oWnc6K1cOIxFms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840702; c=relaxed/simple;
	bh=qDyNpDhVTDXG3OvQFE0jmVGnj0piC8hYhXBFuxbDeas=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=si2R/Y2eVbxE8yrPP5mqKObUOqHoLMW7UaYyF5jCDihK6/d0Qcr6g584VuciixwEsBMdVNU1CoTVvtcuzh6vC38jYCAjBFwNltN0/KP+hZ6bemPJPDgyuuvQ9WERYSLdek8ReruSBjFmy58jv+vpPItXjwSI4hqULz1Kpj9vFhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Jf6zoyRN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840383;
	bh=eBFmIhFfKW8bShiXRXYyZxmxt5hjsrPsqGDeutnxvNw=;
	h=Date:From:To:Cc:Subject;
	b=Jf6zoyRNd9YKo+8Mc1jtTZqVATFVF5UzuP8RbszCnjt9T4SQy7waXhaIo9n61ntSX
	 RgM6aJ6ALSFE+sYqvj3YjDDnYWX6VXhaGv3cxTqS+xUY9q+ZvYPdR8qlZOk2CMWt8B
	 FbEe2HFu1a9/aXkNzyhZxbdGQZVAqzE7t34qgdac1w6m0lL2hwg/5efy1b4sDBi+U8
	 lv+Ruzp6aviTpe3dF6c/S81iuKuNIiRvnNo8TFKEXUcxO/SaqSee+kAD3yxsvWqtj8
	 yJ7wziarV5eBxrB72VPT7dsbEtXeBq7gPkuzyVbYaPLv53i3BU00O9J9vK4NGrw0Pz
	 Egus1WH6Tw5aQ==
Original-Subject: Issue in man page sched_get_priority_max.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000207F5.000000006739C97F.003FC413; Sun, 17 Nov 2024 10:46:23 +0000
Date: Sun, 17 Nov 2024 10:46:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page sched_get_priority_max.2
Message-ID: <ZznJfy67cEKrL3PW@meinfjell.helgefjelltest.de>
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

Issue:    B<sched_get_priority_min>()  POSIX.1 → B<sched_get_priority_min>(). POSIX.1

"The range of scheduling priorities may vary on other POSIX systems, thus it "
"is a good idea for portable applications to use a virtual priority range and "
"map it to the interval given by B<sched_get_priority_max>()  and "
"B<sched_get_priority_min>()  POSIX.1 requires a spread of at least 32 "
"between the maximum and the minimum values for B<SCHED_FIFO> and B<SCHED_RR>."

