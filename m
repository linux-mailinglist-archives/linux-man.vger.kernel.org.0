Return-Path: <linux-man+bounces-3549-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE06B33078
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CF3A203B95
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F7662DC32B;
	Sun, 24 Aug 2025 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="o+SWfsVy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C704917332C
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046918; cv=none; b=IGdUci4u5OD2A4BCVe7ItNZ5krvHgDTZWgJ9dQlH4soLV5LymcOM6kwJslmTNXtny3cwB7UJOo56aaLure4y3XLQFQARfcWN75Hlhje6dZfy79y7MbnypFwB8FIi90CC+xacXQhnF7oyjtPlDWtyD8+V9DpMmEmS28dyNWAIg6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046918; c=relaxed/simple;
	bh=bH8x6pKMdTWtqiRveY6/blvxCNcTThkjXmGnz++L2dk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=TjAprdt0zqSbazs+Rz3NtkEMPItWTDwCU/PW4ztByMqVbwpMVuwpQiWYyWzPwEAyiopEgd6o18MzlwAEFeo5SusBC87mnsiNHLoWwh9urk6ShtG/foDE3RhcwKoXP8SN+C6GhEQtGvaiMmc/GxSWk5zzMO0cyaUJk7Hi3e+rKxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=o+SWfsVy; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046913;
	bh=B96dYkIYGbCZ8oEBOiEuZCUZehv1cQbAHal5CU6nXc4=;
	h=Date:From:To:Cc:Subject;
	b=o+SWfsVy7kGyu98XG4nQ7HrXe0Ey/osfH+ly77EyjhVRLzaWMX1e9U5jCFt/hy9VN
	 eojNuNr2Jo31fMSnWXJn+VYNAmoAZdoyEcM2awCFxF0eimee4l+RrQHe01v2jkLuow
	 Q8uZ2UauSSevmOVFLXMlRNoF65wK1hGbW+nJRP8e6x4HHqVcL5X3T4qL/Ru8EfT6kh
	 zJDGxWOhUl3p9IrNGqetjdItbPd0K6nlpgas8mG2+FPt9hcEMbau/kk2EEJClQ4FmM
	 pYdOyWREaV02NmDE6afgcEI0N2HmXDD8NPAQMmBjnt22DfaPS1JF8TWwfzkwxyzIco
	 GszbaQrnxK6IQ==
Original-Subject: Issue in man page sched_rr_get_interval.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020B51.0000000068AB2641.00138BAF; Sun, 24 Aug 2025 14:48:33 +0000
Date: Sun, 24 Aug 2025 14:48:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page sched_rr_get_interval.2
Message-ID: <aKsmQXsWjhZYpQCT@meinfjell.helgefjelltest.de>
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

Issue:    pid. → I<pid>.

"Invalid pid."

