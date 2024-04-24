Return-Path: <linux-man+bounces-807-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB038AFD2D
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 02:10:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C110A2891C5
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 00:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D35CC363;
	Wed, 24 Apr 2024 00:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=simon.barth@gmx.de header.b="Jmm9ooNp"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533B4360
	for <linux-man@vger.kernel.org>; Wed, 24 Apr 2024 00:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713917422; cv=none; b=sPyEL2kuj0Ka+DGYkXbniL4iNCXhV6ZB/Tq8vcPrXNIpKjgCRRntL4vyzpRn0hkIZko4aYIN2YENOfCP4sN/mmZ75UslgxYQtOnLoStnzBIZ7m9mXzF9EYkNj9c47wzKmqKznQNFioUzfShnMD2FvtnJ4v1Dto8hAG4jOWzpzpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713917422; c=relaxed/simple;
	bh=GHrZzrJWC7y+lDuOau0mzqWWQxcQBhIP3HEWLcmJXXU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lxUaoXIrg0qZFlgoPhc7m0hb3drwtu1fLPjyTCkbs/RttCvzVK8t1nn/wAkiRmWvZ61cPaZRHhxO6uScUIqcjS5b442XuPlRu5+RmbUMPd8IdN7qxsLqV31+y6P2zfBFTC45i5U3J0J9wTn53yRZnuaLyBKw7OAEqxh4qXfNfi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=simon.barth@gmx.de header.b=Jmm9ooNp; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1713917414; x=1714522214; i=simon.barth@gmx.de;
	bh=n+/XaZBcjyuUypd8/RiI9kIjSaRnzEW93aoIWsspHLE=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Jmm9ooNp5Kj1cV9lbsgu3bmdHW8c4vaCnuq1JKwTlnO96if9z17YL5yEgFmm3lpY
	 WJYORjZzTztAt3QtPALs3Sd6OyHwyK3iXbIMj5dw6O2LPmyux9kn9/szBtX/dyQMZ
	 /UX9/z75PFNz/XyioVYYmZz7/sg9EHyrrPwalM9TOnqGiQQqmVf1/+aMqtMFyNb8N
	 sEKJEXnu/sgfoCJZ/ae/tcJ7tM6VJ0ZS/hK90SCsHTqrGwSX2PG/exaNiJ42hTjr1
	 BpSw75aP42VrFYcQ1fSdQL2QcGRfFtC0LVHFisl+tsrAe7Ax7QtCHjnq28VMQh9la
	 aYd6HuvBo+/gX+NcTg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from localhost ([80.146.185.163]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MV63g-1s9pmS0B0w-00QqfJ; Wed, 24
 Apr 2024 02:10:14 +0200
From: Simon Barth <simon.barth@gmx.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Simon Barth <simon.barth@gmx.de>
Subject: [PATCH] slist.3: wfix
Date: Wed, 24 Apr 2024 02:09:50 +0200
Message-ID: <20240424000949.65424-2-simon.barth@gmx.de>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:tFLkiHP2Mp3+TQp14DxicNoBIHDvPtS0ddU+JflTTKXAuG+a/3E
 cDS006MMvicjPSk11/SsXcFpffQo2fnbaS86TIDjG0yGx/09r7g++yOCLEEcc5Jgk99hwgp
 etQUo1CJvRcS2xK9MLFlCzQT0H/rzmTRUVxb1kkULnFBFuUHg60Bga53Mf15zqGn6FUrFNR
 MAAZ1wd7Ku9OUNRlUwa4Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:UlYZp/+BbMA=;VIUwss6CTKGAsoVWp890CbFkcU1
 qhms1VdpYaYvPDFimmFlHt/dggMvsQ8marehfQkSiJmXKTv1LDeohxpBBwHXKwEIcWVkK3t2B
 GhsqOmKb3+MejiWX5DKFI6d5EejM3DAPRTRhC0uIOfBNdFwciYZetX2nsN4hn339pnxRMByYQ
 G1QuXRp/D8SWzFpPAy8ZbKj223FGcMMLDkD3yE+0JGdZqYAt/c8+d5ZhQZBKXirkxNQ1NiPUL
 80wyJ2jvMDIjh40hD3kq/9Ei+5BG/cAUWgNanlixwMxn9ArTs8D0PnCQhQCGO8ouql+5c7DQM
 VAtMc7nEcsl4WlEtHQNKbLlzv56ggBafNywcDRLuUPkO6l89HDH0RJWDGG38JRuxkm3TuQPmd
 HXjhEIRVga1n1WRgIRAThzJ8h+qwhGB4GPVDCOXvAB/W05rTys3r3pIzf4nBWP2nTH0DiK8hD
 SGLr+SdQGhROOgiM56w+pKQEywt/hnyMsGvY6GYqehU5vpqZ3lMNOn/sO1huSvzB7I7WLaPUL
 GJIhiEJtCYADLVkdkBpS62zBvqD0IBwn56ucnuyfDw/yaeKD2xaHqBhdyCdtduxPDRgf89R76
 J8Zf4PsJbnoszOWSAAVOuKdEOhmAOOUWWzPG/G0lqK8wLF9ygX5m/P5XKozat+TVo2+3MLMuT
 6FF9k6jH1PWnvkgIHqsb3NPvUv49CEIPpDfLgFn2O3HGJ4FQfDDDyHeBW0arTlrbYRd1sfeK4
 5MEixFpJNGDxH7W3jWozxkCRK6ne6GU/XFlfJmjp2aAgK5zNi8aNZrVebXKoYiiGuQMbab05e
 hWNy7lTuhss0AKO9o0M4+p8uB0nUJjK9rw4qL7q+bXsUw=

This page is about singly linked lists, not doubly linked lists.

Signed-off-by: Simon Barth <simon.barth@gmx.de>
=2D--
 man3/slist.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/slist.3 b/man3/slist.3
index fdb045aee..02745286b 100644
=2D-- a/man3/slist.3
+++ b/man3/slist.3
@@ -68,7 +68,7 @@ Standard C library
 .\" .BI "                        SLIST_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
-These macros define and operate on doubly linked lists.
+These macros define and operate on singly linked lists.
 .P
 In the macro definitions,
 .I TYPE
=2D-
2.44.0


