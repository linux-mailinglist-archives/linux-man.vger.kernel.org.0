Return-Path: <linux-man+bounces-4504-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EF798CDC87D
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:39:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1CC2300DB8E
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85697358D36;
	Wed, 24 Dec 2025 14:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Sc7/ynjM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F0B357A54
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587116; cv=none; b=HboVXTl9rqIjpf+KkTCow0GcLfCMVn4K+wLQxm3CjprOyNxTkc/FTpCPzK5smPH2+ES5TL3yUVa3OSPYrX/ql4vLNB/qNh6Nc/bq2AReAzuykwhIOBkCycTKHDjMdfcKCJFEW9qjb3ztFowtrtLB+b8IRciP/oYLaCSylf/oqLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587116; c=relaxed/simple;
	bh=VmqRfOVr2n2pnMDe2377vBj/uSXT0D+HkxyjnytgNo4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SHTgGYBfUB3vnp+M6pAYi8Bq/535z5ocCFrM8vT4lV+t2RrACsQumSgMCe9LWkaNhRW51iZ/Dml0hNtiqWN/X0eonIYVWkBX6Ba9yjJh91AQzw4esHTpdo/zwMF8iMyjEQA5/pI0/436ypxeF6T/VC08q1l+ZGwnZnpwiqCRsq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Sc7/ynjM; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587103;
	bh=B6bvkX6DwfvGPn3rOzR6BzJUP/CKKdz7bpnbO9tDtF4=;
	h=Date:From:To:Cc:Subject;
	b=Sc7/ynjMWzRN0yOsAZYHJGGj6L/22U5OpaYQUfc5P6O4AaFUZylb+V6OX/YaXs11a
	 /Oe7vjFPmpsEBREiXG4RUTQqh2ydbwIzPdenPZWTZ1GMGmdLuodBOu1o8hGNQdcGyc
	 6nZ5hewwPtSLk2epW84SeW6nbwGDes8lMAbdK0R3FmtjhxrRhOV0DbDW22mkr9Y9Lg
	 BrUFCHB1K4xwNkJyx4ItJW9o9Hph47tMP/SubjMSfkE0xC31/CnIBceNn4PwkHzwqJ
	 CrsTtfYoksrABGbLnPGAEN7H0MEd8fk57D6VxQ31sIzWCJUf9pwINTZ4oMFw5ZHEx3
	 XHGr+/DMPBgGA==
Original-Subject: Issue in man page  PR_SET_TIMERSLACK.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A20.00000000694BFADF.003198F3; Wed, 24 Dec 2025 14:38:23 +0000
Date: Wed, 24 Dec 2025 14:38:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_SET_TIMERSLACK.2const
Message-ID: <aUv636Ne0XcB5LYQ@meinfjell.helgefjelltest.de>
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

Issue:     I<init> → B<init>

"When a new thread is created, the two timer slack values are made the same "
"as the \"current\" value of the creating thread.  Thereafter, a thread can "
"adjust its \"current\" timer slack value via B<PR_SET_TIMERSLACK>.  The "
"\"default\" value can't be changed.  The timer slack values of I<init> (PID "
"1), the ancestor of all processes, are 50,000 nanoseconds (50 "
"microseconds).  The timer slack value is inherited by a child created via "
"B<fork>(2), and is preserved across B<execve>(2)."

