Return-Path: <linux-man+bounces-3665-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC60B330EA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A71C203F69
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B0C14EC46;
	Sun, 24 Aug 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ZkeFOF7X"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6412DAFDF
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046975; cv=none; b=W1PzXUhJfH+rIjR7mHJvujRK5E39fGJTbL9CmCyB1pq0dAHfYz3KUh6SIFqy3spy0PDe0uXSHnS0QyDSg3m8e6x3k6PV8Vgxb3gDmm1KCk4fFYuE4lPBPjyZ9zCZx2yvASihqFZKBekrCPFBg0NQ/g6CAnupkVlCIUFBthrLrSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046975; c=relaxed/simple;
	bh=vJk1JflYr/Wo0RFIzJFKpRYZP0yFDCgZCshdO0iF0+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ba4g6bhzhlR0bFnr7sO6/h3DgR1DhR8hR4UxrNh65lZ1I9dhSWYSB1STP3RV4s1Z/gLQW3rxdg5LfZkh/G4kpcgHIoyEE7DR6QdWOvUkewDJsE7OUITrYYc/upSOMyer463W1UtsMRQlRShSr/o6kpz2jlZrdikMcesqiXR8oqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ZkeFOF7X; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=aloPao3h+BznqmNyosoFE1Id+jEKkH2z7rtajpX23W0=;
	h=Date:From:To:Cc:Subject;
	b=ZkeFOF7Xvdzv6SXqI2jDT6jpX/aJVYVtwaIMrEC1wf0nGZva/O41ITuySgBzZalCN
	 USxTEZUOZzdrSqhTP1iykww8PSbXANobgVJHnThU/AsO64s0tQJn7p+BinpSn0wMPl
	 pJydYNkl8ryU4XfmDPwCmP+CEiabXxIeaDCEZ++vsNk8Hz4S727nivhMIXs/z9caLo
	 sVOgMfuBDV5xBtQ+NS3jNyrvOxoSCuGDq+peJIyVrgd64YPMXvZ/GKkkmItq0OQIZS
	 eUtLt/s9OB/PTJe7YAMoi8a0tWXejfZhqT46UNtOZ8kpnyAwbqGEcLI9PW5MwZGM/S
	 t2aku5MqZtWBQ==
Original-Subject: Issue in man page PR_SET_ENDIAN.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002176E.0000000068AB264F.001396FB; Sun, 24 Aug 2025 14:48:47 +0000
Date: Sun, 24 Aug 2025 14:48:47 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_SET_ENDIAN.2const
Message-ID: <aKsmT6IiSrOWMo26@meinfjell.helgefjelltest.de>
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

Issue:    endian-ness → endianness

"Set the endian-ness of the calling process to the value given in "
"I<endianness>, which should be one of the following: B<PR_ENDIAN_BIG>, "
"B<PR_ENDIAN_LITTLE>, or B<PR_ENDIAN_PPC_LITTLE> (PowerPC pseudo little "
"endian)."

