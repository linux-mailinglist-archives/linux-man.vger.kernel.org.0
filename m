Return-Path: <linux-man+bounces-1941-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B089D0304
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC5A3B222D0
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8072A13BAD7;
	Sun, 17 Nov 2024 10:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="kd+3tt3w"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF0F83A17
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840692; cv=none; b=Q/xJiqrUSf7wgb2i5Q5U5YRjQG7suTPoTU5pYSiyPmqKJIq2bkQeUmJeoNsZOwdr1evwpoNQ2+cVuPJLZakzTjF6MitAIPEgholHcEmfUdXegIlL2CWU/MhPTZx0NXNB4T3c9q7coy03DvVHs/gCajl7NEXDF9Jn9KcF+8YIAKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840692; c=relaxed/simple;
	bh=6TNlFdqFsbY2kgMMWZDDyspe+rHWRTc3hNh1XwtJ5S8=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=baKDkYe08ymPJuOG5lKqak+ulG6BW6Z/fGoriVZ4zf6iqESbPHCFiWIW2Jpfquw4m/natSNgyiVb6a5ZsMUztfy96zlsuK1oNOAEyqHJ5JeS+/qfX1PU2xSRZsoNER1iQ+s+wpz+vb4MUpVKjpBFl10jVZ4qJoYNdPus72ySQ60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=kd+3tt3w; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840382;
	bh=b/ueNE66F/UIXI+tVnJlomJr4Lsso9u1Xm96TO3S5Ww=;
	h=Date:From:To:Cc:Subject;
	b=kd+3tt3wyEGUEVridcxF333K1rKAn1/H6enx71w1+MtMsFVXZbn6VL/RQh7p1lrKw
	 z0mCLHfNTRYGAXV5Hnl7fwJiJkj4F0p3g8kA+3BBsZgJ6TW7sc1RVnQ7Q4Eha76u0P
	 Jnx0OUxoCfNL0ZpZLlhtf9ULLTmmJNoNo+JIKssV5i/iH8iNnI9HiNKAjk53HhkpxQ
	 C1Ei4CzyvUUU7aJYOKFicz4vqSTkVfkIXHu5CyDvIkKp/PeDU4ATAD3EwxwWkR4bJ3
	 dwYCbXZbOESNq6skKgwVJIOv2OufBa0e22AYG7rOSpyG17GymlsyNK9CrAu/CU7fiF
	 M5cSGcxu0LIVg==
Original-Subject: Issue in man page proc_pid_fd.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000203DE.000000006739C97E.003FC332; Sun, 17 Nov 2024 10:46:22 +0000
Date: Sun, 17 Nov 2024 10:46:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page proc_pid_fd.5
Message-ID: <ZznJftO2LwVxlMV0@meinfjell.helgefjelltest.de>
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

Issue:    Inode -> I<inode>?

"type:[inode]\n"

