Return-Path: <linux-man+bounces-776-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1808A80EF
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 12:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6924B284346
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 10:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8A8813BAE5;
	Wed, 17 Apr 2024 10:28:14 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smarthost01a.sbp.mail.zen.net.uk (smarthost01a.sbp.mail.zen.net.uk [212.23.1.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE6513B595
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 10:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.1.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713349694; cv=none; b=anWhWqPNDdSq7ROJSf8Nd9abUyJrMI8fgtxJuANhFFy2pUbfDJmZY/GR/xsxTND9MB7beHvtjs57fRx9/89YgvVxZXKlCBLA8yGwn7tcupeedczuv9K0Lzhqbv7sC2JZIeon/nuqlK47lBLYktVO1WGL0CEsVJiK4sgL0R+Hrv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713349694; c=relaxed/simple;
	bh=/3lpNsZrmwubj8/i+O/HoHj2chPOxj5UZORmSMCTwt8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=afwh4qWw0i8k6gT4dsk1QxIg+D8xElNZl2ga1hlidgD1rgD5v7yQqO6d2tjwDbxdPjqGqwXkRQMAD6Zoes3gzjq8UoWY/MUTKi/WmuxlqJDgBLWX5OfcZDO8MBeZj98yNatzLN2HRBb8R5DC1GLLUXKPA04FFkYqfq6G0fNgmO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; arc=none smtp.client-ip=212.23.1.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01a.sbp.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rx2WO-006sUl-1D;
	Wed, 17 Apr 2024 10:28:08 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Date: Wed, 17 Apr 2024 11:28:07 +0100
Message-ID: <4799523.HlgaahpBl1@pip>
In-Reply-To: <Zh-csLhEDqCj4o1z@debian>
References:
 <Zhu_-FE5sl3vSu1w@debian> <Zh-cTQSZbb8z8W0s@debian> <Zh-csLhEDqCj4o1z@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Wednesday, 17 April 2024 10:56:00 BST Alejandro Colomar wrote:
> On Wed, Apr 17, 2024 at 11:54:21AM +0200, Alejandro Colomar wrote:
> > Hi Deri,

Hi Alex,

[...]
> > Now I get some new warnings.  :)

Is it a secret?

> (I guess that I'll need to regenerate TINOR too.)

Its not a good idea when you are guessing.

Cheers

Deri




