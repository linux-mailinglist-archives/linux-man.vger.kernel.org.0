Return-Path: <linux-man+bounces-3638-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 247E6B330D4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DDC3203DD0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31E82DFA3A;
	Sun, 24 Aug 2025 14:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="sNfEUuVS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504282DFA38
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046961; cv=none; b=GzOcR9vBdbn5LEFrPKryc47hDYG/RaVpplm+QLKKsyVIJwsfAq4iAgyBhCMUcY/GL+ZIzOwau4WX8C+LPX6ye/ZUMHQ2mfwwUh6S1LDIUyEYG6TEVNarFxBsFNwSRoNpatbqRp7R6O5VJkbvr2/mWo7bxfSX1aA1VTMCktF4aa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046961; c=relaxed/simple;
	bh=sjQSZXcDli9oNqLIoWsfF6wHdbrSu566TLygzVCog+U=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=FyqTWH2SZ2RX4V/a6kc8EPcRc7jw22TTAtUTakXSWOwO6Q0xq+rFV1QDWc9HaOlKap906UGaC9/KvuWPUPrxfGYWA+Uk8PWZjATZqHGZq0ZeEl4T54Ojmv3DxrGn3cYzi/uklJECYl030F2hkxoO+bSdTXOxG455SQ18eqVTH3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=sNfEUuVS; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046924;
	bh=tR1DYg1zp3J1pkc32MYC3w8JFqxDaQtKSzWDXNeoT2M=;
	h=Date:From:To:Cc:Subject;
	b=sNfEUuVS+tEU83F0llLXfjuJGVvmngV0BCiE5fR5rjODp3hIDYwDhBtKMLmgR4VO3
	 ab7p4zAtejCQOBSfuhjj0PhQGyOxxqCfXwCUQRLTQEQ/cHxqjOTjN+MBCkXsUXb6kG
	 rsbcv3xJSUIP2NYToj+Z0G/KhsyIO0oMRFqr4Eqt5rYj42iHTameIkT9wjjATtUvzO
	 7dK6B4c3+YRd2yQ55DL/H+pzNcW6DdiMPhca6snA6gZ0KIboowbHx3dCTs16eomeD7
	 aLbihySnuoAlHFJd7qp+MeqqasorP5zZzwBrYLcsTAsgBqvkhgp4ff4ZD11VM/wo9T
	 R/OQBpfWsijTA==
Original-Subject: Issue in man page memcpy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002173D.0000000068AB264C.00139457; Sun, 24 Aug 2025 14:48:44 +0000
Date: Sun, 24 Aug 2025 14:48:44 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memcpy.3
Message-ID: <aKsmTM-oPgpqecM3@meinfjell.helgefjelltest.de>
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

"B<void *memcpy(>size_t n;\n"
"B<             void >I<dest>B<[restrict >I<n>B<], const void >I<src>B<[restrict >I<n>B<],>\n"
"B<             size_t >I<n>B<);>\n"

