Return-Path: <linux-man+bounces-1940-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5C69D0300
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E92828339F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A604B13A26F;
	Sun, 17 Nov 2024 10:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="W+OBCzVw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDD6224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840691; cv=none; b=f5COseYth3qrh9uDcaWmNOPAaKnQaVIIb59fTOm7rlli9ayNgb95eky8a9buwh607jVMJxEdoxQJeyoTjeV2lFhuMcZzAZcpBEmOm+2fa23ixesxMKvXANxkhGAcvpfXtLBY9GTDK4J3jnMlAMvuTAKgsgRyPTOKARJtEUc0Zw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840691; c=relaxed/simple;
	bh=SSZzREe94s+MTY4OeOVDsRrOxL2fka/+Bp/2Ec2UFV0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=nCftq5tyCippzmUNtDrl2WAmUXyJiwjiqrMm3QmTPTpIXdXMakGRGdxN7hyBQ6r6Qe3zlcdVGIpocJTTnyhZxSXxhasJO+Tr2Tm2yt4NLJo35U43L3tpnHyoOeEQuRFU6Z28VJtHZGQgyO7BtcYvab+oPJnbts0/JkTZsHyD3lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=W+OBCzVw; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840381;
	bh=/iGjN4UJvF9n5LEsUbJG+3kQKrbcck/N6oEXlNQc6uM=;
	h=Date:From:To:Cc:Subject;
	b=W+OBCzVw2q+a4pWVBn35NJU8SWDmQhbRQZzL/sfU/mnRYBfYxZcwzx1LbIDmPBava
	 Ho3Jnh+PxnVcDpV22kdfGCKPOereoAvkFr9TzY5vM947ki9FIc0ThxDfElmQ8Na4nU
	 L8n0WQeFvjPXTgIw/KPS7+n3hQ65CBZTf5aE5sDwLH/AriGvKJ0pjn5PGxQFn/aFmV
	 1ZEH3+9xrOG4Tbdft5Wl1lyWSCOeaFHRNO8w9Aawl9s8zWDnVfqz92FcfHF3G9a65V
	 MYzNdBFsbgCHS/SGWAUp07xjBMNu1KkMLS+jRhMDuD/Ews5ketn9apjsVNYBkF9k0H
	 S8cskuRo2P8hA==
Original-Subject: Issue in man page ldd.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020122.000000006739C97D.003FC288; Sun, 17 Nov 2024 10:46:21 +0000
Date: Sun, 17 Nov 2024 10:46:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page ldd.1
Message-ID: <ZznJfTPKVPkL2Oki@meinfjell.helgefjelltest.de>
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

Issue:    results → result

"B<ldd> does not work with some extremely old a.out programs which were built "
"before B<ldd> support was added to the compiler releases.  If you use B<ldd> "
"on one of these programs, the program will attempt to run with I<argc> = 0 "
"and the results will be unpredictable."

