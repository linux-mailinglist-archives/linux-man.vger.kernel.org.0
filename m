Return-Path: <linux-man+bounces-4098-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CADCBCFD12
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 00:18:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 183CD349519
	for <lists+linux-man@lfdr.de>; Sat, 11 Oct 2025 22:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A06B188580;
	Sat, 11 Oct 2025 22:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="B8xWA9UW"
X-Original-To: linux-man@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEE7A31
	for <linux-man@vger.kernel.org>; Sat, 11 Oct 2025 22:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760221097; cv=none; b=OTUXXqojOXQs9ndNzE2JWOI/YVh9aFwq2XFMl0FNSBbQeZOl7FOnB4sMiF2tdRyxChBrq9Ia9r6HHCZ8tHF0IDaRFXso0jbljLu8P5bP3UmSmxnnmj0RhcJttyvltg0mPa8u+HgnMUng6DmTm1R4HdnP+AYBcoilF8YQNjaw5RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760221097; c=relaxed/simple;
	bh=4shzmI79GBVn3+BK/ZWYXHYfEmnx4ZbDKLk1u5DyyJs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc; b=Bgq7k3XfqQZV631p/HIIZRPmEmIz+bNjTcKk/OFa8f4iGmUSCXX1TQOvnaErPVpMhMfsm3ksfDKC0n9kcIEP2KklPPF/ezfvTDJRCo0Lstp/dAaRh5CPDNWAepXg2GjlUy2s3Hu1bQ+mOWM7CNJ1dWRcc2nEim+KkxfC319Xi38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=B8xWA9UW; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 16BB5240027
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 00:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1760221086; bh=4shzmI79GBVn3+BK/ZWYXHYfEmnx4ZbDKLk1u5DyyJs=;
	h=Mime-Version:Content-Transfer-Encoding:Content-Type:Date:
	 Message-Id:Subject:From:To:Cc:From;
	b=B8xWA9UW6awyP93KEpMbITg4REsHAg6xExRNoG6Hl/fQmn/p5MJlUnzbMMuJxEg50
	 iTo2btRseRhwHCTrCrO+GMy731uACyoN1q8qclNx1ZqwqiLMuUhdue08UMpbnVYW8c
	 HEThsAb+6yOyldU88Id8xG+mKvZyIAefDG3nEHxGJBUAw56a9Q4w+/XpYOmnU5mS8d
	 HWKbyoQSsKikluPHL5FYE8r87tcu/mDSvkTj8B5tGkD8dz9Xj6cy6FgDM7faEwivrs
	 28+4EpGnsXcUz4k1YlDO3vO8Nx0OlPWkJprGS3pmszKHnLvZ7rvTXgzczHSZ8oSBb6
	 pAKbnczs3R3Cg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4ckdKT44ZWz9rxM;
	Sun, 12 Oct 2025 00:18:05 +0200 (CEST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 11 Oct 2025 22:18:05 +0000
Message-Id: <DDFUAR7OXZ38.3SGS6R89CDDMD@posteo.net>
Subject: swab.3: mention UB when from and to overlap
From: "Sertonix" <sertonix@posteo.net>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>


The current swab.3 page doesn't seem to mention anything about what
happens when from and to overlap. In POSIX any overlap is UB.

glibc handles cases when from =3D=3D to but it will choke when for example
from =3D=3D to+1. I am uncertain if from =3D=3D to is meant to be a feature=
.

If it is, would it be possible to mention that overlap is only safe when
from =3D=3D to and it's glibc (not eg. musl)? If it's not intended would it
be possible to include the same information as in POSIX?

