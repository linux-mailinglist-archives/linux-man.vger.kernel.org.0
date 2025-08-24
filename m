Return-Path: <linux-man+bounces-3650-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 908D0B330DF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54B4C203E2E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5BF12E0406;
	Sun, 24 Aug 2025 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="fNL353Cw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36089244663
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046967; cv=none; b=Z+ajrJEkx+r7jZE+0gYt6WNSOXDajeAceIRYK9wergWzj4f1F+sPlNGEV9mEk3f1hLKAkieCRfnw4YYjKP6e2vqIDJBykEzydfVjm0F7py9I0MZ6lAZ+q/+Fq86Hqz0Swb1LNhSaax4j+GrtDy5i9kOVYXBIarGt14pGXuwI6Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046967; c=relaxed/simple;
	bh=f7yR7WIn+Ulk3uWlyd8GmUg7+FiuPVnyUtsxR5PLf74=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=KfoTMHeJ0F70rWgAiP+0+oIAT5BWxsNS4wZVDdVQgz1ycV8JQgPedA8hZWiEkdy1YIKTiTocia9yo5ojcmIYUEYY8PCpUViq3sw1Pgl88puyhDX+Du2FvUvKgdG5Y7J+TwKuuy1nlwWd9nb90H8d6fHqj0lLrNDnOfenUvbAZL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=fNL353Cw; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046926;
	bh=WO2M5YboqxBqVmGSOx8aktn9BL0Gn0Cdu9Z1tvdqC5U=;
	h=Date:From:To:Cc:Subject;
	b=fNL353CwP2NH4J2zncFo3GGzSgVtwnzqXnTnGI4su01BK9/wWHDLaLn+J5jkSXVSY
	 6b8ADfLl3WtXAGD1W/hA8/2CnrkfzzCZsF5BaRKDfEViuuOHGdcnhgngWo9q/GC7aO
	 v4Wdb5+WAA/VoT5IhB++TeRS86sUPpxy6Yx3SCiyzGZFki4Pdd+MrQpjbgnqw//y1R
	 NT67AYReBt1lR0WAT7am94Knw3EOEsNZd25cyGq3Vwes899wnfoujuF/PRI/GWM8bH
	 roZ1KF+vnEwjgHfezd4KX4g3ukUkPYuxcyYXmUxpfUgtC5UHDVMf2Xv5p6O2IK0I07
	 1Fl9bHchfULwA==
Original-Subject: Issue in man page msync.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021755.0000000068AB264E.00139583; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:45 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page msync.2
Message-ID: <aKsmTWiuL2FhkHlO@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t length → B<…size_t> I<length>

"B<int msync(>size_t length;\n"
"B<          void >I<addr>B<[>I<length>B<], size_t >I<length>B<, int >I<flags>B<);>\n"

