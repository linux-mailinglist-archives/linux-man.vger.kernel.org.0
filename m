Return-Path: <linux-man+bounces-4510-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2A6CDC8D4
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71BAA30572EF
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18812357A54;
	Wed, 24 Dec 2025 14:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="VvMPZ+s7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AAF358D3F
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587119; cv=none; b=ivPu/MMR5qnpTGju4rD5UMB/YrwS3CGGgNej4gkgrAbHxeusrRGiaEHVHN8EKd3OaGDxPYa2DveOFdr8beVEVPnD01Bj/6QkuAGZaOvQcIOGgWZ5Kqq2veOOezJx9U7etI4g5p5heQpp8Rkbd9zSSK8RTgmIV+Nu798Ef9GHUbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587119; c=relaxed/simple;
	bh=snQ5EG6+l2UlPRa5E43t11TO9O0XOkVyBNAxMzbiQ4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=OM30Ks4jZRRqRgxqzLXaLaPqnclPcpMb2KDrUZ6NJAY7hmrY7/ZYs34bQJpDKDnNcMZntwotr4SyBkUjYrWeDwi8IUjkoCe4Q2Pd4vxwZw8OW9BV3CJtG0eWGMYWt/Wanz1JY8CeCpZyxX9XOQB/lQS3JWhXBZK9BA+BOAxw/JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=VvMPZ+s7; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587104;
	bh=2eZKosRKrDnmODzVtbz1aYiMk5zzr+IhD4WcPPq73eA=;
	h=Date:From:To:Cc:Subject;
	b=VvMPZ+s7RIxXaI9HGRZ0yYmot/VNGxK1NFrIvnd0y7DzpnBqUavEBqYFjDcelIGHI
	 7b9r5w7QWT1yDwJ1Qmdn++A4yodgWv+1JVkYQYNF0zo7y9vhnhq2pybLjd4nixWSVa
	 NKmcB8vQhfARCcYTrVoQd4gtnH9pAsDblavkP3/2V2LPAbASOeruKpJ92yrMxHlxIx
	 vrHyKF8zuSI+VeUMt0Bq35xsXB23OcbBmyG/6ehgzZPcjSOz7gzcXwJM3zMr9x8nXG
	 9od4+6Jzr0VRUgNTC01/fHqg8vZIB4srGElmuDxa46tJI8zJGKp7M+6nKCqN7w51fn
	 AGO+2hXh/DRDA==
Original-Subject: Issue in man page  strftime.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000202F2.00000000694BFAE0.0031998B; Wed, 24 Dec 2025 14:38:24 +0000
Date: Wed, 24 Dec 2025 14:38:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  strftime.3
Message-ID: <aUv64N78rk1FpeBc@meinfjell.helgefjelltest.de>
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

Issue:     behaviour → behavior  (according man-pages(7) american English is used)

"B<strftime_l>()  is equivalent to B<strftime>(), except it uses the "
"specified I<locale> instead of the current locale.  The behaviour is "
"undefined if I<locale> is invalid or B<LC_GLOBAL_LOCALE>."

