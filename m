Return-Path: <linux-man+bounces-1963-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 939D39D0316
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A1CD2831C0
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE3817BB21;
	Sun, 17 Nov 2024 10:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="QUa4qz+Z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC36982899
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840703; cv=none; b=YysaBlgSsjnhIV3e7WKaWiZOaEWFebZDsvX6+KjKqir3x0sdnGOvPHp2Ej2ArbuxnSfxMvBS4KaMsE0alzuc5eBT6cWXKT67K6dchm3NNBsKOJ/un2c+r4DkxKgR/M47noGmqG3pivBx07uex4dapuSTFfVU7d8pPHZbwP6lBfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840703; c=relaxed/simple;
	bh=uao/pDyq/Ybevgx87xnZHPe7b9W1ssDInbbTOh18f3E=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Pk6vs4f6eFxwmDkhxyvoLYwN7V+CjRtK3tKQnd3cNGvE0SwORLPf09dVIjk+X+pj1a1gX9arRJfvNwAp1OPSeRbRrT8iXWxlC4+EQbqfVjrrk++UXOoSEWQb+UbtKnPGcp+FNIkBVpyR20cfWO0zt9iWsrJ01NUti+xBgwYgSe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=QUa4qz+Z; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840385;
	bh=Ut1MGTYEHvESaTyLP4gSrLrB0kfLy6PqTjfou/lrfQE=;
	h=Date:From:To:Cc:Subject;
	b=QUa4qz+ZBC0duoc1Jhvv1HkCFWRK1kz3izBikOaqgfsRZz3aHrxnL0rHCm9qBTZkT
	 86xDUvwnHN+GA9ht8EqoTpa4iG9bCbYhJzTux6RbOwQMQ4xfqBvmQIgFuFtLUwmp1C
	 yB1aXZ1gQR9HsM6FOszBo/2yzZcy1cSJGqseBNU+cHAdStXtTypj+8ywGPpV4lBMyS
	 X7l14sUMuDnhC2Ai1y08jbmK4PDQfDzGNjCbQxN2a8sV/WeUczIHJFuCElZ3mMTLLp
	 Oik3+3+WqHwsY5qWtek7Ye8Nz0BHsIKJzA0OYphjmC9Ag5zdx5kw+jjOy4xCWftKEk
	 LGG5J/KMqB3bQ==
Original-Subject: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021660.000000006739C981.003FC558; Sun, 17 Nov 2024 10:46:25 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page time.1
Message-ID: <ZznJgUunApKZIFH-@meinfjell.helgefjelltest.de>
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

Issue:    B<bash> → B<bash>(1)

"Users of the\n"
"B<bash>\n"
"shell need to use an explicit path in order to run the external\n"
"B<time>\n"
"command and not the shell builtin variant.  On system where\n"
"B<time>\n"
"is installed in\n"
"I</usr/bin>,\n"
"the first example would become\n"
"     /usr/bin/time wc /etc/hosts\n"

