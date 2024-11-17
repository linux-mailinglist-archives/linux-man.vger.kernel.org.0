Return-Path: <linux-man+bounces-1956-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 029D59D0310
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6135F283179
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC4B3224EA;
	Sun, 17 Nov 2024 10:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="q3eW35QN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9A113212B
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840699; cv=none; b=e9BRaHK6L27CYkaQMXvHB3OGCN9FsGdtxfQ5kFREKdCibJnOxxib1J7kU9ok59El2jYWIrn29Ib1B3IIf8+gMqVvCSC3OblaLQA50nD+R9+NELMxDr++lOxrsUBBBbowCzZTYOuGm0lZOXyx2596wTXX+mfZGCegmZM9ucx2fP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840699; c=relaxed/simple;
	bh=4BYLa8rCo54HxC1M0TyP0W5anJEFC2oKkiSbXSoomuo=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=u1fgOlF04uRqrqtxO80NWWa73TVa3tfvV7zQU0UtgdmYK7F8NZEhLRmtvvQZ+QcGcJS+lPqMXyG/V63PrPzRqKKqh4VqaF/AofmqTc3Fb6+xBYCpUEAAVTawHmg4rvr5LmugMreIhF95Tu1wKusvHULCMxcJkUDaxIc15LBKeMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=q3eW35QN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840383;
	bh=aJe8yA5u3VN9EE1Pt/sLe1EvvElyvt7Fa8WiODEOb9w=;
	h=Date:From:To:Cc:Subject;
	b=q3eW35QNnmeidez4dxYgyI6xaheIlfEGqeu3HQ5aHsbxh0oNRK/jhdaSAMiXRXUeJ
	 WiX2ucAWYwijlfVIQgoxw9bRvcaD15cOijCTiwn8SMO69eKw+cNHWYXGiyrl+8veMW
	 DUfIV251XP41N/ZfRdaSeS0gx2RvSj+EfzkL2RlG3H8oUCHuHRmlYMei60p22zfFDs
	 XDZjifMKAXscGsHvTMtvBJvAUOzE5TNaH8R0JfAncQ4m7VOoB/jnFl3w6NLn5Xhi/W
	 AO7rTxdntLOZZw7Rjt87JgTZ1gqiUMj0LT99dr+TR9dfYzV7NgilnNU0AeJ1nr6z8K
	 VXk1AbSkzaYew==
Original-Subject: Issue in man page sscanf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020981.000000006739C97F.003FC477; Sun, 17 Nov 2024 10:46:23 +0000
Date: Sun, 17 Nov 2024 10:46:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page sscanf.3
Message-ID: <ZznJf8X73k2a4ms7@meinfjell.helgefjelltest.de>
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

Issue:    Why is "Undefined Behaviour" capitalized?

"Use of the numeric conversion specifiers produces Undefined Behavior for "
"invalid input.  See E<.UR https://port70.net/\\:%7Ensz/\\:c/\\:c11/\\:n1570."
"html\\:#7.21.6.2p10> C11 7.21.6.2/10 E<.UE .> This is a bug in the ISO C "
"standard, and not an inherent design issue with the API.  However, current "
"implementations are not safe from that bug, so it is not recommended to use "
"them.  Instead, programs should use functions such as B<strtol>(3)  to parse "
"numeric input.  Alternatively, mitigate it by specifying a maximum field "
"width."

