Return-Path: <linux-man+bounces-3625-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A59CB330C4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61EEE203DE6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F39A2DF6FA;
	Sun, 24 Aug 2025 14:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="LAcZa4Bo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171572DECB1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046955; cv=none; b=pa58+6gEXs1HoEiN2B1NTVSykuT1j0hjEfnTIIXgIA86d0Xe5oi0Y82XMcDUtxBe8TUm0WwVottubaIymXeoV56QPKKYrljuSibuVvTJnWZkF+M1q0F2y4g+bv+PdN+DsD5del5KUyrcBKFl6OUfJ0IN09O0uUDRhkZU1Ngbj/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046955; c=relaxed/simple;
	bh=5pJenPT+o/Vfe7FAbjBFVRBg3Xq5gB80URl4BQe//V4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=CvtzEukyYxM27AF8wb9t/vtUOofnvyAydnhEj2rDq/sdP9tf4cRoqITHXB6IlLBam+q/EUCcW24q1+4I5xuMV4eBdWn4ROdyFhjU73Q1C90EmxteqON5aLDZzO7h8CpapUQwFUmBj09ghxhKy6idqPTUTAIcmfixfRZQWh3Fk6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=LAcZa4Bo; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046922;
	bh=Gia/uz+O4naDC0eCy8M7ytbhMYw7z++58Le7HgMuT14=;
	h=Date:From:To:Cc:Subject;
	b=LAcZa4Bo2SJeytbVLdmlBMGE6NNgKWT3+kgZgULztXcKCEmU1vlI7TTL8qAjEPWHK
	 VWMXKqyTLsCb/fy5kSOJzjEEuJxc05WccYoCox4oVpOPkYg3RMNPtXq+duYPUqLCwl
	 +P+WC9wXteUoj6p/Mg3HrKTUwYJfzTAHn8TyxaUj2303NYdeKHrz9cqEFBS5aP7mjE
	 fzHvpEaOcTHUZNpCDh9wNFI1GyPj2R1Ob05uv2ucTnKn0pyJyQPcjOs1FDkjrTXgJj
	 10+TozRW26ED5qDDa761TFF3fsMVqNl6kjiGouXnq1vAOVU/BegHAjs0+oRx/62tTM
	 gcLJB8UgIafEw==
Original-Subject: Issue in man page isalpha.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000214D3.0000000068AB264A.00139311; Sun, 24 Aug 2025 14:48:42 +0000
Date: Sun, 24 Aug 2025 14:48:42 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page isalpha.3
Message-ID: <aKsmSnlh73aREJN2@meinfjell.helgefjelltest.de>
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

Issue:    I<(isupper(c)\\ ||\\ islower(c))> → B<(isupper(>I<c>B<) || islower(>I<c>B<))>

"checks for an alphabetic character; in the standard B<\\[dq]C\\[dq]> locale, "
"it is equivalent to I<(isupper(c)\\ ||\\ islower(c))>.  In some locales, "
"there may be additional characters for which B<isalpha>()  is true\\"
"[em]letters which are neither uppercase nor lowercase."

