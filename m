Return-Path: <linux-man+bounces-3555-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B0FB3307E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90D26441DF2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A4E27381B;
	Sun, 24 Aug 2025 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="bDZ7Tmbj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BEF2DE1F0
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046920; cv=none; b=WGpionanrHxHGaVGd6K/lYmidwdYfd9i+RSz1LJTFNOJiLwUuOsi+fPdoj9kgqFP23OP+dpgfFglqG0/ip78xHryUVXOc7yNwinGQ6KNGkdnVsGNwgXt7bnIZPB/VcLLdzmR3JgEoMue4g8ymSmrxOL5zvO5ynfXP4kIwU2X3ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046920; c=relaxed/simple;
	bh=abof/jCAYD7OBmlLf8L1hiC3GU1ysW+UIUo8zcduNYQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QgU4kgWTUIkQAiN0ItRHkLebpDhPOChiH4JTk76zEtva1ifssgTFHjTlIU5Fo9nq4EcSEdkFKp17w7sv4G9K4O1AmwirrwpdJWOYlYOZjsbziGZ25sNUMYDKb5FZhvQ9JXjI4lBGIOM9r2VDI3VVhdHI2U35maS3H1P3UVHI9dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=bDZ7Tmbj; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=j9neZmguW89wTDWTFWoiHXrbRrAJCp/nfzXHqNa/mrU=;
	h=Date:From:To:Cc:Subject;
	b=bDZ7TmbjuaM049e8sXtAO3Fwp9jY9jYF0LE2gdPWK3KdBvps8bmSuiHwEt//4Z5rd
	 o5uNw6+mr5y2lwSk/DRGnA1j+erwIoBxyRAbzX0RbO1lNDh8Nc8XMmn99N/D3k8iXC
	 d4/nVnCgBF0B7YcyTRuCn29svFJWt+eLPb0v4WvGaOwEsd0W+TDS1qK1iMTRz9d1iN
	 SUoxpYVmxhsbwt+Ff+MgvLB5SfkyZp9DfvBizl68Hgmp+Z8MsafvOBGoypv6X1R662
	 mlQAAmaS9MrRCfGRJ8fHYHCYsn4KWp8W8kcvwZFIfU2t3jtB3tok78AzNSEJiSRV91
	 ieflk5VTP7D7w==
Original-Subject: Issue in man page stdin.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021468.0000000068AB2642.00138C38; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page stdin.3
Message-ID: <aKsmQV7L9VloZcrk@meinfjell.helgefjelltest.de>
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

Issue:    \"Redirection\" → \"Redirections\"

"Under normal circumstances every UNIX program has three streams opened for "
"it when it starts up, one for input, one for output, and one for printing "
"diagnostic or error messages.  These are typically attached to the user's "
"terminal (see B<tty>(4))  but might instead refer to files or other devices, "
"depending on what the parent process chose to set up.  (See also the "
"\"Redirection\" section of B<sh>(1).)"

