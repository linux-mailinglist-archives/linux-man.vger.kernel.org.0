Return-Path: <linux-man+bounces-3580-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 61549B33097
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38A30203C2C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7212DECA1;
	Sun, 24 Aug 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="cYH9O5yn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34861F92E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046933; cv=none; b=DfaTEvOYzkKWe17syulCAP+039Ee9nGrAPCEaZABmaqtXs1GvzXqxFz84Wdlp7z+kE39vm+/Bc9bBM3+tifuqpptaPTeEYrqKQsAjY8egGdm8XU94BGZFX2nXOA/hRBKxuqoScKbV+quV/IL0ngrqNmtKfadybufPVi2Hgu9Tlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046933; c=relaxed/simple;
	bh=Wo+WwZEuwRSdEw+zcJ5HRCjTmrtuV2mVbuZeeYMk9QY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Lvlv9QPrcZH8qFxNkOdBmHd9KH8789/5bAYfbhldUagd16PwjPB05TbWXFbysecKLxBXHJK3tmvxjEQNsxHh3VlU2PJJL0LpvpVXnECn1tuz9c13Kpznr/di6cDcniuSWOHCvVWeR0LViACBBVCrHsa0GQFzB5NQqWkDktQiSRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=cYH9O5yn; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046917;
	bh=bWhN45bQ3rmh3LG/NENCvLhUmoXOjPXw3kQf4q6MxVI=;
	h=Date:From:To:Cc:Subject;
	b=cYH9O5yn3WrhzGbe5G1pk8qynlndORIzRyoBd3ZRsgwZhhkBPGccjFL8YKC5CNUyx
	 L8LdpkZrJHcYXrcWoZuBmfz6cLPaPE3sV8+SNYh3/084jCNzqa0P98qH53LUUq+5ll
	 /G9xPyAfONCr46Fm5b0H2w/xiUwSY7e35SBHnXYDoBrWEmCZNt1EU/XFYyygzkrnzQ
	 GQSUdCZt3e1SIK4fWY54uzzRgmFsQySfKi2IQy/NmuqWmBLh7NGPKrQNf76K/kCMMC
	 rw+I4HhuPxQ7pEMA3+mdeTu56lV7E/8/ponS2yVqHhZxJaFfxtXhtBWP+IZsTjHb9N
	 dKgMiorWrYJQw==
Original-Subject: Issue in man page wcstombs.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020943.0000000068AB2644.00138EA9; Sun, 24 Aug 2025 14:48:36 +0000
Date: Sun, 24 Aug 2025 14:48:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcstombs.3
Message-ID: <aKsmROtJ6N7-umxL@meinfjell.helgefjelltest.de>
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

"B<size_t wcstombs(>size_t n;\n"
"B<                char >I<dest>B<[restrict >I<n>B<], const wchar_t *restrict >I<src>B<,>\n"
"B<                size_t >I<n>B<);>\n"

