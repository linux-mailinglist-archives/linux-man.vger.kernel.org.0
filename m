Return-Path: <linux-man+bounces-1964-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 739C69D0318
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FD0B1F21B00
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F26166F00;
	Sun, 17 Nov 2024 10:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="UNj6a98Y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1634B176FB0
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840703; cv=none; b=OcUbUdgxPRllPXZGEavrlLamk1NhK0gCoYPUGRVw7E1IE+DtlpEpG0wK8Ru5wqhiUWKXHwvsJsgPA2LN7P1RhGnZgwDX7UsxxWZXEmKwH2EThdtKbOE3VM8CHTxL6Z1d1d+28JAhQa5SGjJoQoUpYpxOsrlNpGe4ASvzVSB+jZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840703; c=relaxed/simple;
	bh=qMWxy2Ff42Np1QomYpsLYvWp/VJv1Zk38s5kUUf7E3k=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=TZHdJj8mQkYdherMmtz2TrcG6+O5eiB6DktpyFNMAgKbRIhkspKAZzU3vB/6sVPhWn68B/F7tinQ5qfi+FcE3z0QKd7tGtvwf2d3WkgccR8BxS9hIzeqWI5c1GR77/fnkvncjTr5w3yf4HGLFzRxVP+0PjmA6bVMJCshmdBKPEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=UNj6a98Y; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840384;
	bh=yjb0qDpYifybauypiOuH+oU+kbw2FtPU4Q+JzGWlHrM=;
	h=Date:From:To:Cc:Subject;
	b=UNj6a98YicTF/t30ADRAr+Xqyi3z5oHp973KxITJpPAOFiDBoWrJyv4Vtc0m880An
	 mfhH6K1DAn5hmUM8HzkaR7X3viKdrabvBVpbWGUD4jywoJzBIDc5c6tUi5gblmSAoY
	 GCAhzKxyYRtVptbHBa7xcT4SHtb/Hunsk2vX/6nnPeTYpQpDcYAhNh3tPL59Y6S9+M
	 n1loF6e1L56ONhML2OgVvkcipTZ4C5GrPwBsD/s89Vt2HyxxeemFWXm58Q7Vu+cJqX
	 3jZp9IaVCybNaW4cL1d1vGEm7HsxvLAi80UV08thNbwiD5blWJjHixJnEowd73Rv9O
	 rRVHp2SXNI72A==
Original-Subject: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002164E.000000006739C980.003FC53F; Sun, 17 Nov 2024 10:46:24 +0000
Date: Sun, 17 Nov 2024 10:46:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page time.1
Message-ID: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>
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

Issue:    Remove hard line breaks, they are not necessary, rather use a separate paragraph for the last two lines

"The format string\n"
"I<FORMAT>\n"
"controls the contents of the\n"
"B<time>\n"
"output.  The format string can be set using the `-f' or `--format', `-v' or\n"
"`--verbose', or `-p' or `--portability' options.  If they are not\n"
"given, but the\n"
"I<TIME>\n"
"environment variable is set, its value is used as the format string.\n"
"Otherwise, a built-in default format is used.  The default format is:\n"
"  %Uuser %Ssystem %Eelapsed %PCPU (%Xtext+%Ddata %Mmax)k\n"
"  %Iinputs+%Ooutputs (%Fmajor+%Rminor)pagefaults %Wswaps\n"

