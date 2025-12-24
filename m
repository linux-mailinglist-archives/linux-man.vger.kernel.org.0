Return-Path: <linux-man+bounces-4501-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7D4CDC8BF
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 558E6304FFDE
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B21B358D30;
	Wed, 24 Dec 2025 14:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Qp02UXNq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E30358D20
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587115; cv=none; b=JViW0ku3G6i3HHP5uV57now0zv/FxU01/+s59Ok//vZsw7i07sERILCn7HAy6sYBVsaXINg1SwobmTj3TF6lGVqNBQHsBWilFXQK/KMBQQBG0m8qUSjj9cpMAViUJerC+aGgPDizvPDdm6IRSfypbXjhtFreQCcbkDszSD2sjVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587115; c=relaxed/simple;
	bh=FHTNyGwHYayookUBTZgp/9Eicu12ORnhuqPNBxA3go8=;
	h=Date:From:To:Cc:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=JtWKCP/zsr13TqflpExbtgZaUkpselVI9fGOLmfeedGLt7vJ7/vLS9JvOuQoUt+a8DFAOF6VgNYF4ySB9oGV8GHdriYoVHl0jlOdRPB2AnyS7e5/3/lSM0pUsX1FPMeBFBvJIXOzEDYFe9AcKs4zkH3vMsDyOh4im3viuZFGo1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Qp02UXNq; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587103;
	bh=MEovw8BnmSK6vumLbaESlOe+trlQBuWEll9UY6Ejaac=; h=Date:From:To:Cc;
	b=Qp02UXNqk3GxMOI4sUitLHEfiSuEBldXc4mI+h126ld/E8JB6hvyag+m1mhWxLXY5
	 I5huLiLmEKxOnu517KaZYJd/uBpBo9qUXxUXm3iKARKp+QCs8JBy0hN7XBEwW0SkGy
	 qYc4ORNvhHCoazQrHmokMSmnZjWqNaxMBew2eIAV2jabcqPat1+ofZZBVcEFUKbbYB
	 xOXW9wVpeU3BCvbSzbHANBn3V5Ap8JjfZgwggmsogk+2ybcsv0Q17TJqG9BxlEH5D9
	 TcSVdhH8cUwY+2lSlNQttwAwSihhoj7r2GNdFk3g4UUKtUVNMP6FgFDvvqCFNt9pfA
	 DK4MR4Nlx4eXA==
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000209C8.00000000694BFADF.003198A8; Wed, 24 Dec 2025 14:38:23 +0000
Date: Wed, 24 Dec 2025 14:38:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <aUv635HpEQKac8rI@meinfjell.helgefjelltest.de>
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

Man page: console_codes.4
Issue:    Why hard word wraps?

"Set palette, with parameter given in 7 hexadecimal digits\n"
"I<nrrggbb>\n"
"after the final P.\n"
"Here\n"
"I<n>\n"
"is the color (0\\[en]15),\n"
"and\n"
"I<rrggbb>\n"
"indicates\n"
"the red/green/blue values (0\\[en]255)."

"Set screen blank timeout to\n"
"I<n>\n"
"minutes."

"Set icon name and window title to\n"
"I<txt>."

#. type: tbl table
#: archlinux debian-unstable mageia-cauldron opensuse-tumbleweed
#, no-wrap
"Change log file to\n"
"I<name>\n"
"(normally disabled by a compile-time option)."

"Cursor to lower left corner of screen (if enabled\n"
"by\n"
"B<xterm>(1)'s\n"
"B<hpLowerleftBugCompat>\n"
"resource)."

