Return-Path: <linux-man+bounces-440-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE16852BD7
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 10:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45231B23709
	for <lists+linux-man@lfdr.de>; Tue, 13 Feb 2024 09:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2420D1B7E2;
	Tue, 13 Feb 2024 09:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=zenithcraft24.com header.i=@zenithcraft24.com header.b="V+M+dU7q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zenithcraft24.com (mail.zenithcraft24.com [162.19.75.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7321B7E6
	for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 09:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.19.75.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707814852; cv=none; b=Ri2+pTr8pV+salrqww9Kj1c+IWmuO181qFHLzRzbRtp/EWwcmwhz0d/u9eLEa/Vq2DnVkJsfZhlNhEt3nGJf4mQncBVU9NmOePCGXd4YzXQg6zmzb7L5OUt9DT5dP2QRq/AUbjblIBU1SIsXbbCIGLfjpzxCAyligW99D1g9RQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707814852; c=relaxed/simple;
	bh=5UWc1TjOSML5nno7hgQR2TsBISRW9C2IrWR2nSPzzy4=;
	h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type; b=Ji2sbbT4XBpZmuomG8tI9MEFJ5OYqTfC0BBn+or16ePZLUeWRaMgPUi2Nr33rUICmzFNIikfrXAxh7Lxi1lXEV0/+v3DOj8GKESgRzRDOgkG4ivIxbKu8dDPX6uudGYAmw62P0m7IKjPvzEJNvNmbzm2ws/V/PYYMBzbtV04Z20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zenithcraft24.com; spf=pass smtp.mailfrom=zenithcraft24.com; dkim=pass (2048-bit key) header.d=zenithcraft24.com header.i=@zenithcraft24.com header.b=V+M+dU7q; arc=none smtp.client-ip=162.19.75.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zenithcraft24.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zenithcraft24.com
Received: by mail.zenithcraft24.com (Postfix, from userid 1002)
	id 659DA21B6B; Tue, 13 Feb 2024 09:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zenithcraft24.com;
	s=mail; t=1707814842;
	bh=5UWc1TjOSML5nno7hgQR2TsBISRW9C2IrWR2nSPzzy4=;
	h=Date:From:To:Subject:From;
	b=V+M+dU7qtdBe4GkZCFM7pdeiTgsyacv4mbOBM0K1nDQCMEnJuxF1577ig8Zn+E3Cn
	 Z9CD14nIYsXJrZOSL+7DjoLtkYgiHbOepniAB+OUcwaFAciuDFq/bn58LfE3qiRnMh
	 Dlk1YieHr0jNHU3ESEMNGD3fPKroIa5n4lBWBt/sMtTjbSPDD2gMVK4j7PoE0ggTww
	 HB143Wqc9+owDUOFqBsmRsWzBKUigHj5i9+rFQo0Sw/wUQXAo6JOX23RQkZNzjD3Vn
	 awgi4fbvei7zspZ+ODa3ZuDA8I+y7xW07YmsqkHmpN+DtlBASiyVMAd+etbyzZZsyA
	 S0WcRV+FUYzXA==
Received: by mail.zenithcraft24.com for <linux-man@vger.kernel.org>; Tue, 13 Feb 2024 09:00:29 GMT
Message-ID: <20240213074500-0.1.h.oe2.0.vxm6rzvh10@zenithcraft24.com>
Date: Tue, 13 Feb 2024 09:00:29 GMT
From: "Roe Heyer" <roe.heyer@zenithcraft24.com>
To: <linux-man@vger.kernel.org>
Subject: Website performance
X-Mailer: mail.zenithcraft24.com
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello

I am part of a team specializing in integrating websites with oroom.one -=
 a comprehensive tool providing CMS/CRM/Marketing automation and analytic=
s in one.

Our team can help effectively manage offers on the website, automate mark=
eting activities, and analyze data - all integrated into one tool.

I would be happy to explain how our integration can expand your online pr=
esence. Are you interested?


Best regards
Roe Heyer

