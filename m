Return-Path: <linux-man+bounces-3676-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47643B330F0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B7654E1C19
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDAEC2E0415;
	Sun, 24 Aug 2025 14:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="gzw08lLe"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4323117332C
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046980; cv=none; b=b/FL0l9q4PAxmQqMHPmN+lv5YwuQ5bWMlu0OBAawy3zy1HcIGsQiT0dYEKCCgdQoEyiCrgPn6Yyix5vsZF0BPcdYUfHVx25TOHzTxzHNeFAiOLNr7Zm2F9ykM6IQKH3KdrZeV0e8/b3klb/OwpY3nk+RwhSO28vjLlkN6uvc6Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046980; c=relaxed/simple;
	bh=jA8oICv9MDodUAVD6GanLnsbbJlhtDtdlBFgaLmkppo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=KQ2awRTwpnRmmCkJRFvlJCvw9+HoUtpu8kNWPNBk3NwsC8LF+FIjtX7Au9WGHCJrlTLa+nCx1nulgtZnRoT9ojMrlGHr9DFFyB8IjZIDZVwRXut4TerrvR4ELQKzSQa7xKTg+fGjI+uR4Y6O9hNYX8+PGwfXhJ2LWQ9AewFUF4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=gzw08lLe; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046929;
	bh=BCl5KYV1DSanKrbNelRJzrKmqGrR+J5BY/doUmy4F4M=;
	h=Date:From:To:Cc:Subject;
	b=gzw08lLetWP4qLFMI+Iho85uoe8feKmt8/z3PJhRJ/EN4kkZKZXPE7BF4HVBX65hX
	 fOcywSHJmiAwxJz7MwWe7JxlCFEYKPF9stlBLcn12117uTf/KDdi33s5u8BWt/dBKv
	 LhqeJAiMsBA5C1Gc/iKYXGUX+MLlAX3puYJwcslDfDXlCsYeRMKy6jkGNkuSV8mcoh
	 M1jPLttPDW1FuMTvVl6Of+/MJ9qRTo4HM9+z/IIkbLU7nbj1VhiNMTpH9hP8J0tgDx
	 DQAv6ETMFyUuhMBifHc8PfsDpdefgFa+XRqoP14flTqsFqxrmOZp4eDp7f87qMqR5S
	 dQ4mgqg8Rh68Q==
Original-Subject: Issue in man page random.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021780.0000000068AB2651.0013980E; Sun, 24 Aug 2025 14:48:49 +0000
Date: Sun, 24 Aug 2025 14:48:49 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page random.3
Message-ID: <aKsmUbnrsgsN1D1k@meinfjell.helgefjelltest.de>
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

"B<char *initstate(>size_t n;\n"
"B<                unsigned int >I<seed>B<, char >I<state>B<[>I<n>B<], size_t >I<n>B<);>\n"
"B<char *setstate(char *>I<state>B<);>\n"

