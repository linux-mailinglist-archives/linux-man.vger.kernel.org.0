Return-Path: <linux-man+bounces-2182-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDAE9FF50C
	for <lists+linux-man@lfdr.de>; Wed,  1 Jan 2025 23:21:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93DDA7A0FF3
	for <lists+linux-man@lfdr.de>; Wed,  1 Jan 2025 22:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC52D1C5F21;
	Wed,  1 Jan 2025 22:21:11 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6153A1E22EB
	for <linux-man@vger.kernel.org>; Wed,  1 Jan 2025 22:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735770071; cv=none; b=me/b+9ufTrFLOuwVPbwV/5/UbNTG7fxGPKCK5mYxFFaAHrywAWXnEPdJKTuOtOJfs+ze/+uCGrq3I9ntwUlG1nGNz1P3HbhxGWm/SM1QX2W3FqzJ2ndbm5PUfh4dG97IGdD0oRetT2pRsNUp9ijsSMv8VhQI1vAXjNtGbBMbadg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735770071; c=relaxed/simple;
	bh=Qj88L3SpNxwRO8oCecu5nzFwV0/7PG564m8WyF3ghVU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=T7B2Hvu1zP38k3oJLK6N5XkzzxP8HGmkW5O3ve6mramP02QFHQ+1iQ2gp60wFEEEmQC13Fobe7ER8LPSmjaYO6RzjOwMLZ0v9kiWXu4MuG5+BzXkA+uFP0PNZ7zus2y3Bks4WTH15OvmxglexClHUnTa5RAkgK1WYcC25CVZPck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org; spf=pass smtp.mailfrom=drabczyk.org; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=drabczyk.org
Received: from eig-obgw-5003a.ext.cloudfilter.net ([10.0.29.159])
	by cmsmtp with ESMTPS
	id Srm0tni8j09RnT75KtIVCp; Wed, 01 Jan 2025 22:21:03 +0000
Received: from gator3278.hostgator.com ([198.57.247.242])
	by cmsmtp with ESMTPS
	id T75JtvfWE827nT75Kt2Nyb; Wed, 01 Jan 2025 22:21:02 +0000
X-Authority-Analysis: v=2.4 cv=GeTcnhXL c=1 sm=1 tr=0 ts=6775bfce
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=x0OE6rfHJZ6H1OKZOK5cGQ==:17
 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=VGZVzwQjAAAA:8 a=mrOMX62-1cSY38B1VGgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=7KbCETwRv5F4J-amU3zH:22 a=m_VEIBz21GJuPbWKIyfi:22
Received: from 89-77-246-87.dynamic.chello.pl ([89.77.246.87]:46706 helo=localhost)
	by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
	(envelope-from <arkadiusz@drabczyk.org>)
	id 1tT75J-000Iwu-0K;
	Wed, 01 Jan 2025 16:21:01 -0600
Date: Wed, 1 Jan 2025 23:20:26 +0100
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: Alejandro Colomar <alx@kernel.org>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Subject: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
Message-ID: <Z3W_qgawqyEB-QrA@comp..>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.77.246.87
X-Source-L: No
X-Exim-ID: 1tT75J-000Iwu-0K
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-77-246-87.dynamic.chello.pl (localhost) [89.77.246.87]:46706
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJqrIShIz0v11vQOVrNz2E536E/0yVqlx3jXVU6Ppq+MRbZeVGREQZ9ad7uHSZB5g8x+kVCAHiWFMjoWweT7pliS1Jn2M6iIkXYhPyvUNjVrF4E6Jrkt
 WLjoTkFAEXoGwcl8HULBkALD/67xBFI0gk7+KyJVLRDLloTEh4nwoWv1Ff/MXhmKf0AfzMwY2WcwFUVt65o9WcbUO+CH7R2HIWE=

In man/man7/signal.7 it says:

> If a blocked call to one of the following interfaces is interrupted
> by a signal handler, then the call is automatically restarted after
> the signal handler returns if the SA_RESTART flag was used;
> otherwise the call fails with the error EINTR:
> (...)
> • pthread_mutex_lock(3), pthread_cond_wait(3), and related APIs.

I don't understand this, in my experiments neither
pthread_mutex_lock() nor pthread_cond_wait() return EINTR even if
signal handler was installed without using SA_RESTART flag. The
underlying futex() call indeed fails with EINTR but it's called again
by both glibc and musl. Additionally both
man/man3/pthread_mutex_lock.3 and man/man3/pthread_cond_wait.3 say
that these functions do not return EINTR.

Is my understanding of the signal.7 wrong or does it need some work?

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

