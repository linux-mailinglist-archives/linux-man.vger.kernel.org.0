Return-Path: <linux-man+bounces-2495-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6220CA3DC6A
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 15:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EE6019C2D74
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 14:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209951FF5FE;
	Thu, 20 Feb 2025 14:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="BBjYisDI"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430E21FBCB6
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 14:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740061022; cv=pass; b=MHTyn/xam3WWHGhu+lYfDp2GEon1U97jOZ8Ix7h34Jesnfz/MPNq0+sKWFJN53N0/Ip5e0Ms2gjEux6oD7MGnBTLJv3kM7GB2/98XIio04Gy8BoccB9AV89slgtvQXyAYvKZgw+oFE9HTqqurwqf22PlAOPky42xE/5zvJ1jkAs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740061022; c=relaxed/simple;
	bh=zkrssjeUOL2Hxb1nwxvoq3SuMZzntALXQQEejmAzJSE=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=X4oSPW65Aqnke1sqmKllljijzWjt3bMfhtckZxkU8ZV3aPIcQ6drPi1raTXN1U0TpugRI/QydhtFGiF4UkEwjLYXRDiBkoLgOUludCcZtAB614upHxmyK59UA0OqgT8y5G7j5uAszze5bTy1C53a0FcL7H+aJq41lXELYqV4xSM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=BBjYisDI; arc=pass smtp.client-ip=136.143.188.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1740061016; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CQOAMkSj5zdqdNQ/ecbrDYNE5DouT8Cc5KvOraYOMWpW2Ns/5subp7Xtw8/9gPL2u/B6TuBxLqVXP0PQli8HQTOPcJeX+u4xbfIL6njHoGB6eILLh7qS8MkajOb3cG+CV/6JVRNluEDENwKRl5yrPsxR+0qgGb6r89lXt0HxTRs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740061016; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=zkrssjeUOL2Hxb1nwxvoq3SuMZzntALXQQEejmAzJSE=; 
	b=gdFPLIZwoUp18qGS6Ewg7v5ibK3vgV8cDRdUlHiISQ2Ljj2UmedUFURSMvkqGaHgBK7VdKWKZMERFi+E+PAVK3r8ahj+PsYxplZLfwQJGtUCxznHfX4e5N891JlfvX/Ggdbg981fkU2d+KbNvzYZUe8hkQpvWtr9bGa2h6mgKlU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740061016;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=zkrssjeUOL2Hxb1nwxvoq3SuMZzntALXQQEejmAzJSE=;
	b=BBjYisDIqpxzW8IyVxnuB750itH83lIec7RIBKuCF8QYj+gsCqe0n+37KGA6StpR
	DCabQoD3+vFoQMKEF6ykeSBw/+FekbZkRqxcPn0YR6WyJe9OKY7HEC3n2XuopgsRtL2
	rAMuBdRWnqYQFwfyORCzr9W9QpAKAnjwrw8h4liE=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1740061013841565.4499549539884; Thu, 20 Feb 2025 06:16:53 -0800 (PST)
Received: from  [212.73.77.104] by mail.zoho.com
	with HTTP;Thu, 20 Feb 2025 06:16:53 -0800 (PST)
Date: Thu, 20 Feb 2025 18:16:53 +0400
From: Askar Safin <safinaskar@zohomail.com>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: "Carlos O'Donell" <carlos@redhat.com>,
	"linux-man" <linux-man@vger.kernel.org>
Message-ID: <19523b7f740.cc9a3f43142477.6001365032620281680@zohomail.com>
In-Reply-To: <xsogcn7ta4j24np4diop3uiyg2ulqqkrpxvrpshcslkefgmdhd@eljyq62r3fjp>
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com> <xsogcn7ta4j24np4diop3uiyg2ulqqkrpxvrpshcslkefgmdhd@eljyq62r3fjp>
Subject: Re: [PATCH v4 0/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Feedback-ID: rr0801122727254fedbd2be26ccb0654b60000db51034fda9165b8a8debf875682e7305bf18fe8e4b1d4125d:zu08011227367ac67900353385e9ec85960000db47274a5684de33e5c89bbd835eaf400ceb41025f884401f1:rf0801122dad9775d3533df489f504a3de00008ba370bf078b2ffaad7dcbddc019120b18e7cdc031192701b4e2d8a8669b05:ZohoMail

 > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=32148703be51b3db5277c82e6e2d21ddfedeee4e>
 > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=82fc3796b345caa08653dcba8ef6db37d9a4c05c>

Your site https://www.alejandro-colomar.es/ shows error "Your connection is not private"
in my browser (Chromium 132.0.6834.83).
When I click "Proceed to www.alejandro-colomar.es (unsafe)", I'm able to see
your site.

--
Askar Safin
https://types.pl/@safinaskar


