Return-Path: <linux-man+bounces-4479-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F1FCDC888
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F01130361E8
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8873587C7;
	Wed, 24 Dec 2025 14:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ttSyxbrM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A5A357A4B
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587093; cv=none; b=D6MZCBFDZGj6iQDNdZtm0MKUxBwHAmuw6SUv//r9sgMPlHMlwEEjYcwW5Xm4Ld6vYHARmwLaDdMeHBrxsTZDOWjOvMHaJ2GoaVkmtX57OfWUVpnrKqTQCBqdOTRyYtscmZuL6jaToYaNnxUnS0TVQ/8CUaM/5q5fDLkAFhvHvq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587093; c=relaxed/simple;
	bh=ma+5V/kBOF9bPYK2F40VvJXkFO/4yNM5yOq5jcJIe5Q=;
	h=Date:From:To:Cc:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=ssLF0cC32rwBzbQts8DE5GhkxEi8nlAeTY1nRFu9ai/i5JllBD2uOv9ijc/+MhE6TQkjHaVkzzXec1DhHvKl6xU/f1o68lCy81d1rsNQs68zGDg75AzWYc2E7VT4287aAxOaPM7ONyA2PXnNEo13zLx9p0fdLIZILYM+ornJVA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ttSyxbrM; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587083;
	bh=ma+5V/kBOF9bPYK2F40VvJXkFO/4yNM5yOq5jcJIe5Q=; h=Date:From:To:Cc;
	b=ttSyxbrMwIK5/MM7x2P1POwZdFR3XnmnI1jogFIBHvOXN9HivgRPt0yrjHUQDCLwC
	 v3QgFUJIwnBkS1OdwFLOOtFpEvoSZQ9pBT8mLgsfSuDhCqFMR7QvVQp82eaH9hXXGC
	 Y+VbjSmmbhLE4i2lp09qTVLpuheuURD2PuhriIy2/RRPTDTM4ipFb8Se0ouNZ1c0SG
	 PKLc5lM0ZCGfGQAfoe4xCzTnnhi5o1akhnnTycM+VuBKA/MgJrGEIXupCEVkvzmsB2
	 U0sL9YskncNfRsV6p5exHD52KRKXLxz8jcewBRRDkkfet/gDGuhcb6YPWqEjqrnOe6
	 rwxhOtDbVjtEQ==
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020104.00000000694BFACB.00319652; Wed, 24 Dec 2025 14:38:03 +0000
Date: Wed, 24 Dec 2025 14:38:03 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <aUv6y0Cidcn7wuun@meinfjell.helgefjelltest.de>
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


