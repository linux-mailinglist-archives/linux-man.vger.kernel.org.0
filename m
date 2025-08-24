Return-Path: <linux-man+bounces-3569-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33978B3308B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A2FC203B4E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC381DDC3F;
	Sun, 24 Aug 2025 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="VKMPXubP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7612DE719
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046928; cv=none; b=ofvLaC3Qc9xwoKjcxCnzzSf6sc/lDmLtBp85/aLcgSNlSB3BH6opgYEShbHLsVzkZR5YVBwS8+2VfZ6UrrzEvAqm0SwJr2gIG8hZxtXkI19RHI+cL8a2X7iqSleDFdw/2T/Xbzq5S0I55FXapo74+z1aZUyVssJHqQ/UHYadIPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046928; c=relaxed/simple;
	bh=4hjsg0B1bLZKTtzcy+NTtcbj5ccT832ko5nA14/L3wk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=fQx9qWDrq44S2TX5npSyCaRb0knvHOL9R9t2ykCRTVZXiGlaU1HaNaqhi8RPzutvuuyIX1x+qRnB7fzBE8RNG/u8JNRAr49XijIdowaYFDSpmm2iPG6Tpk6qqriKeDkdM+rGzC5trflPhg5SC2bdVtoMdOYS6BOKPsVHfT9UJiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=VKMPXubP; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046915;
	bh=0rX0jhUHK7IfReoSCFBp0s+ZdKj0Lotjl10HADmFvoc=;
	h=Date:From:To:Cc:Subject;
	b=VKMPXubPBuMSjzvgMBm6ubXgPWPZS7kJFAGfAQbdZ1i1Auq7b8qdv0stDQrFkdJcm
	 JefYCcSn6ELsblhVwbfeY63SQIAfEUIiCtwpZbpwF6eAkb2mGRN+Tx/NxoAG/fmsSu
	 sSWVKLgrO6cz3cLKPcRO/OluxqiB7WpG3LSsiViL/nZXkpU/dB4PGrlgkjjDtRbHAb
	 F5ZEd5ATwVtZCADpgS/4YXeJy+sU6ish9pB5pug80XoFqj7WbGXlm79jB6NRiUKOGS
	 L11QhLBQI5v/sq0pAQSFGDjaAatQ+NRexQ56cmZ/uE1f/9E/RuPAtl6HYfTeLXjToJ
	 iPUj3WT8VJ5Wg==
Original-Subject: Issue in man page ttyname.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002164C.0000000068AB2643.00138D96; Sun, 24 Aug 2025 14:48:35 +0000
Date: Sun, 24 Aug 2025 14:48:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page ttyname.3
Message-ID: <aKsmQ29LwDHW5I05@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t size → B<…size_t> I<size>

"B<char *ttyname(int >I<fd>B<);>\n"
"B<int ttyname_r(>size_t size;\n"
"B<              int >I<fd>B<, char >I<buf>B<[>I<size>B<], size_t >I<size>B<);>\n"

