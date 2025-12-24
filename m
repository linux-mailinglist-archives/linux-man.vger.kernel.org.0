Return-Path: <linux-man+bounces-4483-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8C8CDC892
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AED12303C825
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB3173587D9;
	Wed, 24 Dec 2025 14:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="dy67BWp6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3288357A4B
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587104; cv=none; b=b8oF9Svaz1kWhU6vCAjFvnzNWcN1vBh2l4D/H50b29lMpe/xoWnEFisqQFQeRpkOpQ8zgfsQ1mJT8ws4JDL1t0ae0V8CagZdDEdMWyhpVAkFNAaxb+k1ZOA1CcLZGQ8EzYemdtdyYUZZQz76pszAOfeAXzAi0U56WLk8FresxuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587104; c=relaxed/simple;
	bh=4UFQCNVF/Dqk33mLCsSYpVKoiVblxBeGni801C8vEtw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=j0pNAzvKtpOXrpltp91EWXUSfRc7Ndy8f/acu5nmTxaSMbDfM56oJoct2T1U6BQmWOnqYKmjPusoEpSf0Fqj6hMd/ZrKlM/FG8zF9euJSQnRVk4/q2jz3Fq97XMEyDqDzLnRamYWl5LyG6yUaZgPJ6752mDu6NznJmUDnJHoWh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=dy67BWp6; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587100;
	bh=3eZVYbc/0z3k1x7X4sDURmeqjd3TQDdOmyt8R75AxHM=;
	h=Date:From:To:Cc:Subject;
	b=dy67BWp65y7arW3MROrLeH8lyKzyIzeeIskgGSDlPSJj2IfGh0SPlDJ+f9BWyWj4T
	 Jd74J0dVUoAPSMBcpN55jWpLP+2tN7ikoRbLrzfo0bVVc5nxVKdZVixkCzQwiy33ZC
	 SlOQi5WRSgB1lkXy9nnI42hd8+yQNNnZRyd0MX1yKzGTOXU6CH3CcCpJ34mtP39RW3
	 apRRgnBaTlGbQD31sH6nSEJGyl08rBnXTnWvFFy/Hfc0gM7F18P6cWUk1/R4unnU5L
	 Y0E+6lYR4j0NCdRGoIbYGbC6t14GH7F9YkbN/4Wb/B5uR8W/bZzHc6WZ9WERI5qS59
	 npygxky1SABqw==
Original-Subject: Issue in man page isalpha.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002024C.00000000694BFADC.00319693; Wed, 24 Dec 2025 14:38:20 +0000
Date: Wed, 24 Dec 2025 14:38:20 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page isalpha.3
Message-ID: <aUv63EGuHX_jICjK@meinfjell.helgefjelltest.de>
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

Issue:    I<(isalpha(c)\\ || \\ isdigit(c))> → B<(isalpha(>I<c>B<) || isdigit(>I<c>B<))>

"checks for an alphanumeric character; it is equivalent to I<(isalpha(c)\\ ||"
"\\ isdigit(c))>."

