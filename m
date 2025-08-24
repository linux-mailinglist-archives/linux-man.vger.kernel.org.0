Return-Path: <linux-man+bounces-3678-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBF2B330F3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFD2C1B25F34
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B2D2E090E;
	Sun, 24 Aug 2025 14:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="I7Kpdx4a"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DD42E0903
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046981; cv=none; b=GONacJ7t3MkkYTD6APTix4la/aQXntzz4yxSbiPafG9qdYYtNR7vBxTP/rm61W4wioD/YVG9aeOLs50gQtndPbEB6/q+YtDzcULMbCMOyswWBHkHfpT5S+hC4pBwP2ZvqyzD2nhX1lc+9QvW6XXArNIe7bGMnxxuIunn4ju8rZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046981; c=relaxed/simple;
	bh=52J6i/eTr8ao51pQk7iw5O556mPDjulWEmHZDiJ9nTA=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=oeTBoa7ELJAa+Ys/aRLpn27icyNJMwa4GMchLnBrbXXK3cSYODa9TLgeA9mPuwDtlFLDNGkj7QM0gQtUGCI+12jaC1imXIvUOxKWyJ4mqfbNTsAUX9thUi5dFpjbnsWPnmgsfO8AwGqlX2r11vi+khQrDw1loX6eS9Yn0LeTg3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=I7Kpdx4a; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046930;
	bh=fcPNoeE35WyCBJyys3T6m1gq5SyHJoYRex7LLNFa0mM=;
	h=Date:From:To:Cc:Subject;
	b=I7Kpdx4avUzrmfsd55d2I2h1AB6xTv218N4lK8GqOhT5mbQxQtsVJhamsKQZt0VVW
	 0y93WonVACyXTkDwi0/pDxgcloj+YgbeTpp/i8nFKEVJ7qrRtJspkEzC/mHBe77Ix4
	 IeXlQkOp5OJcLto09dYZUd6vauUrYX+XQArLx/uE89+RQA6lcAWPMWwo63u5dVAndy
	 4p83L+LwXmbjK5K25xeFmJtE1GUl22OMjCGL4yE5N/8NtnpF3Gzzc/4GBPYiQ+DoCk
	 nPWN1nj8t2gXGihKgxEyJ+7PIL+F6YTNbStCXviIKy0bcCjaZFXuErxIZSpK949A/a
	 tsLZx2EhSxEYA==
Original-Subject: Issue in man page random_r.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021784.0000000068AB2651.00139840; Sun, 24 Aug 2025 14:48:49 +0000
Date: Sun, 24 Aug 2025 14:48:49 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page random_r.3
Message-ID: <aKsmUW6zG4LLte4h@meinfjell.helgefjelltest.de>
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

Issue 1:  comma after B<initstate>(3) as in paragraph two up?
Issue 2:  The function prototype above do not mention I<state>?

"The B<setstate_r>()  function is like B<setstate>(3)  except that it "
"modifies the state in the object pointed to by I<buf>, rather than modifying "
"the global state variable.  I<state> must first have been initialized using "
"B<initstate_r>()  or be the result of a previous call of B<setstate_r>()."

