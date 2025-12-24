Return-Path: <linux-man+bounces-4487-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2CDCDC8A1
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4643530413E1
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11627358D01;
	Wed, 24 Dec 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="h8m2zSXj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D43357A4B
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587106; cv=none; b=gZCTamZQ1fKpCpQuyJVTaOnzZreapzksDCt5rwc1ZIiR91zp3UOF5R3SBXXf32qai6f92XIYe5dbLD1Tur0yVFymw4BzAyh/Quvh8url7aWdDuO1luhichXgfsGXFACJu6Ul1uzIaJyTW4wzTi2nS/mcFU6vDMFkvTh4soW4QDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587106; c=relaxed/simple;
	bh=HBEXhvKft7abP6w5W2KiowhqX8eqk9Ser9/XfYQKCSw=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=HVPtmi7bnDdo25I/Jc8SrNT/TsQe7jVBXazVhG4MN3kA+tMhh38hErLT2N8HmFS/eHujLeWnpr8ZZepMiMkXm2lEYxoy5rIfZQTbj42psVoSoeDARWfkqNmBo6TlgsY1ZLXFp5IFPY0JzRL8hlQZ0GU2y/+O/0RFBG7pvia6u6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=h8m2zSXj; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587101;
	bh=62Pd2pr7TPO4d6CdTt7UlCX42Xtf90c3irFOEIZEqq0=;
	h=Date:From:To:Cc:Subject;
	b=h8m2zSXjeGChwruIvWI1bn60imdvekJJDRE2kMMSG11eh85gjyOiKbkDir8LSG6DQ
	 Y/3YIWC/AOGxAN+isUQmwDBQj0kTGTWDFIkuucJKfNMtc8Iabmsx49fwRDPrFH0xe3
	 lxVk5lEFCqRlG1vgq6IuWePm6llrEHW02uX7QJ0vvLbaczYnmm713rdlV5iBigGW1R
	 0DWWlj91UJ5mIWcosjvEydkzTRwIuAABRJcCV0k8nuuzrprXPjFVvEnCIrnOthLKgp
	 7uunYtNzLa0HbdVBHex2EvMurrWIgA6IEKJaeAKa3GaECOhyP3lGvMXZvGB9IDn2Sg
	 dCIyzCOpU/7PQ==
Original-Subject: Issue in man page mknod.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020539.00000000694BFADD.00319708; Wed, 24 Dec 2025 14:38:21 +0000
Date: Wed, 24 Dec 2025 14:38:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mknod.2
Message-ID: <aUv63WkdjBYbXoSc@meinfjell.helgefjelltest.de>
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

Issue:    This is the man page of B<mknod>, what is "like B<mknod>()" supposed to refer to? Itself?

"If I<path> is relative and I<dirfd> is the special value B<AT_FDCWD>, then "
"I<path> is interpreted relative to the current working directory of the "
"calling process (like B<mknod>())."

