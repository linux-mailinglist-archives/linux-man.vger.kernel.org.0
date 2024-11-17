Return-Path: <linux-man+bounces-1954-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEE49D0312
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9EFDB23D9F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A29DC14A4D4;
	Sun, 17 Nov 2024 10:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="DRi/nzlS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2331E15B0F2
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840698; cv=none; b=Nh5faLL16jDD2siM25S1M+OKrlgLAPsiOfIjY0OlxmE1rGHTlmMnABVmNZxgZc+tRNUJehX2r4lE5S5BITedxc8Pnj0Y5OL4MuSFIniBza5k9Qv2VknDA8nZKu4VJO10j/2QIv9QH9xTzfWZ0oCEt8ew1egq6e401SoANcP05Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840698; c=relaxed/simple;
	bh=rcS3sz6FxB4HBR9jSyd37Fj+LIZfEM9Ci/2pssxDq9g=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=OO4JgbFdNGbHc5iaGT64fwkVw5XeBAc90p8U8bhRXB2WpaAE43UL2ajryZnhhCG1x2/9E2IZKYmBRk49Ro6Q7sESfHPzByQ0dejbbsxbt+Bv+nFtXBcfK6WiN2N53Bmp44Y0rOnxdVvta61GfnNFwb5cD81HptV0a4pR+bO7hgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=DRi/nzlS; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840382;
	bh=ZI5lSdD6ZXWWTKrU8e8qnI37C/3vrazWmRae/rDeZwc=;
	h=Date:From:To:Cc:Subject;
	b=DRi/nzlS7u+X/5eE3X8YulvrRYnjTs2JXjpVR3N6dMCD5rL7cjamREEGwW7B26xsX
	 fwUBvcGk+FsLTivQlw+kFKcnexTog6E6TFxM6EhoR9Dky1tMe/i4w7dDBRRYU29LHj
	 npR6/T0H6gegbMcni+WnY5uDaqrhrjQ7kqihUVDojHzL+OfovawlP2984Cf8qyceha
	 wssNYMcdjzFPgbMKnwApJI/sGw2/XNcK12lpZabm6vZ71lyc4XK3QUt6rf06mwvE4g
	 arWEQ0JRoKFqEeLgnsScCmPTdHWVBa7NW5zD9iIYmUDJ608m6UMjyG0FZMB2vMAAcp
	 OiljptEhp0XKA==
Original-Subject: Issue in man page proc_pid_fd.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000203EC.000000006739C97E.003FC34B; Sun, 17 Nov 2024 10:46:22 +0000
Date: Sun, 17 Nov 2024 10:46:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page proc_pid_fd.5
Message-ID: <ZznJfkqbDXJWpVXm@meinfjell.helgefjelltest.de>
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

Issue:    When executing this commands, sudo prompts me for my password

"$B< echo test | sudo -u nobody cat>\n"
"test\n"
"$B< echo test | sudo -u nobody cat /proc/self/fd/0>\n"
"cat: /proc/self/fd/0: Permission denied\n"

