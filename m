Return-Path: <linux-man+bounces-3611-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D763B330B7
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3C4C441E81
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B748C2DF6F4;
	Sun, 24 Aug 2025 14:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="A3q7KPRY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9452DE703
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046948; cv=none; b=KAZP7m11udfi+biUw/LO7yU5jculcAScmzBG/+fyTbdkzgjj125YRw84Q7wrwFgXQVQaYLvW5kdj85UpCZGiRj8hMq235M+33H/mWiRBSKB6XQnDUswqCzcr7JdOliDL2af0rLYtgSapCuCk6lZLF0eIDIBAwcO68FG5nPN0CNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046948; c=relaxed/simple;
	bh=NCK+G3MDrqM83UKwaeRb8WdZapD1d3gyWia2h88FZs8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=MCSPsz0SR/PljrT/yAwENliPDG8DKDnIFkITup6It2Sj74oBJ/peXexcMfnAI/vlSfBh8Cm1Lb9OC9YB5y126Hww1fgwY7ernm6n80I3jGF/0uiwJbWUN73fAGiaTTYylZrbyiUSziISHEitsLKGhvBl3qf67qo6gkBz8j5lCFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=A3q7KPRY; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=oDHsw9dcFfZGcQfy/Bwwfp9rqfgGYUp9CiCvK5OpyQk=;
	h=Date:From:To:Cc:Subject;
	b=A3q7KPRYOUhiqwqZbUHQ7eSlIFCR6S0rWZrZvAydB6l85Hx+pUqlgJ2IgxLM2q/0E
	 P0V5AhEA5qq3uJgjnDIgEZS/U1+zEeC9NEzudYB8JfzzIP15japKp78PHxU8OPgIry
	 RRJ+9IFUGEchzZWpmteOqnr0reX6B7vSdBToxF+ioc/ocy8RGipy/JlqAubkfmntfg
	 sLvGCxrO68g/M7HC4O6iS4G7j1HwwKqwJ/bVchRa86d4v+Z4bjEiSPJVbOX63P6Xab
	 yaZTwszJSnkqL6Ac7zy0J9mYSEr8HzzjE+fES8XKr1EIb5iaeHoa/EN+eEC2abYkqM
	 nxRku7fYWqBTg==
Original-Subject: Issue in man page gethostbyname.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002170B.0000000068AB2648.001391B2; Sun, 24 Aug 2025 14:48:40 +0000
Date: Sun, 24 Aug 2025 14:48:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page gethostbyname.3
Message-ID: <aKsmSFzbvWX7IQQp@meinfjell.helgefjelltest.de>
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

Issue:    size I<len> → size I<size>

"The B<gethostbyaddr>()  function returns a structure of type I<hostent> for "
"the given host address I<addr> of size I<len> and address type I<type>.  "
"Valid address types are B<AF_INET> and B<AF_INET6> (defined in I<E<lt>sys/"
"socket.hE<gt>>).  The host address argument is a pointer to a struct of a "
"type depending on the address type, for example a I<struct\\ in_addr\\ *> "
"(probably obtained via a call to B<inet_addr>(3))  for address type "
"B<AF_INET>."

