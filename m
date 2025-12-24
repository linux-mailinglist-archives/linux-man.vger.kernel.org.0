Return-Path: <linux-man+bounces-4517-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E4CDC8E1
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CA23305D9A4
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC7D3590BC;
	Wed, 24 Dec 2025 14:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="sQOOYHpQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C5C3590B4
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587123; cv=none; b=GiKZU4fu1sdpytLhlaDRkdJHN9TeS+L9CVrlI1QPloqqqF3sQAt/7fSaRSOZOc8oc5TMJQiIifotDfWH8i16vuzzTytoA6QcIMDHL0QtVWI4+PzSxyGuo/zSzztwU50r4uvUyqNzMnbPSLpRKTAwNV3Z0BfyW8w0NuneAHSFSqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587123; c=relaxed/simple;
	bh=636Ek8Ck1CVnfdmL5jfZ2Oc3O7vBc5SbNbfTN8h6ebc=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=SyVKkSP410YDNx7oukwltVVvXzYCSbWQF9/EkgU8/tTIfoW/+4Na0rmRjFn3TGqVm4/IS+r+Uiq6LUb6v8WW3wI/89FWFsZdankk0epaqw6n3++zPiuz7vEtMqLGw8dAaI727YrEw8VN0a/4IbKWiX5uhygYKFVmBGeVe0LLhPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=sQOOYHpQ; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587105;
	bh=NbJZDUqmdK4/qfiN5vFBULbYUNSVIAeWSYKFTcjCHp4=;
	h=Date:From:To:Cc:Subject;
	b=sQOOYHpQSBQ1TTt+DyYetg5hbjaslxh5xckl6DNQa7fjA5oQoRw0vie1HIGgzKOQX
	 /w+yTgbTYvlcHsutHzhv9IYbpG+dC5dLwaQg/AKE1aoLzBdd+LujxZW50e0j1u3Qm6
	 ChVdzpQffruoHghypD6xOzK0nxFBoba+lZXoBDOl4zqPdntw8+mQ9e9xSZtPKzSF6u
	 vv9+qnwOy5ZpPscvpok71qBuhXAQ0yH6uVfnxe0/Uryntml+Wrpc63brIQYoau/5zq
	 6AI10lGqJllplq0Hhgp+NvSMOjHqFB3H7dxXrxny4825rEKhmEJSN2DLlrGSYcOKIz
	 VfAwhi191Z9VQ==
Original-Subject: Issue in man page fma.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020B06.00000000694BFAE1.00319A3A; Wed, 24 Dec 2025 14:38:25 +0000
Date: Wed, 24 Dec 2025 14:38:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fma.3
Message-ID: <aUv64cN0_EE0VVlM@meinfjell.helgefjelltest.de>
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

Issue:    According to above, a domain error also occurs when I<z> is a NaN?

"Domain error: I<x> * I<y> + I<z>, or I<x> * I<y> is invalid and I<z> is not a NaN"

