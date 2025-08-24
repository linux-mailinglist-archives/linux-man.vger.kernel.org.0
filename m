Return-Path: <linux-man+bounces-3622-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4120B330C1
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65D18441F02
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271C62DF701;
	Sun, 24 Aug 2025 14:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ezHxdftZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92EE52DF6E6
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046953; cv=none; b=bbglYQHcjK4Vd16ozjRCG/J0rGqwNA+ILwUmD5FyYMq0FbOp1PzaG/TNC94Zdcx2Yhlz7mTSkLR4WZfHGO7xDLCEODzvNdI3K8aUJj0MsKyx1AFY2vpTaZbqy8yKbuWE/FDpAm4AE+zMCQysMTTKiALQNTpygkGjQPZC5bijI/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046953; c=relaxed/simple;
	bh=sUP8zoTmvgBqngV+9lnD31d3myYPkKHqWFTpW1T9h0A=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=kunN6ts+F/6vnZUNgJp1zmju/9BqsqTgtjFG23G3bD1+O7ez++CbmfYjpAMLYNUfaEXBThev4rsbI6NucAa9Zf8pAz7JsRKmfsF7pwaRhI411k9rzoLGMaWDxZ6TZAqAmI2SABYuyu0ldM132EONwSipChqj2Ks3exelG9OFdYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ezHxdftZ; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046922;
	bh=hb8bHX6QI6e+3Btvk+FrLakHb//vDAZayC1pXU0JI7c=;
	h=Date:From:To:Cc:Subject;
	b=ezHxdftZO4w/KS+fbq6HC0MkVnPV9FBvgnogbklxOzQy96fkAr3KRezmAVAb6pO9E
	 bl0epthj/1Js1xIm7Il/4cpOhXBqSyMVwGIf2uMR2n2yDm8ZJvzxfGNOqAWDpXI+Yo
	 QinJAzvHjCnF5/YplV37ivs4DvOAiWzjxs20ZeaMsNCTk9LjmpfmR8LJBpxKdYVJpC
	 HNMVb94nh7GUrpdd7qiDr30B6/R3KppoBnPja7k1hObYjH9Xu5GGXVGymNHnPv/yxk
	 kFIxevd1m0AMA/Qs+87G/N6rHvE0oE5JTIaY651cuPZKnNen8XRZQrzzlFpn9OgrBL
	 sBWAWX+ENSUJg==
Original-Subject: Issue in man page ioctl.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002149D.0000000068AB264A.001392C5; Sun, 24 Aug 2025 14:48:42 +0000
Date: Sun, 24 Aug 2025 14:48:42 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page ioctl.2
Message-ID: <aKsmStw-BIV8ppku@meinfjell.helgefjelltest.de>
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

Issue:    What is fildes?

"B<ioctl(int >I<fildes>B<, int >I<op>B<, struct sgttyb *>I<argp>B<);>\n"

"B<ioctl(int >I<fildes>B<, int >I<request>B<, struct sgttyb *>I<argp>B<);>\n"

