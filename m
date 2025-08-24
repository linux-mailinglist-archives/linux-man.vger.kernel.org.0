Return-Path: <linux-man+bounces-3554-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2C9B3307D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A13B441DE8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 658062DE6E5;
	Sun, 24 Aug 2025 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="rZ9Ype0F"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D2F27381B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046920; cv=none; b=R9ON++r48nWQNI/nFEpaikXc9dCXeh/VyHrSlIDxaHhrBUFZKlZsuV3U9vDl6ChOjzcQBEwF74roJ28Cbjt0tYNN//0zUpi1AClyuH4JPGHT4mTIW7+rkbxA+gP2ejRZnr19NlUW7MfIKo/62rr/EiS23G+5MIlPRiozCFFS200=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046920; c=relaxed/simple;
	bh=kNhQbTbiNFjRYaTk+7uuzctDXcxY+VlpuM7T5meBI6M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bkCJaIkDx/k3D8CXFaYq/V+1ycQF16P4DtYaj/rrasc7rUA0q/+hfwHqXOAwY2pUT0G1QWcEjZKRQQYu4RR9lwnqI2JkFDTW13p1j42ksQltaJZf0mF8Lsu5aRgYDZ38vSPrvZsa5Va1orJra0mQ7cqWcTENPzd/gY4fpA2MeTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=rZ9Ype0F; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046913;
	bh=j9zZPVVX0TbbfSorOOgxsEqg3c1F5dReGhYUl9Zqn40=;
	h=Date:From:To:Cc:Subject;
	b=rZ9Ype0FMLcUqIB9wtL45Wx/SBqu4c5IAdXuK6SLnO9a+KLriTtxP4cd3cTX/bED9
	 IChYr+xYrjET6f4unnsVl7w+sS5+EdEB38Sc6Vi7je0JanCg66FQBIuwTVkNtbc1z8
	 kl/NRjkDSuYzYO2lKvpytnqaONWNG7fU7kWMCvkNMh7M53sd5uJZ67CpPk1dgJ/KUu
	 CIWRgmtJLmRK5G/lrfL7lkJIKywmwUsZSLSa2VtXgrCu3oepkNgPCQyRhSr2uj1N67
	 lgNlXgYUzhpgWvPEvt5rZaRZGCslXGjhIY9B2eyROAwoF7oplTRu+4ZCLtwZJETNVb
	 cSOnWCYA6BF4Q==
Original-Subject: Issue in man page cgroup_namespaces.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021463.0000000068AB2641.00138C1D; Sun, 24 Aug 2025 14:48:33 +0000
Date: Sun, 24 Aug 2025 14:48:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page cgroup_namespaces.7
Message-ID: <aKsmQUS9R5QXyAeN@meinfjell.helgefjelltest.de>
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

Issue:    B<Create>aB<process>thatB<lives>forB<a>while → Create a process that lives for a while

"#B< mkdir -p /sys/fs/cgroup/freezer/sub2>;\n"
"#B< sleep 10000 &>#B<Create>aB<process>thatB<lives>forB<a>while\n"
"[1] 20124\n"
"#B< echo 20124 E<gt> /sys/fs/cgroup/freezer/sub2/cgroup.procs>;\n"

