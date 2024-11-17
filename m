Return-Path: <linux-man+bounces-1966-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3829D031B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF222B23F80
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8816883A17;
	Sun, 17 Nov 2024 10:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="o4/iXpJC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071EE14D717
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840704; cv=none; b=ggRrLcEYiigUx36CMFh+s+JH78Qk1PtbMwdId2cC5Eb7SPbqSAUKp/wXAPc7SnA3UrvlQuq7tF4RKDYta1h1KU9ZSlvMK/2jRgLl6hqWfyOz4Tym3DeL8jjIdY6ZzAPmnbHmUfjbFH6/EsGqqiQKB3DgKWOHGdv65NUpdypUpok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840704; c=relaxed/simple;
	bh=YPbGtl83cTNB285Z4BqpgdkmB8b6ydF8EiKzHkCe9uA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rBefyKyLRJ/egFgrAeMgF8zuzCYE9smc7KVVo/NQsWaX5LmKYTDi4gjd1o+7yybxR/7NdgdcTuluyAO7duphWHwDIBn0XA3aEzstT0AxXji3DXfGhG358+z7pISErRrOsPZmZMiQqEoCEaN3EQZrKZB4D4KG6f0cv1SwYz5gk80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=o4/iXpJC; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840384;
	bh=bcA3lXL3xBB7VtxrB2nTKCDze8VMLC0Yeaob3TpDkvQ=;
	h=Date:From:To:Cc:Subject;
	b=o4/iXpJCACbVDGIsza2WsQGPJdk+DkHEYfNaIPLhQgPFZQi8IsDm+/Mmm0KKUBKQN
	 FRGfZkymg+vLr39PWNK+OE7JH6mMPeijQ+9ChfvMd+xTNrdjY72ObXkT3I6iwz2YAo
	 He44gm5o8Suf92Ph8xMDdmRzwlrkX5+qXx5j58StAP73HXy5stFWispa7kK0V0ukMj
	 2eYwTjCKmSW+LXlBJXx6xEDZesdP4sFWhJKC7QjLBtKXIcDiifXWFOtAjIVG8DgrB9
	 R0BUbVLrNvhR0fLQFZycMD7paWXlTNvYggAyFfC5E1QPm0igtsItg1BM4J8dmYLVQh
	 O7qpmiYMR+HNw==
Original-Subject: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021605.000000006739C980.003FC50D; Sun, 17 Nov 2024 10:46:24 +0000
Date: Sun, 17 Nov 2024 10:46:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page time.1
Message-ID: <ZznJgExHeg8mPwB-@meinfjell.helgefjelltest.de>
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

Issue:    time → B<time>

"GNU time version 1.7 is not yet localized.  Thus, it does not implement the "
"POSIX requirements."

