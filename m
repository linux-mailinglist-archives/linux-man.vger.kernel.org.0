Return-Path: <linux-man+bounces-3649-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 099DFB330DE
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E1D318893BC
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B2C2E03F8;
	Sun, 24 Aug 2025 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="i2h/znWl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C332E03E1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046967; cv=none; b=QgqHpKpVLle3ByKWtUcJgq4vMrM8OJUtdQnskVv+LVbgaMK9PFmEFA2tP/7/1tQZjA3lnYVKNH3JwTnk4K1nV5q4JtVWEUkZ8ZgeH1MrAWlhGENMCgVL4A8kUY4qNqd8MpO1lyt/po8PVpmMoGsvHolcPkOqqiQwwLwEbDFmtNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046967; c=relaxed/simple;
	bh=kUbrgylETIYgMz515r3mmtYlAQ8qgJEtKg/YS6sw5as=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=OcOvzCv7axkm5C9VpF6ibh5+u3ZJFYHl7CeYLCOIdO0LBgPl8V0kr+R5XOIJ4KLitGwgisvhIBuFGG3aYwd99vq+moFMQI0A6V8avhy6IZya2IX69U3OamWdPa0syu3dJpxb5kNeKjTDh4/Gky+12Em47Ph6GNs+b6UofTdwT1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=i2h/znWl; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046925;
	bh=65PgBllAXf8/itHzovK9TfRju5qwFRZz/nJuCsomg/0=;
	h=Date:From:To:Cc:Subject;
	b=i2h/znWlO/x2MNVsEr/0sKKCoTSvj2oDRQMwct/8A2fZhz019GLjJY9rO/dTgh0XX
	 Gkhy72RX3P/ynXw5jIS60C0J0I20vTGNN88PWf6Sqax2/Qz/HA2ATWK4bkIbaxhid3
	 mQlFHoXtnZ83+OGZUt61twuLhE+Q8zhry2yS/aITMxj+gQzZI2tbdL9D6XmVIxVoos
	 v/6TbHbQYWNEISRgDxGaKtyHHwaeJiLv6aUr7naJlDZ8bhs8F0WoofzVzdtBWtQn2J
	 FV2usBX7yqcWTYDzIfgdqbhEj7bvp3E7IOCMMnS22tsWh3ffC0/fOplX08T1zDSiQ1
	 OqvaQjAohS7RA==
Original-Subject: Issue in man page mremap.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021752.0000000068AB264D.0013956A; Sun, 24 Aug 2025 14:48:45 +0000
Date: Sun, 24 Aug 2025 14:48:45 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mremap.2
Message-ID: <aKsmTUFjDHvaTXJ3@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t old_size → B<…size_t> I<old_size>

"B<void *mremap(>size_t old_size;\n"
"B<             void >I<old_address>B<[>I<old_size>B<], size_t >I<old_size>B<,>\n"
"B<             size_t >I<new_size>B<, int >I<flags>B<, ... /* void *>I<new_address>B< */);>\n"

