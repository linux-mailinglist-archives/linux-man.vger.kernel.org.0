Return-Path: <linux-man+bounces-4503-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E541ECDC8C2
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74A783050CEB
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C067358D35;
	Wed, 24 Dec 2025 14:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="vOvHcW+k"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEA7358D22
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587115; cv=none; b=MQpvOm9QJdSgA/zE8Kiz/bPPkmneVj2BiTA3cJjOOQL0ibXqAy0mCU1qVvEK823DMvBP5589OAMJJfGbvb+4nUyJegrElxQMKpVUw4uQe/HLDbw01z/BoWt4bKQSG0Xo3R080fmtl4Mmw2TUnA1NVrXNC+OyTz/CMoJ93awRNG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587115; c=relaxed/simple;
	bh=sG4p+OYM8sgZ/JWsdVsI7zCi9Wif11gvAVclGl8hEus=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=AJ1TXJ9B8l8C1Ll2ZoTMhUcXgrn9SNZ3Xjsf47ZADSknewT3JRbewCimKJ5SznIFGizsEvICW+UhelmIuZ8nM6n11h3DMU8KbJ0IA2ViRv0QEvbUk5WGOrtXuJZ5Xk8RpmgZWeHXYPP5CqrwDCu3RtM7ZHG0MxYrDt8ZiS/X0zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=vOvHcW+k; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587103;
	bh=NB20ChBv3dPKh8g6NrSmygYFfAz1fY/WOPZBAH1Cgfs=;
	h=Date:From:To:Cc:Subject;
	b=vOvHcW+ktxjX5zZCMVsFoxHfQwn8vAK+HUj5UUui4oNWMBYJ+sAdGjn9DFv0+xuuF
	 ibuzOa2mkT2h9mHxbOCatx2AiOSnaNW8Bash0bVCpt54Ri/Y1IFSCuD2sXGsseMCwt
	 EgbbTiKVqoGT4oRAKydfXcEFiHCrDy9a9/Tr3egBH01WfJLvmlaqTDn63eqCFuBHXf
	 5OP5g5awEzyUk0a6uvFKhZ9vLTVnbeFcX84dGkztg9w4tCmOx/3NTCaPfzvWPqU+3c
	 iiXlaYqbOKtbIiEMHNcfv/fAEpEgxB6Pu7qqEHuPM+N+wSaoMUbPyiSzKlMpVzEP/I
	 VCO9YniAPIyJA==
Original-Subject: Issue in man page  PR_SET_PTRACER.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A19.00000000694BFADF.003198DA; Wed, 24 Dec 2025 14:38:23 +0000
Date: Wed, 24 Dec 2025 14:38:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_SET_PTRACER.2const
Message-ID: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>
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

Issue:     Replace comma by fullstop (in SEE ALSO!)

"B<prctl>(2),"

