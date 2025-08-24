Return-Path: <linux-man+bounces-3594-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA71B330A6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F4F41B25A55
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B7302DE1F0;
	Sun, 24 Aug 2025 14:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="PEZfl+Ig"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB37A2DCBFD
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046940; cv=none; b=c433wWrG74NgfW8SUK9JNcGf0hZ6ZNQyxR666EDxkWg8NX5i8zFDiYR4vFHfxMJ4g7Em+3SIXxJ1OsE3Xr//Cs8LbGrYZXu5RpBfxGeSvMErOYh73SgWEgTZ+MGAXFLU2bnw6koTxawwthIjYJlq7hllYA2Oy4VvcI2oUS1swqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046940; c=relaxed/simple;
	bh=9tfHZDcOca66SCArpEdCRVfHF7vPfsBxRjhC7Gd8L/E=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=E4ToH9D96EalITwF3rG15ac7Bzm6VNOIapZEe2goN43gI+FQVZWLjEGiBGwiOmYvattBQvvBuJnOjOJMu/XFC0ZCr/rHIsCTttT1/rcTXU4fuxT90UO3RunsFZ8ovKLIfnHDGicfAm9m/5tyDuO+kUQ8RC6AWoOXjGycfirNkZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=PEZfl+Ig; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046918;
	bh=2eC2+vHPn7l05s6PFr1HCD+JWQtmLfZ3uVxHKrwAR5I=;
	h=Date:From:To:Cc:Subject;
	b=PEZfl+IgZj4cRs9xIbONE1SeUy7irlD/TkECNxutzA5PYYQkJRMLBchFfNIVmvgXU
	 zsnHeouL/xbzW8OrsPeGT4r4bhzvsegFeWzYyNPKVOP2UxQaHpEJAVl/ZtGSLfB5HA
	 9QOP03ll5qv2rnPF6vRXDWOk+ORfJbjsRPPIL8RT5ewOr+tRqvJp3cVkcufk1+YaqU
	 Qm3fOq+XpGFCO3r9wPxkoi0ivgK3kU9Mqryw9vLh152NxyHw1r72e3lUT4GARa4v6M
	 II7/BkNASfHrYRJXbvAET3lVaDqyVffTaF56mKMU5y4iHf+nqJ1FcV4J33JbQQ2bZn
	 wyV+e1lwcEX2w==
Original-Subject: Issue in man page fgetgrent.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216DC.0000000068AB2646.00139009; Sun, 24 Aug 2025 14:48:38 +0000
Date: Sun, 24 Aug 2025 14:48:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fgetgrent.3
Message-ID: <aKsmRhNd2ZTsr_W9@meinfjell.helgefjelltest.de>
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

Issue:    Does this mean, for glibc 2.19 both options are applicable, i.e. _DEFAULT_SOURCE AND _SVID_SOURCE are necessary?

"    Since glibc 2.19:\n"
"        _DEFAULT_SOURCE\n"
"    glibc 2.19 and earlier:\n"
"        _SVID_SOURCE\n"

