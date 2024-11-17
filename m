Return-Path: <linux-man+bounces-1934-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEAB9D02F9
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24B80283EAE
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4065E83A17;
	Sun, 17 Nov 2024 10:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="I07EObFc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41E614A617
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840398; cv=none; b=QHeAT0vcHN2OwAVOvLn8kae2zk6ialigdiB3COfeTpoJV23efZnBPfYhS+j/6OIuc+XAENnZkhgp0h2d+tsUCZr1SkoW4ppCu8VUaujRHYRD2ydGcDDs7Lxs1Ya8JSvyHm0XlQSJn2weDHdR89MfboieQUsUotY3wZBS6UBnF8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840398; c=relaxed/simple;
	bh=1RqMaKb0ZZcnrRN2JJ5k1LlklvwFwTUkDxquCz2wxHE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bHXthhe17Zeq/g7FUiSCoEXULf/FyKfmfcBuRafDyYLqd2N4p4wWNHLvO5+ST3Wm8+ZMUj5g6aeSUwwy5tGjXpGg1BTK++xRdjAbSH3p63zU0zt2+1Nt09irlFUjrcMlFTYM+9Jdo2y/dIhDO4YBNn3S3XsRk28p7dhyNcEa+Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=I07EObFc; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840385;
	bh=D/gkDSX3ZsvEu05wLTXtQLHuiUjW7w0zpalfzxak1bg=;
	h=Date:From:To:Cc:Subject;
	b=I07EObFcDLNKghpLuNDvYKwgy7oQbMtkW7d/oH29AROeDZsIphE85Z6IBNMplFTJU
	 BuDhjb8Eep6sYU3oIqyxXTAAVfFS8yWXu5OpZgxso0650ROqQYTV2mwlKnwxhpPNeN
	 FfVNfDyGOPgg50lWyuXt12I+LlKePxwlx4c07d9pkaZMGnR0xNxqb0yglIZ+xve5i3
	 guPFle04WIZOOvvxQgfvtQRv7VLfgdQSoXSyV4s6C/NvF9IFI3QBSB2F1aTF9r1v2q
	 hkuwM5A42VCu0dD7yLYxAh/L4CnvnMT1hqT5oMpdStO6RIcxWAHoVgn/uyjQ7ZQOn+
	 ++z5Rgx7YVteQ==
Original-Subject: Issue in man page fmod.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216A4.000000006739C981.003FC5F1; Sun, 17 Nov 2024 10:46:25 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fmod.3
Message-ID: <ZznJgTA9xeSYKNwA@meinfjell.helgefjelltest.de>
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

Issue:    fmod → B<fmod>

"To obtain the modulus, more specifically, the Least Positive Residue, you "
"will need to adjust the result from fmod like so:"

