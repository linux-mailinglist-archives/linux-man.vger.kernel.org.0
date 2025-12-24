Return-Path: <linux-man+bounces-4516-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADEECDC8DD
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BD30305C4F1
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDDC43590AE;
	Wed, 24 Dec 2025 14:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="M6xzXi52"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E99358D37
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587122; cv=none; b=J/d3ePEycX4+TiYxlcVoCg3QDfsq9UXfFBFENk9IwiviXG+HtPFPKJAI8Uk/D8tdm8ATY39ZeLlrUWNyKgxgYpJRHz4tstK3we3SEyHtQdrJVtPFVmCZzXmKKBrA/asRjF6sv4tynt98fmghy4yWGhtIpFs/+j7CDvok3n6XoYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587122; c=relaxed/simple;
	bh=9YPsW+x5f/zFr6sw+pe6gZ6HaQlb3+AqHbhZtxZf0Ng=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=dJjzuNC3GTUkJIJDY94THiGWQ0BU3eQrQaw+IjbimUZ+eAxQSDd8XB5VfPIjYDx92EtsnuuyY4dTknrc8BNVdQWFTccY1N+D3q9Dtn31R2CSLXjoO5vu+6XmiK5BpnSPbTWVKjiu0WcTAl2oMz6YUe5AjNW5sZR4tXzpThDWUpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=M6xzXi52; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587105;
	bh=PNCXaTxAtlUZsd059W7+JBq7q7why0QoE11gHhJZhFo=;
	h=Date:From:To:Cc:Subject;
	b=M6xzXi52Zy2C3GzZ70OEfS8Tz0BphqH1S0opuPRPwRnRnl+cZ4LMx0AVvYWDLGane
	 6Ujqg5Ze627CUmiwylUaflzuCtzLa0+Ge1RWJqvZJuEf9cTChRKp+XTML+QyBdty1C
	 hjexjUTUhiBNcSUDi0UR1+6xo7DRFxtsoiIYvHRZKKjSN8b7eCDjs52Ewft9wIxNdR
	 Fmk59ySEaOQK4FyUxahrQUUFUaXiBJITNl/lDxZFH5dQgZMWZqdYFqsTySWquJV/bT
	 c2qI+ZzF0NXcPKlnzFJubcM9QwGLm9dINghLnxtKylUHOPG1Pe/DGczyy3hcoKYDIY
	 HiHCRPXZH21Dw==
Original-Subject: Issue in man page fclose.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020AA2.00000000694BFAE1.00319A21; Wed, 24 Dec 2025 14:38:25 +0000
Date: Wed, 24 Dec 2025 14:38:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fclose.3
Message-ID: <aUv64SFmIBh71jdL@meinfjell.helgefjelltest.de>
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

Issue:    behaviour → behavior  (according man-pages(7) american English is used)

"The behaviour of B<fclose>()  is undefined if the I<stream> parameter is an "
"illegal pointer, or is a descriptor already passed to a previous invocation "
"of B<fclose>()."

