Return-Path: <linux-man+bounces-1932-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AE99D02F5
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B8832837E5
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AC2215B980;
	Sun, 17 Nov 2024 10:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="X463Mmap"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C99C7E0FF
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840396; cv=none; b=uvslIXSN3e13gjrQvG9Vr6cgRWFPMZj33jLxs+eewMoJmA6oWeEac5AazWGwBwYtih1CE8tYYd5qLBGfhtO/uj347K7t43boYVrhJlOMCeOmhxJxbxbvw2SkTbbCFMst5wnBlS9624karCETP8pdSqWl8ChEgNP7kpMYHYrwenM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840396; c=relaxed/simple;
	bh=OW6HoNChpqSteHT+t6ZKOoVYtS4W5SW3cTodkXGo1QE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=izqaEzYeGTdfKbhwtyWKeaAwbvmPqWZKBlLP48dXfW8iw/Gu+zST5HSybrKpehB9VxUNtKjpXm3LG9lbf3aQQeuMlf3gG8nKIolhA/Y8+abuqAqK1si+gij0HCQ6YBhzd7QA/suszeDJ2JRRb8ZZ1jNCaM5AO/i+lTiNEyYZPdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=X463Mmap; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840385;
	bh=NZnMCVEzyCkZ0tEexG6BEqHv5IjpvOgKtfceoWuAEYU=;
	h=Date:From:To:Cc:Subject;
	b=X463MmapgS/fiCfwVy/9KEnwfatNWyIilqH0s5Eb5QvbSpehqCqxUfFZTAKbdBrIw
	 UE46sA+CI1xrpQ3J0c/76pa2I7a5fqxKErDahfiTTwEtkYaFrzpAcWtMCl37LaYAx7
	 6zdtEhoEfvJqb0CJWslFvG3J5x2ku2Yi3OKI8mGnuDwzm396x+uKXyc+WCswO3wC72
	 LapqDZOzKHIcOHTbAlrsRr6Adlc5sACtw6xZHy8LxzE2gc3Pwjht3OT1PjIvoP2is6
	 /8sYu1w8bhGZRaRhoogI2l+D1c8lHfm8pyeN9MnrfmD7Dx6+Jv0u1rqDHwSlm3i4Gc
	 stgdG5+VCRFlw==
Original-Subject: Issue in man page wcwidth.3.po
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021696.000000006739C981.003FC5BF; Sun, 17 Nov 2024 10:46:25 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcwidth.3.po
Message-ID: <ZznJgXYxEuH_n3lI@meinfjell.helgefjelltest.de>
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

Issue:    Variable c → wc (in the entire man page)

"B<int wcwidth(wchar_t >I<c>B<);>\n"

