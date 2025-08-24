Return-Path: <linux-man+bounces-3547-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F3153B33077
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E48121B259A8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75778259C84;
	Sun, 24 Aug 2025 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="EkHR6g1M"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C698B19ABD8
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046916; cv=none; b=W289lAYtvKAP/td/YOUfqX1T39irLL+asuXhfc7H6HFnS9Rhkx2FlBbfvVDFlDicBuLLOSIq8Deq1s5JS9iDpYZbjysuHX74aGSYb4ExL49uNkr8rMoREHsnP/orEHXmaT5z4X5AMSUk+foPa/jomZs3oZlRo6oWibnJRAgNDmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046916; c=relaxed/simple;
	bh=3GymddXCQy3BWVpjZkwfBNSPx6piCQpVBaXsZ9sRClU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=s1Z3gHcr8sXUG5LicqgQSuMPMFdSNXPUGN9qCL8/Qx65ScGR41GuZkvcRrIGzSTPnxlO3WkLCW0P+bZpuVdkIa6574y2gG3pyYH70P48b7tYkNWpUciV/azzODe2FDJYJ4HYNePWMm8BQyerQtM8sK0UYn3y8ip6RKvsOa9XSxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=EkHR6g1M; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046912;
	bh=sirC5LcEtp7DXhFNnf/iqsjt7VuydhgVhStbHO7om5Q=;
	h=Date:From:To:Cc:Subject;
	b=EkHR6g1Mpf3dFho2VfWjL6qCGEo+33sPt5VICDy2+qJA/E2huEtEbQaRH9DR7G4yq
	 bMHYlLwY+kQGU9eA6bAbjOukjGaCYV/tCBZGj+JoBS252H4RQU9DlZZrUzr1DhlVuG
	 02+Geh60x3R6qU9Pmadp3hgtaK2XtmYGxLUqbdmzisvMA/mBmd9Sl92iUPUzEKWkDw
	 KMlc1LpPXwI6eCa0kCYOUBvdgiT7NtHrzeYU1MZgXcS+Qy9iz558dvV/9ScE+aFkTX
	 RWXWa1fBkQnf1mqDP1eisO+rv+Kkq7xaqIBMxezi3D+ogBHijsK96eznopV+mbUGTG
	 Xu50YOUF6rVZA==
Original-Subject: Issue in man page resolver.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020783.0000000068AB2640.00138B58; Sun, 24 Aug 2025 14:48:32 +0000
Date: Sun, 24 Aug 2025 14:48:32 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page resolver.3
Message-ID: <aKsmQBpGiMZxCr3T@meinfjell.helgefjelltest.de>
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

Issue:    B<…>int datalen, int buflen → B<…int> I<datalen>, B<int> I<buflen>

"B<[[deprecated]]>\n"
"B<int res_mkquery(>int datalen, int buflen;\n"
"B<           int >I<op>B<, const char *>I<dname>B<, int >I<class>B<,>\n"
"B<           int >I<type>B<, const unsigned char >I<data>B<[>I<datalen>B<], int >I<datalen>B<,>\n"
"B<           const unsigned char *>I<newrr>B<,>\n"
"B<           unsigned char >I<buf>B<[>I<buflen>B<], int >I<buflen>B<);>\n"

