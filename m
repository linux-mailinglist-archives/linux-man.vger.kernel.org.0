Return-Path: <linux-man+bounces-3557-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED116B33080
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DED471B259DA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 536F5244663;
	Sun, 24 Aug 2025 14:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="SiqwsaBM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00122DCBFD
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046922; cv=none; b=JfYLQOwkRk14eh1/SRLA95sr9KCVG/MLmXh0rC8vIUrdtCQste2z+UCXN8HgC9WTzU3dIJY8FCCFnKE4bLdvw8OoM/PLLbQbT/LY3bDzuMRUgjgtpnaS7/8K7XNBqX/IdnSoYfUH70cjaAqf+0qnosUbaAg4fTsn1EWoMQ84iZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046922; c=relaxed/simple;
	bh=zqHNi5OM8+Ql9U2CWcmHl44DYaP+ShdocAlKEK1LmxM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kMiqqBpyyUd7ocmrS1ninJT3HWAnfzuR5x6MnAIpBzFteM2CixTbSnx7+usu1q6oQTmO6sl5rUSrMbu8dmAf7QUXw4cXCB/yuzP0SuTKLfv071nheTNUHu067TiMMCwhFPYwpJ4zpACh24RWBCZKrrrRLiJSTyDWPsPKQqyjNTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=SiqwsaBM; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=wBnDOVGKIhr7+ILHpysAl/dSOWxxhLzC4EhOp1J1HYQ=;
	h=Date:From:To:Cc:Subject;
	b=SiqwsaBMutOppG5rqDxGsa7iXwO36W5qGd4cP/Usr7DmOGn4FXZMJKoR+mPJBakMe
	 nkyv4bEn7omft7NN2gmAV6cziRMxWSLxbELEm2BJ0Qeqz8/PrvxVjlqOw9GTaZd494
	 UGKHzFK6flYCB821gUT9pjQ1tZdXaoatgsRoeBCeLYqyRP8UZdw3JlO0Wszy/GvaU5
	 QmxySA2k9Pl8H7gR4br1Aico0cNSwsvtCNWQ0+oRUplG17VD3jE5qp0g4CNLlOVybm
	 kju08BPRwQnm/QkXRWbKIBBdb/bFcZiHy0EjuPEc0mlXDRF5l8FOKdUkJJWva/CpKk
	 Trash8QFsVmhg==
Original-Subject: Issue in man page strcmp.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000214D1.0000000068AB2642.00138C83; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page strcmp.3
Message-ID: <aKsmQjY0MGUsDzjH@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<int strcmp(const char *>I<s1>B<, const char *>I<s2>B<);>\n"
"B<int strncmp(>size_t n;\n"
"B<            const char >I<s1>B<[>I<n>B<], const char >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

