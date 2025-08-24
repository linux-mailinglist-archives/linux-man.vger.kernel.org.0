Return-Path: <linux-man+bounces-3634-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F4BB330D1
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7C8E7AC85C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E95982DCBFD;
	Sun, 24 Aug 2025 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="dYsDC9Jq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FFA2DF715
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046959; cv=none; b=RX5TVTNDPhLIE12Aq+Mm2vI6abxf+3O1tNnWSRZTEGTUXebKk7UEjazXRFlLOqdIGRWSSypsEGlmLwcp4Hv+Mbetg5iCzbwjNhxDuG3ldrUImygQia+SlV/+2LmuHOoB/+paRcRZ9JYuI/wHf8BH+CcqESlv/nIi1MaXOv92gNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046959; c=relaxed/simple;
	bh=VhEmjHY5c0XUFoUYy2Na9MFnyxoPgZ5OzSpH4O2Lq/4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IM7H6z28xM7QCXc8zFbYdSDz9XXWteT0JoRnpU08qWUSxZUtl1Gvbs9T6rq2/dIcgeA/yL2UV1ERJxqVqIGhkOkODLRZy+RmzR6fuH5HP1/Ze29CHb2nJH/cfRsO6HiYPEVoZ23QF5MqBqI1fq3imRf7okO51djR2P7EFr5Qmvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=dYsDC9Jq; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=O8lAEORvyEabmSqvTpBx/hZYJfLcnrEcvMoE6q1XCo4=;
	h=Date:From:To:Cc:Subject;
	b=dYsDC9JqfoHwc+WFZT47Yv8p5BPatdVTRTfFXiWzD4tVfHFfLvGm3bi3dLHhV9NBU
	 49NfMsJ9J8smHGCFYi/Eb111lGd3Qrt3hv8+ROkxCM2Em+iGGfFENiJsPca+3K4cYV
	 3m9W69p9C5sbFzVTWOH2geAfrdaSTAQgpI82KYfC2UHng9hxyGRjoyPLk3d+fc7Wll
	 YeK8hTr8nrm9NEewZWIscgjOJPO6UaE2ZYNmrv5YYdaHG5xN3T3y6gudUzbEGxIy43
	 zeDbx729MDOgXmQbn5hY8GJhgUWGw+6BFA6nYJodTJbf/nF/BYlpgxXNj+SMTHmnQL
	 kXa37WapyLeLg==
Original-Subject: Issue in man page mbrlen.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021736.0000000068AB264B.001393F3; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mbrlen.3
Message-ID: <aKsmS-0vu1jAx1M7@meinfjell.helgefjelltest.de>
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

msgid ""
"B<int mbtowc(>size_t n;\n"
"B<           wchar_t *restrict >I<pwc>B<, const char >I<s>B<[restrict >I<n>B<], size_t >I<n>B<);>\n"

