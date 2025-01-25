Return-Path: <linux-man+bounces-2295-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6166AA1C501
	for <lists+linux-man@lfdr.de>; Sat, 25 Jan 2025 19:59:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9E0D3A578A
	for <lists+linux-man@lfdr.de>; Sat, 25 Jan 2025 18:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1B77DA7F;
	Sat, 25 Jan 2025 18:59:26 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168127083D
	for <linux-man@vger.kernel.org>; Sat, 25 Jan 2025 18:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737831566; cv=none; b=un70nUP8YXRP12jvHeL6IbFkjJ3Uz5Qv6wxQM7ISpGogHYNNfajVd8Oenor67+NekATWGWE8ORGUgRoI4Y4x2piAcxunKzWBAu8eiaQ5le/tGpDfLzHtRbaAHsxnmoPhrAsvTXRd+spTWF8wHqzoKjd7pDR+a9cvRdEIt8bxxH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737831566; c=relaxed/simple;
	bh=C92PZT7/tHFNk88QmCnximw1JF4H+kjvRNAj99NOkAk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=q0eOl4GdRCwq9u3M2gGxLEFiuLBfuz5eY0hgSO/b2B+t+vIoBP/veDygUmUVwOaBKM1wR82Q3SR6A2AMiH8OtpMMELv7T5XsMJfp2gVKUH5PIJ0DzGnvCMNxWHm4qn9Fv5Wsy3YulVGpK2e3Lr18zp6QWKYeqMMlfDUD7tXJTP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org; spf=pass smtp.mailfrom=drabczyk.org; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=drabczyk.org
Received: from eig-obgw-6007a.ext.cloudfilter.net ([10.0.30.247])
	by cmsmtp with ESMTPS
	id bfaktWkj5WuHKblNFtClJH; Sat, 25 Jan 2025 18:59:17 +0000
Received: from gator3278.hostgator.com ([198.57.247.242])
	by cmsmtp with ESMTPS
	id blNEt9lbt3770blNEtQUbz; Sat, 25 Jan 2025 18:59:16 +0000
X-Authority-Analysis: v=2.4 cv=WYoKaVhX c=1 sm=1 tr=0 ts=67953484
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=x0OE6rfHJZ6H1OKZOK5cGQ==:17
 a=kj9zAlcOel0A:10 a=VdSt8ZQiCzkA:10 a=uZvujYp8AAAA:8 a=Ye9q-bpsAAAA:8
 a=VGZVzwQjAAAA:8 a=QOf3tZM2wIWWSm-CzcMA:9 a=CjuIK1q_8ugA:10 a=MlTqRYyVK_IA:10
 a=SLzB8X_8jTLwj6mN0q5r:22 a=7KbCETwRv5F4J-amU3zH:22 a=m_VEIBz21GJuPbWKIyfi:22
Received: from 89-77-246-87.dynamic.chello.pl ([89.77.246.87]:33848 helo=localhost)
	by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
	(envelope-from <arkadiusz@drabczyk.org>)
	id 1tblND-004H72-1I;
	Sat, 25 Jan 2025 12:59:15 -0600
Date: Sat, 25 Jan 2025 19:58:34 +0100
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: Alejandro Colomar <alx@kernel.org>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Subject: signal(7): should it mention that SIGCHLD is also sent when child is
 continued?
Message-ID: <Z5U0Wh_KF3Ki62Pk@comp..>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.77.246.87
X-Source-L: No
X-Exim-ID: 1tblND-004H72-1I
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-77-246-87.dynamic.chello.pl (localhost) [89.77.246.87]:33848
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfI9Rp5QyHctY4KUdB2P0BQkgfo4jmMJNhpXpOzJQtYt9VeCZ5Spn14a9QRxIxprFndquZCO9Uq2cMig6rJmhFDd5Udb3bPZsHYSW2/EdC5WvKjoXW7PU
 Z+6mbwYHCetL8bfFjqhRxnmkuoPBT9d/dWNr3n/O2gTFq56mE/VyIpAJWmGCmGQpJG7jmRxcX7aAr4IWqah8VjsWj/rndOdYbwI=

Currently it says:

> SIGCHLD      P1990      Ign     Child stopped or terminated

It's the definition from POSIX 1990 which is referred here but the
modern POSIX says that it's also sent when child continues
https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/signal.h.html:

> Child process terminated, stopped, or continued.

It's supported on Linux - in sigaction(2) a flag is described that
controls this and it correctly says that it's sent on stop and resume:

> SA_NOCLDSTOP
>
> If signum is SIGCHLD, do not receive notification when child processes
> stop (i.e., when they receive one of SIGSTOP, SIGTSTP, SIGTTIN, or
> SIGTTOU) or resume (i.e., they receive SIGCONT) (see wait(2)).  This
> flag is meaningful only when establishing a handler for SIGCHLD.

The question about wording in signal(7) has been originally asked by a
confused user here
https://unix.stackexchange.com/q/790116/72304. Should it be changed?

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

