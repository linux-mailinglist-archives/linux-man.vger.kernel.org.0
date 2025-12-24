Return-Path: <linux-man+bounces-4486-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 397C5CDC86B
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:39:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3CCB63009FDD
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE12358D00;
	Wed, 24 Dec 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="S+Ez9jpC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BD53587CB
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587106; cv=none; b=Tc7lzDhfvjEkW0FbHWtbTuyx8d6/fKo5ybkmhJRzq3Cp1+e+1YWwC+enNtD35CIXCXQlMIol8M8KFnb8zBQxViB292MtdP4od0cFiydtPtkAsQffCuzkeGP5/KnwVBPIq+DAubrUR/37Sp3MGAd26LlwGqwPSQ+DYqtCA3Ccb60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587106; c=relaxed/simple;
	bh=+qAuZisQqccvnzuJh5AOejR5POAiqyOO9w6HHnlCqtg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=lNJSuinqUbWd09Mr9bIAs/ecHBAD4sSnRz9tBPoDPHYr7HSj/Qubaq99HT2b02cye5kMOiZlXgVFlR5OV0tsEC4hg7SM6m3ai7i7+TBAU/bTWPlC3N3gq+OaLl2gAhnTxfQT6U+anDhkecpV09xaP7+JC65rD2YqtXxtOoRoD4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=S+Ez9jpC; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587101;
	bh=KlF/r9jk5LN5H+pca6ArzNtLuqZp+SkErhfADeH0Trk=;
	h=Date:From:To:Cc:Subject;
	b=S+Ez9jpCeCRBKmBpbrAAV7hY8oj45Y1MofocubXYjqiCwIkMlusV775pVm6kTMn99
	 Q3g6+xRvvvjjHQm0oVqJlmeArEx+SsGVKxuOwxRRlHN34T4ro7jUNskKL4TdaaepWr
	 9Ij0cWDedpYhLRM1bims6EYqvL/jFNhkbtwi2s9CWBFe1UkZA8k04luGCs7Gjrye1Q
	 QPD1eRa+KugZimMMx7pEjF9wVGgS/Qkg4+fJUEVvFhkKjB806RRH0CWpjbxI5B3/QS
	 ltUH0CZ8eTSUCvuA2bnOw121NeHikyWmKPQkp2WOE82gwBUSFR4FrEbQsM9s9tpbcl
	 pzNgcHIhK/Arw==
Original-Subject: Issue in man page PR_CAPBSET_DROP.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000205BC.00000000694BFADD.0031973C; Wed, 24 Dec 2025 14:38:21 +0000
Date: Wed, 24 Dec 2025 14:38:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_CAPBSET_DROP.2const
Message-ID: <aUv63R0KGppYAaZx@meinfjell.helgefjelltest.de>
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

Issue:    B<PR_CAPBSET_READ>(2const)  B<libcap>(3), → B<PR_CAPBSET_READ>(2const), B<libcap>(3),

"B<prctl>(2), B<PR_CAPBSET_READ>(2const)  B<libcap>(3), B<cap_drop_bound>(3)"

