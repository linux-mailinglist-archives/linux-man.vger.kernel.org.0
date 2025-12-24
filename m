Return-Path: <linux-man+bounces-4481-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 844B0CDC890
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BC69303B7D3
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D24CE3587D7;
	Wed, 24 Dec 2025 14:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="oj2PVdyS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33843587CB
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587104; cv=none; b=iphKbyHVRd5rdw3ez0nzizT25vYyuNbIAqyoEpFIq1yLZ1CVV6Tf8GFmsuSsOnQ0BUOJO2vqHgPBEyYo+yfgtwcUaUbCMAhr8qPa28Czv4wAQm22dVwVJ63el/SpTnf+nRqdGbm68xjfXauVLNOHa3SrWPhhlCsjvtBTM59Lrsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587104; c=relaxed/simple;
	bh=zG0e72aFbei9JYpbbxv8mWP36tRtgveh1VH9u3VEn8U=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=ufvVC1bb/AGhIAzHXO1LjxOcoBxF51ylEouEOwlIUo+0EmtEdiWrlS9tMvCHkUjeUi62MWgQ9Xf3cwo8xAXuA20Y7k+fkfNDxG11YPXR0aR15kJ+xGpSeOxF6jwuOLS6RvgqSvOYyea2GgQxhNSZ2D02QA7gDzLYF0Zuzwsu/8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=oj2PVdyS; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587101;
	bh=8f2uE7sQoavicxG1bIYJl4PzL6PciKe9Wx/qfNKnYZo=;
	h=Date:From:To:Cc:Subject;
	b=oj2PVdySDHe9mx6NdbrIzN+645Z0c5PieT3l+WVLl0PmkfzPbz36Dx2xtlTf0Ms0q
	 O9l3GgrLXRtNXKQ16NV5+yJyxmyM8aMvrzasLFti0V+9mDdgeFnHnx4r+BP7cEUjcu
	 YuadXGtyg/5rhKn5YF74BbWw94pyCnViyFsOdg6LsGSyQnbGMjjg2uE6DxmtxdeeAU
	 Y2Zen55FrG9lu1hPzm/nX8WFkL3NV09XEo2agr0V7vSyOKhQvY13r8lrF/nzb3W4Rr
	 8VJKP6Z8dzTrjE8B/8uzz3fCDzJjM+P7qw6oXrvviLZjfnqAYJucoz4SWaQZir7yhK
	 mCDrNFu/TKodA==
Original-Subject: Issue in man page mansect.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000203AB.00000000694BFADD.003196CD; Wed, 24 Dec 2025 14:38:21 +0000
Date: Wed, 24 Dec 2025 14:38:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mansect.1
Message-ID: <aUv63faCNiITftgX@meinfjell.helgefjelltest.de>
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

Issue:    In Debian unstable this programme yields: Binary file (standard input) matches, add "-a" in line 23
Issue:    Even with this patch, the output of this command is just a single line. ".lf 1 /usr/share/man/man3/strtol.3.gz"

"$\\ B<man -w strtol strtoul | xargs mansect \\[aq]NAME|SEE ALSO\\[aq]>;\n"
"\\&.lf 1 /usr/local/man/man3/strtol.3\n"
"\\&.TH strtol 3 2024-07-23 \"Linux man-pages 6.9.1\"\n"
"\\&.SH NAME\n"
"strtol, strtoll, strtoq - convert a string to a long integer\n"
"\\&.SH SEE ALSO\n"
"\\&.BR atof (3),\n"
"\\&.BR atoi (3),\n"
"\\&.BR atol (3),\n"
"\\&.BR strtod (3),\n"
"\\&.BR strtoimax (3),\n"
"\\&.BR strtoul (3)\n"
"\\&.lf 1 /usr/local/man/man3/strtoul.3\n"
"\\&.TH strtoul 3 2024-07-23 \"Linux man-pages 6.9.1\"\n"
"\\&.SH NAME\n"
"strtoul, strtoull, strtouq - convert a string to an unsigned long integer\n"
"\\&.SH SEE ALSO\n"
"\\&.BR a64l (3),\n"
"\\&.BR atof (3),\n"
"\\&.BR atoi (3),\n"
"\\&.BR atol (3),\n"
"\\&.BR strtod (3),\n"
"\\&.BR strtol (3),\n"
"\\&.BR strtoumax (3)\n"

