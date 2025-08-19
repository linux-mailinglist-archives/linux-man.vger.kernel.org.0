Return-Path: <linux-man+bounces-3505-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F39EB2CA84
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 19:26:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D0A4A04058
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 17:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E48302777;
	Tue, 19 Aug 2025 17:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="HSawT/dY"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B80A30275E
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 17:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755624215; cv=pass; b=tXIQP7sSmCXzUiubUay9GINOYivWmGPm+3Op/eBmHuIzcXUIIGgpaV3uh17q/jH1ilTaBgGakUM89LCQmYmR9MxlgYh7yIJC5Y5cJXMULyaF0wIrapphPp/CP1KHNyPggkks94gt7GLWo8EEc1yePoUtxFv72tb6ORTxRp3rU5M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755624215; c=relaxed/simple;
	bh=Yp3hYrgIuYGdxsr1WsNnwv1vhd+w1tLtFbRVInQgnD0=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=oSu6Z4svPp6IfdnqpMhqDKziXSJcgO0iq9ktAcceKcAolQQUlxxSAMljtuwtL9qjcuQwGlpT6/MR8gOZrVYxtONOhWWAX4mQRynOb4ngpcdXBb9CSbRiRDJ7fM7dS0jQkrJJLQpwXBKZKHy+LacOApK+x8HQE02KJ18uFyA+mmg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=HSawT/dY; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1755624203; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=EKJ3VlD8DdshBk452j5brPeHUzX95iDBoPB+rrGtRITXm4kPr9dwb6QhW/nOj7FlHKjcsXNW4tliq22eGY9GXRkpe8fLJtinpYV0OQQQVNPbuKj+RPVVOACfzQdxiPobLkm9WSzOA74JEgg0vX6lmQco1i5oyerWlz91MPt1fLw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755624203; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NLT0pJLtv0Nk4azSra1iqnDo2if407OjFN8o4JQyuCU=; 
	b=HPt3rY2+IYEbv6m54DAgvECyc1uqcR1bnYzsQEWP5C5lBKInalj/qYBIG9cKPScSqhOoPIiwDrK2JUF1Pkt7ihUNmJB1rySF3+HtKvAEFGRJ76Q145dAqgt8iNr2EZcsg25TV+fpw+fVKqLH33ws/j3W25gDaRk5ziFBc+HFvbs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755624203;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=NLT0pJLtv0Nk4azSra1iqnDo2if407OjFN8o4JQyuCU=;
	b=HSawT/dY9DLTIl6gWpXGvqLF+4Ge21SfVjQ9ruAR8qbhO5MB7dTiLgiu+/sZS13k
	lXEz8/GJ82AO4OYPI+L2hG4NbZv5FnPhw+N+vdqtlDcbSGnOD2OxFETYuHJzKQX7pPI
	kOp4ALn1l65gpg1C9RZPUNaYEfJfw5DDXpDUCRQs=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1755624201262205.17591383697254; Tue, 19 Aug 2025 10:23:21 -0700 (PDT)
Received: from  [212.73.77.104] by mail.zoho.com
	with HTTP;Tue, 19 Aug 2025 10:23:21 -0700 (PDT)
Date: Tue, 19 Aug 2025 21:23:21 +0400
From: Askar Safin <safinaskar@zohomail.com>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: "linux-man" <linux-man@vger.kernel.org>,
	"Elliott Hughes" <enh@google.com>,
	"Carlos O'Donell" <carlos@redhat.com>,
	"Eugene Syromyatnikov" <evgsyr@gmail.com>,
	"Walter Harms" <wharms@bfs.de>
Message-ID: <198c35b5c21.c02d153b66955.8725148587562575251@zohomail.com>
In-Reply-To: <gg5piu7jl4uozo7h7yasl6kezo34mddatk4w2g2pmplakj2ctl@bb5sko4gsenj>
References: <20250819155400.763253-1-safinaskar@zohomail.com>
 <20250819155400.763253-2-safinaskar@zohomail.com>
 <jqw7baa3nx7vkbramdnlpdybfesgc34gwfdeo2l6otue2bglmr@m54n6nmbtush>
 <198c3264442.125c4d18f66475.7936052978788713808@zohomail.com> <gg5piu7jl4uozo7h7yasl6kezo34mddatk4w2g2pmplakj2ctl@bb5sko4gsenj>
Subject: Re: [PATCH 1/2] Remove all mentions of blackfin architecture
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
Feedback-ID: rr08011227f884de41239e1e0208b5de750000dd0f860e099bf915aded3c5e54feed5a11f74f5cca0d566565:zu08011227a328132c4c2d4961333fbcd10000ce427010c85c574262cf248d9e452a1a17b9b9ff9e610e42f9:rf0801122c4fb2c0ee00e417a349e26f81000047fc4d479029442d3c60f6f994b90caaa44a3a913005b4fcfa714907f61f:ZohoMail

 ---- On Tue, 19 Aug 2025 21:06:46 +0400  Alejandro Colomar <alx@kernel.org> wrote --- 
 > BTW, I guess I should still take the second patch, right?
Yes, please, take second patch from v2. Thank you!

--
Askar Safin
https://types.pl/@safinaskar


