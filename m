Return-Path: <linux-man+bounces-3579-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5715B33099
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 931917A55CF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E3A19ABD8;
	Sun, 24 Aug 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="kzp9icPp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756B52DEA95
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046932; cv=none; b=SQv9dewqGrQbRve3p2C5+brZnzcN46o5tZkaBMuemrebepZcbBwODcFZ75faR7y3BjB41i61pxKKZtL++iqRU0QP6YCML/RsT3m4VDS0i7dq4jDpE7JpcaEk2vQppYpqbVyPOuuWJy1I5k+uoxEm5Fu6BvZYydwTwb+QIo6D8M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046932; c=relaxed/simple;
	bh=y0XNCIhf5wyIbYr+qSMgY3IQ9ni2AMmWjl6ICcl+SV8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=VZSoeE/lKYh9YnxKn+NJ6E81ZoGbRv9IyhFlFTVd5t4Sg22eitewDduN1SCKlME8VcqehlN9Hw742NlVVRbnLMr8rwCahrIah5QiWlYhknrS9zAk9b6Smq9EVXKNfuZ9k5Ejmk3Pmo8gze4DMnEu8ioW+Ym7aRooA+Oi9McPvLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=kzp9icPp; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046916;
	bh=VJYwAvr6YrelK0jKLyQvQ5D/sOn2+tNFbViqREAoN6M=;
	h=Date:From:To:Cc:Subject;
	b=kzp9icPpSNCESPBtAsgt/wP/0hFPCtfKCTaWoMpsTBFxUDZPP3IMD43MbWcmIYhy1
	 HCe9rOvI+DMIjr3IIVHvxpmsZR2N0c6qRUNybym5UL5rt+ySLl9fm3Cz1NLdFf0+k1
	 GiPxC9F9EcqePBKOdSQ5vQOxv3ObMZsl+Vwq7E+LX0/DjLyJV/CvQllTLCmC3nWCwP
	 jT83fOu95K8elswXrgDNSGMhDsky0+H9Wh7Ba80ZHAJBLJoqAXEVF8CgRsjEDNWuJR
	 OzlvunaYVsO2KtmWsWLwJF8KLP4iCPxlpx/r32OTVyV4FgdmAZlx5ApC2HcOxi7tpm
	 BXVsWg4kglSfg==
Original-Subject: Issue in man page wcsrtombs.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216AF.0000000068AB2644.00138E90; Sun, 24 Aug 2025 14:48:36 +0000
Date: Sun, 24 Aug 2025 14:48:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcsrtombs.3
Message-ID: <aKsmRFxCnu-vbMsx@meinfjell.helgefjelltest.de>
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

"B<size_t wcsrtombs(>size_t size;\n"
"B<                 char >I<dest>B<[restrict >I<size>B<], const wchar_t **restrict >I<src>B<,>\n"
"B<                 size_t >I<size>B<, mbstate_t *restrict >I<ps>B<);>\n"

