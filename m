Return-Path: <linux-man+bounces-842-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A000E8B9A57
	for <lists+linux-man@lfdr.de>; Thu,  2 May 2024 13:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 570F01F21582
	for <lists+linux-man@lfdr.de>; Thu,  2 May 2024 11:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ED8C69D31;
	Thu,  2 May 2024 11:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="Dwo12cFm"
X-Original-To: linux-man@vger.kernel.org
Received: from out162-62-57-210.mail.qq.com (out162-62-57-210.mail.qq.com [162.62.57.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B6A60DEA
	for <linux-man@vger.kernel.org>; Thu,  2 May 2024 11:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.57.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714651105; cv=none; b=fNO6EDKS4UGYdHI6dI9d0Uy5UVj7PYhfPBrKsH4mPM85ly9ON5iy5QcWGd7jSO54PKimyWcwRy1YamYVQP+eZinTvD/OoRcZozKH7XPa3lZggE+RvRAVQanRopMsEYCqsijT4iTucufHpfrN9VL9KEftesf0Rh4ksFEIqKeUpgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714651105; c=relaxed/simple;
	bh=TNeSeG8CA0SitRdOuvZJbmgull+qwaGz2rJFoFpsJjE=;
	h=In-Reply-To:References:From:To:Cc:Subject:Mime-Version:
	 Content-Type:Date:Message-ID; b=oi+KzHXVYvmnNS7jMh47CP1EktPgMU/t6tyBTjQ3CWTsBGq8Xoff68qgZBbkze7jZ+h9It48Wc5TPCoefVBVtnoUBcVaEBZYFsqr2Pwb5bRNv5DitrzMsawlGOnqEqM1J68yTmKwIrNnZ8EdrXY8K6KY18KIcP7Ovlugyo1c6ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=Dwo12cFm; arc=none smtp.client-ip=162.62.57.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1714651098; bh=TNeSeG8CA0SitRdOuvZJbmgull+qwaGz2rJFoFpsJjE=;
	h=In-Reply-To:References:From:To:Cc:Subject:Date;
	b=Dwo12cFmm57fE8QRnzn8kZ9vDnv+WcXTW55FVxoRhrNJtQDKrJuW/zKM/Vxiq73SM
	 tYFs79WQWztGKomiw30Kr7LNHaSDtqMExVIjOSZ3E/q5osYq3awnN9KaE5oMvjT5uk
	 TkhW9Rai4npZas3wsMAlm+D6GIv0Fr/9uXJMFhRg=
X-QQ-FEAT: oHWrrGTW1dDc6WqWDAkbuvNXljmAAGFi
X-QQ-SSF: 00000000000000F0000000000000
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-XMAILINFO: OeJOoYd4plGbWfQnPmIf1pFiIRJ26z4GpU9nHUk94D1hXCsanVqkOd9Niu/8rI
	 tbt4mtESlKAsstHc4fT8J1HgUJl1snH4wtIZB7q7gDKChBIyobKzogf7SddZcEtcElBGBn79uJPaa
	 CyI+JWHuMQeLM6QV6xL4mhfo8WDPYIdhlvp8B5RMzPk1qaHqMzRQOROig+8oJsvL73vVnIabc77Iz
	 eDQrQULTHwNSx1lcgTe2o316NzJQsYX0qKprsaayItrgyxBxML/PoU3CNBluIIDMFKSpcDAyc6rFm
	 /VIjLst/kivGns0GUQpdW8oLzB4LY7J3xce6dYOFXM0O8x0maNAyZea45Tj/4sXIe0fCGN4DW43gO
	 keCgkLlco7p7R4OC+m5/i3MIvxPG64BgKHpIptRGnP7j3P9XvduHk4q2Bck9DmS5SkoVW28yDjmgc
	 8KNYO6CBkCifbTvUX2utdCLsw3K7clZ7cnF8+iUZgXRiptyX4SLLvKWmlMSV2TZk1PwG6nF5j59OU
	 xPFUGlJ/fkYtarEJcc9SCyeWCv8ddt1C0sZ6Gu8/IFR8Yb3MWp2Z9fxCITCEg/U2ua4i99iGajLZs
	 Jmn6uenVOrLfYWoTQXRpJmB0JjVW2FlXeSrifDH0bWqMR1xsueRVtPR+IFJvMrQBDt6GpNZRTGedl
	 RKYatTOUsXKuHH9KkL9BwZBooDhoP5vxbbs+QudBKend/cMn6FVJePWtEyWJhG5VZxDU3LP3sfCxQ
	 BpU9RzDJC5LOwSN7K2ArpJUkibhy8+ZfT2L9pNsaXqbPhIYWwc3kojT7YNgkkbGffeydR1TjYtHpx
	 MsPjgdQ1lxdTwX7MPGcFtvl0HxMf07VhCfgY699zvfaf3a2x9ajpqDqkeTecf31GBufGXysKWfrWD
	 XuWelfEwwZKI0wAVXlrkZM9h28XFgJKXxloVI3lZOy3ziMDDA7H6u9qhZPmCFDw55dU3o6/MwQfxD
	 Sz3QYrHSnXxDVn9584UCwvuGGkyURp8SSwhJkk6YvmDWje+guwQ+XUz8u8VV5ZDJNoNdOmeCl5Yrb
	 asMPsBdfgNNU/TvI+B7mPz4rM8AbRtBf1K6de
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
In-Reply-To: <ZjIV5KYc21zdl4eG@debian>
References: <tencent_B0B00C911A5C95BC9167B6D4E5BEF4251006@qq.com>
	<ZjIV5KYc21zdl4eG@debian>
X-QQ-STYLE: 
X-QQ-mid: webmail739t1714651098t4671133
From: "=?gb18030?B?xuDB2dPq?=" <superzmy@qq.com>
To: "=?gb18030?B?QWxlamFuZHJvIENvbG9tYXI=?=" <alx@kernel.org>
Cc: "=?gb18030?B?bGludXgtbWFu?=" <linux-man@vger.kernel.org>
Subject: =?gb18030?B?u9i4tKO6IEZlZWRiYWNrIG9uIExpbnV4IE1hbnVh?=
 =?gb18030?B?bCBXZWJzaXRlIC0gVHJhbnNsYXRpb24gRmVhdHVy?=
 =?gb18030?B?ZSBDb21wYXRpYmlsaXR5?=
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64
Date: Thu, 2 May 2024 19:58:17 +0800
X-Priority: 3
Message-ID: <tencent_DF1DC856C6460DACEAC98821BBE7524FBA05@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x

VGhlIHdlYiBwYWdlIEkgYW0gcmVmZXJyaW5nIHRvIGlzIGxvY2F0ZWQgYXQ6IGh0dHBzOi8v
d3d3Lm1hbjcub3JnL2xpbnV4L21hbi1wYWdlcy9tYW4xL21hbi4xLmh0bWwsIGJ1dCBwZXJo
YXBzIHRoaXMgc2l0ZSBpcyBub3QgbWFpbnRhaW5lZCBieSB5b3U/IEkgYW0gbm90IHN1cmUg
d2hvbSB0byBhZGRyZXNzIG15IGNvbW1lbnRzIHRvLgomZ3Q7IENhbiB5b3UgcGxlYXNlIHBy
b3ZpZGUgYSBsaW5rIHRvIHRoZSB3ZWJzaXRlIHlvdSdyZSByZWZlcnJpbmcgdG8/CgomZ3Q7
ICZndDsgSSBoYXZlIG5vdGljZWQgdGhhdCB0aGUgPHByZSZndDsgdGFncz0iIiB1c2VkPSIi
IG9uPSIiIHRoZT0iIiB3ZWJzaXRlPSIiIHRvPSIiIGRpc3BsYXk9IiI+ICZndDsgY29kZSBh
bmQgY29tbWFuZCBleGFtcGxlcyBhcmUgbm90IGNvbXBhdGlibGUgd2l0aCB0aGUgdHJhbnNs
YXRpb24KJmd0OyAmZ3Q7IGZlYXR1cmVzIGVtYmVkZGVkIGluIHdlYiBicm93c2Vycy48L3By
ZSZndDs+


