Return-Path: <linux-man+bounces-3668-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E51B0B330EB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB38B189AAE9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBEA2E06D2;
	Sun, 24 Aug 2025 14:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="peGwEBDF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560932DF70E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046976; cv=none; b=pibVBZx6vPf8ES7iwzAtu5cqBJXwgJCFRbHj4G6bBFlmN4IZG79TZFFH6zbdC/5z90riUX3/hwJTkP92xFZAQBh7afmV0VY+IG6xEpQDq0zhdMFuBQgd20NfGAkYrNX4BBVlduBEoRT+WDMjJT8uImc78CVqYRktdz3Eve5aa8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046976; c=relaxed/simple;
	bh=5Tpfj7V6bapKL3CHm6VlkacdU9KI48B8Qnsp0N7Ipys=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=FaK2UX6L8Z6lTiyP6yBaZjbbWv59zfIdhYENhXvW6rDjgRZY993ZU13GBLtgtaj9kn5pehsgR/diwxV7t/ppNSlaxOdJ9YvEhau/v2SaraHMOchTSKBejeSIGpHrecM08Rw+ZCPZr2FxaRkNIg7dZQ0PWAkglFZ1Y0OxLt/TyL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=peGwEBDF; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046928;
	bh=RP5mLQLza0+3Wnt53qkORfxOClhixIdpseB72gKsYZ0=;
	h=Date:From:To:Cc:Subject;
	b=peGwEBDFukGGGn+wvnX6nR9G6Lf+mYc7h9fmuIT2uYY5w/fGxgzdKKCuP1cv36AC8
	 8lMC5PfScssdUmpBqsG4Uc+6VbMzyQNRdbSZFBSFoZOGe22dAOkr0iOXq0RhVnRUAO
	 WDyNM629oq6R1uYKLoA9HGsN0gR3JMzq5KndkSSbEB8bZFhCDwDA5h5iU7YZJ29nIG
	 p8OWw5balbZZFULv9jV6YA7Q1GlyqX7FzemxgJVzCIB1//y3O4wMqFYHzBUzdCCJap
	 RsN+yu5ujfNIjew3kA6Sa+mFgfimoQyfDHlKngu6RNt5Wde7pemJ2nlK70xJVvcXJD
	 yVkizbk9mgiHA==
Original-Subject: Issue in man page PR_SET_SECUREBITS.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021652.0000000068AB2650.00139746; Sun, 24 Aug 2025 14:48:48 +0000
Date: Sun, 24 Aug 2025 14:48:48 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_SET_SECUREBITS.2const
Message-ID: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
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

Issue:    malloc → B<malloc>(3) ?

"Setting this flag provides a method for disabling transparent huge pages for "
"jobs where the code cannot be modified, and using a malloc hook with "
"B<madvise>(2)  is not an option (i.e., statically allocated data).  The "
"setting of the \"THP disable\" flag is inherited by a child created via "
"B<fork>(2)  and is preserved across B<execve>(2)."

