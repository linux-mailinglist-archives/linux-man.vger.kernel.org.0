Return-Path: <linux-man+bounces-1933-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFC99D02F8
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF4CE283DC0
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18C31171652;
	Sun, 17 Nov 2024 10:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="qGF9l9kT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8570483A17
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840397; cv=none; b=qR4b4hdLoy2dvvKeJE33F/Epxd8aWISo3YkohgLrTuJkrKSHGt4JJ735hWVa2XJA9VVv7XnIZJZrw2uxWLcdOsrlRf2h93sUVp+h9S3GhV4m3i+N1FxKfsRSrg9usN9vf5dIO+IdNhnvi4kcHHimul76fwlHHf5rt0anPAErLQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840397; c=relaxed/simple;
	bh=8vDhdQZcf5uryHUkDVNue5GByyaYBAudnuV2A8gufug=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=TB9FibYQ6yoPKtI55rR79oLwZLI3xbsDTa/OvUOJmwq42+5ut/HmYW2D58L8sfb4ymvWP3ajBSrTZWyo+eHPFwgh/7ltP6AKY7pionYXAEb7DGSbwX3z1hIoaIm0e6wnaRDZpm11ccU6nrJyeMeWgbv4Urvty5qBh6YwRU3JyCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=qGF9l9kT; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840385;
	bh=WZddB7N64Cp3ADW49vVXLwqXt5Klr437rf5l+DBnCoc=;
	h=Date:From:To:Cc:Subject;
	b=qGF9l9kTSJgMMzU03sRT/c8gh4DQbuiubvMngklBlivixcJ6UVzD4jZNh3Ok0BuPG
	 BsMmWI7b592PbnYACOR4/Nq3M3QHRPx83DfQaFPAl6DAnBE3Vp2Cy/fSyjjmzJlg5S
	 q25nRmU1lHp14etMxgUTQCxwYjcItMXlTf/4MKmSNnCG1lZId9N8fAhd7uIyjf2UBA
	 BhQ7Mogjb/HGg5yS8AioT8qw6PMVv4SQqWt8fKAm+53AvaP06O+gG3iQgpy4oGxBQg
	 /1Y/I26QhtqEyOCq1m4uNBEVsu0SpuPysC186Nf3S1HR53Rp5efi4xOhWEAScR6mod
	 nGttunQFtcjtw==
Original-Subject: Issue in man page clone.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021699.000000006739C981.003FC5D8; Sun, 17 Nov 2024 10:46:25 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page clone.2
Message-ID: <ZznJge9al7KNW0tN@meinfjell.helgefjelltest.de>
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

Issue:    I<exit_signal.> → I<exit_signal>.

"B<CLONE_THREAD> or B<CLONE_PARENT> was specified in the I<flags> mask, but a "
"signal was specified in I<exit_signal>."

