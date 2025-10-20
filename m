Return-Path: <linux-man+bounces-4180-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B1CBF0385
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 11:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 555183A8A0C
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 09:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6C92F616E;
	Mon, 20 Oct 2025 09:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b="inktxu+l"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpout4.mo534.mail-out.ovh.net (smtpout4.mo534.mail-out.ovh.net [188.165.54.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3202F6170
	for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 09:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.54.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760953089; cv=none; b=e4eN2WN4WxX+Ir+vPzAKeOFmOhVN/2Sh3ifWiltb17Ai4Br6t/Tb2x33D9zCEBNtDVwj/p8oV2ek9mmwZaX7D4K5O5um8xkgtsgVnw5ZuTe1WfsH0cwFAtHRMJHlcLWPI9GJ0VuKCJXWMddw0F52qR9pBFeCzLyTJab45NYDaDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760953089; c=relaxed/simple;
	bh=TXwa+Wt+mZD95fRk/ossPlmGPMuGVGn3umOpN6FTJ7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I/nYBl6DfXS9RGuL8cXufvPD/WWPFjemDUdifgX0bZsgOh5JjXHmrPB7IqR3cf2VZJSBxKsunt/RTdICcR19yCCnjIOaPAej1Qq/LWtTDitWQq+vUSFFlVNuYoWO11AlZKgWBAUkU/gCeuDMEuSc2psO+5FDn0lL8ymctEbOnzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net; spf=pass smtp.mailfrom=jwilk.net; dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b=inktxu+l; arc=none smtp.client-ip=188.165.54.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jwilk.net
Received: from director2.derp.mail-out.ovh.net (director2.derp.mail-out.ovh.net [79.137.60.36])
	by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4cqqvz1ByBz69NH;
	Mon, 20 Oct 2025 09:32:31 +0000 (UTC)
Received: from director2.derp.mail-out.ovh.net (director2.derp.mail-out.ovh.net. [127.0.0.1])
        by director2.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
        for <mario.blaettermann@gmail.com>; Mon, 20 Oct 2025 09:32:31 +0000 (UTC)
Received: from mta7.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.109.249.147])
	by director2.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4cqqvD4hqPz20yT;
	Mon, 20 Oct 2025 09:31:52 +0000 (UTC)
Received: from jwilk.net (unknown [10.1.6.6])
	by mta7.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id BC79FB8356C;
	Mon, 20 Oct 2025 09:31:51 +0000 (UTC)
Authentication-Results:garm.ovh; auth=pass (GARM-105G006849b6996-6a21-46cc-9093-774ed946258e,
                    4656D2A790A28D26098996589131F161E5D828FB) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.179.198
Date: Mon, 20 Oct 2025 11:31:48 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page sprof.1
Message-ID: <20251020093148.vve2nui3xtym4z6m@jwilk.net>
References: <aKsmQcxdqf4EnO5i@meinfjell.helgefjelltest.de>
 <ng3ohykyqc5cpglpviqh7hekvdltyrnpf54pfaqlg6hevkclfu@qjywntzohfxn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <ng3ohykyqc5cpglpviqh7hekvdltyrnpf54pfaqlg6hevkclfu@qjywntzohfxn>
X-Ovh-Tracer-Id: 110338191498947689
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTFruGg9x599Rb6/VM8WOCVCMOmKDbSk7CfBukMS1zfQSjGkzARa1dIUT284oIbOwCNNsTXryYaKCBqWpKzkyiTF6hhyC7CML1N+5OCOp78xQNoQGtzQW+YhzTps6lBJ76FPlPIW8oP/p6gCDC/hRqt9Su6Y2ItKpSOxz5Wo+z358Pdbu2W11N9S9hUiV7EmjvbE0efLnRNH3arDPuiL0VzOuCIRnBGynY4FsA7vHKhhU42IyrhpQF6NWXpTV/lEosJivYcV9UFAOsusMo4YLqZY00Sa449eYCH7Um4d05/eznf5ohQfHJpjbcciB0FOKJoOypqgb0zGaDv2q2I2sV6fqNZZaF/22tYwIUH8KH3orZfV/0KKYlu9e1gOMUBec12uzjMHdRKm55letSlMbikLch+RK+FOt9Cf4uHkhhU0IlNyI46YasNXUCiHdH+TBGxCOjo7lMGZ87dsmpU8qNfVI+L92xWqYiHkqNdYwpi6M0HFW+wX4p8tBmFjLUiTwL9lPoelEEefJrDaBfzCkgyHrrPQtsGyPwC1T/bLs9SS/EJZ8vQ3YeWrjCrlai9d6oDidhZRtGBRVtlKjbDyFvGhizRlGiTxLzkJkisKA7AMW7+JberxDBuHMJQ8s/A/pO4sa3q3K8hI9uiKFgNEA+9ZXMA2j5pQXOsetCOt9pAX7w
DKIM-Signature: a=rsa-sha256; bh=LOer7OlzlNrE3PewTOdj6EyaJ9XSnUEkFYjvtL/Xy94=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1760952751; v=1;
 b=inktxu+lgofWUhWt0hDGNpG/aoURZciPOmFNXwlADvX2wfUUqeFHQt3zv/AruN8yBZYgBypN
 2fBFPAWZ8izQHiEq0baIyKRIpB+Iu5A35lah9XFOZ5ypKI5ClfNvrxkG7oJgvs9DDEQt+3r8MBv
 gpxVa1WX8425Vh9nxT9xoBizzKZ6Tgr2sBJWndtVbsW0b5FbBMuivoKWQugnE0S2Q43lSdwoFqd
 4p+m6zfBNX58HcFfTdGSoxEGLrGqUqV57CMfvQT74dGKvsUGSfSdoP07aH8sh78l8AlWvnj96fd
 4Y7Bz749NcIbQyT1u4s0ZbTIHUOh9bLkrzA+QYUDenktQ==

* Alejandro Colomar <alx@kernel.org>, 2025-09-01 15:43:
>>Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: 
>>Assertion `_dl_debug_update (args.nsid)->r_state == RT_CONSISTENT' 
>>failed!
>
>Could you please clarify this report?  Is this something libc-help@ 
>should be aware of?

It was already forwarded to libc folks back in 2024:
https://lore.kernel.org/linux-man/87mshxxyol.fsf@oldenburg.str.redhat.com/

-- 
Jakub Wilk

