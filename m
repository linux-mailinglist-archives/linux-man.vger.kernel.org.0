Return-Path: <linux-man+bounces-3661-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13845B330E7
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B92E67AD444
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299922E0419;
	Sun, 24 Aug 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="tjx5YhOD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976202E0415
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046972; cv=none; b=HvuqFD/Y7nGacQZqaLxFMX2VDXHC6KUyQLPfje/N/H6qt1c/+FadAjgh7GFTY7X+3pI2/DL+cIzJovz+tVFzBlAPCaf3xo9PAVu5rpz1Bm5swrOAta+VAS5Q88zXHXl4DgMO8wbK5s4cMAp0tvq4D1JForqAO4ypK0KkE1gEDXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046972; c=relaxed/simple;
	bh=AOXLYw92ymo7RJkDs6SyTn2qyggN7PpAR8upttJo/Hc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=R81bYr4zIhHK+7Hy1CqD4MapxLyOZlXdlaHN2DR5HU+KYUpo/RHF193q58KPC8fB1SphKdGo+dKfjRsNHK9Bp+3sZm31Phos0MAJ6kE6Zyj5t0M6JRBJ2/lO/cUNcLf91lD1qPG8V2Rlk7ZYyTDPH+swGqAsIpBvNRmwJcbCTaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=tjx5YhOD; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=qeeRu8hzHL8UHANj7sNITSG7as6Y08Q83OapfCHT834=;
	h=Date:From:To:Cc:Subject;
	b=tjx5YhODcFTuMpqKGB29ah0rfss2xwtX6fotQ5SNekIrUONl0feuWrVlBfzUIFqBz
	 j4O6HfZ0H0FlyHlVEHvcYLat2nUmdzO04hzrXVB5p7nQSI7CWi6TcGgjoxLKU++r8f
	 S/FSZezgU+gAYeN13/SI57Bhq4J2cWi0/Ilh+ACZoi5h8lS64OhYts+w0DclDq/TRt
	 HQPzV+bMqnd6EDrtmyVcqX7oS6UGqiy5ZGpCQtWi3KF1rfeWz7ykVBoqwD0exSgp/8
	 1T4Umme89+oTWnN2BdnK+q4GUjKKxKi3svdNbgl3NLCSX8DokvYr9SIRi29z11PqOh
	 Z/p8MQex9WEkg==
Original-Subject: Issue in man page printf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021765.0000000068AB264F.00139696; Sun, 24 Aug 2025 14:48:47 +0000
Date: Sun, 24 Aug 2025 14:48:47 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page printf.3
Message-ID: <aKsmT_h08Obx12Bc@meinfjell.helgefjelltest.de>
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

Issue:    B<int snprintf(>size_t size → B<int snprintf(size_t> I<size>

"B<int printf(const char *restrict >I<format>B<, ...);>\n"
"B<int fprintf(FILE *restrict >I<stream>B<,>\n"
"B<            const char *restrict >I<format>B<, ...);>\n"
"B<int dprintf(int >I<fd>B<,>\n"
"B<            const char *restrict >I<format>B<, ...);>\n"
"B<int sprintf(char *restrict >I<str>B<,>\n"
"B<            const char *restrict >I<format>B<, ...);>\n"
"B<int snprintf(>size_t size;\n"
"B<            char >I<str>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<            const char *restrict >I<format>B<, ...);>\n"

