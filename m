Return-Path: <linux-man+bounces-1288-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B1891BB6D
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 11:26:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 995441F236EE
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 09:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1211527A7;
	Fri, 28 Jun 2024 09:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="rb7Q1KID";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="aIIBQg+8"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713F715253D
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 09:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=85.215.255.24
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719566772; cv=pass; b=G6znbBCRUexy/miZV7WrulWU82YREv/wDK2SmsMb23VVTGdLWYwfC1Csb+U5pCWhaRl9RjA5VOtxi0eNQFQrfylKrbiH9GzMdX1aMqXvumbuE1YfEqddLjaUgThjGGIqggDTPrlxBHLAg2JPpLQjx60ljltGpKsXddNAzO1BERY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719566772; c=relaxed/simple;
	bh=ComP/0jKjvUFlAEcTijASJNST3vkf4/gDDh9xKvhoYA=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=pHVZ8ZXbAB+s7w2ReNjc+jx/zLh7nIE4eZuMhdzWjopl4scdlLlm732awxJM0jECnNbOwp8vpmswkeZFIvEeLuuwxFMYcYmCTjHVP/6WXxkDRoTnVhh6Klhw0wYLQB99HYa5N7gCH4mwCDgyaqXPMmV85ID+etjwtZ65x+MQsmg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=rb7Q1KID; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=aIIBQg+8; arc=pass smtp.client-ip=85.215.255.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1719565681; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=PtWGBm7q1luUzWSQfPxlL8RmSWCx3182KOdg8Nyta1V45cRlJ8qHiM3RjfkkEMBDdi
    /3kRFxGWymCeCUG66aJMk/c/gGEsUj5DmfQcnpjEBGuwFrZIow+EHAr7LDpZ1XA45q0X
    3jV8QfvtzUS/tvAuejGATynpLBFvG++B3Pu16473eI+8/yn2Po4NfYCGEdK94i8YmHkz
    gnWDLm4rdMRLd5muaFNrCPbt1RAZE3IlL0SwQ5tDOgqvwOHpPX1m5myL3/CdExruLUnD
    cmWOvd1h2gAMw05IYSuUAX7wu4qjPM2YffIQe4o1M1BIdTUFIomygdy1JdlzoEdHzkeS
    P4rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1719565681;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=ComP/0jKjvUFlAEcTijASJNST3vkf4/gDDh9xKvhoYA=;
    b=ipvkLdF3oZkkwjRl3NFrdgp7EFP4yy9ma38b2BD0JCqFWPmnMX08DP3UjwokvPzsIu
    K5VDe8HsJJdpjvuODJ0F/UY4OhZylY7tNbtRaxGZZmMi2ZfaZNDesUZ7vwa4U0tuQRcx
    bu0J86xdTiPaqjRKUwDSDoDv2/7Cdxsz3guugBvIdVD9iUx26pf3N3/R0IrcXIbCgZGS
    kUNB44tbSBEdqwCr7ZH6Zg43mjmCWFARCdc96jrEjJdKEtlwLBJOcLUrfhk/XQqUaw5A
    RIdzqwE/Akb6I9fHpogvFdcP8rv2nXPKUb/MguG2die4hKgbgcpi+uTzxcK7qX7XkWDH
    Zgkg==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1719565681;
    s=strato-dkim-0002; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=ComP/0jKjvUFlAEcTijASJNST3vkf4/gDDh9xKvhoYA=;
    b=rb7Q1KIDw/WCdG10X2XV5GgnIKZ1ApUm6mzNjLf4vPXJqaDUZRi44FuonLzp3JUW0q
    hiPMX2wrZrahuGmgH7ZLl+kMi47yGxSogS3mU+m7Crfn+/3sJ+53Ft17Lv60+h84EMGu
    kmVLlJ3SXU+cPZm/2aarpHslFIDPfG3KFPvyaY03D4UFbnVG4HlGPCHQ7Pd/nUu/PXbl
    Rdq7a73KXCa/HipcS5ycHGEQw0d+roxANUalz8/Ay8EqWkgrOMXsGHiBoeP1hT0HAizm
    dXk9uDFSpLs9ijij2DrKGPrp0Ob1yfHO0FSGImNPHxVqtiDlfKwVd8qBfvS8FJCxGOlu
    CQEg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1719565681;
    s=strato-dkim-0003; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=ComP/0jKjvUFlAEcTijASJNST3vkf4/gDDh9xKvhoYA=;
    b=aIIBQg+8xQL5XsK6rLiyx/IU2q4RuaFwLhPmdg3zJuwdq4M84fXh596Xai8Zq2Fvfl
    AMcv2t9q8WIxluUzlbBQ==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpPD1KcccAaO63yQU6el7azvLdTwvA=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 50.5.0 AUTH)
    with ESMTPSA id N0957e05S980xcH
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 28 Jun 2024 11:08:00 +0200 (CEST)
From: Bruno Haible <bruno@clisp.org>
To: linux-man@vger.kernel.org
Subject: setcontext was removed in POSIX.1-2008
Date: Fri, 28 Jun 2024 11:08:00 +0200
Message-ID: <28696710.B0YPrGVBQ4@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

man/man3/getcontext.3, which describes getcontext and setcontext, says
"POSIX.1-2008 removes the specification of getcontext",
making it look like setcontext was still present in POSIX.1-2008.

It isn't. setcontext is removed as well. See
https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/xrat/V4_xsh_chap01.html
in the table "Removed Functions and Symbols in Issue 7".

It's just the rationale section
https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/xrat/V4_xsh_chap03.html
where getcontext is mentioned but setcontext was forgotten.

Bruno




