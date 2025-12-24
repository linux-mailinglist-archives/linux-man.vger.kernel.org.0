Return-Path: <linux-man+bounces-4482-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DBACDC88F
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1C13303BE2E
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25553587D8;
	Wed, 24 Dec 2025 14:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="jOpz69e5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32F93587CA
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587104; cv=none; b=rg5QMsmJBC/yK+VJZ5rGe2Hn2DTEUjCwpqoQurXRJVfuzGZnXwaH15qsl8AG3Ax3kildgZtv6pSz+ilph9vZpG/59xfVfoAMY4ba/IfPJOihPkk5clXz5+5/jJLwPde9bxcJYDlqu3ADwlRXGOe3Ug71CBMakOyh6S//bKowWkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587104; c=relaxed/simple;
	bh=5pJenPT+o/Vfe7FAbjBFVRBg3Xq5gB80URl4BQe//V4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=j3npbsVe971/BkRQT0N0dgShdHFpvfASJGUX3GBH5jW+dS3k191NugZFvwGrvzuksyavxkcY84IseuaVYbZ8CWELM4TE2n6za4b6Qkcv6Xa6JoBTyE9NYd73rXNmHR37SrahUoZDe01y21Y4euJM5WRnG6evuOatJUPBVxYKSaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=jOpz69e5; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587101;
	bh=Gia/uz+O4naDC0eCy8M7ytbhMYw7z++58Le7HgMuT14=;
	h=Date:From:To:Cc:Subject;
	b=jOpz69e5JV+seGAiEsrodGzJp+3RW1san2TMNuE9T/8QHDwDcOc4n6ikMonx2dcKt
	 lTAiU34QKKG697277h9b8E5WAuQsVJfCLlG+ZH+MJcsSS9uQZ1YI+Ohf86KpXjx0GY
	 hgsujSPECpjCmMqXQIz/vN9681XmhlEdiN7lbEScPgCdzzLMKl7D7T/TAZJoIQ/+c9
	 MWq9Nq36uh0o0yF5BnflipQxOtVHIYaRID6K3E7wSpyKKM+EdquJDxUmSc7TJWDOga
	 ovKLFPjTQSeycI2kqLZWTjMkj85bCo4vagRA0HoYqaD4GQrT8rQ4lDltCJW1Cia6hm
	 O3G7KnZpBGNkA==
Original-Subject: Issue in man page isalpha.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000202F2.00000000694BFADD.003196B0; Wed, 24 Dec 2025 14:38:21 +0000
Date: Wed, 24 Dec 2025 14:38:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page isalpha.3
Message-ID: <aUv63X1xB-YsQmmo@meinfjell.helgefjelltest.de>
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

