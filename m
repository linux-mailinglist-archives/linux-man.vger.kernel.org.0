Return-Path: <linux-man+bounces-3560-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F53B33084
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E596D203B3E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4F12DA767;
	Sun, 24 Aug 2025 14:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="tx0TKaqf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CC7F1F92E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046922; cv=none; b=HrJItrXO3IjRr/2ObNSZ/k7VbrbI4LSqwKCRYga65OHf7tooxbTLpWUX6x8iGjHzXsIEidJZbdzcnhoWc6Nc/j7aiKd8l4QC/zpu2zdCUYmfpJzdD2C3X3yCNTnCqH0GZioUSP3JX1LWY0MgNg1DzFWIJyqhw4StRF2TfsMeznI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046922; c=relaxed/simple;
	bh=CmEAt4gD5Cx1oK5xusjyMSXKHagytBZdN+QxF8cXECk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=sKs41+hkBTPAUFbV3F7s+/S15VaDCDyPJuuHt8aMuQRmheMGG149DBqybK4uS7WhgzV393q9xkuLLXxFi9v7I6s/ngDWyVzaH0ChjX/WGkgT1Iztk2KD9/FV+9pWw4FEfOPfN8ZDmV5WalCOYtyGQa1fM1yQ5YqaHvZNam56Ick=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=tx0TKaqf; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=5P1TrxjiqYqnLCwTbrhNDRlz94K/kTxu2dTLIMxPQFU=;
	h=Date:From:To:Cc:Subject;
	b=tx0TKaqfdRDl+EGEuDBd3hDi392RcpCJoxLhBmvhj/u5+IfoigZ+q1dGmhVbxYCvm
	 Gkg0gB8cYiBZLtQTEWy87RJ7XlaIKqmB9j6i/UwApvh4Oo9OoA2NrH6u8bFgZ2+6GK
	 JU4I3kSNXXAM4Jyk5Pvro64na6WkBlW7GIDSY+Zyeq2HPGwZsa3xUg+8v+9UnpWNev
	 mGI/MJFv7CdbPjWZEF/mt1u7Jv3FTrHzefMR1OoJylv5rZU8y0eHWK4NG169NtgaN5
	 7ko1Wm6I80m1MIgdvAQ2ItR8odMiQu1xMlmI2UJ60+UDC1H9FL2pddxJQzfEAO5WUh
	 zpZQ04zcNrApQ==
Original-Subject: Issue in man page strerror.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021558.0000000068AB2642.00138CB5; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page strerror.3
Message-ID: <aKsmQuZnG47DH6te@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t size → B<…size_t> I<size>

"B<int strerror_r(>size_t size;\n"
"B<               int >I<errnum>B<, char >I<buf>B<[>I<size>B<], size_t >I<size>B<);>\n"
"               /* XSI-compliant */\n"

"B<char *strerror_r(>size_t size;\n"
"B<               int >I<errnum>B<, char >I<buf>B<[>I<size>B<], size_t >I<size>B<);>\n"
"               /* GNU-specific */\n"

