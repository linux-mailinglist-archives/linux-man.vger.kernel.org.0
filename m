Return-Path: <linux-man+bounces-3605-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 38474B330B0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FC6E203C7E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DBA1F92E;
	Sun, 24 Aug 2025 14:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="fqUoapkv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEA92DEA99
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046945; cv=none; b=UjXFr1TqaiHzkoP4tqMCianE+/0X90thHZVX0Jw1WCZsTiq0jQinDsM/6PVPeOwA60xFX1ZJBUm12k+J/sNcaYa1Jxi/F04EOOkvWjiZ2lyM+ZNtG3TbqVAM0j0zucE9YNvufSoky4cUlK9WyQi2F6PnP+AzMb4slgDTty+44Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046945; c=relaxed/simple;
	bh=RBS4VFJH3LNhpZenO70O8QusbAWtcOmkfJZRFkApnZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=j8Bm95k4aeoPYo7FJc3QjnT9gzZFu07qTr4WVw/GCou8UEmqpr5CD9UfB0Cj6CbmYzm4j3KAZO5JrSaXHY6kte/81MnbDlumSgb2j7tJCbS/GfpLalRlrkOp5/h1OwzLcGlR4V6vu1cePYFaDIqA9IHVCtZ8o89AIHIx8UVQ2lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=fqUoapkv; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=vP49KfTL43Q/67fzLWXBaOnJ2M/lT6bE7FWKVd8+eao=;
	h=Date:From:To:Cc:Subject;
	b=fqUoapkv9380NEbdHtx/bg0thjzIOSkYcZu+NOF10aZ/C9endla29UsH0lg1BLTV2
	 1PhwbmJPPiEGrUD794hl2k4hZjyOZWyy+aG1PVVBL/yzdM8ZEWI+qYWJgQ1guQGlWN
	 ++YuCM9+Gi9g9efwpMl5m+OkztGwkRYBE7ACZOTH86IpYxGH6EKOT9V9/7JVm46Yef
	 93qbNiyo3WOLkcD6rJkCmhzjusbdYJqo261ey97lg0iPHxRCkbS7avkV07Y9bTGFzW
	 pB+ciChARBkQyRAfvD/8Br0KnmYw8O4OSc7BrOx8QDrsWV48OBP0f5Q8M40h9QjvOD
	 Wa7AYwC6AdAjQ==
Original-Subject: Issue in man page getdomainname.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021700.0000000068AB2648.0013911C; Sun, 24 Aug 2025 14:48:40 +0000
Date: Sun, 24 Aug 2025 14:48:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getdomainname.2
Message-ID: <aKsmSD0OqkD-5wMA@meinfjell.helgefjelltest.de>
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

Issue:    B<int getdomainname(>size_t size → B<int getdomainname(size_t> I<size>    (2x)

"B<int getdomainname(>size_t size;\n"
"B<                  char >I<name>B<[>I<size>B<], size_t >I<size>B<);>\n"
"B<int setdomainname(>size_t size;\n"
"B<                  const char >I<name>B<[>I<size>B<], size_t >I<size>B<);>\n"

