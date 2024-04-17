Return-Path: <linux-man+bounces-779-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F108A8CD4
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 22:16:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA9E81F215A0
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 20:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C949A2D796;
	Wed, 17 Apr 2024 20:16:27 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from queue02b.mail.zen.net.uk (queue02b.mail.zen.net.uk [212.23.3.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6431E18C1F
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 20:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.3.237
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713384987; cv=none; b=NmeOhKFFX0ZCxY6bPF1Z7IxEDg5vlrMyTsKG1jGQkK5EUEEt4frlk1f6esnVUrzKNsNPt1amJNmzofgMBqVitgO2t/KG8vks1CIj3vyCbfJ4XQOnF1IrjrcRsTOQIaCRkbUZf/qVplA+WdpovbZYzP1+S1tGLtunrN5gH/mGak8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713384987; c=relaxed/simple;
	bh=l/HNitdOhCgkRoafOTzfGYxO7rfzzYpNCos9XpESSZ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Zhe1HcdWObEtzFy7eHlxqIpyc6rdLJPAZhkk5IzES+9YBLxMiwng40rzT5x5OUV3+H/xjq4N5hW5VU/1GiWC3sJQW/SQZCfF5mhFNUk55X+lCdF+inipkvo8Hq76Mdj64GduWhYRXh80wV8aOmCp9FbYJ2dPYXUE+QXZR013osQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; arc=none smtp.client-ip=212.23.3.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [212.23.1.3] (helo=smarthost01b.sbp.mail.zen.net.uk)
	by queue02b.mail.zen.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rxBSz-002RNp-0b
	for linux-man@vger.kernel.org;
	Wed, 17 Apr 2024 20:01:13 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01b.sbp.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rxBSo-005HAZ-5s;
	Wed, 17 Apr 2024 20:01:02 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Date: Wed, 17 Apr 2024 21:01:01 +0100
Message-ID: <3180200.v3Tbpv83Wp@pip>
In-Reply-To: <Zh-llsEJE6qt85uS@debian>
References:
 <Zhu_-FE5sl3vSu1w@debian> <4799523.HlgaahpBl1@pip> <Zh-llsEJE6qt85uS@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Wednesday, 17 April 2024 11:33:58 BST Alejandro Colomar wrote:
> No, but they contain binary.  Here's an example:
>=20
> gropdf:zic.8: warning: Don't understand 'dup 0 11 -| =EF=BF=BD=EF=BF=BD=
=EF=BF=BD=EF=BF=BD=EF=BF=BDB4fD=EF=BF=BD" |'
>=20
> Cheers,
> Alex

Aah, this comes from the new font subsetting code in gropdf. I have not see=
n a=20
font quite like this before, most fonts used with groff have been converted=
=20
from a .ttf/.otf by running it through fontforge.If you are interested in t=
he=20
gory details look at the git log for the fix just committed to the groff gi=
t.

Cheers=20

Deri




