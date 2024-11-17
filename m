Return-Path: <linux-man+bounces-1935-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 362BD9D02FA
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFE1528432D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D22917C224;
	Sun, 17 Nov 2024 10:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="EnHv3VYz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76450167DB7
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840398; cv=none; b=KppjQQBIAR3jMyw3nH1dgzMWldvUwNI8gGoBF/ZioZqHEIpgVYUBg4z4ytlz0H7B9UoaQAfXikIZ46VN24Jv3QmYWpBczG3ltZ0IiUN9h7FHkJlICTWcXG5vZ6C6z2gjUs1MMN7KJLMn/mvb4GL5I9DTPRjf+PbGbwuskufdjmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840398; c=relaxed/simple;
	bh=guRNddT0KBiiUSPu1lpXK+RxVx9ozNoehRj6PXz46aQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=cMeCl2czpmwV9tIWIG5+cGjy7tLvpYy3h9pEAEotWS88Xwyo46Ci3iL1ZUSsJ9SRtxBarJYFS3Gibm5wPasjUEP4VfVNO22yUy8X0jvJ+BlSF3zHk660TXcmop/5K60g3xJkvBC9Ol1GvN65WtyLrzC8qKYsb8JJbEdhPq9os/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=EnHv3VYz; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840385;
	bh=vHGHWthwJATpiwFDnx4jz858jcAMWnEEggzxNprInAQ=;
	h=Date:From:To:Cc:Subject;
	b=EnHv3VYzaEJ32VMLVDEUoubRRT0sx+0UsdAOGNV3meZLrDmIKRe43djwpDizOObrK
	 vnkEGCWZGM71bsi1MPj/uMvqqrP/jBoS6DpUcah5VAA6zCtRUHXVHG1zgyFj4C3s8w
	 Ijb7EdGWTUcCOryLUhamqLWVK5f+pa1xwQGFtfp+FH7sCodQbkzjlEdjwA94BPYSpJ
	 jX3V6z5SHlXDLr/1jC2KDUUkMojS5sELu6qOAp8/h0p8LcTkiPZjZs9obW3QrRsRkK
	 hZp4pHl7z48UpZey6MCdHKenJDg4cjfbvFGTrXaTHYY/xo8wgAZ6LJu7rWtG38w7Qc
	 ZoYj1UoLiVpHQ==
Original-Subject: Issue in man page fmod.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216A8.000000006739C981.003FC60A; Sun, 17 Nov 2024 10:46:25 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fmod.3
Message-ID: <ZznJgQGHh77fpY8Z@meinfjell.helgefjelltest.de>
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

Issue 1:  Either B<fmod>() → B<fmod>    or → I<fmod>()
Issue 2:  What does "cost a branch" really mean? Branch of execution?

"An alternate way to express this is with I<fmod(fmod(x, y) + y, y)>, but the "
"second B<fmod>()  usually costs way more than the one branch."

