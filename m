Return-Path: <linux-man+bounces-3597-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7346B330A7
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3D15203C7E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE35B2DECDF;
	Sun, 24 Aug 2025 14:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="TlDkF4r8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549321DDC1E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046941; cv=none; b=nLz+yshikyRChQDyAJT8Yk+gi1v63VXP3EgQo3PHOPixdxOByuTzX9rRx7GygvRSxdIWcVhxMeQBnhEFkzvR5N3xNNYR0NsR6Rf8h2IVYteWvji18oG5ojqY2JTrntLPC8Q0Z5r10zYJb24+o0SlzyK9zMT7aqSjRXKkEbrAXFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046941; c=relaxed/simple;
	bh=Rhk24mEoBcv9WYx8kAQsI9Y1DzX5GEv3ZjDpg0UQCyc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=sz+fx/o5I54nyavkS2rpjAbOF1Iig13HRiWZPTv79JkeW+OUtHv7QBcA9+cjfXhhuGgeXAsk1dtPBKnuqCJ5qBkOLOKmzVCcr4fAiINP8sjQusFwLzKpSM8GjOfYHanO4prKfYcn3ry0nXHJR+LtVtZhtslAzUlZSGV2EQjt600=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=TlDkF4r8; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046919;
	bh=ZUb0/GerCF4fcqjjGVgqrgc0VbP9lPYGz+L06iicVvs=;
	h=Date:From:To:Cc:Subject;
	b=TlDkF4r8ciJj6V2Eo3c/DfsEK6lbyPQyf9x8lZQAKbJQ9ssph6AIeyMUUUUq8jeTu
	 22A7p2ufkJE/+yC19+pbBBk3qM44XI7U54rMm9hjWN1CDDzBneOMqu5w6yGcUAiRdv
	 KX+oJorWp4PhVVFmIp8f25K3boeAR/X20RTZ85kB2jZM/EDpKGiVWuF0GOx1uzN3fx
	 jSBjnBxvXdAKi/fQbv2p4QAF5FSYxURErUsfX1kr9+eBv/9KCHvxyYtxlvBsqnhq42
	 vWPUTM0UtAMhKiMDAETq13RijKAU0ik8dmBoOwI7NOdZBZcuGdWSVzhnYTM9ZbZlVJ
	 p1q7Ks7KeR96A==
Original-Subject: Issue in man page fgetws.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216E2.0000000068AB2647.00139054; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fgetws.3
Message-ID: <aKsmR7cA-H6cNiLO@meinfjell.helgefjelltest.de>
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

Issue:    B<…>int n → B<…int> I<n>

"B<wchar_t *fgetws(>int n;\n"
"B<         wchar_t >I<ws>B<[restrict >I<n>B<], int >I<n>B<, FILE *restrict >I<stream>B<);>\n"

