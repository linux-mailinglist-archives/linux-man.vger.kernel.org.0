Return-Path: <linux-man+bounces-3631-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7094BB330C9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D9C0203D4D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EDC61DDC1E;
	Sun, 24 Aug 2025 14:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="alvOM+ks"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D3919ABD8
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046958; cv=none; b=HqoL/uILLY/7iyKpLW/5BQIf9g5J6t3VBqeFnVmnBpcPTX2eBE1b7Bx504pCBYAkDh2TBgoNr1B7PDvw29PWx72637B4Fc6K78V/hvmB4/bm0R8ZNY9rUN+C04sN0ABQkLz1qYvCHi0gIRwwJtJprql/6rEXw3yPOQ5GAJcH+F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046958; c=relaxed/simple;
	bh=+d0Ry30oW7OF+jZ2ev6Qq8WZ7s7mdn0733QoQ4VZUIo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=RDCzVgsQo5KJNHvRnqgfgd9P9VUl9uv6w5yv0JjaPrHe48mqvk4K0+qGzngAkJf6IxayyxUAijVpXrecdtu0+PqLx6bR1+5HtJ/8uQqcUkZIS5jTlyCQT+QlLwv7ltx6cSAnfJLu+zbDjWwbXTxpP5xzZ35FYu95DrMe4SgiYPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=alvOM+ks; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=3F0DMI5AcXblAsIc+jWzlFCOr20AcoyEannzzoVAGLQ=;
	h=Date:From:To:Cc:Subject;
	b=alvOM+ksB7jMWxPGuI3vvTmvaYUGMdpf2U01BAB9yRFzvo3qr7qsN+K2w+/IMrjJh
	 YtuEjElpY4BNEeYlgQOtzLXUN/DOQDr7gUrszR96XfgN8kxKNAi/EwtGSlDolzLg75
	 uRhJaxtkyJLVHy1EUBPqqvjHtsk3SkgvjmesZVlXO81HEhyihb5+5s+JqbCfwBb2GC
	 azfRDtASt9+JzrpEmaycB4UPu094JjC9KwngU64TjWiD2czyBR4Zr5bHXuBV4ynwUR
	 gN6Ura7MqyDYF+SNX2IDavkfN3wLV8wLcUsSKd8C6pg+BKmEAMqlWZuSoiwvzrVoqM
	 7J0mtOocgrJ7g==
Original-Subject: Issue in man page malloc.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002172F.0000000068AB264B.001393A8; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page malloc.3
Message-ID: <aKsmS1f0DzFgPxS0@meinfjell.helgefjelltest.de>
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

Issue:    enough that → enough, so that

"The behavior of I<realloc(p,\\ 0)> in glibc doesn't conform to any of C99, "
"C11, POSIX.1-2001, POSIX.1-2004, POSIX.1-2008, POSIX.1-2013, POSIX.1-2017, "
"or POSIX.1-2024.  The C17 specification was changed to make it conforming, "
"but that specification made it impossible to write code that reliably "
"determines if the input pointer is freed after I<realloc(p,\\ 0)>, and C23 "
"changed it again to make this undefined behavior, acknowledging that the C17 "
"specification was broad enough that undefined behavior wasn't worse than "
"that."

