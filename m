Return-Path: <linux-man+bounces-3642-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 184EEB330D8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1044203EFF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAD1E2DECD3;
	Sun, 24 Aug 2025 14:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="X1gjzvj0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454182DF3FB
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046963; cv=none; b=fTgovIBuyeU2dDNF7QFIw/bmAJtbh/M4ZsVSWKmJNSDkStrllInZwBhsM6iVf54HXoObTzGcHZLkXdOBKpLSCKD5dSIBphejsJdWswzuL1To4ABqQayl/tWefGjZov3MAU2BaUn27bN4Ge35ys4lS/1DKnmoNWTMC4TUTnNgf54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046963; c=relaxed/simple;
	bh=V8lQC1r3Nv5nXsca/doIV4LNVGJAV01F1kI6CLNQ+yY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=dS4a4aDC/w0eKv35TjNLNvvAD68jmKxZ4jVE/yrcAlyDTinN78m+PSY0JHZCsCIVMhpQNG2R9bOpqyKa+0TIqpKBnD4nxKfH+3tSY2CdAiBhEeKGORmAGVM6FZZLpAM3hFEwZUGtMk1wJs9dvyfcAH0eena0sgf8CNiGrvewI9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=X1gjzvj0; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046925;
	bh=HeNwWKREv4XdWuZwysW6fOZpGxyThw0WsIpNHXt7Cjw=;
	h=Date:From:To:Cc:Subject;
	b=X1gjzvj0xFdcyWuJJ0W3rVBka9Zs7E6KVidl1kfDqVAIcVUOX+JFnOCQoKOGxnQzr
	 XNnYMdH+ergCcHdgl11TvJGZxAhGhvkv1IMqIh9M21ysmL7a8gDIALp9UtAxq/oiCq
	 fgkdoT9Y8vu3m86Wtgu/jOpXSg5TB8YCJ7VFltzKH6s1xHFz7XKEKpk2J8ETobzE3c
	 GUadZtOZk5J5cHlq4r5+KenMmoCWXpfY/cldqa9HOBK5SwASjrJ/S2QOdTbMZN7ZOX
	 mCEZnUDRF1gjQ9sbU2fA9s5K4FzUXBUSwd7GBwlsVJ2pz9GSY377sLfj9RQOD8IYXn
	 j6uxg4Rkbw5jA==
Original-Subject: Issue in man page memmove.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020405.0000000068AB264C.001394BB; Sun, 24 Aug 2025 14:48:44 +0000
Date: Sun, 24 Aug 2025 14:48:44 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memmove.3
Message-ID: <aKsmTLXH4pneiZUa@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<void *memmove(>size_t n;\n"
"B<              void >I<dest>B<[>I<n>B<], const void >I<src>B<[>I<n>B<], size_t >I<n>B<);>\n"

