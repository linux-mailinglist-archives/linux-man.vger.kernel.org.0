Return-Path: <linux-man+bounces-3617-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E09B330BC
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0F28203C85
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D0E2DF3D1;
	Sun, 24 Aug 2025 14:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="C+UJ6lXH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB3E1DDC1D
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046951; cv=none; b=nHuNHydT0mLY5wtoijNQrn9bQf/DAT//KAScR6XYu++DtNJPYNKVzLgNcUNnqZbGnCliX29ItUp6Hr3GW4HK+n4SdCE4lnfFT/vGUOGXAXldHq36uFLbOFgAx6PJJTfoAxCRfDWA4p9KUQU4PHiWThtPG4lttLUtdNCpwu9mEmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046951; c=relaxed/simple;
	bh=klKF3mpsrETCbCn6EgyurNlkdJ6Z40QJAdhrQK6NU2A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=YvykhxyOVwWxffYxicB/VA0kLVpms0ZPD1PYO0AlC27dnLnu5PuBfEn3HrKuYWx/oQWl5Jot8W8gI9PsVZDfSV9IQdwqW7k4pB2kfu4mObdWkkML/A8FL+oS3jukHeV1/92MJkGkRxE4cs6/NaXNyzkKLhrnPdVGBd0PlpZr2qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=C+UJ6lXH; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046921;
	bh=8D2kqxy88qkEFoykVZsW0e6GnFiSaD5BCfD7jkBK/FM=;
	h=Date:From:To:Cc:Subject;
	b=C+UJ6lXH5CfHu/dhKtEUmOHC180gYQbMYrjU8K9t36X0cdIziCAEQbD3579t+72UV
	 sRAoYk3bkYEmNF6XX9spWxJkaxhAbn6Ran+AhWDZksTId7bV7v/p1rV1pFoJ4JDgEK
	 gyA4cYBDjsLKhqKJ80P9QSJiyTTpCqOgEOCW5YS3u1hPWSTrNsLP1d/YTCdNhzUqdv
	 S7vzsLzadvFUvKUbNCLtnnunXaGhkPiorqWbUf4EHP6wUbmoN8E6P4ULE4Hla46BZ7
	 qbLb6vaar7K9IETm6ZKN9h1aELmwk4c2bONuXRyvLJKgbgocKM0A+1kbbFh51AHEtG
	 3f+iy78onCo5Q==
Original-Subject: Issue in man page getrpcent_r.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021716.0000000068AB2649.00139248; Sun, 24 Aug 2025 14:48:41 +0000
Date: Sun, 24 Aug 2025 14:48:41 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getrpcent_r.3
Message-ID: <aKsmSfE4bvw0ZzPu@meinfjell.helgefjelltest.de>
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

Issue:    I<result> → I<*result> ?

"On error, record not found (B<getrpcbyname_r>(), B<getrpcbynumber_r>()), or "
"end of input (B<getrpcent_r>())  I<result> is set to NULL."

