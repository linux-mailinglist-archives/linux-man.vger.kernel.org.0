Return-Path: <linux-man+bounces-3545-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A1BB33075
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7F62203B1C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5879021D3C5;
	Sun, 24 Aug 2025 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="d6q6uOIF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF74F17332C
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046916; cv=none; b=kF78xi3E97lVPVYTnf18LCAnU7pMXOYHMmcRp5XDonLPDlRah0q97qWeNH3Yln///fhGHLzG8D77u2QsB7bXQngvHSNq2SN2mAvGhQ57ryPyoUc7n71CYfHApKqGeZPsx2qxkb9k9eIsQOUQ9gYo0P5gRsHe/EgAjj3VPxPqWyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046916; c=relaxed/simple;
	bh=f+pwLz4VAnfXKKNLewzaez15/lXHEgXc4EzYYbKKwgA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NpoZLdE+h3NrzIFBRWnk1UhRxuq2OycLMyRsZ1lctBupo0mv0LL+lI85WRJ8YuNqmxsV51Y9i4yDUqThdY7C9nUjn9HNIc7ZUiFEMex3DlG6N0arlLk7yBMJBTX7IYseR9DAUkMbTEjuyZ9rixOx39Ar//PH/CFK/V4mI1djGik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=d6q6uOIF; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046912;
	bh=jazvPGLPNwjWHohUbwEMrkODsZdCM9c6Z+gswMAZmyg=;
	h=Date:From:To:Cc:Subject;
	b=d6q6uOIF7zS6zP5niGwGJeFZmijojhFzhvmhFBfMnuMERrhOKs7woqiGuHYIYsae8
	 FmmmJ6D5/LUAkrxFsmFhLOdvAmOnNmpIHna8irtlpF79X54TEzqak40gAviC9yLHXc
	 ahWOT/vQj/tqbAsgZ0veqVP5XSdzUHxhIfcpWQIQlCofgXBY40RCmUZj291BvyDXkC
	 BsMCrc/aK1Ouw93TyloFHaEDruSUBOS/ddR1+WBkBDx9n5yEmJYaBdb099qQ5FYYCQ
	 bMkpZ2xbjwUUx41PbLsvDVNbAEXrbKNvMcFmNqpr7whYnQR5D60G0KDRqMjtbc5qed
	 Xi0tVP2xZe/rg==
Original-Subject: Issue in man page resolver.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000202D8.0000000068AB2640.00138B1D; Sun, 24 Aug 2025 14:48:32 +0000
Date: Sun, 24 Aug 2025 14:48:32 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page resolver.3
Message-ID: <aKsmQPjvcdoEHxoP@meinfjell.helgefjelltest.de>
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

Issue:    B<…>int msglen, int anslen → B<…int> I<msglen>, B<int> I<anslen>

"B<int res_nsend(>int msglen, int anslen;\n"
"B<           res_state >I<statep>B<,>\n"
"B<           const unsigned char >I<msg>B<[>I<msglen>B<], int >I<msglen>B<,>\n"
"B<           unsigned char >I<answer>B<[>I<anslen>B<], int >I<anslen>B<);>\n"

