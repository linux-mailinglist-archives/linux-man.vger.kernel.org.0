Return-Path: <linux-man+bounces-3445-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A474CB22D56
	for <lists+linux-man@lfdr.de>; Tue, 12 Aug 2025 18:24:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D81A9161E14
	for <lists+linux-man@lfdr.de>; Tue, 12 Aug 2025 16:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 174102DCF42;
	Tue, 12 Aug 2025 16:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=ilcharle.com header.i=@ilcharle.com header.b="KRM7Uz7H"
X-Original-To: linux-man@vger.kernel.org
Received: from pmg-pub-smtp2.teksavvy.com (pmg-pub-smtp2.teksavvy.com [76.10.175.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC012F28FC
	for <linux-man@vger.kernel.org>; Tue, 12 Aug 2025 16:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=76.10.175.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755015608; cv=none; b=QrsMOLmFBb+jai3ovpwOFw5YNemF7NMKGivpMYyyt24W4zl9G7NG/ecBXTIIhKALHgCt/iGpB2r9kcn6aW07jiN2Qpzar/wxNE5c3mDWWKCaUVqwp1wHniBDCiusYfJ00t91lxqdpMnwvJQXDift6AeS0YFuQvecQQS+iB8yhXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755015608; c=relaxed/simple;
	bh=K9/uvYmWA56MTsYL5juZ0H98KnYtxFDlGEkZQ0WqRqo=;
	h=Date:From:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=FKqG/TV+iankNWTClxIAhSU90DxpJou/rpJC0GFThNU+aSfWiOom+4vZLuwgAzIR0hzs7YKh+NgW6m//oqWOeJwpUkjodozUD6DYbhyPXG+swhPMRlX4/UcdHagX+17WkGrXmBS0NrUl7l3+zd3nhPostbJLBvshAKCyMqNLaiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ilcharle.com; spf=pass smtp.mailfrom=ilcharle.com; dkim=pass (4096-bit key) header.d=ilcharle.com header.i=@ilcharle.com header.b=KRM7Uz7H; arc=none smtp.client-ip=76.10.175.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ilcharle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ilcharle.com
Received: from pmg-pub-smtp2.teksavvy.com (localhost.localdomain [127.0.0.1])
	by pmg-pub-smtp2.teksavvy.com (Proxmox) with ESMTP id C579334C327D;
	Tue, 12 Aug 2025 12:13:29 -0400 (EDT)
Received: from high-tellinar.ilcharle.com (107-179-231-94.cpe.teksavvy.com [107.179.231.94])
	by pmg-pub-smtp2.teksavvy.com (Proxmox) with ESMTPS id 693B134C3216;
	Tue, 12 Aug 2025 12:13:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ilcharle.com; s=htexim20221109; h=Content-Type:MIME-Version:Message-ID:
	Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VpX8RwRC8ArJUIKmqDGIYxzaqeEzlwYkwRo8XpYnD18=; t=1755015209; x=1755879209; 
	b=KRM7Uz7HcCwM+caoCxWS31mCH2fJ6okq0YAcc1v2dO0ttfJjShSnBUqvvmpVY0rzZIv9ILL6ZDe
	i2oICNY3+k8Z3vVHI2+Fesus6xq/FMPcj7aQwoH4m8q6NNiDwtEXdzH2Kxi42JE18xMjyd0inNb21
	MxGZdjXTmddsVnuirhvuh+38Ymxyg/rcTX3Dzbjmhjg8+ZOi6hBoRGujMbVgzqwS9k447Ftkao2Hb
	QOD9nld+TFHG0JJuVXR9a+MDxQZ3y/jS+UDUrWHvkfRrbEpBfw+VuTWRlmPf4L8klZ1bmbs6akmRO
	h+VB1KfTshJypc+9anf093w2X/E8Xc2LhGTwpfXdsXdAhbjX6OFzMj9KJRl5WfZKtx4+AREHcjb0a
	zuzmQXILIZwYYNrk6j3nj3+6brMaYbBzy4fE6hTEg//JcGfw01zHUudUol7q2ihV04cOGals9YNT/
	d81ItAaYVU+QlBjXiUCMg5wft8WRoI1DbwXuA/blTXWrV084yuJsIqDAZ9xCjneJRWVs6yLFKZV04
	SFtEV59Mdz+YBcVTqXDsvbPyl6q3/stzk6Y0vVdM7Nx+Wmj7I7C/T88bkrLCVg+Pyp2WCgOlUZDvT
	2KkPX4T3Booedg3txtxN9sp0Pm37s8Uc8qC6kOdQhk55MZzc0zgMNLirW4DaNNEopReCU=;
Received: from ilc (helo=localhost)
	by high-tellinar.ilcharle.com with local-esmtp (Exim 4.96)
	(envelope-from <ilc@high-tellinar.ilcharle.com>)
	id 1ulrcu-000RAv-2A;
	Tue, 12 Aug 2025 12:13:28 -0400
Date: Tue, 12 Aug 2025 12:13:28 -0400 (EDT)
From: Ian <ilc@ilcharle.com>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org, ilc@ilcharle.com
Subject: Bug report: typo in cgroups(7)
Message-ID: <48640e85-30ea-04d6-85db-307e6756ac55@high-tellinar.ilcharle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1874199626-1755015208=:103310"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1874199626-1755015208=:103310
Content-Type: text/plain; format=flowed; charset=US-ASCII

Dear Alejandro Colomar,

I encountered a typo in the croups(7) man page. On line 1467, "cgroups" 
should be "cgroup". (In context: "The threaded root cgroup can't be a 
parent of a domain cgroup~~s~~, ...") I have attempted to attach a patch 
file correcting the error.

Thanks for your hard work!

Best,
Ian

(P.S. This is my first time reporting an error so I do not know the 
protocol or the etiquette. If I've sent this to the wrong place, I'm very 
sorry.)
--8323329-1874199626-1755015208=:103310
Content-Type: text/plain; charset=US-ASCII; name=patch
Content-Transfer-Encoding: BASE64
Content-ID: <eef105f5-db0e-29b5-f02e-edde740beaf2@high-tellinar.ilcharle.com>
Content-Description: patch file fixing typo
Content-Disposition: attachment; filename=patch

ZGlmZiAtLWdpdCBhL21hbi9tYW43L2Nncm91cHMuNyBiL21hbi9tYW43L2Nn
cm91cHMuNw0KaW5kZXggNDRiZjgyNDhhLi4zNTJlMGQxZDMgMTAwNjQ0DQot
LS0gYS9tYW4vbWFuNy9jZ3JvdXBzLjcNCisrKyBiL21hbi9tYW43L2Nncm91
cHMuNw0KQEAgLTE0NjQsNyArMTQ2NCw3IEBAIGlzIHRoYXQgdGhlIHRocmVh
ZGVkIHJvb3QgY2dyb3VwIGNhbiBiZSBhIHBhcmVudCBvbmx5IHRvDQogY2dy
b3Vwcy4NCiBUaGUgdGhyZWFkZWQgcm9vdCBjZ3JvdXAgY2FuJ3QgYmUgYSBw
YXJlbnQgb2YgYQ0KIC5JIGRvbWFpbg0KLWNncm91cHMsIGFuZCBhDQorY2dy
b3VwLCBhbmQgYQ0KIC5JIHRocmVhZGVkDQogY2dyb3VwDQogY2FuJ3QgaGF2
ZSBhIHNpYmxpbmcgdGhhdCBpcyBhDQo=

--8323329-1874199626-1755015208=:103310--


