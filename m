Return-Path: <linux-man+bounces-3552-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A074B3307B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DE09F4E108F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 168932DE1E0;
	Sun, 24 Aug 2025 14:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="UCqm3yQ1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E86F1F92E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046918; cv=none; b=KsLfpjLjo4isakt4JQ9k8rHbTO/5btYo2HC+gLr7GfIV5sW/nBz7trldak1DvkBhY3f+sA5qWL2ehQnQfwBDyiu6OqGuaAdw4qzpOjTkXUbGHNG1ARDSYEvYm0kHNN+4ztPhbIQjjNLH0swrIgwoud3xOQuA4nUcSR3hlx3/GRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046918; c=relaxed/simple;
	bh=fXd4yI2yTgkLUnisABU1dvjoTs9eg+vYhA4v9VcZI2c=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=HFqt0f/rzJBkH1JEZJyVZUSZJI/cziDudSDXDyYuwVx2sz1pb6YtYNXMISrmeYdz8hvWk/+YG/gFVbIgsSowpd9kgYHOuKjKgiqa+GIC8UW92gZKS1qR9GvbRcnUJcvW2KbZ5RapWMD8NHoOPePbdfVVs7HRXuam5wMovFESJpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=UCqm3yQ1; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046913;
	bh=EP0wtk2g3Z9JO88+bhYq1iDoQk5ibPh+IFGPrkse64M=;
	h=Date:From:To:Cc:Subject;
	b=UCqm3yQ1JxWtbGyT4CPlDewqx5BSLvQXohqNKji0uPDMuifs3KhEpU1UxKSjFQmQv
	 AkjPuOTuluZ9VEWdBfBlmRdpeh9VTQhdlmMzW+8cagUHs0Wt5xFz6WO1trxYgHGvJg
	 zB0AEr4fqUCHyqdZmWeIVKtByicCabYrg78G+4Sq7oIp+bM84FjRu4Gs8Zs6PgGeAG
	 BTGoWYDpm0yjUCkcKKkebsNCPHUg5lPEPwvqomtP2tdHknCpwYp8i2JwcgAhBp2qwB
	 NBMB0HKfalcANHSfaNeSlHGtECs/ThIZNnlG4rrg/QntNDDYn9b0ws061K9WGSMD16
	 ZZ/99TBCeSq8g==
Original-Subject: Issue in man page shmget.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021117.0000000068AB2641.00138BE1; Sun, 24 Aug 2025 14:48:33 +0000
Date: Sun, 24 Aug 2025 14:48:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page shmget.2
Message-ID: <aKsmQa-EJjkkTWB4@meinfjell.helgefjelltest.de>
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

Issue:    B<proc>(5) does not describe hugetlb_shm_group

"The B<SHM_HUGETLB> flag was specified, but the caller was not privileged "
"(did not have the B<CAP_IPC_LOCK> capability)  and is not a member of the "
"I<hugetlb_shm_group> group; see the description of I</proc/sys/vm/"
"hugetlb_shm_group> in B<proc>(5)."

