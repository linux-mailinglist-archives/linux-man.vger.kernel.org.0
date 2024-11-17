Return-Path: <linux-man+bounces-1928-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 022449D02F3
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6CE74B23BE8
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2256813212B;
	Sun, 17 Nov 2024 10:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="o1kkGZHN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508ED7E0FF
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840394; cv=none; b=pdvXWuCMKKkm7h8JD3mhCc1ty3b0O53cntUGcjTiHHdcejN3sxMzH5dtVZ7eryDdA61YWunwBhPMiWsUtZmRj6VQb+rlWwaujNAWPSFGKW3PkDBtKJK7d6vsJqtfDsy1FD/SDxh4h5E7DotPLrMmr7BsO+AuIOaNq2StlbsEC8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840394; c=relaxed/simple;
	bh=XD4mbw4GZs8YSlI9vVgyLreW/tuY4J/TWYdvnIKd1+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=LZASXXjzFycXqgsiatvuP+V8Otw3Of+t1zabK2Kcc6oybFCPT5xiKr1G6dBkYPnqazNXytUrDA4a2v+OZl1sOTnPIQyX26TorXmoPqaC9aNJpvgIYEhvF9+aF4kOfFJmfBaIgEmtaYXcFq8EvlLdljbLu8Ch82lLm/VxOSnhWno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=o1kkGZHN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840384;
	bh=deFlF9VfJx4rJKzdKfC+mT6AMXTeZxLNGSWQlafU2Bo=;
	h=Date:From:To:Cc:Subject;
	b=o1kkGZHNiurAWEVniqt2OjhQvgPAEcK1Awsmzc2g4O7yJdkjv6ByHaWeEiUviDeIm
	 SpChYKh7GmdtDxqdxOK9ReA7wxJBRzK+TL48VGiCBl48EW8GmL83siUKeoYTOLqCMu
	 mIsNfsxyvKJ1P1To9sOke3NpHvnjyixrONOfj/LPVFlpzsczaQbDTuCYKld7Qw0As0
	 3PdeeON2+lPpuj62u1rEJJZtw/q5B8bSHPOXOFMTc4b4Mv91W22QizBP66PjGWgRmr
	 auzG9zCdu2dAittWw6TGoe9m/6/Zs93Wv66h2S0vvaOc81NhVmal/7nSk0GWi8KdeV
	 0Fng/AMFDuqGA==
Original-Subject: Issue in man page tcgetsid.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021590.000000006739C980.003FC4DB; Sun, 17 Nov 2024 10:46:24 +0000
Date: Sun, 17 Nov 2024 10:46:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page tcgetsid.3
Message-ID: <ZznJgEQSTyUPDtoP@meinfjell.helgefjelltest.de>
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

Issue:    Who is "our"?

"When I<fd> refers to the controlling terminal of our session, the function "
"B<tcgetsid>()  will return the session ID of this session.  Otherwise, -1 is "
"returned, and I<errno> is set to indicate the error."

