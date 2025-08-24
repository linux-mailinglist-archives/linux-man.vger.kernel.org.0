Return-Path: <linux-man+bounces-3632-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B6DB330CB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 525CA203DD0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17FE82DF71F;
	Sun, 24 Aug 2025 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="dXEYCmoA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891C42DF3C6
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046958; cv=none; b=GNhYgwqKEykZONi0tE4Fvpq06Qg/5S2pG70dkOLUTgtABEB+e3/DdvBLHJkCT6vrscubINXLZX5XsgWb7OH7uStFKgce8wxTwQHdYnr+sSkAA9lJbvbkDY8R+roATV9oAPFSm92DC/Hmmf/BLOarCVRkPwyvUloxtL5kAFXA1ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046958; c=relaxed/simple;
	bh=Bqla1smh7LKCUnevLm23TCSUT3hB3d6vOKeDvy47bis=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=KjYTr6d3K2xG/0THVxYze4HXp9j4a1CXKWMlgBITAGRQuncxoyoXjNFmlFGVrgGqPoKT+JUT8X/uYAbjQTM090N0snvzYjn6oX4lNH74EnrdlJjDB563N6Ecved8YXW6lQDufEgpAukJz2a2GleZ4c4zsZMhc2UH3otw8e9BMPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=dXEYCmoA; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=bKVH+SdMNR4ptnxXZ7XSAJAY/OtJPBFZV3QGD58toHE=;
	h=Date:From:To:Cc:Subject;
	b=dXEYCmoAFb6c2YGmnySOYhv/QQ+2u/gDRctTqOIvtKrMpPuCJ5q1v8zWr5N+7lmXP
	 pfj5jEodzwoclTF1vjCH5fbXhersfS0npdwYjFtf2Cao2hmCtT96CvNBirI32Gs9pf
	 XA5XaYb7eLneC8Wop9RC5/UoZuW1Z1TTlZLLV6XiEAhVSVF3n5Jsd8H6sCA0zqy6Qs
	 PW32sVGuap7lJ+cspcWkbyTNUYUtmSYCGYCMZcYUcKo0EamJyWWNWeqeWE4WGD/kGf
	 0H+tZ8RxBclhPsZzYQiZs7p5BnSRhsJ9ojR1hr3xkX7akLUUetWOd+bSp3zLvwkZlr
	 jdecuuS9GYCFg==
Original-Subject: Issue in man page mblen.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021733.0000000068AB264B.001393C1; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mblen.3
Message-ID: <aKsmS3LKSC8aqezl@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<int mblen(>size_t n;\n"
"B<          const char >I<s>B<[>I<n>B<], size_t >I<n>B<);>\n"

