Return-Path: <linux-man+bounces-3604-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7380B330AF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 696CF441EBE
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AC8A2DCBFD;
	Sun, 24 Aug 2025 14:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="qkETN7gO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA48321D3C5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046945; cv=none; b=kX5X3OGJhDbtIk0PiG5XRIm75RDSrIUsNmlL1InccNmWj2rTh0Jedxc/wXU4P/C97xfJO1k+KBHFAkGZ2kPqmIUksyAwN0sTmbtbYG+faspNY5wJI8H4VngfksY9EUS2marc76FOzNPueatkd9wjUC7pbYsdjtIFsEvEsuo6Pkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046945; c=relaxed/simple;
	bh=rZJQZJqKvM14TOc8EcA6yfuaC5oduvRS3S+tGtbU8sA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=H2H8gAxx2rgYgLiL192ftJAR2/ks5Vd6xBqxdjWalhXYrSEISwX/yxaTCsQXErHMU1nsgmXKr+hiBX7wtRTHfTYH0k2WQWTAAucuw1foA8UjqrPZeDd3SpCnHsgcJOXVl6EMXBI3tOY4SCy8OIDjqOHnu4rudYPSuoLvpsmUZlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=qkETN7gO; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=j6O6kms2XpYDggCUoBO02Wi8XSqUU1ZHS1G03HLZn3g=;
	h=Date:From:To:Cc:Subject;
	b=qkETN7gOLRNSpUXQKChRHq82S10KEF1jNvsabmy41BRFDvuOSRd72nxCgTl/G2fjy
	 VPODeM5hWs/so0CVjI/UlWpelkCzUmg2Ad45BjdNEivZjfnfOjhipxqTdw+heoXIP+
	 ugzMtjAEc0j3Pl0jp37MQfq7bSYLVgWsqpMJE9EXlBETKk6mTfWxECpL2z6a853Rfw
	 A7mGUq5YYS8Z8Hemvk6ZoFjnr3Jgwc9VLbb7YKvuneKUFf+l3vE1GnIb5yKTCHnhY7
	 RZQP17C0DfAUcoBahIH+Gai2MZV19lvTSQIIc6btkEfv6rvkWVjhSWmphk4gKNCUK9
	 fnZYR95A/nDkg==
Original-Subject: Issue in man page getdirentries.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216FD.0000000068AB2648.00139103; Sun, 24 Aug 2025 14:48:40 +0000
Date: Sun, 24 Aug 2025 14:48:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getdirentries.3
Message-ID: <aKsmSCDwkxQ3fjQp@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t nbytes → B<…size_t> I<nbytes>

"B<ssize_t getdirentries(>size_t nbytes;\n"
"B<                      int >I<fd>B<, char >I<buf>B<[restrict >I<nbytes>B<], size_t >I<nbytes>B<,>\n"
"B<                      off_t *restrict >I<basep>B<);>\n"

