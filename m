Return-Path: <linux-man+bounces-1943-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 746F09D0301
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B2BA283484
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9072214D717;
	Sun, 17 Nov 2024 10:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="OUNqzr0+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B3F1392
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840693; cv=none; b=j/o+JG3baPrWfRdgEXXgAuDYMLdBBr06ADHhJ25sq7RFb2EJpBA57tSIbuzxVxNUQELWnUREekWOjIDhevFXxl9kfYUjs5SS5UZKLkBkR3KOk2uPeow04/8qvny5mKQDlh87QG0vhV4VrT9AYsg/OVw3ZszwelDbuxo+/HIJIKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840693; c=relaxed/simple;
	bh=SvytZ84kVY0p7HtPsBIb74aOsopYFfV4m2qe41wYWVA=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=dBluBwsJ4hYem9cLcCyWFGQsT58puURfWqpLGQUADwI4FJnxVxusaQw/M+ZvQiOCxfodCcU6ZpdkA3xJVvELriRZwaTgwu7s77OaDzfp4HJQIxY9ZjhgaWoU6KQGO5TiLw1s0gWmxo+Kg0xXTo1fImyfp8OmR2vHpKyrh2sfa0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=OUNqzr0+; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840381;
	bh=d0cb1gjOy+SxCLf/WcNnMTRFKVTXtaLtrUk6G4R9gIM=;
	h=Date:From:To:Cc:Subject;
	b=OUNqzr0+1JOy6owkD03u7GmpfcPXyOU9M90nomhv72EmmPHNuvgN7AhHOmMfzXADp
	 XNiN/9cBtSpIaI2XQ0DvcwdMRJy9JCMt4ZbqXLpoytBR+d4lBN424IAfhVUvfy8Y78
	 sjQkALYjtcAa6yfjNTRvNgLHGN5qfL5mlnQp/pp+5K0XddAxxMipDYU4tEOT2XN8DE
	 GUTUgh0Ip7ZgfA8mPFhvDU/wQ7TBTDIn6TYgE5uXEQvI5F7+LP4rn4CzbwhCJpwuSN
	 sMbg83WDxAQ2C/uAWt0JAQn/3Nxfc+LIvoTu1M/zPIOLHGClqkuWTLXobow3mrbV77
	 xHIPVjZLPSmJQ==
Original-Subject: Issue in man page log1p.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020196.000000006739C97D.003FC2A5; Sun, 17 Nov 2024 10:46:21 +0000
Date: Sun, 17 Nov 2024 10:46:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page log1p.3
Message-ID: <ZznJfS1idYV3Hwp-@meinfjell.helgefjelltest.de>
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

Issue:   Missing full stop

"Domain error: I<x> is less than -1"

"Pole error: I<x> is -1"

