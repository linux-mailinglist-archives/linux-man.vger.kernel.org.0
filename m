Return-Path: <linux-man+bounces-3416-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E83A2B1F33B
	for <lists+linux-man@lfdr.de>; Sat,  9 Aug 2025 10:20:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 196B35614C0
	for <lists+linux-man@lfdr.de>; Sat,  9 Aug 2025 08:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7508414F125;
	Sat,  9 Aug 2025 08:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="BkvjNQw0"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0F2376F1
	for <linux-man@vger.kernel.org>; Sat,  9 Aug 2025 08:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754727615; cv=pass; b=SM9MVOfyIclxl7dWWP//iml+LcnD7DGFFZlCenn4h330xG0fOMQUeNmiJLTEOOFz4BMig/MnXZYeG8JWJdaU0DTybh8OrT5FDxzHiMBUBV7U524rSzoN9JDEX5jAJytnAIsjBe5v9/138EG3mQ5okGPs/DNKj4+fW2N7nOA/xdQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754727615; c=relaxed/simple;
	bh=ezxuaZgEIfw0pB9QEl3UcjdbsabSRkqy3ehLnhJeLN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dqrfruo4smYSKdg0jwthQTYMat91wtBdji1EpaUNuEUpDwo6rmBE98cOinOnWMFFAiBzRyeZ59BPoFDh4pywpYoTDP8NK1Ghs37dYV8rgSWcSgbnmGhARippw2dPk0zryVq6MZ+ke/nyWbCFWOcWnUJA+lHLI5ElQPWEI06/VIQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=BkvjNQw0; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1754727600; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OnzCkXnwOXnaJL2URWgs9vekZENjJIAIZaKLbryg5F9M7tI3jq2+UZbxSs/sD5h5HY8WTvaF1l0QhX9Dx+/Mx8B3SDSnNjRgOtEZNtYUCfdXybNVj3RJljMGGBKZyp9jWLdRS7/tD6exkSp6Gdut6g6oUa0Xl3Bj6UgeJ3prwrM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1754727600; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ezxuaZgEIfw0pB9QEl3UcjdbsabSRkqy3ehLnhJeLN4=; 
	b=LozMbIIcaYk/1YkEB0RNuQ1lVj+9fQLp5dNjQGHpAcK7CBpwe4qIE+8jcaw5VkgtfMveNxL4O5HKse/1igigM6+I8p2ifnG6cTq+JQ3+EWmTeksvLd34YRTpjzdjC6a8Qdjr5EuwlPSOpi3niHyrsQF8STxNGKgoCld4lRTOuEs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1754727600;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=ezxuaZgEIfw0pB9QEl3UcjdbsabSRkqy3ehLnhJeLN4=;
	b=BkvjNQw0syCOoybaO8AVzN0jDaLVldPswzl1HY+49yaCuRG9rb4z7m8MMznghuZH
	vMZqwYqX9rsSCvfeBI58l7C4SK1EbqetlnrBgtnMkVh7fe6OapkWfnd4un5Td8asYio
	M0mKt5DGnjIcOIAzpEJEyE/FsfJTlcz0kt98doo4=
Received: by mx.zohomail.com with SMTPS id 175472759814552.31890322347033;
	Sat, 9 Aug 2025 01:19:58 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: alx@kernel.org
Cc: carlos@redhat.com,
	enh@google.com,
	evgsyr@gmail.com,
	linux-man@vger.kernel.org,
	wharms@bfs.de
Subject: Re: AW: drop ia64 from man pages?
Date: Sat,  9 Aug 2025 11:19:53 +0300
Message-ID: <20250809081953.972960-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
References: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr0801122799c6c06caf516e075cc6b7d50000dd3722a2bc96765b9c0f7a823f1bf0b724aa7913738ab6ff2e:zu080112275d273fd1ffc1686fc8042e4700009c9e9fd0b43e9a13188d452cdc726725264653c71401b08fc0:rf0801122cb0faf32cff853a3dfefc86d80000274dec6f31833579c9334803bbe314b9183ed49d9a9cd988741ffd9bb75c:ZohoMail
X-ZohoMailClient: External

> I've pushed this commit to my branch:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=c0e5ca37b2a562b9e7b9e39fc9091ea7f2693d62>

The link is broken. I get connection timeout.

--
Askar Safin

