Return-Path: <linux-man+bounces-3440-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2864CB224B4
	for <lists+linux-man@lfdr.de>; Tue, 12 Aug 2025 12:37:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA6723B67E1
	for <lists+linux-man@lfdr.de>; Tue, 12 Aug 2025 10:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F8D2EB5D6;
	Tue, 12 Aug 2025 10:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="Qk/+zo0H"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3C52D8365
	for <linux-man@vger.kernel.org>; Tue, 12 Aug 2025 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754995056; cv=pass; b=FesUspIM5TpVKYKz64lTHqaOxVbpE2kfX2RSiKdlCpulJPl+maR0XWj2WEQOC5nIBmM844gB5Qz+2WoR/OXj8gZDWXBEphgBH+1vDsOOsAffJiU7L7WRaSISmItxUNDZb30/DNKt488zllm5k4A0ar3as2Zd3AIeyEQgj8Brypc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754995056; c=relaxed/simple;
	bh=/kvYMyhP2Ap/eHlqJe3oOhR1i42EFJV7rVEXxyuTKYA=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=b1LBx5qoykNBO74ZeE/Dmx0RmCxo0ujSYvTsHaAtHKzNhoQagic71IV/D5/iTq7dYQayFsCoUsORraNwJSrNoHCfaVSZVBqpRvAZb32mg/Y0gEdH3YJnBCI14lTQMumBm03/88d4Z0llUdx3fQUmlShUIJgTvdckcjagIgANnkY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=Qk/+zo0H; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1754995042; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bXtA8uK4adIgcIyJyARqp8gX49HJ0hlKs3djloXepHRF3NRki1ckrRP3z8hfYgRtFThMPPvhAADIPbvHaWuhwAkZz4872gVHdXHjhQYrvWwgKBMp2XJ5q8n+3IkDlUcng5u+Ow/cMekejA199FtsON262Eb/8i4viTyQUKy95zo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1754995042; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VayD8Hvq75uHQIBqufeYxiA0USy3/XOYpPiDLtKv/EA=; 
	b=BwA+gJuEn7Os4v0qGQkK/CHWramn+tluKTprv8dDsQnZIz3BUZkpiJ/H+uKr9ooppQ+0uxDciKIPZzBG8huuNeB6MkuI1WSfpiKeK1RDbz/TUwoTMkp+KVOsYyeFFvmEodyktCZcmk6XZG9lRxE3is+Jk/kkdC3YQJe0BOl9lic=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1754995042;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=VayD8Hvq75uHQIBqufeYxiA0USy3/XOYpPiDLtKv/EA=;
	b=Qk/+zo0HaC74uVLYuVixscIZWmqRVGKEv0njTR6wQarDdzViGyDCUseE2qyQewwb
	/HYftiMbGaX0I/cDSvRn2AUX6dJhh37VzS9jXgcwDz/Ke5iOhukpnjeu+PgDSvKNUhJ
	D+D8UDrV3omvbwKbxD5kZYPxqs+Zy2PpuW1SHCAY=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1754995040904289.75784845327723; Tue, 12 Aug 2025 03:37:20 -0700 (PDT)
Received: from  [212.73.77.104] by mail.zoho.com
	with HTTP;Tue, 12 Aug 2025 03:37:20 -0700 (PDT)
Date: Tue, 12 Aug 2025 14:37:20 +0400
From: Askar Safin <safinaskar@zohomail.com>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: "carlos" <carlos@redhat.com>, "enh" <enh@google.com>,
	"evgsyr" <evgsyr@gmail.com>, "linux-man" <linux-man@vger.kernel.org>,
	"wharms" <wharms@bfs.de>
Message-ID: <1989ddb2277.12853400273841.3494748395747199197@zohomail.com>
In-Reply-To: <6n5kia24vp7gbofbzzt2gm2owixe4f72azygr2fxangrbvr567@qeyje3k5cknx>
References: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
 <20250809081953.972960-1-safinaskar@zohomail.com> <6n5kia24vp7gbofbzzt2gm2owixe4f72azygr2fxangrbvr567@qeyje3k5cknx>
Subject: Re: AW: drop ia64 from man pages?
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
Feedback-ID: rr08011227d9e61b793c9977840648f8bc000083d572d658430aa22fb2d9321291a29f2089b00211a70806d2:zu08011227b1b18bf0a591bcf158e79fbc0000fc9eb64447bdc7f95139f576c01a40f819973f125e7db40b4e:rf0801122babf37aad196e39fab2b81c5400004e96d77d3c87761b11d37d57a969a1c3c9b84fad6ba24a4f6e9e975e65:ZohoMail

 ---- On Sat, 09 Aug 2025 14:49:45 +0400  Alejandro Colomar <alx@kernel.org> wrote --- 
 > Yep, I suspect another blackout in my town.  I'm traveling, so I won't
 > be able to turn it back on until Monday.  :(

I see that you don't want to remove all ia64 mentions from clone(2).
But is it okay to at least remove mentions of archs, which were removed more than 5 years ago, such as blackfin?
If you okay with that, I can author a patch.

--
Askar Safin
https://types.pl/@safinaskar


