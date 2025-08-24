Return-Path: <linux-man+bounces-3563-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D460B33087
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14A07203B00
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C69552DE6FC;
	Sun, 24 Aug 2025 14:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="NLGMcqPA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388842DE1F0
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046924; cv=none; b=ayAl5t6tscnrpMQWHZTFuKo9kMinHQga1xjNNY5JCsRsoGLm79HECAnDUkgzSbjRutctr81Xi4qEIH12C6JyH1aIgtuxB6oign++GrhG5JQnBFlHTiaqKkQcxjF+C4e0mrhzWvXbwlIuwCFsmm3MGlC3/nWhgY/5DUiNENI143g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046924; c=relaxed/simple;
	bh=iAnsmPtCDBS1ZMWwzLSFkJ3b+UvUp8S0lg6iUf11GAU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=eBMHOxxBoFhr9HjokwYvVplGaeThNVVOGlfR21ay7AWpau1vWYSYdRQ3X3YM8of+yZGDRQ7WQddz7xnQ+ezXYR0UdD/QmnMRKYDiUg+ezk3SzytRPtQWH7SZ8/81jUjO1dyuQd4bJbxyJ3+PpAOo3ry5rM6ke1UZ7CRjxo6Aggg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=NLGMcqPA; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046914;
	bh=YkAawnHP9/PiggkiABERV0qRYYBgdqOkBppNNc/in5g=;
	h=Date:From:To:Cc:Subject;
	b=NLGMcqPAJkkuf+hr7jUot6w26+VGKt5t/529yWhbDSM9vHysifOcUH8Ha8q/Ug7sP
	 1XPIWT+kR9k/EK1w14pLT+AZe1g3kiRCvJ/MSNc3OGfi0a3MAFElGpF0Ndm3T1XMdE
	 OprA4hSCq2QgJK84e2sgo/7ACLBJivLaYVnKr4g2YYLFND2kLgQLf+Epmbk8gK7IYR
	 NWt/GeY/ylYCJAofl3Qx83/QFx+3LkN/MeLfz4+t+h3UmFs/3PsNeHEJ9UP6V76YmI
	 HjEN6m9gvtfiy4rlpnuIS7IhPRwVXV1x0bOdcppLGbEqUiGq6i5xOrCednrygX8ID5
	 mRZgRs44cLhDQ==
Original-Subject: Issue in man page strxfrm.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020405.0000000068AB2642.00138D00; Sun, 24 Aug 2025 14:48:34 +0000
Date: Sun, 24 Aug 2025 14:48:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page strxfrm.3
Message-ID: <aKsmQsKFTnQsBZ5C@meinfjell.helgefjelltest.de>
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

"B<size_t strxfrm(>size_t n;\n"
"B<               char >I<dest>B<[restrict >I<n>B<], const char >I<src>B<[restrict >I<n>B<],>\n"
"B<               size_t >I<n>B<);>\n"

